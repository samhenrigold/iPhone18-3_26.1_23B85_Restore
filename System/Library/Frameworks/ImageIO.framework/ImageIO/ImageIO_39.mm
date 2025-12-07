vImage_Error IIOIOSurfaceWrapper_CIF10::copy_and_colormatch_CIF10_to_P3_vImage(IIOIOSurfaceWrapper_CIF10 *this, CGRect a2, vImage_Buffer *a3, vImage_Buffer *a4, vImage_Buffer *a5)
{
  kdebug_trace();
  Current = CFAbsoluteTimeGetCurrent();
  v9 = *(this + 41);
  v52 = 0;
  v53 = 0;
  IIOColorSpace::IIOColorSpace(&v52, *MEMORY[0x1E695F110]);
  v50 = 0;
  v51 = 0;
  v10 = *MEMORY[0x1E695F0B8];
  IIOColorSpace::IIOColorSpace(&v50, *MEMORY[0x1E695F0B8]);
  v48 = 0;
  v49 = 0;
  IIOColorSpace::IIOColorSpace(&v48, *MEMORY[0x1E695F1C0]);
  v46 = 0;
  v47 = 0;
  IIOColorSpace::IIOColorSpace(&v46, v10);
  *&v45.renderingIntent = 0;
  *&v45.bitsPerComponent = 0x4000000010;
  v45.colorSpace = v53;
  if (v9)
  {
    v11 = 4353;
  }

  else
  {
    v11 = 4357;
  }

  v45.bitmapInfo = v11;
  *&v45.version = 0uLL;
  *&v44.bitsPerComponent = 0x4000000010;
  v44.colorSpace = v51;
  v44.bitmapInfo = v11;
  memset(&v44.version, 0, 20);
  v43[0] = 0;
  v43[1] = 0;
  IIOColorConverter::IIOColorConverter(v43, &v45, &v44, v49, v47);
  width = a5->width;
  v34 = malloc_type_malloc(width << 9, 0x6D3B9654uLL);
  v13 = malloc_type_malloc(width << 9, 0x79991EA3uLL);
  if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
  {
    v14 = v13;
    ImageIOLog("COL copy_and_colormatch_CIF10_to_P3_vImage: allocating FP16 buffers: 2 x %ld = %ld\n", width << 9, width << 10);
    v13 = v14;
  }

  v42.data = v34;
  v42.height = 64;
  v41.data = v13;
  v41.height = 64;
  v15 = a5->width;
  rowBytes = a5->rowBytes;
  v42.width = v15;
  v42.rowBytes = 8 * width;
  v41.width = v15;
  v41.rowBytes = 8 * width;
  v17 = *&a3->width;
  *&v40.data = *&a3->data;
  *&v40.width = v17;
  memset(&v39, 0, sizeof(v39));
  if (a4)
  {
    v18 = *&a4->width;
    *&v39.data = *&a4->data;
    *&v39.width = v18;
  }

  height = a5->height;
  v32 = v13;
  if (!height)
  {
    goto LABEL_48;
  }

  v20 = 0;
  v36 = 4 * v15;
  v33 = 8 * v15;
  v21 = 4294967246;
  v22 = 64;
  v23 = 64;
  while (1)
  {
    if (v20 + v23 <= height)
    {
      v40.height = v23;
      v39.height = v23;
      if (!v22)
      {
        v20 += v23;
        goto LABEL_45;
      }
    }

    else
    {
      v23 = (height - v20);
      v42.height = v23;
      v41.height = v23;
      v40.height = v23;
      v39.height = v23;
      v22 = v23;
      if (height == v20)
      {
        goto LABEL_49;
      }
    }

    v24 = *(this + 22);
    if (v24 == 1647534392)
    {
      v40.data = a3->data + *(this + 14) * v20;
      v39.data = a4->data + *(this + 30) * v20;
      v25 = IIOIOSurfaceWrapper_CIF10::convert_b3a8_to_ARGB16F(this, &v40, &v39, &v42);
      goto LABEL_18;
    }

    if (v24 == 1999843442)
    {
      v40.data = a3->data + *(this + 14) * v20;
      v25 = IIOIOSurfaceWrapper_CIF10::convert_w30r_to_ARGB16F(this, &v40, &v42);
LABEL_18:
      LODWORD(v21) = v25;
      goto LABEL_29;
    }

    if ((v24 >> 24) > 0x7F)
    {
      __maskrune(v24 >> 24, 0x40000uLL);
      v24 = *(this + 22);
    }

    v26 = v24 << 8 >> 24;
    if (v26 > 0x7F)
    {
      __maskrune(v26, 0x40000uLL);
      v24 = *(this + 22);
    }

    v27 = v24 >> 8;
    if (v27 > 0x7F)
    {
      __maskrune(v27, 0x40000uLL);
      v24 = *(this + 22);
    }

    if (v24 > 0x7F)
    {
      __maskrune(v24, 0x40000uLL);
    }

    _cg_jpeg_mem_term("copy_and_colormatch_CIF10_to_P3_vImage", 2602, "*** ERROR - check the _surfacePixelFormat case '%c%c%c%c'\n");
LABEL_29:
    if (v21)
    {
      _cg_jpeg_mem_term("copy_and_colormatch_CIF10_to_P3_vImage", 2606, "*** ERROR: conversion from CIF10 to FP16 failed: %d\n");
    }

    v21 = IIOColorConverter::colorConvert(v43, &v42, &v41);
    if (v21)
    {
      _cg_jpeg_mem_term("copy_and_colormatch_CIF10_to_P3_vImage", 2613, "*** ERROR: color conversion fp16_xsRGB to fp16_P3 failed: %d\n");
    }

    data = a5->data;
    *&src.data = *&v41.data;
    src.rowBytes = v41.rowBytes;
    src.width = 4 * v41.width;
    dest.data = &data[a5->rowBytes * v20];
    dest.height = v22;
    dest.width = v36;
    dest.rowBytes = rowBytes;
    if (!v41.data || !data)
    {
      break;
    }

    v29 = *(this + 54);
    if (v29 == 2)
    {
      if (src.rowBytes < 8 * v41.width || rowBytes < v33)
      {
        goto LABEL_49;
      }

      v21 = vImageConvert_16Fto16U(&src, &dest, 0x10u);
      if (v21)
      {
        _cg_jpeg_mem_term("copy_and_colormatch_CIF10_to_P3_vImage", 2654, "*** ERROR: vImageConvert_16Fto16U err: %d\n");
      }
    }

    else if (v29 == 1)
    {
      v21 = vImageConvert_Planar16FtoPlanar8(&src, &dest, 0x10u);
      if (v21)
      {
        _cg_jpeg_mem_term("copy_and_colormatch_CIF10_to_P3_vImage", 2639, "*** ERROR: vImageConvert_Planar16FtoPlanar8 err: %d\n");
      }
    }

    else
    {
      _cg_jpeg_mem_term("copy_and_colormatch_CIF10_to_P3_vImage", 2658, "*** ERROR: unexpected _componentType (%d)\n");
    }

    height = a5->height;
    v20 += v23;
LABEL_45:
    if (v20 >= height)
    {
      goto LABEL_49;
    }
  }

  _cg_jpeg_mem_term("copy_and_colormatch_CIF10_to_P3_vImage", 2630, "*** ERROR: NULL buffer data - p3Temp.data: %p, finalTemp.data: %p\n");
LABEL_48:
  v21 = 4294967246;
LABEL_49:
  if (v34)
  {
    free(v34);
  }

  if (v32)
  {
    free(v32);
  }

  if ((gIIODebugFlags & 0x8000300000) != 0)
  {
    v30 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("COL %s - time: %gms\n", "copy_and_colormatch_CIF10_to_P3_vImage", (v30 - Current) * 1000.0);
  }

  kdebug_trace();
  IIOColorConverter::~IIOColorConverter(v43);
  IIOColorSpace::~IIOColorSpace(&v46);
  IIOColorSpace::~IIOColorSpace(&v48);
  IIOColorSpace::~IIOColorSpace(&v50);
  IIOColorSpace::~IIOColorSpace(&v52);
  return v21;
}

void sub_1860A7BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  IIOColorConverter::~IIOColorConverter(va);
  IIOColorSpace::~IIOColorSpace((v42 - 176));
  IIOColorSpace::~IIOColorSpace((v42 - 160));
  IIOColorSpace::~IIOColorSpace((v42 - 144));
  IIOColorSpace::~IIOColorSpace((v42 - 128));
  _Unwind_Resume(a1);
}

vImage_Error IIOIOSurfaceWrapper_CIF10::convert_w30r_to_ARGB16F(IIOIOSurfaceWrapper_CIF10 *this, vImage_Buffer *src, vImage_Buffer *dest)
{
  *permuteMap = 197121;
  v3 = vImageConvert_XRGB2101010ToARGB16F(src, 1.0, dest, *(this + 64), *(this + 65), permuteMap, 0x810u);
  if (v3)
  {
    kdebug_trace();
  }

  return v3;
}

uint64_t IIOIOSurfaceWrapper_CIF10::convert_b3a8_to_ARGB16F(IIOIOSurfaceWrapper_CIF10 *this, vImage_Buffer *a2, vImage_Buffer *a3, vImage_Buffer *a4)
{
  if (*(this + 16) != 2)
  {
    return 4294967246;
  }

  v4 = vImageConvert_XRGB2101010_A8ToARGB16F();
  if (v4)
  {
    kdebug_trace();
  }

  return v4;
}

uint64_t IIOIOSurfaceWrapper_CIF10::copyImageBlockSet_8bit(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v36 = xmmword_1EF4DCC98;
  v37 = xmmword_1EF4DCC88;
  ColorMatchMode = IIOIOSurfaceWrapper_CIF10::getColorMatchMode(a1, *&a3);
  if (IOSurfaceLock(*(a1 + 72), 1u, 0))
  {
    goto LABEL_27;
  }

  v12 = *(a1 + 72);
  if (*(a1 + 88) == 1647534392)
  {
    BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(v12, 0);
    v14 = IOSurfaceGetBaseAddressOfPlane(*(a1 + 72), 1uLL);
    if (BaseAddressOfPlane)
    {
      goto LABEL_4;
    }

LABEL_7:
    v25 = "*** IOSurfaceGetBaseAddress returned NULL -- (protected: %s)\n";
    v26 = 2742;
LABEL_26:
    _cg_jpeg_mem_term("copyImageBlockSet_8bit", v26, v25);
    IOSurfaceUnlock(*(a1 + 72), 1u, 0);
    goto LABEL_27;
  }

  BaseAddressOfPlane = IOSurfaceGetBaseAddress(v12);
  v14 = 0;
  if (!BaseAddressOfPlane)
  {
    goto LABEL_7;
  }

LABEL_4:
  v20 = *(a1 + 112);
  v21 = a3 * *(a1 + 120);
  v22 = &BaseAddressOfPlane[v21 + (a4 * v20)];
  v23 = *(a1 + 240);
  if (v14)
  {
    v21 = a3 * *(a1 + 248);
    v24 = v14 + v21 + (a4 * v23);
  }

  else
  {
    v24 = 0;
  }

  v35.data = v22;
  v35.height = a6;
  v35.width = a5;
  v35.rowBytes = v20;
  v34.data = *(a1 + 168);
  v34.height = a6;
  v27 = *(a1 + 184);
  v34.width = a5;
  v34.rowBytes = v27;
  v33[0] = v24;
  v33[1] = a6;
  v33[2] = a5;
  v33[3] = v23;
  if (v24)
  {
    v28 = v33;
  }

  else
  {
    v28 = 0;
  }

  if (*(a1 + 272) == 1)
  {
    v29 = IIOIOSurfaceWrapper_CIF10::copy_CIF10_8bit_sRGB(a1, &v35, v28, &v34);
    IOSurfaceUnlock(*(a1 + 72), 1u, 0);
    if (!v29)
    {
      goto LABEL_29;
    }

LABEL_27:
    _ImageIO_Free(*(a1 + 168), *(a1 + 176));
    result = 0;
    *(a1 + 168) = 0;
    return result;
  }

  if (ColorMatchMode == 2)
  {
    if (gCanUseMSRForColorConversion != 1)
    {
      goto LABEL_24;
    }

    v39.origin.x = a3;
    v39.origin.y = a4;
    v39.size.width = a5;
    v39.size.height = a6;
    if (!IIOIOSurfaceWrapper_CIF10::copy_and_colormatch_CIF10_to_P3_MSR(a1, v39, v15, v16, &v34))
    {
      goto LABEL_28;
    }

    v30 = "*** ERROR: copy_and_colormatch_CIF10_to_P3_MSR returned: %d\n";
    v31 = 2804;
    goto LABEL_23;
  }

  if (ColorMatchMode == 1 && (*(a1 + 267) & 1) == 0)
  {
    v38.origin.x = a3;
    v38.origin.y = a4;
    v38.size.width = a5;
    v38.size.height = a6;
    if (!IIOIOSurfaceWrapper_CIF10::copy_and_colormatch_CIF10_to_P3_CA(a1, v38, v15, v16, &v34))
    {
      goto LABEL_28;
    }

    v30 = "*** ERROR: copy_and_colormatch_CIF10_to_P3_CA returned: %d\n";
    v31 = 2796;
LABEL_23:
    _cg_jpeg_mem_term("copyImageBlockSet_8bit", v31, v30);
  }

LABEL_24:
  if (IIOIOSurfaceWrapper_CIF10::copy_and_colormatch_CIF10_to_P3_vImage(a1, *(&v17 - 1), &v35, v28, &v34))
  {
    v25 = "*** ERROR: copy_and_colormatch_CIF10_to_P3_vImage returned: %d\n";
    v26 = 2810;
    goto LABEL_26;
  }

LABEL_28:
  IOSurfaceUnlock(*(a1 + 72), 1u, 0);
LABEL_29:
  v35.data = CGImageBlockCreate();
  return CGImageBlockSetCreate();
}

uint64_t IIOIOSurfaceWrapper_CIF10::getColorMatchMode(IIOIOSurfaceWrapper_CIF10 *this, CGRect a2)
{
  v2 = *(this + 67);
  if (gCanUseMSRForColorConversion)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  if (v4 == 1)
  {
    height = a2.size.height;
    width = a2.size.width;
    v4 = 3;
    if ((IIOIsAppSuspended(this) & 1) == 0)
    {
      v8 = *(this + 12);
      v9 = *(this + 13);
      if ((v9 * v8) >> 7 >= 0xE1)
      {
        v4 = 1;
      }

      else
      {
        v4 = 3;
      }

      if (width != v8 || height != v9)
      {
        if (*(this + 54) == 1)
        {
          if (gCanUseMSRForColorConversion)
          {
            return 2;
          }

          else
          {
            return 3;
          }
        }

        else
        {
          return 3;
        }
      }
    }
  }

  return v4;
}

uint64_t IIOIOSurfaceWrapper_CIF10::copyImageBlockSet_16bit(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v57 = xmmword_1EF4DCC98;
  v58 = xmmword_1EF4DCC88;
  v56 = 0;
  ColorMatchMode = IIOIOSurfaceWrapper_CIF10::getColorMatchMode(a1, *&a3);
  if (IOSurfaceLock(*(a1 + 72), 1u, 0))
  {
    goto LABEL_2;
  }

  v26 = *(a1 + 72);
  if (*(a1 + 88) == 1647534392)
  {
    BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(v26, 0);
    v28 = IOSurfaceGetBaseAddressOfPlane(*(a1 + 72), 1uLL);
    if (BaseAddressOfPlane)
    {
      goto LABEL_29;
    }

LABEL_32:
    _cg_jpeg_mem_term("copyImageBlockSet_16bit", 2868, "*** IOSurfaceGetBaseAddress returned NULL -- (protected: %s)\n");
    IOSurfaceUnlock(*(a1 + 72), 1u, 0);
LABEL_2:
    v12 = -50;
    goto LABEL_3;
  }

  BaseAddressOfPlane = IOSurfaceGetBaseAddress(v26);
  v28 = 0;
  if (!BaseAddressOfPlane)
  {
    goto LABEL_32;
  }

LABEL_29:
  v34 = *(a1 + 112);
  v35 = a3 * *(a1 + 120);
  v36 = &BaseAddressOfPlane[v35 + (a4 * v34)];
  v37 = *(a1 + 240);
  if (v28)
  {
    v35 = a3 * *(a1 + 248);
    v38 = v28 + v35 + (a4 * v37);
  }

  else
  {
    v38 = 0;
  }

  v55.data = v36;
  v55.height = a6;
  v55.width = a5;
  v55.rowBytes = v34;
  v54.data = *(a1 + 168);
  v54.height = a6;
  v39 = *(a1 + 184);
  v54.width = a5;
  v54.rowBytes = v39;
  v53[0] = v38;
  v53[1] = a6;
  v53[2] = a5;
  v53[3] = v37;
  if (v38)
  {
    v40 = v53;
  }

  else
  {
    v40 = 0;
  }

  v41 = *(a1 + 88);
  if (v41 != 1999843442 && v41 != 1647534392)
  {
    v43 = v41 >> 24;
    if ((v41 >> 24) <= 0x7F)
    {
      v44 = *(MEMORY[0x1E69E9830] + 4 * v43 + 60) & 0x40000;
    }

    else
    {
      v44 = __maskrune(v43, 0x40000uLL);
      v41 = *(a1 + 88);
    }

    if (v44)
    {
      v45 = (v41 >> 24);
    }

    else
    {
      v45 = 46;
    }

    v46 = v41 << 8 >> 24;
    if (v46 <= 0x7F)
    {
      v47 = *(MEMORY[0x1E69E9830] + 4 * v46 + 60) & 0x40000;
    }

    else
    {
      v47 = __maskrune(v46, 0x40000uLL);
      v41 = *(a1 + 88);
    }

    if (v47)
    {
      v48 = (v41 << 8 >> 24);
    }

    else
    {
      v48 = 46;
    }

    v49 = v41 >> 8;
    if (v49 <= 0x7F)
    {
      v50 = *(MEMORY[0x1E69E9830] + 4 * v49 + 60) & 0x40000;
    }

    else
    {
      v50 = __maskrune(v49, 0x40000uLL);
      v41 = *(a1 + 88);
    }

    if (v50)
    {
      v51 = (v41 >> 8);
    }

    else
    {
      v51 = 46;
    }

    if (v41 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v41 + 60) & 0x40000) != 0)
      {
        goto LABEL_68;
      }
    }

    else if (__maskrune(v41, 0x40000uLL))
    {
LABEL_68:
      v52 = *(a1 + 88);
LABEL_71:
      LogError("copyImageBlockSet_16bit", 2948, "*** pixelFormat '%c%c%c%c' not supported\n", v45, v48, v51, v52);
      v12 = -4;
      goto LABEL_72;
    }

    v52 = 46;
    goto LABEL_71;
  }

  if (*(a1 + 216) == 5)
  {
    v42 = IIOIOSurfaceWrapper_CIF10::copy_to_CIF10_FP16_xsRGB(a1, &v55, v30, &v54);
    if (v42)
    {
      v12 = v42;
      _cg_jpeg_mem_term("copyImageBlockSet_16bit", 2890, "*** ERROR: copy_to_CIF10_FP16_xsRGB returned: %d\n");
LABEL_72:
      IOSurfaceUnlock(*(a1 + 72), 1u, 0);
LABEL_3:
      kdebug_trace();
      v13 = *(a1 + 88);
      v14 = v13 >> 24;
      v15 = MEMORY[0x1E69E9830];
      if ((v13 >> 24) <= 0x7F)
      {
        v16 = *(MEMORY[0x1E69E9830] + 4 * v14 + 60) & 0x40000;
      }

      else
      {
        v16 = __maskrune(v14, 0x40000uLL);
        v13 = *(a1 + 88);
      }

      if (v16)
      {
        v17 = (v13 >> 24);
      }

      else
      {
        v17 = 46;
      }

      v18 = v13 << 8 >> 24;
      if (v18 <= 0x7F)
      {
        v19 = *(v15 + 4 * v18 + 60) & 0x40000;
      }

      else
      {
        v19 = __maskrune(v18, 0x40000uLL);
        v13 = *(a1 + 88);
      }

      if (v19)
      {
        v20 = (v13 << 8 >> 24);
      }

      else
      {
        v20 = 46;
      }

      v21 = v13 >> 8;
      if (v21 <= 0x7F)
      {
        v22 = *(v15 + 4 * v21 + 60) & 0x40000;
      }

      else
      {
        v22 = __maskrune(v21, 0x40000uLL);
        v13 = *(a1 + 88);
      }

      if (v22)
      {
        v23 = (v13 >> 8);
      }

      else
      {
        v23 = 46;
      }

      if (v13 <= 0x7F)
      {
        if ((*(v15 + 4 * v13 + 60) & 0x40000) != 0)
        {
          goto LABEL_23;
        }
      }

      else if (__maskrune(v13, 0x40000uLL))
      {
LABEL_23:
        v24 = *(a1 + 88);
LABEL_26:
        LogError("copyImageBlockSet_16bit", 2968, "*** copyImageBlockSet_16bit '%c%c%c%c' failed: err=%d\n", v17, v20, v23, v24, v12);
        _ImageIO_Free(*(a1 + 168), *(a1 + 176));
        result = 0;
        *(a1 + 168) = 0;
        return result;
      }

      v24 = 46;
      goto LABEL_26;
    }

    goto LABEL_73;
  }

  if (ColorMatchMode == 1 && (*(a1 + 267) & 1) == 0)
  {
    v59.origin.x = a3;
    v59.origin.y = a4;
    v59.size.width = a5;
    v59.size.height = a6;
    if (!IIOIOSurfaceWrapper_CIF10::copy_and_colormatch_CIF10_to_P3_CA(a1, v59, v29, v30, &v54))
    {
LABEL_73:
      IOSurfaceUnlock(*(a1 + 72), 1u, 0);
      goto LABEL_74;
    }

    _cg_jpeg_mem_term("copyImageBlockSet_16bit", 2928, "*** ERROR: copy_and_colormatch_CIF10_to_P3_CA returned: %d\n");
  }

  v12 = IIOIOSurfaceWrapper_CIF10::copy_and_colormatch_CIF10_to_P3_vImage(a1, *(&v31 - 1), &v55, v40, &v54);
  IOSurfaceUnlock(*(a1 + 72), 1u, 0);
  if (v12)
  {
    goto LABEL_3;
  }

LABEL_74:
  v56 = CGImageBlockCreate();
  return CGImageBlockSetCreate();
}

uint64_t IIOIOSurfaceWrapper_CIF10::copyImageBlockSetWithOptions8Bit(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  pthread_mutex_lock((a1 + 8));
  v20 = (*(*a1 + 40))(a1, 8, a3, a5, a6, a7, a8, a9, a10);
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = (*(*a1 + 24))(a1, a2, a3, a5, a6, a7, a8, a9, a10);
  }

  (*(*a1 + 48))(a1);
  if (v20)
  {
    _cg_jpeg_mem_term("copyImageBlockSetWithOptions8Bit", 3211, "*** ERROR: copyImageBlockSetWithOptions8Bit err = %d\n");
  }

  *a4 = (*(*a1 + 64))(a1, v20, a5, a6, a7, a8);
  pthread_mutex_unlock((a1 + 8));
  return v21;
}

uint64_t IIOIOSurfaceWrapper_CIF10::copyImageBlockSetWithOptions16Bit(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  pthread_mutex_lock((a1 + 8));
  v20 = (*(*a1 + 40))(a1, 16, a3, a5, a6, a7, a8, a9, a10);
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = (*(*a1 + 32))(a1, a2, a3, a5, a6, a7, a8, a9, a10);
  }

  (*(*a1 + 48))(a1);
  if (v20)
  {
    _cg_jpeg_mem_term("copyImageBlockSetWithOptions16Bit", 3246, "*** ERROR: copyImageBlockSetWithOptions16Bit err = %d\n");
  }

  *a4 = (*(*a1 + 64))(a1, v20, a5, a6, a7, a8);
  pthread_mutex_unlock((a1 + 8));
  return v21;
}

uint64_t IIOIOSurfaceWrapper_CIF10::packDebugInfo(IIOIOSurfaceWrapper_CIF10 *this, CGRect a2, uint64_t a3)
{
  result = IIOIOSurfaceWrapperBase::packDebugInfo(this, a2, a3);
  if (*(this + 200))
  {
    return result | 0x1000;
  }

  return result;
}

void IIOIOSurfaceWrapper_YCC::IIOIOSurfaceWrapper_YCC(IIOIOSurfaceWrapper_YCC *this, __IOSurface *a2, size_t a3, size_t a4, int a5, CGImageAlphaInfo a6, IIODictionary *a7)
{
  IIOIOSurfaceWrapperBase::IIOIOSurfaceWrapperBase(this, a2, a3, a4, a5, a6, a7);
  v9 = &unk_1EF4DCC18;
  *v10 = &unk_1EF4DCC18;
  if (v10[16] < 2uLL)
  {
    *(this + 14) = 0u;
    *(this + 15) = 0u;
  }

  else
  {
    *(this + 28) = IOSurfaceGetWidthOfPlane(*(this + 9), 1uLL);
    *(this + 29) = IOSurfaceGetHeightOfPlane(*(this + 9), 1uLL);
    *(this + 30) = IOSurfaceGetBytesPerRowOfPlane(*(this + 9), 1uLL);
    *(this + 31) = IOSurfaceGetBytesPerElementOfPlane(*(this + 9), 1uLL);
    v9 = *this;
  }

  v9[7](this, a7, 0);
}

void IIOIOSurfaceWrapper_YCC::~IIOIOSurfaceWrapper_YCC(IIOIOSurfaceWrapper_YCC *this)
{
  IIOIOSurfaceWrapperBase::~IIOIOSurfaceWrapperBase(this);

  JUMPOUT(0x186602850);
}

void IIOIOSurfaceWrapper_YCC::completeSetup(IIOIOSurfaceWrapper_YCC *this, IIODictionary *a2, const __CFString *a3)
{
  v4 = *(this + 22);
  if (v4 > 2016686641)
  {
    if (v4 <= 2019963439)
    {
      v6 = v4 == 2016686642;
      v7 = 2016687156;
    }

    else
    {
      v6 = v4 == 2019963440 || v4 == 2019963442;
      v7 = 2019963956;
    }

    if (v6 || v4 == v7)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v4 > 875704933)
    {
      if (v4 != 875704934 && v4 != 875836518)
      {
        if (v4 != 2016686640)
        {
          goto LABEL_30;
        }

LABEL_26:
        *(this + 54) = 6;
        v9 = *MEMORY[0x1E695F110];
        *(this + 41) = 0;
        goto LABEL_27;
      }

LABEL_19:
      *(this + 54) = 1;
      v9 = *MEMORY[0x1E695F1C0];
      *(this + 41) = 5;
      goto LABEL_27;
    }

    if (v4 == 875704422 || v4 == 875704438)
    {
      goto LABEL_19;
    }
  }

LABEL_30:
  v11 = v4 >> 24;
  if ((v4 >> 24) <= 0x7F)
  {
    v12 = *(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x40000;
  }

  else
  {
    v12 = __maskrune(v11, 0x40000uLL);
    v4 = *(this + 22);
  }

  if (v12)
  {
    v13 = (v4 >> 24);
  }

  else
  {
    v13 = 46;
  }

  v14 = v4 << 8 >> 24;
  if (v14 <= 0x7F)
  {
    v15 = *(MEMORY[0x1E69E9830] + 4 * v14 + 60) & 0x40000;
  }

  else
  {
    v15 = __maskrune(v14, 0x40000uLL);
    v4 = *(this + 22);
  }

  if (v15)
  {
    v16 = (v4 << 8 >> 24);
  }

  else
  {
    v16 = 46;
  }

  v17 = v4 >> 8;
  if (v17 <= 0x7F)
  {
    v18 = *(MEMORY[0x1E69E9830] + 4 * v17 + 60) & 0x40000;
  }

  else
  {
    v18 = __maskrune(v17, 0x40000uLL);
    v4 = *(this + 22);
  }

  if (v18)
  {
    v19 = (v4 >> 8);
  }

  else
  {
    v19 = 46;
  }

  if (v4 <= 0x7F)
  {
    if ((*(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x40000) != 0)
    {
      goto LABEL_50;
    }

LABEL_52:
    v20 = 46;
    goto LABEL_53;
  }

  if (!__maskrune(v4, 0x40000uLL))
  {
    goto LABEL_52;
  }

LABEL_50:
  v20 = *(this + 88);
LABEL_53:
  LogError("completeSetup", 3318, "*** pixelformat '%c%c%c%c' not handled\n", v13, v16, v19, v20);
  v9 = 0;
LABEL_27:

  IIOIOSurfaceWrapperBase::completeSetup(this, a2, v9);
}

uint64_t IIOIOSurfaceWrapper_YCC::createImage(IIOIOSurfaceWrapper_YCC *this)
{
  v2 = *(this + 22);
  if (v2 <= 2016686641)
  {
    if (v2 <= 875704933)
    {
      v3 = v2 == 875704422;
      v5 = 875704438;
      goto LABEL_15;
    }

    v3 = v2 == 875704934 || v2 == 875836518;
    v4 = 12848;
    goto LABEL_14;
  }

  if (v2 <= 2019963439)
  {
    v3 = v2 == 2016686642;
    v4 = 13364;
LABEL_14:
    v5 = v4 | 0x78340000;
    goto LABEL_15;
  }

  v3 = v2 == 2019963440 || v2 == 2019963956;
  v5 = 2019963442;
LABEL_15:
  if (v3 || v2 == v5)
  {

    return IIOIOSurfaceWrapper_YCC::createImageWithImageProvider(this);
  }

  else
  {
    if ((v2 >> 24) > 0x7F)
    {
      __maskrune(v2 >> 24, 0x40000uLL);
      v2 = *(this + 22);
    }

    v8 = v2 << 8 >> 24;
    if (v8 > 0x7F)
    {
      __maskrune(v8, 0x40000uLL);
      v2 = *(this + 22);
    }

    v9 = v2 >> 8;
    if (v9 > 0x7F)
    {
      __maskrune(v9, 0x40000uLL);
      v2 = *(this + 22);
    }

    if (v2 > 0x7F)
    {
      __maskrune(v2, 0x40000uLL);
    }

    _cg_jpeg_mem_term("createImage", 3348, "    CGImageCreateFromIOSurface -- unsupported pixelformat: '%c%c%c%c'\n");
    return 0;
  }
}

uint64_t IIOIOSurfaceWrapper_YCC::createImageWithImageProvider(IIOIOSurfaceWrapper_YCC *this)
{
  v12[2] = 0;
  v12[3] = 2;
  v2 = IIOIOSurfaceWrapper_YCC::CopyImageBlockSetWithOptions;
  if (*(this + 140))
  {
    v2 = IIOIOSurfaceWrapperBase::CopyImageBlockSetWithOptionsNoOp;
  }

  v12[4] = v2;
  v12[5] = IIOIOSurfaceWrapperBase::CopyIOSurface;
  v12[6] = IIOIOSurfaceWrapperBase::ReleaseInfo;
  v12[0] = 0;
  v12[1] = 0;
  IIODictionary::IIODictionary(v12);
  v3 = *(this + 41);
  if (v3 <= 6)
  {
    v4 = MEMORY[0x1E695E4D0];
    if (((1 << v3) & 6) != 0)
    {
      IIODictionary::setObjectForKey(v12, *MEMORY[0x1E695E4D0], *MEMORY[0x1E695F2C8]);
    }

    else if (((1 << v3) & 0x18) == 0)
    {
      if (((1 << v3) & 0x60) == 0)
      {
        goto LABEL_11;
      }

      v5 = MEMORY[0x1E695F2C0];
      goto LABEL_10;
    }

    v5 = MEMORY[0x1E695F2B8];
LABEL_10:
    IIODictionary::setObjectForKey(v12, *v4, *v5);
  }

LABEL_11:
  v6 = *(this + 10);
  v10 = 0;
  v11 = 0;
  IIOColorSpace::IIOColorSpace(&v10, *MEMORY[0x1E695F1C0]);
  if (!v6)
  {
    v6 = v11;
  }

  v7 = CGImageProviderCreate();
  if (v7)
  {
    (*(*this + 72))(this, v7);
    v8 = CGImageCreateWithImageProvider();
    CGImageProviderRelease();
    if (!*(this + 10))
    {
      IIO_IOSurfaceAddColorSpace(*(this + 9), v6);
    }
  }

  else
  {
    v8 = 0;
  }

  IIOColorSpace::~IIOColorSpace(&v10);
  IIODictionary::~IIODictionary(v12);
  return v8;
}

void sub_1860A9224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t IIOIOSurfaceWrapper_YCC::CopyImageBlockSetWithOptions(uint64_t a1, uint64_t a2, __CFDictionary *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  memset(v36, 0, sizeof(v36));
  IIODictionary::IIODictionary(v36, a3);
  v18 = *(a1 + 216);
  IIOPackCopyCallbackInfo(a3);
  CGImageProviderGetBitmapInfo();
  kdebug_trace();
  if ((gIIODebugFlags & 0xC000) != 0)
  {
    v20 = *(a1 + 88);
    v21 = v20 >> 24;
    if ((v20 >> 24) <= 0x7F)
    {
      v22 = *(MEMORY[0x1E69E9830] + 4 * v21 + 60) & 0x40000;
    }

    else
    {
      v22 = __maskrune(v20 >> 24, 0x40000uLL);
    }

    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 46;
    }

    v24 = v20 << 8 >> 24;
    if (v24 <= 0x7F)
    {
      v25 = *(MEMORY[0x1E69E9830] + 4 * v24 + 60) & 0x40000;
    }

    else
    {
      v25 = __maskrune(v20 << 8 >> 24, 0x40000uLL);
    }

    if (v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = 46;
    }

    v27 = v20 >> 8;
    if (v27 <= 0x7F)
    {
      v28 = *(MEMORY[0x1E69E9830] + 4 * v27 + 60) & 0x40000;
    }

    else
    {
      v28 = __maskrune(v20 >> 8, 0x40000uLL);
    }

    v20 = v20;
    if (v20 <= 0x7F)
    {
      v29 = *(MEMORY[0x1E69E9830] + 4 * v20 + 60) & 0x40000;
    }

    else
    {
      v29 = __maskrune(v20, 0x40000uLL);
    }

    if (v28)
    {
      v30 = v27;
    }

    else
    {
      v30 = 46;
    }

    if (v29)
    {
      v31 = v20;
    }

    else
    {
      v31 = 46;
    }

    ImageIOLog("S   CopyImageBlockSetWithOptions_YCC: {%g, %g, %g, %g} {%g, %g} '%c%c%c%c' %s\n", a4, a5, a6, a7, a8, a9, v23, v26, v30, v31, off_1E6F0BD88[v18]);
  }

  v35 = 0;
  if (*(a1 + 141) == 1)
  {
    v32 = IIOIOSurfaceWrapperBase::createBlockSetForCompressedSurface(a1, a2, a4, a5, a6, a7, v19, &v35);
  }

  else if (v18 == 6)
  {
    v32 = IIOIOSurfaceWrapper_YCC::copyImageBlockSetWithOptions10Bit(a1, a2, v19, &v35);
  }

  else
  {
    if (v18 != 1)
    {
      LogError("CopyImageBlockSetWithOptions", 3827, "*** unsupported componentType '%s' (%d)\n", gComponentString[v18], v18);
      goto LABEL_36;
    }

    v32 = IIOIOSurfaceWrapper_YCC::copyImageBlockSetWithOptions8Bit(a1, a2, v36, &v35);
  }

  v33 = v32;
  if (!v32)
  {
LABEL_36:
    _cg_jpeg_mem_term("CopyImageBlockSetWithOptions", 3837, "*** ERROR: CopyImageBlockSetWithOptions returned NULL\n");
    v33 = 0;
    goto LABEL_37;
  }

  CGImageBlockSetGetRect();
LABEL_37:
  kdebug_trace();
  IIODictionary::~IIODictionary(v36);
  return v33;
}

void sub_1860A956C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void ___ZN23IIOIOSurfaceWrapper_YCC27copyImageBlockSet_420f_8bitEP15CGImageProvider6CGRect6CGSizeP13IIODictionary_block_invoke()
{
  v0 = 0;
  v11[16] = *MEMORY[0x1E69E9840];
  v8[0] = xmmword_186226C58;
  v8[1] = unk_186226C68;
  v7[0] = xmmword_186226C78;
  v7[1] = unk_186226C88;
  v1 = *MEMORY[0x1E6958840];
  v2 = *MEMORY[0x1E6958848];
  v6 = 1072746935;
  v5 = xmmword_186226C98;
  v9 = v7;
  v10 = v1;
  v3 = v11;
  v11[0] = &unk_1ED569E00;
  v11[1] = v8;
  v11[2] = v1;
  v11[3] = &unk_1ED569E80;
  v11[4] = v7;
  v11[5] = v2;
  v11[6] = &unk_1ED569F00;
  v11[7] = v8;
  v11[8] = v2;
  v11[9] = &unk_1ED569F80;
  v11[10] = v7;
  v11[11] = &v5;
  v11[12] = &unk_1ED56A000;
  v11[13] = v8;
  v11[14] = &v5;
  v11[15] = &unk_1ED56A080;
  do
  {
    Conversion = vImageConvert_YpCbCrToARGB_GenerateConversion(*(v3 - 1), *(v3 - 2), *v3, kvImage420Yp8_CbCr8, kvImageARGB8888, 0);
    if (Conversion)
    {
      IIO_vImageErrorString(Conversion);
      _cg_jpeg_mem_term("copyImageBlockSet_420f_8bit_block_invoke", 3536, "*** ERROR: vImageConvert_YpCbCrToARGB_GenerateConversion[%d] returned %ld (%s)\n");
    }

    ++v0;
    v3 += 3;
  }

  while (v0 != 6);
}

uint64_t IIOIOSurfaceWrapper_YCC::packDebugInfo(IIOIOSurfaceWrapper_YCC *this, CGRect a2, uint64_t a3)
{
  result = IIOIOSurfaceWrapperBase::packDebugInfo(this, a2, a3);
  if (*(this + 200))
  {
    return result | 0x1000;
  }

  return result;
}

CFTypeID ___ZL30CheckIfDeviceHasDisplayP3Panelv_block_invoke()
{
  gDeviceHasExtendedColorDisplay = MGCopyAnswer() == *MEMORY[0x1E695E4D0];
  v0 = *MEMORY[0x1E696CD68];
  v1 = IOServiceMatching("AppleM2ScalerCSCDriver");
  result = IOServiceGetMatchingService(v0, v1);
  if (result)
  {
    v3 = result;
    v4 = IORegistryEntrySearchCFProperty(result, "IOService", @"IOSurfaceAcceleratorCapabilitiesDict", 0, 0);
    if (v4)
    {
      v5 = v4;
      v6 = CFGetTypeID(v4);
      if (v6 == CFDictionaryGetTypeID())
      {
        if (CFDictionaryContainsKey(v5, @"kSurfaceAcceleratorCapabilitiesColorManager"))
        {
          Value = CFDictionaryGetValue(v5, @"kSurfaceAcceleratorCapabilitiesColorManager");
          if (Value)
          {
            valuePtr = 0;
            if (CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
            {
              gCanUseMSRForColorConversion = valuePtr != 0;
            }
          }
        }
      }

      CFRelease(v5);
    }

    result = IOObjectRelease(v3);
  }

  if (gCanUseMSRForColorConversion == 1)
  {
    gCanUseMSRForColorConversion = 0;
    result = IIOGetBundleIdentifer();
    if (result)
    {
      v8 = result;
      TypeID = CFStringGetTypeID();
      result = CFGetTypeID(v8);
      if (TypeID == result)
      {
        result = CFStringCompare(v8, @"com.apple.springboard", 0);
        if (!result)
        {
          gCanUseMSRForColorConversion = 1;
        }
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return kdebug_trace();
}

uint64_t OUTLINED_FUNCTION_8_1@<X0>(unsigned int a1@<W8>)
{

  return IIOAlignRowBytes((v2 * a1), 0);
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t a1, size_t a2)
{

  return _ImageIO_Free(v2, a2);
}

uint64_t OUTLINED_FUNCTION_10_1(IIOIOSurfaceWrapperBase *this, int a2, IIODictionary *a5, CGRect a3, CGSize a4)
{

  return IIOIOSurfaceWrapperBase::preCopyBlockSet(this, a2, a3, a4, a5);
}

void png_handle_PLTE(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 76);
  if ((v8 & 1) == 0)
  {
    goto LABEL_39;
  }

  if ((v8 & 2) != 0)
  {
    v24 = "duplicate";
    goto LABEL_41;
  }

  v9 = a3;
  if ((v8 & 4) != 0)
  {
    png_crc_finish(a1, a3, a3, a4, a5, a6, a7);
    v11 = "out of place";
    goto LABEL_7;
  }

  *(a1 + 76) = v8 | 2;
  v10 = *(a1 + 431);
  if ((v10 & 2) == 0)
  {
    png_crc_finish(a1, a3, a3, a4, a5, a6, a7);
    v11 = "ignored in grayscale PNG";
LABEL_7:

    png_chunk_benign_error(a1, v11);
    return;
  }

  if (a3 > 0x300 || a3 % 3)
  {
    png_crc_finish(a1, a3, a3, a4, a5, a6, a7);
    if (*(a1 + 431) != 3)
    {
      v11 = "invalid";
      goto LABEL_7;
    }

    v24 = "invalid";
LABEL_41:
    png_chunk_error(a1, v24);
  }

  v13 = a3 / 3u;
  if (v10 == 3)
  {
    v14 = 1 << *(a1 + 432);
  }

  else
  {
    v14 = 256;
  }

  bzero(v26, 0x300uLL);
  if (v14 < v13)
  {
    v13 = v14;
  }

  if (v13 >= 1)
  {
    v20 = v13;
    v21 = v26;
    do
    {
      memset(v25, 0, 3);
      png_crc_read(a1, v25, 3u);
      if (v26 > v21 || v21 + 3 > &v27)
      {
        goto LABEL_38;
      }

      *v21 = v25[0];
      *(v21 + 1) = *(v25 + 1);
      v21 += 3;
    }

    while (--v20);
  }

  png_crc_finish(a1, (-3 * v13 + v9), v15, v16, v17, v18, v19);
  if (v14 < 0)
  {
LABEL_38:
    __break(0x5519u);
LABEL_39:
    v24 = "missing IHDR";
    goto LABEL_41;
  }

  _cg_png_set_PLTE(a1, a2, v26, v13);
  if (*(a1 + 424))
  {
    *(a1 + 424) = 0;
    if (!a2)
    {
      v22 = "tRNS must be after";
LABEL_36:
      png_chunk_benign_error(a1, v22);
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

  v23 = *(a2 + 8);
  if ((v23 & 0x10) != 0)
  {
    *(a1 + 424) = 0;
LABEL_31:
    *(a2 + 42) = 0;
    png_chunk_benign_error(a1, "tRNS must be after");
    v23 = *(a2 + 8);
  }

  if ((v23 & 0x40) != 0)
  {
    png_chunk_benign_error(a1, "hIST must be after");
  }

  if ((*(a2 + 8) & 0x20) != 0)
  {
    v22 = "bKGD must be after";
    goto LABEL_36;
  }
}

uint64_t png_handle_IEND(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 76);
  if ((~v8 & 5) != 0)
  {
    png_chunk_error(a1, "out of place");
  }

  v9 = a3;
  *(a1 + 76) = v8 | 0x18;
  result = png_crc_finish(a1, a3, a3, a4, a5, a6, a7);
  if (v9)
  {

    return png_chunk_benign_error(a1, "invalid");
  }

  return result;
}

uint64_t png_handle_sBIT(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 76);
  if ((v8 & 1) == 0)
  {
    png_chunk_error(a1, "missing IHDR");
  }

  if ((v8 & 6) != 0)
  {
    png_crc_finish(a1, a3, a3, a4, a5, a6, a7);
    v10 = "out of place";
LABEL_4:

    return png_chunk_benign_error(a1, v10);
  }

  if (a2 && (*(a2 + 8) & 2) != 0)
  {
    png_crc_finish(a1, a3, a3, a4, a5, a6, a7);
    v10 = "duplicate";
    goto LABEL_4;
  }

  v13 = *(a1 + 431);
  if (v13 == 3)
  {
    v14 = 8;
  }

  else
  {
    v13 = *(a1 + 435);
    v14 = *(a1 + 432);
  }

  if (a3 <= 4 && v13 == a3)
  {
    v33 = 16843009 * v14;
    png_crc_read(a1, &v33, a3);
    result = png_crc_finish(a1, 0, v15, v16, v17, v18, v19);
    if (!result)
    {
      if (a3)
      {
        v20 = a3;
        v21 = &v33;
        while (1)
        {
          v22 = *v21;
          v21 = (v21 + 1);
          if ((v22 - 1) >= v14)
          {
            return png_chunk_benign_error(a1, "invalid");
          }

          if (!--v20)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
LABEL_19:
        v23 = v33;
        if ((*(a1 + 431) & 2) != 0)
        {
          v24 = &v33 + 3;
          v25 = BYTE1(v33);
          v26 = BYTE2(v33);
        }

        else
        {
          v24 = &v33 + 1;
          *(a1 + 595) = v33;
          v25 = v23;
          v26 = v23;
        }

        v32 = *v24;
        *(a1 + 592) = v23;
        *(a1 + 593) = v25;
        *(a1 + 594) = v26;
        *(a1 + 596) = v32;
        if (a1 + 592 > (a1 + 597))
        {
          __break(0x5519u);
        }

        else
        {
          return png_set_sBIT(a1, a2, a1 + 592);
        }
      }
    }
  }

  else
  {
    png_chunk_benign_error(a1, "invalid");

    return png_crc_finish(a1, a3, v27, v28, v29, v30, v31);
  }

  return result;
}

void png_handle_sPLT(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a3;
  v52 = 0;
  v50 = 0u;
  *v51 = 0u;
  v11 = *(a1 + 1068);
  if (v11)
  {
    v12 = v11 - 1;
    if (!v12)
    {
LABEL_5:

      png_crc_finish(a1, v8, a3, a4, a5, a6, a7);
      return;
    }

    *(a1 + 1068) = v12;
    if (v12 == 1)
    {
      png_warning(a1, "No space in chunk cache for sPLT");
      goto LABEL_5;
    }
  }

  v13 = *(a1 + 76);
  if ((v13 & 1) == 0)
  {
    png_chunk_error(a1, "missing IHDR");
  }

  if ((v13 & 4) != 0)
  {
    png_crc_finish(a1, a3, a3, a4, a5, a6, a7);
    v29 = "out of place";
LABEL_17:

    png_chunk_benign_error(a1, v29);
    return;
  }

  buffer = png_read_buffer(a1, (a3 + 1), 2);
  if (!buffer)
  {
    png_crc_finish(a1, v8, v16, v17, v18, v19, v20);
    v29 = "out of memory";
    goto LABEL_17;
  }

  v21 = buffer;
  v22 = v15;
  v23 = v15 - buffer;
  if (v15 < buffer || v23 < v8)
  {
    goto LABEL_29;
  }

  png_crc_read(a1, buffer, v8);
  if (!png_crc_finish(a1, 0, v24, v25, v26, v27, v28))
  {
    v30 = (v21 + v8);
    if (v30 < v22 && v30 >= v21)
    {
      *v30 = 0;
      if (v22 > v21)
      {
        v7 = 0;
        do
        {
          v31 = v21 + v7 + 1;
          if (!*(v21 + v7))
          {
            goto LABEL_30;
          }

          ++v7;
        }

        while (v31 < v22 && v31 >= v21);
      }
    }

    while (1)
    {
      while (1)
      {
LABEL_29:
        __break(0x5519u);
LABEL_30:
        v33 = (v8 - 2);
        if (v8 >= 2)
        {
          v34 = (v7 + 1 + v21);
          if (v34 <= v21 + v33)
          {
            continue;
          }
        }

        v37 = "malformed sPLT chunk";
        goto LABEL_39;
        if (v34 >= v21)
        {
          LOBYTE(v51[0]) = *v34;
          v35 = LOBYTE(v51[0]);
          if (LOBYTE(v51[0]) == 8)
          {
            v36 = 6;
          }

          else
          {
            v36 = 10;
          }

          LODWORD(v8) = v33 - v7;
          if ((v33 - v7) % v36)
          {
            v37 = "sPLT chunk has bad length";
            goto LABEL_39;
          }

          v38 = 5 * ((v33 - v7) / v36);
          v49 = (v33 - v7) / v36;
          v39 = png_malloc_warn(a1, 10 * v49);
          v40 = v7 + 1;
          v41 = &v39[2 * v38];
          if (!v39)
          {
            v41 = 0;
          }

          if (v39 <= v41 && (0xCCCCCCCCCCCCCCCDLL * ((v41 - v39) >> 1)) >= v49)
          {
            break;
          }
        }
      }

      v51[1] = v39;
      LODWORD(v52) = v49;
      if (!v39)
      {
        break;
      }

      if (v36 <= v8)
      {
        v42 = 0;
        v43 = (v21 + v7 + 2);
        v44 = v39 + 4;
        do
        {
          if (v35 == 8)
          {
            if (v43 >= v22)
            {
              goto LABEL_29;
            }

            if (v43 < v21)
            {
              goto LABEL_29;
            }

            v45 = v43 + 2;
            *(v44 - 2) = *v43;
            if ((v43 + 1) >= v22)
            {
              goto LABEL_29;
            }

            if ((v43 + 1) < v21)
            {
              goto LABEL_29;
            }

            *(v44 - 1) = v43[1];
            if (v45 >= v22)
            {
              goto LABEL_29;
            }

            if (v45 < v21)
            {
              goto LABEL_29;
            }

            *v44 = *v45;
            if ((v43 + 3) >= v22 || (v43 + 3) < v21)
            {
              goto LABEL_29;
            }

            v46 = v43[3];
            v47 = (v43 + 4);
            v44[1] = v46;
          }

          else
          {
            if (v43 >= v22)
            {
              goto LABEL_29;
            }

            if (v43 < v21)
            {
              goto LABEL_29;
            }

            if ((v43 + 1) >= v22)
            {
              goto LABEL_29;
            }

            if ((v43 + 1) < v21)
            {
              goto LABEL_29;
            }

            *(v44 - 2) = bswap32(*v43) >> 16;
            if ((v43 + 2) >= v22)
            {
              goto LABEL_29;
            }

            if ((v43 + 2) < v21)
            {
              goto LABEL_29;
            }

            if ((v43 + 3) >= v22)
            {
              goto LABEL_29;
            }

            if ((v43 + 3) < v21)
            {
              goto LABEL_29;
            }

            *(v44 - 1) = bswap32(*(v43 + 1)) >> 16;
            if ((v43 + 4) >= v22)
            {
              goto LABEL_29;
            }

            if ((v43 + 4) < v21)
            {
              goto LABEL_29;
            }

            if ((v43 + 5) >= v22)
            {
              goto LABEL_29;
            }

            if ((v43 + 5) < v21)
            {
              goto LABEL_29;
            }

            *v44 = bswap32(*(v43 + 2)) >> 16;
            if ((v43 + 6) >= v22 || (v43 + 6) < v21 || (v43 + 7) >= v22 || (v43 + 7) < v21)
            {
              goto LABEL_29;
            }

            v44[1] = bswap32(*(v43 + 3)) >> 16;
            v47 = (v43 + 8);
          }

          if (v47 >= v22 || v47 < v21 || v47 + 1 >= v22 || v47 + 1 < v21)
          {
            goto LABEL_29;
          }

          v48 = *v47;
          v43 = (v47 + 1);
          v44[2] = bswap32(v48) >> 16;
          ++v42;
          v44 += 5;
        }

        while (v42 < v49);
      }

      if (v40 <= v23)
      {
        *&v50 = v21;
        *(&v50 + 1) = v40;
        png_set_sPLT(a1, a2, &v50, 1);
        png_free(a1, v51[1]);
        return;
      }
    }

    v37 = "sPLT chunk requires too much memory";
LABEL_39:

    png_warning(a1, v37);
  }
}

void png_handle_tRNS(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 76);
  if ((v8 & 1) == 0)
  {
    png_chunk_error(a1, "missing IHDR");
  }

  v9 = a3;
  if ((v8 & 4) != 0)
  {
    goto LABEL_15;
  }

  if (a2 && (*(a2 + 8) & 0x10) != 0)
  {
    png_crc_finish(a1, a3, a3, a4, a5, a6, a7);
    v17 = "duplicate";
    goto LABEL_16;
  }

  memset(v22, 0, sizeof(v22));
  v11 = *(a1 + 431);
  if (v11 == 3)
  {
    if ((v8 & 2) == 0)
    {
LABEL_15:
      png_crc_finish(a1, a3, a3, a4, a5, a6, a7);
      v17 = "out of place";
      goto LABEL_16;
    }

    if (a3 <= 0x100 && a3 - 1 < *(a1 + 416))
    {
      png_crc_read(a1, v22, a3);
      *(a1 + 424) = v9;
      goto LABEL_23;
    }

    png_crc_finish(a1, a3, a3, a4, a5, a6, a7);
    v17 = "invalid";
LABEL_16:

    png_chunk_benign_error(a1, v17);
    return;
  }

  if (v11 == 2)
  {
    v21 = 0;
    v20 = 0;
    if (a3 == 6)
    {
      png_crc_read(a1, &v20, 6u);
      *(a1 + 424) = 1;
      *(a1 + 626) = bswap32(v20) >> 16;
      *(a1 + 628) = bswap32(HIWORD(v20)) >> 16;
      *(a1 + 630) = bswap32(v21) >> 16;
      goto LABEL_23;
    }

LABEL_13:
    png_crc_finish(a1, a3, a3, a4, a5, a6, a7);
    png_chunk_benign_error(a1, "invalid");
    return;
  }

  if (*(a1 + 431))
  {
    png_crc_finish(a1, a3, a3, a4, a5, a6, a7);
    v17 = "invalid with alpha channel";
    goto LABEL_16;
  }

  LOWORD(v20) = 0;
  if (a3 != 2)
  {
    goto LABEL_13;
  }

  png_crc_read(a1, &v20, 2u);
  *(a1 + 424) = 1;
  *(a1 + 632) = bswap32(v20) >> 16;
LABEL_23:
  if (png_crc_finish(a1, 0, v12, v13, v14, v15, v16))
  {
    *(a1 + 424) = 0;
    v18 = *(a1 + 80);
    if ((*(a1 + 315) & 0x20) != 0)
    {
      if ((v18 & 0x200) != 0)
      {
        return;
      }
    }

    else if ((v18 & 0x400) == 0)
    {
      return;
    }

    v19 = 0;
  }

  else
  {
    v19 = *(a1 + 424);
  }

  if (v19 > 0x100 || a1 + 624 > (a1 + 634))
  {
    __break(0x5519u);
  }

  else
  {
    _cg_png_set_tRNS(a1, a2, v22, v19, a1 + 624);
  }
}

uint64_t png_handle_hIST(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if ((*(a1 + 76) & 1) == 0)
  {
    goto LABEL_24;
  }

  if ((*(a1 + 76) & 6) != 2)
  {
    png_crc_finish(a1, a3, a3, a4, a5, a6, a7);
    v12 = "out of place";
LABEL_20:

    return png_chunk_benign_error(a1, v12);
  }

  if (a2 && (*(a2 + 8) & 0x40) != 0)
  {
    png_crc_finish(a1, a3, a3, a4, a5, a6, a7);
    v12 = "duplicate";
    goto LABEL_20;
  }

  if ((a3 & 1) != 0 || a3 > 0x201 || (v9 = a3 >> 1, v9 != *(a1 + 416)))
  {
    png_crc_finish(a1, a3, a3, a4, a5, a6, a7);
    v12 = "invalid";
    goto LABEL_20;
  }

  memset(v14, 0, sizeof(v14));
  if (a3 >= 2)
  {
    v10 = v14;
    while (1)
    {
      v13 = 0;
      png_crc_read(a1, &v13, 2u);
      if (v10 < v14 || v10 + 1 > v15 || v10 > v10 + 1)
      {
        break;
      }

      *v10++ = bswap32(v13) >> 16;
      if (!--v9)
      {
        goto LABEL_14;
      }
    }

    __break(0x5519u);
LABEL_24:
    png_chunk_error(a1, "missing IHDR");
  }

LABEL_14:
  result = png_crc_finish(a1, 0, a3, a4, a5, a6, a7);
  if (!result)
  {
    return png_set_hIST(a1, a2, v14);
  }

  return result;
}

uint64_t png_handle_oFFs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 76);
  if ((v8 & 1) == 0)
  {
    png_chunk_error(a1, "missing IHDR");
  }

  if ((v8 & 4) != 0)
  {
    png_crc_finish(a1, a3, a3, a4, a5, a6, a7);
    v17 = "out of place";
  }

  else if (a2 && (*(a2 + 9) & 1) != 0)
  {
    png_crc_finish(a1, a3, a3, a4, a5, a6, a7);
    v17 = "duplicate";
  }

  else
  {
    if (a3 == 9)
    {
      v20 = 0;
      v19 = 0;
      png_crc_read(a1, &v19, 9u);
      result = png_crc_finish(a1, 0, v10, v11, v12, v13, v14);
      if (!result)
      {
        if (v19 < 0)
        {
          v16 = -((2147418112 * BYTE1(v19) - ((v19 << 24) | (BYTE2(v19) << 8) | BYTE3(v19))) & 0x7FFFFFFF);
        }

        else
        {
          v16 = _byteswap_ulong(v19);
        }

        if (SBYTE4(v19) < 0)
        {
          v18 = -((2147418112 * BYTE5(v19) - ((BYTE4(v19) << 24) | (BYTE6(v19) << 8) | HIBYTE(v19))) & 0x7FFFFFFF);
        }

        else
        {
          v18 = _byteswap_ulong(HIDWORD(v19));
        }

        return png_set_oFFs(a1, a2, v16, v18, v20);
      }

      return result;
    }

    png_crc_finish(a1, a3, a3, a4, a5, a6, a7);
    v17 = "invalid";
  }

  return png_chunk_benign_error(a1, v17);
}

void png_handle_pCAL(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a1 + 76);
  if ((v10 & 1) == 0)
  {
    png_chunk_error(a1, "missing IHDR");
  }

  v11 = a3;
  if ((v10 & 4) != 0)
  {
    png_crc_finish(a1, a3, a3, a4, a5, a6, a7);
    v27 = "out of place";
    goto LABEL_79;
  }

  if (a2 && (*(a2 + 9) & 4) != 0)
  {
    png_crc_finish(a1, a3, a3, a4, a5, a6, a7);
    v27 = "duplicate";
    goto LABEL_79;
  }

  buffer = png_read_buffer(a1, (a3 + 1), 2);
  if (buffer)
  {
    v20 = buffer;
    v21 = v14;
    if (v14 < buffer || v14 - buffer < v11)
    {
      goto LABEL_23;
    }

    png_crc_read(a1, buffer, v11);
    if (png_crc_finish(a1, 0, v22, v23, v24, v25, v26))
    {
      return;
    }

    v7 = v11;
    v11 = &v20[v11];
    if (v11 < v21 && v11 >= v20)
    {
      *v11 = 0;
      if (v21 > v20)
      {
        v8 = 0;
        do
        {
          if (!v20[v8])
          {
            goto LABEL_24;
          }
        }

        while (&v20[++v8] < v21 && &v20[v8] >= v20);
      }
    }

    while (1)
    {
      while (1)
      {
        do
        {
LABEL_23:
          __break(0x5519u);
LABEL_24:
          if (v7 - v8 <= 12)
          {
            v27 = "invalid";
            goto LABEL_79;
          }

          v29 = &v20[v8 + 1];
        }

        while (v29 >= v21 || v29 < v20);
        v30 = *v29;
        v31 = *v29;
        v32 = &v20[v8 + 2];
        v33 = v32 < v21 && v32 >= v20;
        v34 = v33;
        if (v30 < 0)
        {
          break;
        }

        if (v34)
        {
          v35 = &v20[v8 + 3];
          if (v35 < v21 && v35 >= v20)
          {
            v36 = &v20[v8 + 4];
            if (v36 < v21 && v36 >= v20)
            {
              v37 = (v31 << 24) | (*v32 << 16) | (*v35 << 8) | *v36;
              goto LABEL_47;
            }
          }
        }
      }

      if (v34)
      {
        v38 = &v20[v8 + 3];
        if (v38 < v21 && v38 >= v20)
        {
          v39 = &v20[v8 + 4];
          if (v39 < v21 && v39 >= v20)
          {
            v37 = -((2147418112 * *v32 - ((v31 << 24) | (*v38 << 8) | *v39)) & 0x7FFFFFFF);
LABEL_47:
            v40 = &v20[v8 + 5];
            if (v40 < v21 && v40 >= v20)
            {
              v41 = *v40;
              v42 = *v40;
              v43 = &v20[v8 + 6];
              v45 = v43 < v21 && v43 >= v20;
              if (v41 < 0)
              {
                if (v45)
                {
                  v49 = &v20[v8 + 7];
                  if (v49 < v21 && v49 >= v20)
                  {
                    v50 = &v20[v8 + 8];
                    if (v50 < v21 && v50 >= v20)
                    {
                      v48 = -((2147418112 * *v43 - ((v42 << 24) | (*v49 << 8) | *v50)) & 0x7FFFFFFF);
LABEL_68:
                      v51 = &v20[v8 + 9];
                      if (v51 < v21 && v51 >= v20)
                      {
                        v52 = &v20[v8 + 10];
                        if (v52 < v21 && v52 >= v20)
                        {
                          v53 = *v51;
                          v54 = *v52;
                          if (!*v51 && v54 != 2 || v53 - 1 <= 1 && v54 != 3 || v53 == 3 && v54 != 4)
                          {
                            v27 = "invalid parameter count";
                            goto LABEL_79;
                          }

                          v55 = &v20[v8 + 11];
                          v69 = v48;
                          v70 = v37;
                          if (v53 >= 4)
                          {
                            png_chunk_benign_error(a1, "unrecognized equation type");
                          }

                          while (v55 < v21 && v55 >= v20)
                          {
                            if (!*v55)
                            {
                              v56 = png_malloc_warn(a1, 8 * v54);
                              v58 = &v56[v54];
                              if (!v56)
                              {
                                goto LABEL_13;
                              }

                              if (v54)
                              {
                                v59 = 0;
                                while (1)
                                {
                                  v60 = v55 + 1;
                                  if (v55 + 1 < v11)
                                  {
                                    break;
                                  }

LABEL_104:
                                  v55 = v60;
LABEL_105:
                                  if (v55 >= v11)
                                  {
                                    png_free(a1, v56);
                                    v27 = "invalid data";
                                    goto LABEL_79;
                                  }

                                  if (++v59 == v54)
                                  {
                                    goto LABEL_107;
                                  }
                                }

                                if (v60 >= v20)
                                {
                                  v61 = v55 + 2;
                                  while (v61 <= v21)
                                  {
                                    if (!*(v61++ - 1))
                                    {
                                      v63 = &v56[v59];
                                      if (v63 >= v56 && (v63 + 1) <= v58 && v63 <= v63 + 1)
                                      {
                                        *v63 = v60;
                                        v64 = &v20[v7 - 1] - v55;
                                        while (v60 >= v20)
                                        {
                                          if (!*v60)
                                          {
                                            goto LABEL_104;
                                          }

                                          ++v60;
                                          if (!--v64)
                                          {
                                            v55 = &v20[v7];
                                            goto LABEL_105;
                                          }
                                        }
                                      }

                                      goto LABEL_23;
                                    }
                                  }
                                }
                              }

                              else
                              {
LABEL_107:
                                v65 = v20 + 1;
                                while (v65 <= v21)
                                {
                                  if (!*(v65++ - 1))
                                  {
                                    if (v56 > v58 || v54 > (8 * v54) >> 3)
                                    {
                                      goto LABEL_23;
                                    }

                                    v68 = v21;
                                    v67 = v56;
                                    png_set_pCAL_sized(a1, a2, v20, v70, v69, v53, v54, v57, &v20[v8 + 11], v68, v56);

                                    png_free(a1, v67);
                                    return;
                                  }
                                }
                              }

                              goto LABEL_23;
                            }

                            ++v55;
                          }
                        }
                      }
                    }
                  }
                }
              }

              else if (v45)
              {
                v46 = &v20[v8 + 7];
                if (v46 < v21 && v46 >= v20)
                {
                  v47 = &v20[v8 + 8];
                  if (v47 < v21 && v47 >= v20)
                  {
                    v48 = (v42 << 24) | (*v43 << 16) | (*v46 << 8) | *v47;
                    goto LABEL_68;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  png_crc_finish(a1, v11, v15, v16, v17, v18, v19);
LABEL_13:
  v27 = "out of memory";
LABEL_79:

  png_chunk_benign_error(a1, v27);
}

unint64_t png_handle_sCAL(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 76);
  if ((v8 & 1) == 0)
  {
    png_chunk_error(a1, "missing IHDR");
  }

  if ((v8 & 4) != 0)
  {
    png_crc_finish(a1, a3, a3, a4, a5, a6, a7);
    v11 = "out of place";
    goto LABEL_23;
  }

  if (a2 && (*(a2 + 9) & 0x40) != 0)
  {
    png_crc_finish(a1, a3, a3, a4, a5, a6, a7);
    v11 = "duplicate";
    goto LABEL_23;
  }

  if (a3 <= 3)
  {
    png_crc_finish(a1, a3, a3, a4, a5, a6, a7);
    v11 = "invalid";
LABEL_23:

    return png_chunk_benign_error(a1, v11);
  }

  result = png_read_buffer(a1, (a3 + 1), 2);
  if (result)
  {
    v14 = result;
    v15 = v13;
    if (v13 < result)
    {
      goto LABEL_39;
    }

    if (v13 - result < a3)
    {
      goto LABEL_39;
    }

    v16 = a3;
    result = png_crc_read(a1, result, a3);
    v22 = &v14[a3];
    if (v22 >= v15 || v22 < v14)
    {
      goto LABEL_39;
    }

    *v22 = 0;
    result = png_crc_finish(a1, 0, v17, v18, v19, v20, v21);
    if (result)
    {
      return result;
    }

    if (v15 <= v14)
    {
LABEL_39:
      __break(0x5519u);
      return result;
    }

    if (*v14 - 1 >= 2)
    {
      v11 = "invalid unit";
      goto LABEL_23;
    }

    v32 = 1;
    v31 = 0;
    if (png_check_fp_number(v14, v15, a3, &v31, &v32) && (v23 = v32, v32 < a3) && (v24 = v32 + 1, ++v32, !v14[v23]))
    {
      if ((v31 & 0x188) == 0x108)
      {
        v31 = 0;
        if (png_check_fp_number(v14, v15, v16, &v31, &v32) && v32 == v16)
        {
          if ((v31 & 0x188) == 0x108)
          {
            return png_set_sCAL_sized(a1, a2, *v14, v14 + 1, v15, &v14[v24], v15);
          }

          v25 = "non-positive height";
        }

        else
        {
          v25 = "bad height format";
        }
      }

      else
      {
        v25 = "non-positive width";
      }
    }

    else
    {
      v25 = "bad width format";
    }

    return png_chunk_benign_error(a1, v25);
  }

  else
  {
    png_chunk_benign_error(a1, "out of memory");

    return png_crc_finish(a1, a3, v26, v27, v28, v29, v30);
  }
}

void png_handle_zTXt(uint64_t a1, uint64_t a2, uint64_t size, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a1 + 1068);
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10 - 1;
  if (!v11)
  {

    png_crc_finish(a1, size, size, a4, a5, a6, a7);
    return;
  }

  *(a1 + 1068) = v11;
  if (v11 != 1)
  {
LABEL_8:
    v13 = *(a1 + 76);
    if (v13)
    {
      if ((v13 & 4) != 0)
      {
        *(a1 + 76) = v13 | 8;
      }

      buffer = png_read_buffer(a1, size, 2);
      if (!buffer)
      {
        png_crc_finish(a1, size, v16, v17, v18, v19, v20);
        v12 = "out of memory";
        goto LABEL_30;
      }

      v21 = buffer;
      v22 = v15;
      if (v15 >= buffer && v15 - buffer >= size)
      {
        png_crc_read(a1, buffer, size);
        if (png_crc_finish(a1, 0, v23, v24, v25, v26, v27))
        {
          return;
        }

        if (!size)
        {
          goto LABEL_26;
        }

        v28 = 0;
        do
        {
          v29 = (v21 + v28);
          if (v21 + v28 >= v22 || v29 < v21)
          {
            goto LABEL_58;
          }

          if (!*v29)
          {
            goto LABEL_25;
          }

          ++v28;
        }

        while (size != v28);
        LODWORD(v28) = size;
LABEL_25:
        if ((v28 - 80) < 0xFFFFFFB1)
        {
LABEL_26:
          v31 = "bad keyword";
          goto LABEL_27;
        }

        if (v28 + 3 > size)
        {
          v31 = "truncated";
          goto LABEL_27;
        }

        v32 = (v21 + v28 + 1);
        if (v32 < v22 && v32 >= v21)
        {
          if (*v32)
          {
            v31 = "unknown compression type";
            goto LABEL_27;
          }

          v45 = -1;
          png_decompress_chunk(a1, size, v28 + 2, &v45);
          if (v33 != 1)
          {
            v31 = *(a1 + 144);
            goto LABEL_56;
          }

          v44[0] = 0;
          v34 = *(a1 + 1120);
          if (!v34)
          {
            v31 = "Read failure in png_handle_zTXt";
            goto LABEL_56;
          }

          v35 = *(a1 + 1128);
          v36 = v45;
          v37 = (v34 + v45 + (v28 + 2));
          if (v37 < v35 && v37 >= v34)
          {
            *v37 = 0;
            v38 = v34 + 1;
            do
            {
              if (v38 > v35)
              {
                goto LABEL_58;
              }
            }

            while (*(v38++ - 1));
            v44[1] = v34;
            v40 = v34 + v28 + 2;
            if (v40 >= v34 && v40 < v35)
            {
              v41 = v28 + v34 + 3;
              do
              {
                if (v41 > v35)
                {
                  goto LABEL_58;
                }
              }

              while (*(v41++ - 1));
              v44[2] = v40;
              v44[3] = v36;
              memset(&v44[4], 0, 24);
              png_set_text_2(a1, a2, v44, 1u);
              if (v43)
              {
                v31 = "insufficient memory";
              }

              else
              {
                v31 = 0;
              }

LABEL_56:
              if (!v31)
              {
                return;
              }

LABEL_27:
              png_chunk_benign_error(a1, v31);
              return;
            }
          }
        }
      }

LABEL_58:
      __break(0x5519u);
    }

    png_chunk_error(a1, "missing IHDR");
  }

  png_crc_finish(a1, size, size, a4, a5, a6, a7);
  v12 = "no space in chunk cache";
LABEL_30:

  png_chunk_benign_error(a1, v12);
}

void png_decompress_chunk(uint64_t a1, int a2, unsigned int a3, unint64_t *a4)
{
  v8 = *(a1 + 1072);
  if (v8 + 1 > 1)
  {
    v9 = a3 + 1;
    if (v8 < v9)
    {
      png_zstream_error(a1, -4);
      return;
    }
  }

  else
  {
    v9 = a3 + 1;
    v8 = -1;
  }

  v10 = v8 - v9;
  if (v10 < *a4)
  {
    *a4 = v10;
  }

  if (!png_inflate_claim(a1, *(a1 + 312)))
  {
    v11 = a2 - a3;
    v24 = a2 - a3;
    v12 = *(a1 + 1120);
    v13 = v12 + a3;
    if (v13 >= v12)
    {
      if (png_inflate(a1, *(a1 + 312), v13, *(a1 + 1128), &v24, 0, 0) != 1)
      {
LABEL_32:
        *(a1 + 92) = 0;
        return;
      }

      if (inflateReset((a1 + 96)))
      {
        png_zstream_error(a1, 1);
        goto LABEL_32;
      }

      v14 = *a4;
      v15 = a3 + *a4 + 1;
      v16 = malloc_type_malloc(v15, 0xAC046B70uLL);
      if (!v16)
      {
        png_zstream_error(a1, -4);
        goto LABEL_32;
      }

      if ((v15 & 0x8000000000000000) == 0)
      {
        v17 = v16;
        bzero(v16, v15);
        if (v17 <= &v17[v15])
        {
          v18 = *(a1 + 1120);
          if (v18 + a3 >= v18 && &v17[a3] >= v17)
          {
            v19 = &v17[v15];
            if (png_inflate(a1, *(a1 + 312), v18 + a3, *(a1 + 1128), &v24, &v17[a3], &v17[v15]) != 1 || v14 != *a4)
            {
              png_free(a1, v17);
              goto LABEL_32;
            }

            v20 = &v17[v14 + a3];
            if (v20 < v19 && v20 >= v17)
            {
              *v20 = 0;
              if (!a3 || v15 >= a3 && (v21 = *(a1 + 1120), v22 = *(a1 + 1128), v21 <= v22) && v22 - v21 >= a3 && (memcpy(v17, v21, a3), v17 <= &v17[a3]))
              {
                v23 = *(a1 + 1120);
                *(a1 + 1120) = v17;
                *(a1 + 1128) = v19;
                *(a1 + 1136) = v15;
                png_free(a1, v23);
                if (v11 != v24)
                {
                  png_chunk_benign_error(a1, "extra compressed data");
                }

                goto LABEL_32;
              }
            }
          }
        }
      }
    }

    __break(0x5519u);
  }
}

uint64_t png_handle_acTL(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 76);
  if ((v4 & 1) == 0)
  {
    v19 = "Missing IHDR before acTL";
    goto LABEL_17;
  }

  if ((v4 & 4) != 0)
  {
    v13 = "Invalid acTL after IDAT skipped";
  }

  else if ((v4 & 0x10000) != 0)
  {
    v13 = "Duplicate acTL skipped";
  }

  else
  {
    if (a3 == 8)
    {
      v20[0] = 0;
      png_crc_read(a1, v20, 8u);
      png_crc_finish(a1, 0, v7, v8, v9, v10, v11);
      if (((LOBYTE(v20[0]) << 24) & 0x80000000) == 0 && ((BYTE4(v20[0]) << 24) & 0x80000000) == 0)
      {
        result = _cg_png_set_acTL(a1, a2, _byteswap_ulong(v20[0]), _byteswap_ulong(HIDWORD(v20[0])));
        if (result)
        {
          *(a1 + 76) |= 0x10000u;
        }

        return result;
      }

      v19 = "PNG unsigned integer out of range";
LABEL_17:
      _cg_png_error(a1, v19);
    }

    v13 = "acTL with invalid length skipped";
  }

  png_warning(a1, v13);

  return png_crc_finish(a1, a3, v14, v15, v16, v17, v18);
}

void png_handle_fcTL(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v3 = a3;
  v24[3] = *MEMORY[0x1E69E9840];
  png_ensure_sequence_number(a1, a3);
  v6 = *(a1 + 76);
  if ((v6 & 1) == 0)
  {
    v23 = "Missing IHDR before fcTL";
    goto LABEL_28;
  }

  if ((v6 & 4) != 0)
  {
    v16 = "Invalid fcTL after IDAT skipped";
LABEL_15:
    png_warning(a1, v16);

    png_crc_finish(a1, (v3 - 4), v17, v18, v19, v20, v21);
    return;
  }

  if ((v6 & 0x20000) != 0)
  {
    v16 = "Duplicate fcTL within one frame skipped";
    goto LABEL_15;
  }

  if (v3 != 26)
  {
    v16 = "fcTL with invalid length skipped";
    goto LABEL_15;
  }

  memset(v24, 0, 22);
  png_crc_read(a1, v24, 0x16u);
  png_crc_finish(a1, 0, v7, v8, v9, v10, v11);
  if (LOBYTE(v24[0]) << 24 < 0 || BYTE4(v24[0]) << 24 < 0 || LOBYTE(v24[1]) << 24 < 0 || BYTE4(v24[1]) << 24 < 0)
  {
    v23 = "PNG unsigned integer out of range";
LABEL_28:
    _cg_png_error(a1, v23);
  }

  v12 = _byteswap_ulong(v24[0]);
  v13 = _byteswap_ulong(HIDWORD(v24[0]));
  v14 = _byteswap_ulong(v24[1]);
  v15 = _byteswap_ulong(HIDWORD(v24[1]));
  if (*(a1 + 936))
  {
    if (a2)
    {
LABEL_11:
      png_set_next_frame_fcTL(a1, a2, v12, v13, v14, v15, bswap32(LOWORD(v24[2])) >> 16, bswap32(WORD1(v24[2])) >> 16, BYTE4(v24[2]), BYTE5(v24[2]));
      png_read_reinit(a1, a2);
      *(a1 + 76) |= 0x20000u;
    }
  }

  else
  {
    if (v14 | v15)
    {
      v22 = "fcTL for the first frame must have zero offset";
    }

    else
    {
      if (!a2)
      {
        return;
      }

      if (v12 == *a2 && v13 == a2[1])
      {
        goto LABEL_11;
      }

      v22 = "size in first frame's fcTL must match the size in IHDR";
    }

    png_warning(a1, v22);
  }
}

uint64_t png_ensure_sequence_number(uint64_t a1, unsigned int a2)
{
  if (a2 <= 3)
  {
    v5 = "invalid fcTL or fdAT chunk found";
    goto LABEL_8;
  }

  v6 = 0;
  result = png_crc_read(a1, &v6, 4u);
  if (v6 << 24 < 0)
  {
    v5 = "PNG unsigned integer out of range";
    goto LABEL_8;
  }

  v4 = _byteswap_ulong(v6);
  if (v4 != *(a1 + 924))
  {
    v5 = "fcTL or fdAT chunk with out-of-order sequence number found";
LABEL_8:
    _cg_png_error(a1, v5);
  }

  *(a1 + 924) = v4 + 1;
  return result;
}

void png_read_reinit(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 416);
  *(a1 + 280) = v2;
  v3 = *(a1 + 434);
  v4 = v3 >= 8;
  v5 = (v3 >> 3) * v2;
  if (!v4)
  {
    v5 = (*(a1 + 434) * v2 + 7) >> 3;
  }

  *(a1 + 296) = v5;
  v6 = *(a2 + 50);
  v7 = (v6 >> 3) * v2;
  if (v6 < 8)
  {
    v7 = (*(a2 + 50) * v2 + 7) >> 3;
  }

  *(a1 + 384) = v7;
  v8 = *(a1 + 320);
  if (v8)
  {
    v9 = *(a1 + 328);
    v4 = v9 >= v8;
    v10 = v9 - v8;
    if (!v4 || v5 >= v10 || (v11 = v5 + 1, bzero(*(a1 + 320), v5 + 1), v8 > v8 + v11))
    {
      __break(0x5519u);
    }
  }
}

BOOL png_handle_fdAT(uint64_t a1, uint64_t a2, unsigned int a3)
{
  png_ensure_sequence_number(a1, a3);
  png_warning(a1, "ignoring fdAT chunk");

  return png_crc_finish(a1, a3 - 4, v5, v6, v7, v8, v9);
}

uint64_t png_read_filter_row_sub(uint64_t result, char *a2, unint64_t a3)
{
  v3 = *(result + 8);
  v4 = *(result + 19) + 7;
  if (v3 > v4 >> 3)
  {
    v5 = v4 >> 3;
    v6 = &a2[v4 >> 3];
    v7 = v3 - v5;
    v8 = a2;
    while (v6 < a3 && v6 >= a2 && v8 < a3 && v8 >= a2)
    {
      v9 = *v8++;
      *v6++ += v9;
      if (!--v7)
      {
        return result;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t png_read_filter_row_up(uint64_t result, _BYTE *a2, unint64_t a3, char *a4, unint64_t a5)
{
  v5 = *(result + 8);
  if (v5)
  {
    while (a2 < a3 && a4 < a5)
    {
      v6 = *a4++;
      *a2++ += v6;
      if (!--v5)
      {
        return result;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t png_read_reset(uint64_t result)
{
  *(result + 76) &= 0xFFFFFFF3;
  *(result + 308) = 0;
  *(result + 429) = 0;
  return result;
}

uint64_t png_inflate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6, a7);
  v12 = v7;
  v27 = *MEMORY[0x1E69E9840];
  if (*(v7 + 92) == v13)
  {
    v14 = v11;
    v15 = v10;
    v16 = v9;
    v17 = *v11;
    v18 = *v9;
    *(v7 + 96) = v8;
    *(v7 + 104) = 0;
    *(v7 + 128) = 0;
    if (v10)
    {
      *(v7 + 120) = v10;
    }

    do
    {
      bzero(v26, 0x1000uLL);
      *(v12 + 104) += v18;
      if (v15)
      {
        LODWORD(v19) = -1;
      }

      else
      {
        *(v12 + 120) = v26;
        LODWORD(v19) = 4096;
      }

      v20 = v17 + *(v12 + 128);
      if (v20 >= v19)
      {
        v19 = v19;
      }

      else
      {
        v19 = v20;
      }

      *(v12 + 128) = v19;
      v17 = v20 - v19;
      v21 = png_zlib_inflate(v12, 4 * (v20 == v19));
      v18 = 0;
    }

    while (!v21);
    v22 = v21;
    if (!v15)
    {
      *(v12 + 120) = 0;
    }

    v23 = *(v12 + 104);
    v24 = v17 + *(v12 + 128);
    if (v24)
    {
      *v14 -= v24;
    }

    if (v23)
    {
      *v16 -= v23;
    }

    png_zstream_error(v12, v21);
  }

  else
  {
    *(v7 + 144) = "zstream unclaimed";
    return 4294967294;
  }

  return v22;
}

void *png_malloc_array(void (**a1)(void), unsigned int a2, unint64_t a3)
{
  if (a2 < 1 || !a3)
  {
    _cg_png_error(a1, "internal error: array alloc");
  }

  if (!is_mul_ok(a3, a2))
  {
    return 0;
  }

  v4 = a2 * a3;
  result = malloc_type_malloc(v4, 0x142DC6EFuLL);
  v5 = v4 > 0 || result == 0;
  if (!v5 || result && !v4)
  {
    __break(0x5519u);
  }

  return result;
}

const char *IIO_vImageErrorString(uint64_t a1)
{
  switch(a1)
  {
    case -21784:
      result = "kvImageCoreVideoIsAbsent";
      break;
    case -21783:
      result = "kvImageUnsupportedConversion";
      break;
    case -21782:
      result = "kvImageInvalidCVImageFormat";
      break;
    case -21781:
      result = "kvImageInvalidImageObject";
      break;
    case -21780:
      result = "kvImageOutOfPlaceOperationRequired";
      break;
    case -21779:
      result = "kvImageColorSyncIsAbsent";
      break;
    case -21778:
      result = "kvImageInvalidImageFormat";
      break;
    case -21777:
      result = "kvImageInvalidRowBytes";
      break;
    case -21776:
      result = "kvImageInternalError";
      break;
    case -21775:
      result = "kvImageUnknownFlagsBit";
      break;
    case -21774:
      result = "kvImageBufferSizeMismatch";
      break;
    case -21773:
      result = "kvImageInvalidParameter";
      break;
    case -21772:
      result = "kvImageNullPointerArgument";
      break;
    case -21771:
      result = "kvImageMemoryAllocationError";
      break;
    case -21770:
      result = "kvImageInvalidOffset_Y";
      break;
    case -21769:
      result = "kvImageInvalidOffset_X";
      break;
    case -21768:
      result = "kvImageInvalidEdgeStyle";
      break;
    case -21767:
      result = "kvImageInvalidKernelSize";
      break;
    case -21766:
      result = "kvImageRoiLargerThanInputBuffer";
      break;
    default:
      if (a1)
      {
        result = "unknown vImage error";
      }

      else
      {
        result = "kvImageNoError";
      }

      break;
  }

  return result;
}

vImage_Error iio_convert_XRGB2101010ToRGB16U(const vImage_Buffer *a1, const vImage_Buffer *a2, vImage_Flags a3)
{
  v6 = *&a1->width;
  src.data = a1->data;
  *&src.width = v6;
  src.height = 1;
  v7 = 8 * (a1->width & 0x1FFFFFFF);
  v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
  v9 = *&a2->data;
  *&rgbDest.width = *&a2->width;
  *&dest.data = v9;
  width = a2->width;
  dest.data = v8;
  dest.height = 1;
  dest.width = width;
  dest.rowBytes = v7;
  rgbDest.data = a2->data;
  rgbDest.height = 1;
  *permuteMap = 50462976;
  if (a1->height)
  {
    v11 = 0;
    while (1)
    {
      v12 = vImageConvert_XRGB2101010ToARGB16U(&src, 0xFFFFu, &dest, 0, 1023, permuteMap, a3);
      if (v12)
      {
        v14 = v12;
        v16 = "*** ERROR: vImageConvert_XRGB2101010ToARGB16U failed err: %ld\n";
        v17 = 1130;
        goto LABEL_10;
      }

      v13 = vImageConvert_ARGB16UtoRGB16U(&dest, &rgbDest, a3);
      if (v13)
      {
        break;
      }

      src.data = src.data + src.rowBytes;
      rgbDest.data = rgbDest.data + rgbDest.rowBytes;
      if (++v11 >= a1->height)
      {
        goto LABEL_6;
      }
    }

    v14 = v13;
    v16 = "*** ERROR: vImageConvert_ARGB16UtoRGB16U failed err: %ld\n";
    v17 = 1132;
LABEL_10:
    _cg_jpeg_mem_term("iio_convert_XRGB2101010ToRGB16U", v17, v16);
  }

  else
  {
LABEL_6:
    v14 = 0;
  }

  free(v8);
  return v14;
}

vImage_Error iioConvert_XRGB2101010ToRGB888(const vImage_Buffer *a1, Pixel_8 a2, const vImage_Buffer *a3, int32_t a4, int32_t a5, const unsigned __int8 *a6, vImage_Flags a7)
{
  v14 = 4 * a3->width;
  v15 = malloc_type_malloc(v14 * a3->height, 0x100004077774924uLL);
  v18.data = v15;
  *&v18.height = *&a3->height;
  v18.rowBytes = v14;
  v16 = vImageConvert_XRGB2101010ToARGB8888(a1, a2, &v18, a4, a5, a6, a7);
  if (!v16)
  {
    v16 = vImageConvert_RGBA8888toRGB888(&v18, a3, a7);
  }

  free(v15);
  return v16;
}

void addPropertiesFromMetadata(IIODictionary *a1, IIOArray *a2, void *a3, int a4)
{
  if (!a3)
  {
    return;
  }

  v8 = CFGetTypeID(a3);
  if (v8 == CGImageMetadataGetTypeID())
  {
    v9 = CGImageMetadataCopyTags(a3);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    IIOArray::IIOArray(&v49, v9);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 0x40000000;
    v47[2] = ___ZL25addPropertiesFromMetadataP13IIODictionaryP8IIOArrayPKvi_block_invoke;
    v47[3] = &__block_descriptor_tmp_66;
    v47[4] = a1;
    v47[5] = a2;
    v48 = a4;
    IIOArray::enumerate(v10, v47);
    CFRelease(v9);
LABEL_4:
    IIOArray::~IIOArray(&v49);
    return;
  }

  v11 = CFGetTypeID(a3);
  if (v11 != CGImageMetadataTagGetTypeID())
  {
    v14 = CFGetTypeID(a3);
    if (v14 == CGImageMetadataValueGetTypeID(v14, v15))
    {
      v16 = "===CGImageMetadataValue:%p===\n";
      v17 = 5998;
    }

    else
    {
      v18 = CFGetTypeID(a3);
      if (v18 == CGImageMetadataPropertyGetTypeID(v18, v19))
      {
        v16 = "===CGImageMetadataProperty:%p===\n";
        v17 = 6002;
      }

      else
      {
        v20 = CFGetTypeID(a3);
        if (v20 == CFArrayGetTypeID())
        {
          v49 = 0;
          v50 = 0;
          v51 = 0;
          IIOArray::IIOArray(&v49, a3);
          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 0x40000000;
          v45[2] = ___ZL25addPropertiesFromMetadataP13IIODictionaryP8IIOArrayPKvi_block_invoke_2;
          v45[3] = &__block_descriptor_tmp_69;
          v45[4] = a1;
          v45[5] = a2;
          v46 = a4;
          IIOArray::enumerate(v21, v45);
          goto LABEL_4;
        }

        v36 = CFGetTypeID(a3);
        if (v36 == CFDictionaryGetTypeID())
        {
          v49 = 0;
          v50 = 0;
          v51 = 0;
          IIODictionary::IIODictionary(&v49);
          memset(v44, 0, sizeof(v44));
          IIODictionary::IIODictionary(v44, a3);
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 0x40000000;
          v42[2] = ___ZL25addPropertiesFromMetadataP13IIODictionaryP8IIOArrayPKvi_block_invoke_3;
          v42[3] = &__block_descriptor_tmp_70;
          v42[4] = a1;
          v42[5] = a2;
          v43 = a4;
          IIODictionary::enumerate(v44, v42);
          IIODictionary::~IIODictionary(v44);
          IIODictionary::~IIODictionary(&v49);
          return;
        }

        v37 = CFGetTypeID(a3);
        if (v37 == CFBagGetTypeID())
        {
          v16 = "===CFBag:%p===\n";
          v17 = 6027;
        }

        else
        {
          v39 = CFGetTypeID(a3);
          if (v39 == CFSetGetTypeID())
          {
            v16 = "===CFSet:%p===\n";
            v17 = 6031;
          }

          else
          {
            v40 = CFGetTypeID(a3);
            if (v40 == CFStringGetTypeID())
            {
              v16 = "===CFString:%p===\n";
              v17 = 6035;
            }

            else
            {
              v41 = CFGetTypeID(a3);
              if (v41 != CFNumberGetTypeID())
              {
                _cg_jpeg_mem_term("addPropertiesFromMetadata", 6043, "===unknown:%p===\n");

                CFShow(a3);
                return;
              }

              v16 = "===CFNumber:%p===\n";
              v17 = 6039;
            }
          }
        }
      }
    }

    _cg_jpeg_mem_term("addPropertiesFromMetadata", v17, v16);
    return;
  }

  v12 = CGImageMetadataTagCopyNamespace(a3);
  if (CFStringCompare(v12, @"http://ns.adobe.com/photoshop/1.0/", 0) && CFStringCompare(v12, @"http://ns.adobe.com/exif/1.0/", 0))
  {
    if (CFStringCompare(v12, @"http://ns.adobe.com/exif/1.0/aux/", 0) == kCFCompareEqualTo || CFStringCompare(v12, @"http://ns.adobe.com/exif/1.0/", 0) == kCFCompareEqualTo)
    {
      v13 = &kCGImagePropertyExifAuxDictionary;
      goto LABEL_23;
    }

    if (CFStringCompare(v12, @"http://iptc.org/std/Iptc4xmpCore/1.0/xmlns/", 0) && CFStringCompare(v12, @"http://iptc.org/std/Iptc4xmpExt/2008-02-29/", 0) && CFStringCompare(v12, @"http://purl.org/dc/elements/1.1/", 0) && CFStringCompare(v12, @"http://ns.adobe.com/tiff/1.0/", 0) == kCFCompareEqualTo)
    {
      v13 = &kCGImagePropertyTIFFDictionary;
      goto LABEL_23;
    }
  }

  v13 = &kCGImagePropertyIPTCDictionary;
LABEL_23:
  v22 = *v13;
  v23 = CGImageMetadataTagCopyName(a3);
  if (v23)
  {
    v24 = v23;
    if (CFStringCompare(v23, @"AuthorsPosition", 0))
    {
      v25 = gKeyMapping;
      v26 = 16;
      while (--v26)
      {
        v27 = v25 + 2;
        v28 = CFStringCompare(v24, v25[2], 0);
        v25 = v27;
        if (v28 == kCFCompareEqualTo)
        {
          goto LABEL_31;
        }
      }

      v30 = v24;
    }

    else
    {
      v27 = gKeyMapping;
LABEL_31:
      v30 = v27[1];
    }

    v29 = CFRetain(v30);
    CFRelease(v24);
  }

  else
  {
    v29 = 0;
  }

  if (a4 <= 1)
  {
    v31 = v22;
  }

  else
  {
    v31 = 0;
  }

  Type = CGImageMetadataTagGetType(a3);
  if ((Type - 2) >= 4)
  {
    if (Type == kCGImageMetadataTypeStructure)
    {
      v49 = 0;
      v50 = 0;
      v51 = 0;
      IIODictionary::IIODictionary(&v49);
      if (a1)
      {
        if (v31)
        {
          IIODictionary::setObjectForKeyGroup(a1, v50, v29, v31);
        }

        else
        {
          IIODictionary::setObjectForKey(a1, v50, v29);
        }
      }

      else
      {
        IIOArray::addObject(a2, v50);
      }

      v38 = CGImageMetadataTagCopyValue(a3);
      if (v38)
      {
        addPropertiesFromMetadata(&v49, a2, v38, a4 + 1);
        CFRelease(v38);
      }

      IIODictionary::~IIODictionary(&v49);
    }

    else if (Type == kCGImageMetadataTypeString)
    {
      v34 = CGImageMetadataTagCopyValue(a3);
      if (v34)
      {
        v35 = v34;
        if (a1)
        {
          if (v31)
          {
            IIODictionary::setObjectForKeyGroup(a1, v34, v29, v31);
          }

          else
          {
            IIODictionary::setObjectForKey(a1, v34, v29);
          }
        }

        else if (a2)
        {
          IIOArray::addObject(a2, v34);
        }

        CFRelease(v35);
      }
    }
  }

  else
  {
    v33 = CGImageMetadataTagCopyValue(a3);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    IIOArray::IIOArray(&v49);
    if (a1)
    {
      if (v31)
      {
        IIODictionary::setObjectForKeyGroup(a1, v50, v29, v31);
      }

      else
      {
        IIODictionary::setObjectForKey(a1, v50, v29);
      }
    }

    else if (a2)
    {
      IIOArray::addObject(a2, v50);
    }

    addPropertiesFromMetadata(0, &v49, v33, a4 + 1);
    CFRelease(v33);
    IIOArray::~IIOArray(&v49);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v29)
  {
    CFRelease(v29);
  }
}

void sub_1860ACB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary((v16 - 104));
  _Unwind_Resume(a1);
}

void IIOSubsampler::IIOSubsampler(IIOSubsampler *this, int a2, int a3, int a4, __int16 a5, __int16 a6, __int16 a7, __int16 a8, unsigned int a9, unsigned int a10)
{
  *this = &unk_1EF4DCD30;
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 4) = a4;
  *(this + 5) = a4 & 0x1F;
  *(this + 40) = BYTE1(a4) & 1;
  *(this + 12) = a5;
  *(this + 13) = a6;
  *(this + 14) = a7;
  *(this + 15) = a8;
  *(this + 8) = a9;
  *(this + 9) = a10;
  *(this + 41) = 0;
}

vImage_Error IIOSubsampler::scale8bitChannels(IIOSubsampler *this, vImage_Buffer *a2, vImage_Buffer *a3, vImage_Error a4)
{
  width = a2->width;
  v5 = a4;
  if (a2->rowBytes < width * a4 || a3->rowBytes < a3->width * a4)
  {
    return 4294945522;
  }

  v7 = a4;
  v10 = malloc_type_malloc(a2->height * width, 0x100004077774924uLL);
  height = a2->height;
  v12 = a2->width;
  src.data = v10;
  src.height = height;
  src.width = v12;
  src.rowBytes = v12;
  v13 = malloc_type_malloc(a3->height * a3->width, 0x100004077774924uLL);
  v14 = a3->height;
  v15 = a3->width;
  v33.data = v13;
  v33.height = v14;
  v33.width = v15;
  v33.rowBytes = v15;
  if (v7)
  {
    v16 = 0;
    do
    {
      v17 = a2->height;
      if (v17)
      {
        v18 = 0;
        v19 = 0;
        v20 = a2->width;
        do
        {
          if (v20)
          {
            v21 = &v10[v20 * v18];
            v22 = a2->data + a2->rowBytes * v19;
            v23 = 1;
            do
            {
              *v21++ = v22[v16];
              v20 = a2->width;
              v24 = v20 > v23++;
              v22 += v5;
            }

            while (v24);
            v17 = a2->height;
          }

          v18 = ++v19;
        }

        while (v17 > v19);
      }

      v7 = vImageScale_Planar8(&src, &v33, 0, 0);
      v25 = a3->height;
      if (v25)
      {
        v26 = 0;
        v27 = 0;
        v28 = a3->width;
        do
        {
          if (v28)
          {
            v29 = &v13[v33.rowBytes * v26];
            v30 = a3->data + a3->rowBytes * v27;
            v31 = 1;
            do
            {
              v32 = *v29++;
              v30[v16] = v32;
              v28 = a3->width;
              v24 = v28 > v31++;
              v30 += v5;
            }

            while (v24);
            v25 = a3->height;
          }

          v26 = ++v27;
        }

        while (v25 > v27);
      }

      ++v16;
    }

    while (v16 != v5);
  }

  if (v10)
  {
    free(v10);
  }

  if (v13)
  {
    free(v13);
  }

  return v7;
}

vImage_Error IIOSubsampler::scale16bitChannels(IIOSubsampler *this, vImage_Buffer *a2, vImage_Buffer *a3, vImage_Error a4)
{
  v4 = a4;
  width = a2->width;
  v6 = 2 * a4;
  if (a2->rowBytes < v6 * width || a3->rowBytes < v6 * a3->width)
  {
    return 4294945522;
  }

  v10 = (2 * width);
  v11 = malloc_type_malloc(a2->height * v10, 0x100004077774924uLL);
  src.data = v11;
  *&src.height = *&a2->height;
  src.rowBytes = v10;
  v12 = (2 * LODWORD(a3->width));
  v13 = malloc_type_malloc(a3->height * v12, 0x100004077774924uLL);
  dest.data = v13;
  *&dest.height = *&a3->height;
  dest.rowBytes = v12;
  if (v4)
  {
    v14 = 0;
    v15 = 0;
    v35 = v4;
    do
    {
      height = a2->height;
      if (height)
      {
        v17 = 0;
        v19 = a2->width;
        rowBytes = a2->rowBytes;
        v20 = a2->data + v14;
        do
        {
          if (v19)
          {
            v21 = &v11[v10 * v17];
            v22 = 1;
            v23 = v20;
            do
            {
              *v21 = *v23;
              v21 += 2;
              v24 = v19 > v22++;
              v23 = (v23 + v6);
            }

            while (v24);
          }

          ++v17;
          v20 += rowBytes;
        }

        while (height > v17);
      }

      if (*(this + 40))
      {
        v25 = vImageScale_Planar16F(&src, &dest, 0, 0);
      }

      else
      {
        v25 = vImageScale_Planar16U(&src, &dest, 0, 0);
      }

      v4 = v25;
      v26 = a3->height;
      if (v26)
      {
        v27 = 0;
        data = a3->data;
        v30 = a3->width;
        v29 = a3->rowBytes;
        do
        {
          if (v30)
          {
            v31 = &v13[v12 * v27];
            v32 = 1;
            v33 = data;
            do
            {
              v34 = *v31;
              v31 += 2;
              *&v33[v14] = v34;
              v24 = v30 > v32++;
              v33 += v6;
            }

            while (v24);
          }

          ++v27;
          data += v29;
        }

        while (v26 > v27);
      }

      ++v15;
      v14 += 2;
    }

    while (v15 != v35);
  }

  if (v11)
  {
    free(v11);
  }

  if (v13)
  {
    free(v13);
  }

  return v4;
}

vImage_Error IIOSubsampler::scale32bitChannels(IIOSubsampler *this, vImage_Buffer *a2, vImage_Buffer *a3, vImage_Error a4)
{
  v4 = a4;
  width = a2->width;
  v6 = 4 * a4;
  if (a2->rowBytes < v6 * width || a3->rowBytes < v6 * a3->width)
  {
    return 4294945522;
  }

  v10 = (4 * width);
  v11 = malloc_type_malloc(a2->height * v10, 0x100004077774924uLL);
  src.data = v11;
  *&src.height = *&a2->height;
  src.rowBytes = v10;
  v12 = (4 * LODWORD(a3->width));
  v13 = malloc_type_malloc(a3->height * v12, 0x100004077774924uLL);
  dest.data = v13;
  *&dest.height = *&a3->height;
  dest.rowBytes = v12;
  if (v4)
  {
    v14 = 0;
    v15 = 0;
    v34 = v4;
    do
    {
      height = a2->height;
      if (height)
      {
        v17 = 0;
        v19 = a2->width;
        rowBytes = a2->rowBytes;
        v20 = a2->data + v14;
        do
        {
          if (v19)
          {
            v21 = &v11[v10 * v17];
            v22 = 1;
            v23 = v20;
            do
            {
              *v21 = *v23;
              v21 += 4;
              v24 = v19 > v22++;
              v23 = (v23 + v6);
            }

            while (v24);
          }

          ++v17;
          v20 += rowBytes;
        }

        while (height > v17);
      }

      v4 = vImageScale_PlanarF(&src, &dest, 0, 0);
      v25 = a3->height;
      if (v25)
      {
        v26 = 0;
        data = a3->data;
        v29 = a3->width;
        v28 = a3->rowBytes;
        do
        {
          if (v29)
          {
            v30 = &v13[v12 * v26];
            v31 = 1;
            v32 = data;
            do
            {
              v33 = *v30;
              v30 += 4;
              *&v32[v14] = v33;
              v24 = v29 > v31++;
              v32 += v6;
            }

            while (v24);
          }

          ++v26;
          data += v28;
        }

        while (v25 > v26);
      }

      ++v15;
      v14 += 4;
    }

    while (v15 != v34);
  }

  if (v11)
  {
    free(v11);
  }

  if (v13)
  {
    free(v13);
  }

  return v4;
}

vImage_Error IIOSubsampler::subsampleGray8(IIOSubsampler *this, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int *a5)
{
  src.data = a2;
  src.height = a3;
  v5 = *(this + 1);
  *&v6 = v5;
  *(&v6 + 1) = HIDWORD(v5);
  *&src.width = v6;
  v7 = *a5;
  dest.data = a4;
  dest.height = v7;
  v8 = *(this + 4);
  *&v6 = v8;
  *(&v6 + 1) = HIDWORD(v8);
  *&dest.width = v6;
  v9 = vImageScale_Planar8(&src, &dest, 0, 0x20u);
  if (v9)
  {
    LogError("subsampleGray8", 267, "*** ERROR: vImageScale_Planar8 err = %ld\n", v9);
  }

  return v9;
}

vImage_Error IIOSubsampler::subsampleGray16(IIOSubsampler *this, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int *a5)
{
  src.data = a2;
  src.height = a3;
  v5 = *(this + 1);
  *&v6 = v5;
  *(&v6 + 1) = HIDWORD(v5);
  *&src.width = v6;
  v7 = *a5;
  dest.data = a4;
  dest.height = v7;
  v8 = *(this + 4);
  *&v6 = v8;
  *(&v6 + 1) = HIDWORD(v8);
  *&dest.width = v6;
  v9 = vImageScale_Planar16U(&src, &dest, 0, 0x20u);
  if (v9)
  {
    LogError("subsampleGray16", 283, "*** ERROR: vImageScale_Planar16U err = %ld\n", v9);
  }

  return v9;
}

vImage_Error IIOSubsampler::subsampleRGB888(IIOSubsampler *this, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int *a5)
{
  v6 = a4;
  v8 = a3;
  v31.data = a2;
  v31.height = a3;
  v9 = *(this + 1);
  *&v10 = v9;
  *(&v10 + 1) = HIDWORD(v9);
  *&v31.width = v10;
  v11 = *a5;
  v30.data = a4;
  v30.height = v11;
  v12 = *(this + 4);
  *&v10 = v12;
  *(&v10 + 1) = HIDWORD(v12);
  *&v30.width = v10;
  v13 = (4 * v9);
  v14 = (4 * v12 + 15) & 0xFFFFFFF0;
  src.data = malloc_type_malloc(v13 * a3, 0xB93735FDuLL);
  src.height = v8;
  src.width = *(this + 2);
  src.rowBytes = v13;
  v15 = malloc_type_malloc(*a5 * v14, 0x7BABAD17uLL);
  v16 = *a5;
  dest.data = v15;
  dest.height = v16;
  dest.width = *(this + 8);
  dest.rowBytes = v14;
  v17 = vImageConvert_RGB888toARGB8888(&v31, 0, 0xFFu, &src, 0, 0);
  if (v17)
  {
    v22 = v17;
    IIOSubsampler::subsampleRGB888(v17);
  }

  else
  {
    v18 = vImageScale_ARGB8888(&src, &dest, 0, 0x20u);
    if (v18)
    {
      v22 = v18;
      IIOSubsampler::subsampleRGB888(v18);
    }

    else
    {
      v19 = *(this + 15);
      if (v19)
      {
        if ((v19 & 2) != 0)
        {
          v20 = 66051;
        }

        else
        {
          v20 = 197121;
        }

        *permuteMap = v20;
        vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0x10u);
        if (*a5)
        {
          v23 = 0;
          data = dest.data;
          v25 = *(this + 9);
          do
          {
            memcpy(v6, data, v25);
            data += v14;
            v25 = *(this + 9);
            v6 += v25;
            ++v23;
          }

          while (v23 < *a5);
        }

        v22 = 0;
      }

      else
      {
        v21 = vImageConvert_ARGB8888toRGB888(&dest, &v30, 0);
        v22 = v21;
        if (v21)
        {
          IIOSubsampler::subsampleRGB888(v21);
        }
      }
    }
  }

  if (src.data)
  {
    free(src.data);
  }

  if (dest.data)
  {
    free(dest.data);
  }

  return v22;
}

vImage_Error IIOSubsampler::subsampleRGBA8888(IIOSubsampler *this, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int *a5)
{
  src.data = a2;
  src.height = a3;
  v6 = *(this + 3);
  src.width = *(this + 2);
  src.rowBytes = v6;
  v7 = *a5;
  v24.data = a4;
  v24.height = v7;
  v8 = *(this + 4);
  *&v9 = v8;
  *(&v9 + 1) = HIDWORD(v8);
  *&v24.width = v9;
  dest = src;
  v10 = *(this + 5);
  if ((v10 - 1) > 1)
  {
    v13 = 0;
  }

  else
  {
    v12 = malloc_type_malloc(v6 * a3, 0x100004077774924uLL);
    if (!v12)
    {
      LogError("subsampleRGBA8888", 430, "*** ERROR: failed to allocte temp (%d bytes)\n", *(this + 3) * a3);
      return 0;
    }

    v13 = v12;
    dest.data = v12;
    v10 = *(this + 5);
  }

  if (v10 == 1)
  {
    v16 = vImageUnpremultiplyData_RGBA8888(&src, &dest, 0x10u);
    if (v16)
    {
      v15 = v16;
      IIOSubsampler::subsampleRGBA8888(v16);
      goto LABEL_19;
    }
  }

  else if (v10 == 2)
  {
    v14 = vImageUnpremultiplyData_ARGB8888(&src, &dest, 0x10u);
    if (v14)
    {
      v15 = v14;
      IIOSubsampler::subsampleRGBA8888(v14);
      goto LABEL_19;
    }
  }

  v17 = vImageScale_ARGB8888(&dest, &v24, 0, 0x20u);
  if (v17)
  {
    v15 = v17;
    IIOSubsampler::subsampleRGBA8888(v17);
  }

  else
  {
    v18 = *(this + 5);
    if (v18 != 1)
    {
      if (v18 == 2)
      {
        v19 = vImagePremultiplyData_ARGB8888(&v24, &v24, 0x10u);
        if (v19)
        {
          v15 = v19;
          IIOSubsampler::subsampleRGBA8888(v19);
          goto LABEL_19;
        }
      }

LABEL_16:
      if ((*(this + 15) & 2) != 0)
      {
        *permuteMap = 50331906;
        vImagePermuteChannels_ARGB8888(&v24, &v24, permuteMap, 0x10u);
      }

      v15 = 0;
      goto LABEL_19;
    }

    v20 = vImagePremultiplyData_RGBA8888(&v24, &v24, 0x10u);
    if (!v20)
    {
      goto LABEL_16;
    }

    v15 = v20;
    IIOSubsampler::subsampleRGBA8888(v20);
  }

LABEL_19:
  if (v13)
  {
    free(v13);
  }

  return v15;
}

vImage_Error IIOSubsampler::subsampleRGBA16(IIOSubsampler *this, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int *a5)
{
  src.data = a2;
  src.height = a3;
  v6 = *(this + 3);
  src.width = *(this + 2);
  src.rowBytes = v6;
  v7 = *a5;
  dest.data = a4;
  dest.height = v7;
  v8 = *(this + 4);
  *&v9 = v8;
  *(&v9 + 1) = HIDWORD(v8);
  *&dest.width = v9;
  v21 = src;
  v10 = *(this + 5);
  if ((v10 - 1) > 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = malloc_type_malloc(v6 * a3, 0x100004077774924uLL);
    v21.data = v11;
    v10 = *(this + 5);
  }

  if (v10 == 1)
  {
    if (*(this + 40) == 1)
    {
      v12 = vImageUnpremultiplyData_RGBA16F(&src, &v21, 0);
    }

    else
    {
      v12 = vImageUnpremultiplyData_RGBA16U(&src, &v21, 0);
    }

    v14 = v12;
    if (v12)
    {
      IIOSubsampler::subsampleRGBA16(this + 40, v12);
      goto LABEL_29;
    }
  }

  else if (v10 == 2)
  {
    if (*(this + 40) == 1)
    {
      v21 = src;
    }

    else
    {
      v13 = vImageUnpremultiplyData_ARGB16U(&src, &v21, 0);
      if (v13)
      {
        v14 = v13;
        IIOSubsampler::subsampleRGBA16(v13);
        goto LABEL_29;
      }
    }
  }

  v15 = this + 40;
  if (*(this + 40) == 1)
  {
    v16 = vImageScale_ARGB16F(&v21, &dest, 0, 0x10u);
  }

  else
  {
    v16 = vImageScale_ARGB16U(&v21, &dest, 0, 0x20u);
  }

  v14 = v16;
  if (v16)
  {
    IIOSubsampler::subsampleRGBA16(this + 40, v16);
  }

  else
  {
    v17 = *(this + 5);
    if (v17 == 1)
    {
      if (*v15 == 1)
      {
        v18 = vImagePremultiplyData_RGBA16F(&dest, &dest, 0);
      }

      else
      {
        v18 = vImagePremultiplyData_RGBA16U(&dest, &dest, 0);
      }

      v14 = v18;
      if (v18)
      {
        IIOSubsampler::subsampleRGBA16(this + 40, v18);
      }
    }

    else if (v17 == 2 && (*v15 & 1) == 0)
    {
      v19 = vImagePremultiplyData_ARGB16U(&dest, &dest, 0);
      v14 = v19;
      if (v19)
      {
        IIOSubsampler::subsampleRGBA16(v19);
      }
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_29:
  if (v11)
  {
    free(v11);
  }

  return v14;
}

vImage_Error IIOSubsampler::subsampleRGBA32(IIOSubsampler *this, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int *a5)
{
  src.data = a2;
  src.height = a3;
  v6 = *(this + 3);
  src.width = *(this + 2);
  src.rowBytes = v6;
  v7 = *a5;
  dest.data = a4;
  dest.height = v7;
  v8 = *(this + 4);
  *&v9 = v8;
  *(&v9 + 1) = HIDWORD(v8);
  *&dest.width = v9;
  v21 = src;
  v10 = *(this + 5);
  if ((v10 - 1) > 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = malloc_type_malloc(v6 * a3, 0x100004077774924uLL);
    v21.data = v11;
    v10 = *(this + 5);
  }

  if (v10 == 1)
  {
    if (*(this + 40) == 1)
    {
      v12 = vImageUnpremultiplyData_RGBA16F(&src, &v21, 0);
    }

    else
    {
      v12 = vImageUnpremultiplyData_RGBA16U(&src, &v21, 0);
    }

    v14 = v12;
    if (v12)
    {
      IIOSubsampler::subsampleRGBA32(this + 40, v12);
      goto LABEL_29;
    }
  }

  else if (v10 == 2)
  {
    if (*(this + 40) == 1)
    {
      v21 = src;
    }

    else
    {
      v13 = vImageUnpremultiplyData_ARGB16U(&src, &v21, 0);
      if (v13)
      {
        v14 = v13;
        IIOSubsampler::subsampleRGBA32(v13);
        goto LABEL_29;
      }
    }
  }

  v15 = this + 40;
  if (*(this + 40) == 1)
  {
    v16 = vImageScale_ARGB16F(&v21, &dest, 0, 0x10u);
  }

  else
  {
    v16 = vImageScale_ARGB16U(&v21, &dest, 0, 0x20u);
  }

  v14 = v16;
  if (v16)
  {
    IIOSubsampler::subsampleRGBA32(this + 40, v16);
  }

  else
  {
    v17 = *(this + 5);
    if (v17 == 1)
    {
      if (*v15 == 1)
      {
        v18 = vImagePremultiplyData_RGBA16F(&dest, &dest, 0);
      }

      else
      {
        v18 = vImagePremultiplyData_RGBA16U(&dest, &dest, 0);
      }

      v14 = v18;
      if (v18)
      {
        IIOSubsampler::subsampleRGBA32(this + 40, v18);
      }
    }

    else if (v17 == 2 && (*v15 & 1) == 0)
    {
      v19 = vImagePremultiplyData_ARGB16U(&dest, &dest, 0);
      v14 = v19;
      if (v19)
      {
        IIOSubsampler::subsampleRGBA32(v19);
      }
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_29:
  if (v11)
  {
    free(v11);
  }

  return v14;
}

uint64_t IIOSubsampler::subsample(IIOSubsampler *this, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int *a5)
{
  v6 = *(this + 13);
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      v20 = *(this + 12);
      if (v20 == 16)
      {
        if (!IIOSubsampler::subsampleGray16(this, a2, a3, a4, a5))
        {
          return 1;
        }
      }

      else if (v20 == 8 && !IIOSubsampler::subsampleGray8(this, a2, a3, a4, a5))
      {
        return 1;
      }

      goto LABEL_35;
    }

    if (v6 != 2)
    {
      goto LABEL_35;
    }

    v13 = *(this + 12);
    if (v13 != 16)
    {
      if (v13 != 8)
      {
        goto LABEL_35;
      }

      v40.data = a2;
      v40.height = a3;
      v14 = *(this + 1);
      *&v15 = v14;
      *(&v15 + 1) = HIDWORD(v14);
      *&v40.width = v15;
      v16 = *a5;
      v39.data = a4;
      v39.height = v16;
      v17 = *(this + 4);
      *&v15 = v17;
      *(&v15 + 1) = HIDWORD(v17);
      *&v39.width = v15;
      v12 = 2;
LABEL_13:
      if (!IIOSubsampler::scale8bitChannels(this, &v40, &v39, v12))
      {
        return 1;
      }

      goto LABEL_35;
    }

    v40.data = a2;
    v40.height = a3;
    v27 = *(this + 1);
    *&v28 = v27;
    *(&v28 + 1) = HIDWORD(v27);
    *&v40.width = v28;
    v29 = *a5;
    v39.data = a4;
    v39.height = v29;
    v30 = *(this + 4);
    *&v28 = v30;
    *(&v28 + 1) = HIDWORD(v30);
    *&v39.width = v28;
    v26 = 2;
  }

  else
  {
    switch(v6)
    {
      case 3u:
        v18 = *(this + 12);
        if (v18 == 32)
        {
          v40.data = a2;
          v40.height = a3;
          v35 = *(this + 1);
          *&v36 = v35;
          *(&v36 + 1) = HIDWORD(v35);
          *&v40.width = v36;
          v37 = *a5;
          v39.data = a4;
          v39.height = v37;
          v38 = *(this + 4);
          *&v36 = v38;
          *(&v36 + 1) = HIDWORD(v38);
          *&v39.width = v36;
          if (!IIOSubsampler::scale32bitChannels(this, &v40, &v39, 3))
          {
            return 1;
          }

          goto LABEL_35;
        }

        if (v18 != 16)
        {
          if (v18 == 8 && !IIOSubsampler::subsampleRGB888(this, a2, a3, a4, a5))
          {
            return 1;
          }

          goto LABEL_35;
        }

        v40.data = a2;
        v40.height = a3;
        v31 = *(this + 1);
        *&v32 = v31;
        *(&v32 + 1) = HIDWORD(v31);
        *&v40.width = v32;
        v33 = *a5;
        v39.data = a4;
        v39.height = v33;
        v34 = *(this + 4);
        *&v32 = v34;
        *(&v32 + 1) = HIDWORD(v34);
        *&v39.width = v32;
        v26 = 3;
        break;
      case 4u:
        v19 = *(this + 12);
        if (v19 == 32)
        {
          if (!IIOSubsampler::subsampleRGBA32(this, a2, a3, a4, a5))
          {
            return 1;
          }
        }

        else if (v19 == 16)
        {
          if (!IIOSubsampler::subsampleRGBA16(this, a2, a3, a4, a5))
          {
            return 1;
          }
        }

        else if (v19 == 8 && !IIOSubsampler::subsampleRGBA8888(this, a2, a3, a4, a5))
        {
          return 1;
        }

        goto LABEL_35;
      case 5u:
        v7 = *(this + 12);
        if (v7 != 16)
        {
          if (v7 != 8)
          {
            goto LABEL_35;
          }

          v40.data = a2;
          v40.height = a3;
          v8 = *(this + 1);
          *&v9 = v8;
          *(&v9 + 1) = HIDWORD(v8);
          *&v40.width = v9;
          v10 = *a5;
          v39.data = a4;
          v39.height = v10;
          v11 = *(this + 4);
          *&v9 = v11;
          *(&v9 + 1) = HIDWORD(v11);
          *&v39.width = v9;
          v12 = 5;
          goto LABEL_13;
        }

        v40.data = a2;
        v40.height = a3;
        v22 = *(this + 1);
        *&v23 = v22;
        *(&v23 + 1) = HIDWORD(v22);
        *&v40.width = v23;
        v24 = *a5;
        v39.data = a4;
        v39.height = v24;
        v25 = *(this + 4);
        *&v23 = v25;
        *(&v23 + 1) = HIDWORD(v25);
        *&v39.width = v23;
        v26 = 5;
        break;
      default:
        goto LABEL_35;
    }
  }

  if (!IIOSubsampler::scale16bitChannels(this, &v40, &v39, v26))
  {
    return 1;
  }

LABEL_35:
  if ((*(this + 41) & 1) == 0)
  {
    *(this + 41) = 1;
    _cg_jpeg_mem_term("subsample", 745, "*** ERROR subsample #channels: %d    bitsPerComponent: %d not handled\n");
  }

  return 0;
}

uint64_t IIOImageAnimator::IIOImageAnimator(uint64_t a1, uint64_t a2, const void *a3, IIODictionary *a4)
{
  *a1 = &unk_1EF4DCD60;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  IIO_LoadCoreMediaSymbols(a1, a2);
  *(a1 + 8) = a2;
  *(a1 + 24) = _Block_copy(a3);
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  if (IIODictionary::containsKey(a4, @"StartIndex"))
  {
    Uint64ForKey = IIODictionary::getUint64ForKey(a4, @"StartIndex");
  }

  else
  {
    Uint64ForKey = -1;
  }

  *(a1 + 128) = Uint64ForKey;
  v9 = IIODictionary::containsKey(a4, @"DelayTime");
  DoubleForKey = -1.0;
  if (v9)
  {
    DoubleForKey = IIODictionary::getDoubleForKey(a4, @"DelayTime");
  }

  *(a1 + 136) = -1;
  *(a1 + 144) = DoubleForKey;
  if (IIODictionary::containsKey(a4, @"LoopCount"))
  {
    ObjectForKey = IIODictionary::getObjectForKey(a4, @"LoopCount");
    v12 = ObjectForKey;
    if (ObjectForKey != *MEMORY[0x1E695E880])
    {
      v13 = CFGetTypeID(ObjectForKey);
      if (v13 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v12, kCFNumberCFIndexType, (a1 + 136));
      }
    }
  }

  return a1;
}

void sub_1860ADEBC(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 120);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void IIOImageAnimator::~IIOImageAnimator(IIOImageAnimator *this)
{
  *this = &unk_1EF4DCD60;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = IIOImageSource::cf(v2);
    CFRelease(v3);
  }

  v4 = *(this + 12);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 15);
  *(this + 14) = 0;
  *(this + 15) = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  v6 = *(this + 21);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 22);
  if (v7)
  {
    CFRelease(v7);
  }

  CGColorSpaceRelease(*(this + 10));
  _Block_release(*(this + 3));
  v8 = *(this + 15);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v8);
  }

  v9 = *(this + 7);
  if (v9)
  {
    *(this + 8) = v9;
    operator delete(v9);
  }
}

{
  IIOImageAnimator::~IIOImageAnimator(this);

  JUMPOUT(0x186602850);
}

uint64_t IIOImageAnimator::setup(IIOImageSource **this)
{
  memset(v39, 0, sizeof(v39));
  IIODictionary::IIODictionary(v39);
  v2 = IIOImageSource::copyProperties(this[1], v39);
  if (!v2)
  {
    v5 = 4294945155;
    goto LABEL_48;
  }

  Type = IIOImageSource::getType(this[1]);
  memset(v38, 0, sizeof(v38));
  IIODictionary::IIODictionary(v38, v2);
  if (CFStringCompare(Type, @"com.compuserve.gif", 0))
  {
    if (CFStringCompare(Type, @"public.png", 0))
    {
      if (CFStringCompare(Type, @"public.heics", 0))
      {
        if (CFStringCompare(Type, @"public.avis", 0))
        {
          if (CFStringCompare(Type, @"org.webmproject.webp", 0))
          {
            goto LABEL_15;
          }

          v4 = &kCGImagePropertyWebPDictionary;
        }

        else
        {
          v4 = &kCGImagePropertyAVISDictionary;
        }
      }

      else
      {
        v4 = &kCGImagePropertyHEICSDictionary;
      }
    }

    else
    {
      v4 = &kCGImagePropertyPNGDictionary;
    }
  }

  else
  {
    v4 = &kCGImagePropertyGIFDictionary;
  }

  v6 = *v4;
  if (*v4)
  {
    this[5] = IIODictionary::getUint32ForKeyGroup(v38, @"CanvasPixelWidth", v6);
    this[6] = IIODictionary::getUint32ForKeyGroup(v38, @"CanvasPixelHeight", v6);
    goto LABEL_19;
  }

LABEL_15:
  ArrayObjectForPath = IIODictionary::getArrayObjectForPath(v38, "{FileContents}.Images");
  if (ArrayObjectForPath)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(ArrayObjectForPath, 0);
  }

  else
  {
    ValueAtIndex = 0;
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  IIODictionary::IIODictionary(&v35, ValueAtIndex);
  this[5] = IIODictionary::getUint32ForKey(&v35, @"Width");
  this[6] = IIODictionary::getUint32ForKey(&v35, @"Height");
  IIODictionary::~IIODictionary(&v35);
  v6 = 0;
LABEL_19:
  if (!this[5] || !this[6])
  {
    _cg_jpeg_mem_term("setup", 264, "*** ERROR: bad image dimensions (%ldx%ld)");
    goto LABEL_50;
  }

  ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(v38, @"FrameInfo", v6);
  v10 = ObjectForKeyGroup;
  if (!ObjectForKeyGroup)
  {
    this[4] = 1;
LABEL_25:
    v12 = 0;
    do
    {
      v13 = CFArrayGetValueAtIndex(v10, v12);
      v35 = 0;
      v36 = 0;
      v37 = 0;
      IIODictionary::IIODictionary(&v35, v13);
      DoubleForKey = IIODictionary::getDoubleForKey(&v35, @"DelayTime");
      v16 = this[8];
      v15 = this[9];
      if (v16 >= v15)
      {
        v18 = this[7];
        v19 = v16 - v18;
        v20 = (v16 - v18) >> 3;
        v21 = v20 + 1;
        if ((v20 + 1) >> 61)
        {
          std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
        }

        v22 = v15 - v18;
        if (v22 >> 2 > v21)
        {
          v21 = v22 >> 2;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long long>>((this + 7), v23);
        }

        v24 = (v16 - v18) >> 3;
        v25 = (8 * v20);
        v26 = (8 * v20 - 8 * v24);
        *v25 = DoubleForKey;
        v17 = (v25 + 1);
        memcpy(v26, v18, v19);
        v27 = this[7];
        this[7] = v26;
        this[8] = v17;
        this[9] = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        *v16 = DoubleForKey;
        v17 = (v16 + 1);
      }

      this[8] = v17;
      IIODictionary::~IIODictionary(&v35);
      ++v12;
    }

    while (v12 < this[4]);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    IIODictionary::IIODictionary(&v35);
    v28 = IIOImageSource::copyPropertiesAtIndex(this[1], 0, &v35);
    memset(v34, 0, sizeof(v34));
    IIODictionary::IIODictionary(v34, v28);
    *(this + 92) = IIODictionary::getBoolForKey(v34, "HasAlpha");
    Plugin = IIOImageSource::getAnimationReadPlugin(this[1]);
    this[2] = Plugin;
    ColorSpace = IIOReadPlugin::getColorSpace(Plugin);
    this[10] = CGColorSpaceRetain(ColorSpace);
    ColorSpaceModel = IIOReadPlugin::getColorSpaceModel(this[2]);
    *(this + 22) = ColorSpaceModel;
    if (ColorSpaceModel >= 2)
    {
      _cg_jpeg_mem_term("setup", 288, "*** ERROR: unsupported colorspace");
      v5 = 4294945154;
    }

    else if (this[10])
    {
      v5 = 0;
    }

    else
    {
      v32 = MEMORY[0x1E695F128];
      if (ColorSpaceModel)
      {
        v32 = MEMORY[0x1E695F1C0];
      }

      v5 = 0;
      this[10] = CGColorSpaceCreateWithName(*v32);
    }

    IIODictionary::~IIODictionary(v34);
    IIODictionary::~IIODictionary(&v35);
    IIODictionary::~IIODictionary(v38);
    goto LABEL_46;
  }

  Count = CFArrayGetCount(ObjectForKeyGroup);
  this[4] = Count;
  if (Count)
  {
    goto LABEL_25;
  }

  _cg_jpeg_mem_term("setup", 270, "*** ERROR: bad image count (%ld)");
LABEL_50:
  IIODictionary::~IIODictionary(v38);
  v28 = 0;
  v5 = 4294945155;
LABEL_46:
  CFRelease(v2);
  if (v28)
  {
    CFRelease(v28);
  }

LABEL_48:
  IIODictionary::~IIODictionary(v39);
  return v5;
}

void sub_1860AE4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

uint64_t IIOImageAnimator::start(IIOImageAnimator *this)
{
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x2000000000;
  v2 = *(this + 16);
  if (v2 == -1)
  {
    v2 = 0;
  }

  v50[3] = v2;
  v3 = *(this + 5);
  v4 = *(this + 6);
  memset(v49, 0, sizeof(v49));
  IIODictionary::IIODictionary(v49);
  v47 = xmmword_1EF4DCD70;
  v48 = *&off_1EF4DCD80;
  IIODictionary::setObjectForKey(v5, *MEMORY[0x1E695E4D0], *MEMORY[0x1E695F2C8]);
  v6 = v3;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2000000000;
  v46 = CGImageProviderCreate();
  v40 = 0;
  v41 = 0;
  v42 = 0;
  IIODictionary::IIODictionary(&v40);
  v7 = *MEMORY[0x1E695F280];
  v8 = *MEMORY[0x1E695F288];
  IIODictionary::setObjectForKey(v9, *MEMORY[0x1E695F280], *MEMORY[0x1E695F288]);
  (*(**(this + 2) + 80))(*(this + 2), v41);
  if (*(this + 22))
  {
    v10 = 1111970369;
  }

  else
  {
    v10 = 843264056;
  }

  SurfaceWithFormat = IIO_CreateSurfaceWithFormat(v10, v3, v4, *(this + 10));
  *(this + 21) = SurfaceWithFormat;
  IOSurfaceIncrementUseCount(SurfaceWithFormat);
  if (*(this + 4) == 1)
  {
    LOBYTE(v29[0]) = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    IIODictionary::IIODictionary(&v30);
    IIODictionary::setObjectForKey(&v30, v7, v8);
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    IIODecodeParameter::IIODecodeParameter(&v34, 0, v44[3], 0, v31, 0.0, 0.0, v3, v4, v3, v4);
    IIOReadPlugin::decodeImageIntoIOSurface(*(this + 2), &v34, *(this + 21));
    v12 = CGImageCreateFromIOSurface(*(this + 21), 0);
    v13 = (*(*(this + 3) + 16))();
    IIOImageAnimator::_releaseFrameImage(v13, v12, 1);
    IIODecodeParameter::~IIODecodeParameter(&v34);
    IIODictionary::~IIODictionary(&v30);
    v14 = 0;
  }

  else
  {
    v15 = IIO_CreateSurfaceWithFormat(v10, v3, v4, *(this + 10));
    *(this + 22) = v15;
    IOSurfaceIncrementUseCount(v15);
    v16 = *(this + 21);
    if (v16 && *(this + 22))
    {
      *&v34 = 0;
      *(&v34 + 1) = &v34;
      v35 = 0x2000000000uLL;
      v30 = 0;
      v31 = &v30;
      v32 = 0x2000000000;
      v33 = v16;
      v29[0] = 0;
      v29[1] = v29;
      v29[2] = 0x2000000000;
      v29[3] = 0;
      v17 = malloc_type_calloc(8uLL, 2uLL, 0x2004093837F09uLL);
      v28[0] = 0;
      v28[1] = v28;
      v28[2] = 0x2000000000;
      v28[3] = 0;
      *(this + 20) = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
      v27 = 0;
      HostTimeClock = gFunc_CMClockGetHostTimeClock();
      gFunc_CMTimebaseCreateWithSourceClock(*MEMORY[0x1E695E480], HostTimeClock, &v27);
      if (v27)
      {
        gFunc_CMTimebaseAddTimerDispatchSource(v27, *(this + 20));
        v19 = *(this + 20);
        v25 = *&kCMTimeZero.value;
        v26 = 0;
        gFunc_CMTimebaseSetTimerDispatchSourceNextFireTime(v27, v19, &v25, 0);
        Ref = IIOImageSource::imageReadRef(*(this + 1));
        v21 = CGImageReadSessionCreate(Ref);
        *(this + 12) = v21;
        *(this + 13) = CGImageSourceGetSource(v21);
        *(this + 19) = IIOImageSource::reader(*(this + 1));
        v22 = *(this + 20);
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 0x40000000;
        handler[2] = ___ZN16IIOImageAnimator5startEv_block_invoke;
        handler[3] = &unk_1E6F41978;
        handler[4] = v50;
        handler[5] = &v43;
        handler[11] = 0;
        handler[12] = 0;
        *&handler[13] = v6;
        *&handler[14] = v4;
        *&handler[15] = v6;
        *&handler[16] = v4;
        handler[6] = &v30;
        handler[7] = v29;
        handler[8] = v28;
        handler[9] = &v34;
        handler[10] = this;
        handler[17] = v17;
        handler[18] = v27;
        dispatch_source_set_event_handler(v22, handler);
        gFunc_CMTimebaseSetRate(v27, 1.0);
        dispatch_resume(*(this + 20));
        v14 = 0;
      }

      else
      {
        v14 = 4294945152;
      }

      _Block_object_dispose(v28, 8);
      _Block_object_dispose(v29, 8);
      _Block_object_dispose(&v30, 8);
      _Block_object_dispose(&v34, 8);
    }

    else
    {
      v14 = 4294945152;
    }
  }

  IIODictionary::~IIODictionary(&v40);
  _Block_object_dispose(&v43, 8);
  IIODictionary::~IIODictionary(v49);
  _Block_object_dispose(v50, 8);
  return v14;
}

void sub_1860AE9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(va, 8);
  IIODictionary::~IIODictionary((v44 - 248));
  _Block_object_dispose((v44 - 224), 8);
  IIODictionary::~IIODictionary((v44 - 152));
  _Block_object_dispose((v44 - 128), 8);
  _Unwind_Resume(a1);
}

void IIOImageAnimator::_releaseFrameImage(IIOImageAnimator *this, CGImage *a2, int a3)
{
  if (CGImageGetImageProvider())
  {
    CGImageProviderSetProperty();
    CGImageProviderSetProperty();
  }

  CGImageRelease(a2);
}

void ___ZN16IIOImageAnimator5startEv_block_invoke(CGImage *a1)
{
  v2 = *(a1 + 10);
  v34 = 0;
  if (*(*(*(a1 + 4) + 8) + 24) >= ((*(v2 + 64) - *(v2 + 56)) >> 3))
  {
    __break(1u);
    goto LABEL_24;
  }

  v1 = a1;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  IIODictionary::IIODictionary(&v31);
  IIODictionary::setObjectForKey(v3, *MEMORY[0x1E695F280], *MEMORY[0x1E695F288]);
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  IIODecodeParameter::IIODecodeParameter(v29, 0, *(*(*(v1 + 5) + 8) + 24), *(*(*(v1 + 4) + 8) + 24), v32, *(v1 + 11), *(v1 + 12), *(v1 + 13), *(v1 + 14), *(v1 + 15), *(v1 + 16));
  IIOReadPlugin::decodeImageIntoIOSurface(*(v2 + 16), v29, *(*(*(v1 + 6) + 8) + 24));
  *(*(*(v1 + 7) + 8) + 24) = *(*(*(v1 + 6) + 8) + 24);
  v27 = 0u;
  v28 = 0u;
  memset(v26, 0, sizeof(v26));
  IIODictionary::IIODictionary(v26);
  IIODictionary::setObjectForKey(v26, *MEMORY[0x1E695E4D0], *MEMORY[0x1E695F2C8]);
  LODWORD(v27) = 2;
  *(&v27 + 1) = _copyImageBlockSetCallback;
  *&v28 = _copyIOSurfaceCallback;
  *(&v28 + 1) = _releaseFrameImageProviderInfo;
  a1 = CGImageProviderCreate();
  if (!a1)
  {
LABEL_24:
    v4 = 0;
    goto LABEL_5;
  }

  a1 = CGImageCreateWithImageProvider();
  v4 = a1;
  if (a1)
  {
    CGImageProviderRelease();
    a1 = (*(*(v2 + 24) + 16))();
  }

LABEL_5:
  v5 = *(*(v1 + 8) + 8);
  v6 = *(v5 + 24);
  if (v6 == 2)
  {
    v8 = *(v1 + 17);
    v9 = *v8;
    *v8 = *(v8 + 8);
    IIOImageAnimator::_releaseFrameImage(a1, v9, 0);
  }

  else
  {
    if (v6 == 1)
    {
      **(v1 + 17) = *(*(v1 + 17) + 8);
      v5 = *(*(v1 + 8) + 8);
      v7 = *(v5 + 24) + 1;
    }

    else
    {
      if (v6)
      {
        goto LABEL_12;
      }

      v7 = 1;
    }

    *(v5 + 24) = v7;
  }

LABEL_12:
  *(*(v1 + 17) + 8) = v4;
  CGImageRetain(*(*(v1 + 17) + 8));
  CGImageRelease(v4);
  CGImageProviderRelease();
  v10 = *(*(v1 + 6) + 8);
  v11 = *(v2 + 168);
  if (*(v10 + 24) == v11)
  {
    v11 = *(v2 + 176);
  }

  *(v10 + 24) = v11;
  if (v34)
  {
    goto LABEL_21;
  }

  if (*(v2 + 32) < 2uLL || (++*(*(*(v1 + 4) + 8) + 24), v12 = *(*(v1 + 4) + 8), *(v12 + 24) >= *(v2 + 32)) && (*(v12 + 24) = 0, *(*(*(v1 + 7) + 8) + 24) = 0, *(v2 + 136) != -1) && (v13 = *(*(v1 + 9) + 8), v14 = *(v13 + 24) + 1, *(v13 + 24) = v14, v14 >= *(v2 + 136)))
  {
    v34 = 1;
LABEL_21:
    _cg_jpeg_mem_term("start_block_invoke", 462, "*** animation was stopped...\n");
    CFRelease(*(v1 + 18));
    dispatch_source_cancel(*(v2 + 160));
    dispatch_release(*(v2 + 160));
    *(v2 + 160) = 0;
    IIOImageAnimator::_releaseFrameImage(v18, **(v1 + 17), 1);
    IIOImageAnimator::_releaseFrameImage(v19, *(*(v1 + 17) + 8), 1);
    free(*(v1 + 17));
    CGImageProviderRelease();
    *(*(*(v1 + 5) + 8) + 24) = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN16IIOImageAnimator5startEv_block_invoke_2;
    block[3] = &__block_descriptor_tmp_49;
    block[4] = v2;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    goto LABEL_22;
  }

  v23 = 0uLL;
  v24 = 0;
  v15 = gFunc_CMTimeAdd;
  gFunc_CMTimebaseGetTime(&v21, *(v1 + 18));
  gFunc_CMTimeMakeWithSeconds(600);
  v15(&v23, &v21, v20);
  v16 = *(v1 + 18);
  v17 = *(v2 + 160);
  v21 = v23;
  v22 = v24;
  gFunc_CMTimebaseSetTimerDispatchSourceNextFireTime(v16, v17, &v21, 0);
LABEL_22:
  IIODictionary::~IIODictionary(v26);
  IIODecodeParameter::~IIODecodeParameter(v29);
  IIODictionary::~IIODictionary(&v31);
}

void sub_1860AEFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  IIODictionary::~IIODictionary(&a24);
  IIODecodeParameter::~IIODecodeParameter(va);
  IIODictionary::~IIODictionary((v30 - 96));
  _Unwind_Resume(a1);
}

void *_copyImageBlockSetCallback(__IOSurface *a1, uint64_t a2, const __CFDictionary *a3)
{
  v22 = 0;
  CGImageProviderGetSize();
  v6 = v5;
  v8 = v7;
  v21 = xmmword_1EF4DCDA0;
  if (!CGImageProviderGetProperty())
  {
    BytesPerRow = IOSurfaceGetBytesPerRow(a1);
    IOSurfaceLock(a1, 1u, 0);
    v11 = malloc_type_malloc((v8 * BytesPerRow), 0x100004077774924uLL);
    if (v11)
    {
      v12 = v11;
      BaseAddress = IOSurfaceGetBaseAddress(a1);
      memcpy(v12, BaseAddress, (v8 * BytesPerRow));
      if (!a3 || (Value = CFDictionaryGetValue(a3, *MEMORY[0x1E695F288])) == 0 || (v15 = Value, v16 = CFGetTypeID(Value), v16 != CFStringGetTypeID()) || CFStringCompare(v15, *MEMORY[0x1E695F280], 0))
      {
        src.data = v12;
        src.height = v8;
        src.width = v6;
        src.rowBytes = BytesPerRow;
        dest.data = v12;
        dest.height = v8;
        dest.width = v6;
        dest.rowBytes = BytesPerRow;
        *permuteMap = 50331906;
        vImagePermuteChannels_ARGB8888(&src, &dest, permuteMap, 0x10u);
      }

      v17 = CGImageBlockCreate();
      v22 = v17;
    }

    else
    {
      v17 = 0;
    }

    IOSurfaceUnlock(a1, 1u, 0);
    if (v17)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (*MEMORY[0x1E695E4C0] == CGImageProviderGetProperty())
  {
    _cg_jpeg_mem_term("_copyImageBlockSetCallback", 68, "*** Should not be here\n");
  }

  result = malloc_type_calloc((vcvtd_n_u64_f64(v6, 2uLL) + 15) & 0xFFFFFFFFFFFFFFF0, v8, 0x100004077774924uLL);
  if (result)
  {
    v22 = CGImageBlockCreate();
    if (v22)
    {
LABEL_6:
      CGImageProviderGetColorSpace();
      return CGImageBlockSetCreateWithType();
    }

    return 0;
  }

  return result;
}

uint64_t ___ZN16IIOImageAnimator5startEv_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t _cg_JP2InitCompressionSettings(uint64_t result, float a2)
{
  *result = a2 < 1.0;
  *(result + 2) = 0;
  *(result + 4) = vcvts_n_s32_f32(a2, 0xAuLL);
  *(result + 6) = 4;
  *(result + 8) = 0;
  return result;
}

uint64_t _cg_JP2CompressorSetup(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t *a5, void *a6)
{
  v11 = malloc_type_calloc(0x120uLL, 1uLL, 0x10E0040C207FBCFuLL);
  *a6 = v11;
  if (v11)
  {
    v12 = v11;
    v13 = *a4;
    v14 = a4[1];
    v15 = a4[3];
    v11[2] = a4[2];
    v11[3] = v15;
    *v11 = v13;
    v11[1] = v14;
    v16 = a4[4];
    v17 = a4[5];
    v18 = a4[7];
    v11[6] = a4[6];
    v11[7] = v18;
    v11[4] = v16;
    v11[5] = v17;
    v19 = a4[8];
    v20 = a4[9];
    v21 = a4[11];
    v11[10] = a4[10];
    v11[11] = v21;
    v11[8] = v19;
    v11[9] = v20;
    v22 = *(v11 + 12);
    if (v22)
    {
      CFRetain(v22);
    }

    *(v12 + 26) = a1;
    *(v12 + 27) = a2;
    v23 = *a5;
    *(v12 + 50) = *(a5 + 2);
    *(v12 + 24) = v23;
    operator new();
  }

  return 4294967188;
}

void kdu_image_in::AllocateSrcLineBuffer(kdu_image_in *this)
{
  if (*(this + 5) > 0)
  {
    operator new[]();
  }

  kdu_image_in::AllocateSrcLineBuffer();
}

uint64_t kdu_image_in::SetChannelOffsets(uint64_t result, int a2)
{
  *(result + 40) = xmmword_186226E70;
  switch(a2)
  {
    case 2:
      goto LABEL_4;
    case 6:
LABEL_5:
      *(result + 40) = 0x200000001;
      *(result + 48) = 3;
      return result;
    case 4:
LABEL_4:
      *(result + 52) = 0;
      goto LABEL_5;
  }

  if ((a2 & 0xFFFFFFFD) == 1)
  {
    *(result + 52) = 3;
  }

  return result;
}

uint64_t _cg_JP2CompressorTearDown(uint64_t a1)
{
  v2 = *(a1 + 232);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    CFRelease(v3);
  }

  kdu_image_in::DeallocateSrcLineBuffer(*(a1 + 248));
  v4 = *(a1 + 248);
  if (v4)
  {
    MEMORY[0x186602850](v4, 0x1090C40459A9DE1);
  }

  v5 = *(a1 + 224);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  free(a1);
  return 0;
}

uint64_t kdu_image_in::DeallocateSrcLineBuffer(kdu_image_in *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    kdu_image_in::DeallocateSrcLineBuffer();
  }

  result = MEMORY[0x186602830](v2, 0x1000C8077774924);
  *(this + 4) = 0;
  return result;
}

uint64_t kdu_image_in::get(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 24) / 8;
  v4 = *a3;
  v5 = (*(a1 + 32) + *(a1 + 4 * a2 + 40));
  v6 = *(a3 + 8);
  if ((*(a3 + 6) & 2) != 0 || !v6)
  {
    if (*(a3 + 6))
    {
      if (v4 >= 1)
      {
        v9 = v4 + 1;
        do
        {
          *v6++ = *v5 - 128;
          v5 += v3;
          --v9;
        }

        while (v9 > 1);
      }
    }

    else if (v4 >= 1)
    {
      v8 = v4 + 1;
      do
      {
        *v6++ = 32 * *v5 - 4096;
        v5 += v3;
        --v8;
      }

      while (v8 > 1);
    }
  }

  else if (*(a3 + 6))
  {
    if (v4 >= 1)
    {
      v10 = v4 + 1;
      do
      {
        *v6 = *v5 - 128;
        v6 += 2;
        v5 += v3;
        --v10;
      }

      while (v10 > 1);
    }
  }

  else if (v4 >= 1)
  {
    v7 = v4 + 1;
    do
    {
      *v6 = vcvts_n_f32_u32(*v5, 8uLL) + -0.5;
      v6 += 2;
      v5 += v3;
      --v7;
    }

    while (v7 > 1);
  }

  return 1;
}

uint64_t _cg_JP2CompressorProcessImage(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  if (*(*(a1 + 232) + 8) != 0)
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    siz_params::siz_params(v12);
    kdu_params::set(v12, "Scomponents", 0, 0, *(a1 + 120));
    kdu_params::set(v12, "Sdims", 0, 0, *(a1 + 72));
    kdu_params::set(v12, "Sdims", 0, 1, *(a1 + 64));
    kdu_params::set(v12, "Sprecision", 0, 0, 8);
    kdu_params::set(v12, "Ssigned", 0, 0, 0);
    kdu_params::set(v12, "Stiles", 0, 0, v3);
    kdu_params::set(v12, "Stiles", 0, 1, v2);
    kdu_params::set(v12, "Stile_origin", 0, 0, 0);
    kdu_params::set(v12, "Stile_origin", 0, 1, 0);
    (*(*&v12[0] + 72))(v12, 0);
    v11 = 0;
    v11 = jp2_target::access_dimensions(*(a1 + 240), v4);
    jp2_target::access_resolution(*(a1 + 240), v5);
    jp2_target::access_channels(*(a1 + 240), v6);
    v10 = 0;
    v10 = jp2_target::access_colour(*(a1 + 240), v7);
    if (*(a1 + 120))
    {
      v8 = 0;
      do
      {
        kdu_params::set(v12, "Sdims", v8, 0, *(a1 + 72));
        kdu_params::set(v12, "Sdims", v8, 1, *(a1 + 64));
        kdu_params::set(v12, "Sprecision", v8, 0, 8);
        kdu_params::set(v12, "Ssigned", v8++, 0, 0);
      }

      while (*(a1 + 120) > v8);
    }

    (*(*&v12[0] + 72))(v12, 0);
    jp2_dimensions::init(&v11, v12, 1u);
  }

  return 0xFFFFFFFFLL;
}

void sub_1860B0410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  kdu_params::~kdu_params(va);
  _Unwind_Resume(a1);
}

float **_cg_JP2CompressorSetDisplayResolution(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v8 = jp2_target::access_resolution(*(a1 + 240), a2);
  jp2_resolution::init(&v8, a3 / a4);
  v6.n128_f32[0] = a3;
  return jp2_resolution::set_resolution(&v8, v6, 1);
}

void jp2_family_tgt::~jp2_family_tgt(jp2_family_tgt *this)
{
  jp2_family_tgt::~jp2_family_tgt(this);

  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF4DCDC0;
  jp2_family_tgt::close(this);
}

void MyJP2CompressedTarget::~MyJP2CompressedTarget(MyJP2CompressedTarget *this)
{
  *this = &unk_1EF4D2B00;
}

{
  *this = &unk_1EF4D2B00;
  JUMPOUT(0x186602850);
}

BOOL MyJP2CompressedTarget::write(MyJP2CompressedTarget *this, const unsigned __int8 *a2, int a3)
{
  v5 = (*(*(this + 1) + 40))(*(*(this + 1) + 8), a2, a3);
  *(this + 2) += v5;
  return v5 == a3;
}

void IIO_Writer_BMP::~IIO_Writer_BMP(IIO_Writer_BMP *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t IIO_Writer_BMP::write(IIO_Writer_BMP *this, IIOImageWriteSession *a2, IIOImageDestination *a3)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "IIO_Writer_BMP::write", 0, 0, -1, 0);
  }

  v10 = 0;
  memset(v9, 0, sizeof(v9));
  BMPWritePlugin::BMPWritePlugin(v9, a2, a3);
  v5 = IIOWritePlugin::writeAll(v9);
  BMPWritePlugin::~BMPWritePlugin(v9, v6, v7);
  return v5;
}

void sub_1860B0788(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  BMPWritePlugin::~BMPWritePlugin(&a9, a2, a3);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1860B0774);
}

void IIOImageSource::IIOImageSource(IIOImageSource *a1, const __CFData *a2, int a3)
{
  *a1 = &unk_1EF4D46B0;
  *(a1 + 9) = 0;
  *(a1 + 10) = 0;
  *(a1 + 18) = 0;
  *(a1 + 19) = 0;
  *(a1 + 20) = 0;
  *(a1 + 25) = 0;
  *(a1 + 26) = 0;
  *(a1 + 27) = 0;
  IIOImageSource::setup(a1, a3);
  IIOImageSource::setupWithProxyData(a1, a2, v5);
}

void sub_1860B0840(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 208) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 152) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void IIOImageSource::addImageSourceProxyInfo(IIOImageSource *this, IIODictionary *a2, IIODictionary *a3)
{
  Properties = IIOImageSource::getProperties(this, a3);
  if (Properties)
  {
    v5 = Properties;
    ObjectForKey = IIODictionary::getObjectForKey(Properties, @"{Groups}");
    if (ObjectForKey)
    {
      IIODictionary::setObjectForKey(a2, ObjectForKey, @"{Groups}");
    }

    ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(v5, @"ImageCount", @"{FileContents}");
    if (ObjectForKeyGroup)
    {
      IIODictionary::setObjectForKeyGroup(a2, ObjectForKeyGroup, @"ImageCount", @"{FileContents}");
      v8[0] = 0;
      v8[1] = v8;
      v8[2] = 0x2000000000;
      operator new();
    }
  }
}

void sub_1860B0B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  IIOArray::~IIOArray(va);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void ___ZN14IIOImageSource23addImageSourceProxyInfoEP13IIODictionaryS1__block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  memset(v10, 0, sizeof(v10));
  IIODictionary::IIODictionary(v10, a2);
  v7 = 0;
  v8 = 0;
  v9 = 0;
  IIODictionary::IIODictionary(&v7);
  IIOArray::addObject(*(*(*(a1 + 32) + 8) + 24), v8);
  ObjectForKey = IIODictionary::getObjectForKey(v10, @"AuxiliaryData");
  if (ObjectForKey)
  {
    memset(v6, 0, sizeof(v6));
    IIOArray::IIOArray(v6, ObjectForKey);
    v5[0] = 0;
    v5[1] = v5;
    v5[2] = 0x2000000000;
    operator new();
  }

  v4 = IIODictionary::getObjectForKey(v10, @"NamedColorSpace");
  IIODictionary::setObjectForKey(&v7, v4, @"NamedColorSpace");
  IIODictionary::~IIODictionary(&v7);
  IIODictionary::~IIODictionary(v10);
}

void sub_1860B0D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MEMORY[0x186602850](v17, 0x10A1C4047070A01, a3, a4, a5, a6, a7, a8);
  IIOArray::~IIOArray(va);
  IIODictionary::~IIODictionary((v18 - 64));
  IIODictionary::~IIODictionary((v18 - 40));
  _Unwind_Resume(a1);
}

void ___ZN14IIOImageSource23addImageSourceProxyInfoEP13IIODictionaryS1__block_invoke_2(uint64_t a1, const __CFDictionary *a2)
{
  memset(v7, 0, sizeof(v7));
  IIODictionary::IIODictionary(v7, a2);
  v4 = 0;
  v5 = 0;
  v6 = 0;
  IIODictionary::IIODictionary(&v4);
  ObjectForKey = IIODictionary::getObjectForKey(v7, @"AuxiliaryDataType");
  IIODictionary::setObjectForKey(&v4, ObjectForKey, @"AuxiliaryDataType");
  IIOArray::addObject(*(*(*(a1 + 32) + 8) + 24), v5);
  IIODictionary::~IIODictionary(&v4);
  IIODictionary::~IIODictionary(v7);
}

void sub_1860B0E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void IIOImageSource::addImageSourceAtIndexProxyInfo(IIOImageSource *this, IIODictionary *a2, unsigned int a3, const __CFDictionary **a4)
{
  PropertiesAtIndexInternal = IIOImageSource::getPropertiesAtIndexInternal(this, a3, a4);
  ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(PropertiesAtIndexInternal, @"23", @"{MakerApple}");
  if (ObjectForKeyGroup)
  {
    IIODictionary::setObjectForKeyGroup(a2, ObjectForKeyGroup, @"23", @"{MakerApple}");
  }

  v7 = IIODictionary::getObjectForKeyGroup(PropertiesAtIndexInternal, @"25", @"{MakerApple}");
  if (v7)
  {
    IIODictionary::setObjectForKeyGroup(a2, v7, @"25", @"{MakerApple}");
  }

  v8 = IIODictionary::getObjectForKeyGroup(PropertiesAtIndexInternal, @"87", @"{MakerApple}");
  if (v8)
  {
    IIODictionary::setObjectForKeyGroup(a2, v8, @"87", @"{MakerApple}");
  }

  v9 = IIODictionary::getObjectForKeyGroup(PropertiesAtIndexInternal, @"CameraExtrinsics", @"{HEIF}");
  if (v9)
  {
    IIODictionary::setObjectForKeyGroup(a2, v9, @"CameraExtrinsics", @"{HEIF}");
  }

  v10 = IIODictionary::getObjectForKeyGroup(PropertiesAtIndexInternal, @"CameraModel", @"{HEIF}");
  if (v10)
  {

    IIODictionary::setObjectForKeyGroup(a2, v10, @"CameraModel", @"{HEIF}");
  }
}

CFDataRef IIOImageSource::createProxyData(IIO_Reader **this, const __CFDictionary **a2)
{
  Type = IIOImageSource::getType(this);
  v5 = IIOImageSource::updatedCount(this);
  PrimaryImageIndex = IIOImageSource::getPrimaryImageIndex(this);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  PropertiesAtIndexInternal = IIOImageSource::getPropertiesAtIndexInternal(this, 0, a2);
  IIODictionary::IIODictionary(&v24, *(PropertiesAtIndexInternal + 1), 1);
  memset(v23, 0, sizeof(v23));
  IIODictionary::IIODictionary(v23);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  IIODictionary::IIODictionary(&v20);
  IIONumber::IIONumber(&v17, 1.0);
  IIODictionary::setObjectForKey(&v20, value, @"iio-proxy-version");
  IIONumber::~IIONumber(&v17);
  IIODictionary::setObjectForKey(&v20, Type, @"iio-proxy-isrType");
  IIONumber::IIONumber(&v17, v5);
  IIODictionary::setObjectForKey(&v20, value, @"iio-proxy-count");
  IIONumber::~IIONumber(&v17);
  IIONumber::IIONumber(&v17, PrimaryImageIndex);
  IIODictionary::setObjectForKey(&v20, value, @"iio-primary_index");
  IIONumber::~IIONumber(&v17);
  IIODictionary::setObjectForKey(&v24, v21, @"{iio-proxy-base}");
  v17 = 0;
  v18 = 0;
  value = 0;
  IIODictionary::IIODictionary(&v17);
  IIOImageSource::addImageSourceProxyInfo(this, &v17, a2);
  IIODictionary::setObjectForKey(&v24, v18, @"{iio-proxy-containerProperties}");
  if (v5 >= 2)
  {
    error = 0;
    v15 = 0;
    v16 = 0;
    IIOArray::IIOArray(&error);
    if (v5)
    {
      v8 = 0;
      do
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        IIODictionary::IIODictionary(&v11);
        if (v8)
        {
          IIOImageSource::addImageSourceAtIndexProxyInfo(this, &v11, v8, a2);
        }

        IIOArray::addObject(&error, v12);
        IIODictionary::~IIODictionary(&v11);
        ++v8;
      }

      while (v5 != v8);
    }

    IIODictionary::setObjectForKey(&v24, v15, @"{iio-proxy-imageProperties}");
    IIOArray::~IIOArray(&error);
  }

  error = 0;
  v9 = CFPropertyListCreateData(*MEMORY[0x1E695E480], v25, kCFPropertyListBinaryFormat_v1_0, 0, &error);
  IIODictionary::~IIODictionary(&v17);
  IIODictionary::~IIODictionary(&v20);
  IIODictionary::~IIODictionary(v23);
  IIODictionary::~IIODictionary(&v24);
  return v9;
}

void sub_1860B1224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va3, a7);
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  va_copy(va3, va2);
  v17 = va_arg(va3, void);
  v19 = va_arg(va3, void);
  v20 = va_arg(va3, void);
  IIOArray::~IIOArray(va);
  IIODictionary::~IIODictionary(va1);
  IIODictionary::~IIODictionary(va2);
  IIODictionary::~IIODictionary(va3);
  IIODictionary::~IIODictionary((v7 - 72));
  _Unwind_Resume(a1);
}

CFTypeRef IIOImageSource::proxyCopyProperties(IIODictionary **this, IIODictionary *a2)
{
  ObjectForKey = IIODictionary::getObjectForKey(this[16], @"{iio-proxy-containerProperties}");

  return CFRetain(ObjectForKey);
}

CFTypeRef IIOImageSource::proxyCopyPropertiesAtIndex(IIOImageSource *this, unint64_t a2, IIODictionary *a3)
{
  if (!a2)
  {
    cf = 0;
    v10 = 0;
    v8 = 0;
    IIODictionary::IIODictionary(&v8, *(*(this + 16) + 8), 0);
    IIODictionary::removeObjectForKey(&v8, @"{iio-proxy-base}");
    IIODictionary::removeObjectForKey(&v8, @"{iio-proxy-containerProperties}");
    IIODictionary::removeObjectForKey(&v8, @"{iio-proxy-imageProperties}");
    v7 = CFRetain(cf);
    IIODictionary::~IIODictionary(&v8);
    return v7;
  }

  ObjectForKey = IIODictionary::getObjectForKey(*(this + 16), @"{iio-proxy-imageProperties}");
  if (CFArrayGetCount(ObjectForKey) <= a2)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(ObjectForKey, a2);

  return CFRetain(ValueAtIndex);
}

void sub_1860B141C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

CFDataRef CGImageSourceCreateProxyData(uint64_t a1, const __CFDictionary *a2)
{
  IIOInitDebugFlags(a1, a2);
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageSourceCreateProxyData", 0, 0, -1, 0);
  }

  if (!a1)
  {
    CGImageSourceCreateProxyData_cold_1();
    return 0;
  }

  Source = CGImageSourceGetSource(a1);
  if (!Source)
  {
    return 0;
  }

  v5 = Source;
  memset(v8, 0, sizeof(v8));
  IIODictionary::IIODictionary(v8, a2);
  IIOImageSource::lock(v5);
  ProxyData = IIOImageSource::createProxyData(v5, v8);
  IIOImageSource::unlock(v5);
  IIODictionary::~IIODictionary(v8);
  return ProxyData;
}

void sub_1860B1510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

const void *CGImageSourceCreateWithProxyData(const void *a1, const __CFDictionary *a2)
{
  v4 = kdebug_trace();
  IIOInitDebugFlags(v4, v5);
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageSourceCreateWithProxyData", 0, 0, -1, 0);
  }

  if (a1)
  {
    v6 = CFGetTypeID(a1);
    if (v6 == CFDataGetTypeID())
    {
      memset(v8, 0, sizeof(v8));
      IIODictionary::IIODictionary(v8, a2);
      operator new();
    }

    CGImageSourceCreateWithProxyData_cold_1();
  }

  else
  {
    CGImageSourceCreateWithProxyData_cold_2();
  }

  kdebug_trace();
  kdebug_trace();
  return 0;
}

void sub_1860B16E4(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x186602850](v3, 0x10E1C4080364B91);
  IIODictionary::~IIODictionary(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1860B1644);
}

BOOL CGImageSourceIsProxy(uint64_t a1, uint64_t a2)
{
  IIOInitDebugFlags(a1, a2);
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageSourceIsProxy", 0, 0, -1, 0);
  }

  if (!a1)
  {
    CGImageSourceIsProxy_cold_2();
    return 0;
  }

  Source = CGImageSourceGetSource(a1);
  if (!Source)
  {
    return 0;
  }

  v4 = Source;
  if (IIOImageSource::imageDataDidNotMatchRequestedHint(Source))
  {
    CGImageSourceIsProxy_cold_1();
    return 0;
  }

  IIOImageSource::lock(v4);
  v5 = v4[54] == 7;
  IIOImageSource::unlock(v4);
  return v5;
}

uint64_t _AlphaPosition(int a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return dword_186226F20[a1 - 1];
  }
}

uint64_t _ImageAlphaPosition(CGImage *a1)
{
  v1 = CGImageGetAlphaInfo(a1) - 1;
  if (v1 > 5)
  {
    return 0;
  }

  else
  {
    return dword_186226F20[v1];
  }
}

uint64_t _AlphaTogglePosition(uint64_t result)
{
  if ((result - 1) <= 5)
  {
    return dword_186226F38[(result - 1)];
  }

  return result;
}

BOOL _ValidAlphaInfo(uint64_t a1, size_t a2, CGColorSpaceRef space, unsigned int a4)
{
  if (!a4)
  {
    return CGColorSpaceGetNumberOfComponents(space) * a1 == a2;
  }

  if (a4 <= 4)
  {
    return a1 + a1 * CGColorSpaceGetNumberOfComponents(space) <= a2;
  }

  if (a4 - 5 > 1)
  {
    return 0;
  }

  return CGColorSpaceGetNumberOfComponents(space) * a1 < a2;
}

void IIOAddDateComponents(IIOArray *a1)
{
  v6 = time(0);
  v2 = localtime(&v6);
  tm_mday = v2->tm_mday;
  tm_mon = v2->tm_mon;
  IIONumber::IIONumber(v5, v2->tm_year + 1900);
  IIOArray::addObject(a1, v5);
  IIONumber::~IIONumber(v5);
  IIONumber::IIONumber(v5, tm_mon + 1);
  IIOArray::addObject(a1, v5);
  IIONumber::~IIONumber(v5);
  IIONumber::IIONumber(v5, tm_mday);
  IIOArray::addObject(a1, v5);
  IIONumber::~IIONumber(v5);
  IIONumber::IIONumber(v5, 0);
  IIOArray::addObject(a1, v5);
  IIONumber::~IIONumber(v5);
  IIONumber::IIONumber(v5, 0);
  IIOArray::addObject(a1, v5);
  IIONumber::~IIONumber(v5);
  IIONumber::IIONumber(v5, 0);
  IIOArray::addObject(a1, v5);
  IIONumber::~IIONumber(v5);
}

void IIOAddXYZfrom_xy(IIOArray *a1, float a2, float a3, float a4)
{
  if (a3 == 0.0)
  {
    v7 = 0.0;
    a4 = 0.0;
    v8 = 0.0;
  }

  else
  {
    v7 = (a2 * a4) / a3;
    v8 = (((1.0 - a2) - a3) * a4) / a3;
  }

  IIONumber::IIONumber(v9, v7);
  IIOArray::addObject(a1, v9);
  IIONumber::~IIONumber(v9);
  IIONumber::IIONumber(v9, a4);
  IIOArray::addObject(a1, v9);
  IIONumber::~IIONumber(v9);
  IIONumber::IIONumber(v9, v8);
  IIOArray::addObject(a1, v9);
  IIONumber::~IIONumber(v9);
}

void sub_1860B1C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

BOOL IIOImageIsSDR(CGImage *a1)
{
  ColorSpace = CGImageGetColorSpace(a1);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
  {
    return 1;
  }

  v3 = CGImageGetColorSpace(a1);
  if (CGColorSpaceUsesITUR_2100TF(v3))
  {
    return 0;
  }

  if (!CGColorSpaceUsesExtendedRange(ColorSpace))
  {
    return 1;
  }

  CGImageGetContentHeadroom();
  return v5 == 1.0;
}

void IIO_Reader_PNG::~IIO_Reader_PNG(IIO_Reader_PNG *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

IIOImageRead *IIO_Reader_PNG::createGlobalInfoData(IIO_Reader_PNG *this, IIOImageReadSession *a2)
{
  result = IIOImageReadSession::globalInfoForType(a2, 1095781959);
  if (result)
  {
    v3 = 0xF0F0F0F0F0F0F0F1 * ((*(result + 2) - *(result + 1)) >> 1);
    v4.location = 0;
    v4.length = v3;
    return GlobalPNGInfo::createDataRepresentation(result, &v4);
  }

  return result;
}

uint64_t globalPNGInfoReleaseProc(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t IIO_Reader_PNG::updateSourceProperties(IIO_Reader_PNG *this, IIOImageReadSession *a2, IIODictionary *a3, IIODictionary *a4, IIODictionary *a5, CGImageSourceStatus *a6)
{
  v55[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    BoolForKey = IIODictionary::getBoolForKey(a4, @"kCGImageSourcePropertiesIncludeColorInfo");
  }

  else
  {
    BoolForKey = 0;
  }

  v55[0] = 0;
  if (IIOImageReadSession::getBytesAtOffset(a2, v55, 8, 8) != 8)
  {
    v8 = 0;
    v28 = -1;
    goto LABEL_25;
  }

  v8 = 0;
  v28 = -1;
  v9 = 8;
  while (1)
  {
    v10 = v55[0];
    if (HIDWORD(v55[0]) != 1380206665 || !BoolForKey)
    {
      break;
    }

    LOWORD(Size) = 0;
    if (IIOImageReadSession::getBytesAtOffset(a2, &Size, v9 + 16, 2) != 2)
    {
      goto LABEL_25;
    }

    if (BYTE1(Size) <= 2u)
    {
      if (BYTE1(Size) == 2)
      {
        v11 = @"RGB";
      }

      else
      {
        v11 = v8;
      }

      if (!BYTE1(Size))
      {
        v11 = @"Gray";
      }
    }

    else
    {
      v11 = @"RGB";
      if (BYTE1(Size) != 3 && BYTE1(Size) != 6)
      {
        v11 = v8;
        if (BYTE1(Size) == 4)
        {
          v11 = @"Gray";
        }
      }
    }

    v28 = (BYTE1(Size) & 0xFD) == 4;
    v8 = v11;
LABEL_22:
    v9 += bswap32(v10) + 12;
    if (IIOImageReadSession::getBytesAtOffset(a2, v55, v9, 8) != 8)
    {
      goto LABEL_25;
    }
  }

  v12 = bswap32(HIDWORD(v55[0]));
  if (v12 == 1229209940)
  {
    goto LABEL_25;
  }

  if (v12 != 1633899596)
  {
    goto LABEL_22;
  }

  if (IIOImageReadSession::getBytesAtOffset(a2, v55, v9 + 8, 8) == 8)
  {
    IIONumber::IIONumber(&Size, bswap32(HIDWORD(v55[0])));
    IIODictionary::setObjectForKeyGroup(a3, v35[1], @"LoopCount", @"{PNG}");
    IIONumber::~IIONumber(&Size);
  }

LABEL_25:
  v13 = IIOImageReadSession::globalInfoForType(a2, 1095781959);
  if (v13 || (LODWORD(Size) = 0, LODWORD(v29[0]) = 0, (*(*this + 32))(this, a2, a4, &Size, v29), (v13 = IIOImageReadSession::globalInfoForType(a2, 1095781959)) != 0))
  {
    IIONumber::IIONumber(&Size, *(v13 + 8));
    IIODictionary::setObjectForKeyGroup(a3, v35[1], @"CanvasPixelWidth", @"{PNG}");
    IIONumber::~IIONumber(&Size);
    IIONumber::IIONumber(&Size, *(v13 + 9));
    IIODictionary::setObjectForKeyGroup(a3, v35[1], @"CanvasPixelHeight", @"{PNG}");
    IIONumber::~IIONumber(&Size);
    Size = 0;
    v35[0] = 0;
    v35[1] = 0;
    IIOArray::IIOArray(&Size);
    v14 = *(v13 + 1);
    for (i = *(v13 + 2); v14 != i; v14 += 34)
    {
      v16 = *(v14 + 20);
      v17 = *(v14 + 22);
      v29[0] = 0;
      v29[1] = 0;
      *&v30 = 0;
      IIODictionary::IIODictionary(v29);
      v18 = v16 / v17;
      if (v18 < 0.05)
      {
        v18 = 0.05;
      }

      IIONumber::IIONumber(v53, v18);
      IIODictionary::setObjectForKey(v29, v54, @"DelayTime");
      IIONumber::~IIONumber(v53);
      IIOArray::addObject(&Size, v29[1]);
      IIODictionary::~IIODictionary(v29);
    }

    IIODictionary::setObjectForKeyGroup(a3, v35[0], @"FrameInfo", @"{PNG}");
    IIOArray::~IIOArray(&Size);
    v19 = 1;
    if (BoolForKey)
    {
LABEL_32:
      v20 = MEMORY[0x1E695E4D0];
      if (v28 != -1)
      {
        v21 = MEMORY[0x1E695E4C0];
        if (v28)
        {
          v21 = MEMORY[0x1E695E4D0];
        }

        IIODictionary::setObjectForKeyGroup(a3, *v21, @"kCGImageSourcePropertyHasAlpha", @"{PNG}");
      }

      if (v8)
      {
        IIODictionary::setObjectForKeyGroup(a3, v8, @"kCGImageSourcePropertyColorModel", @"{PNG}");
      }

      v53[0] = 0;
      v53[1] = 0;
      v54 = 0;
      IIODictionary::IIODictionary(v53);
      memset(v52, 0, sizeof(v52));
      IIODictionary::IIODictionary(v52);
      v51 = 0;
      v50 = 0u;
      v49 = 0u;
      v48 = 0u;
      v47 = 0u;
      v46 = 0u;
      v45 = 0u;
      v44 = 0u;
      v43 = 0u;
      v42 = 0u;
      v41 = 0u;
      v40 = 0u;
      v39 = 0u;
      v38 = 0u;
      v37 = 0u;
      v36 = 0u;
      *v35 = 0u;
      IIODictionary::setObjectForKey(v53, *v20, @"kCGImageSourceSkipMetadata");
      Mutable = CGImageMetadataCreateMutable();
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      *v29 = 0u;
      BYTE14(v30) = v19;
      Size = IIOImageReadSession::getSize(a2);
      BYTE1(v45) = IIOImageReadSession::isFinal(a2);
      IIOImageReadSession::rewind(a2);
      PNGReadPlugin::InitializePluginData(a2, v53, v52, Mutable, &v51, &Size, v29, 0);
      if (v51)
      {
        v23 = CGColorSpaceCopyICCData(v51);
        if (v23)
        {
          IIODictionary::setObjectForKeyGroup(a3, v23, @"kCGImageSourceColorSpace", @"{PNG}");
          CFRelease(v23);
        }

        CFRelease(v51);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      IIODictionary::~IIODictionary(v52);
      IIODictionary::~IIODictionary(v53);
    }
  }

  else
  {
    v19 = 0;
    if (BoolForKey)
    {
      goto LABEL_32;
    }
  }

  return 0;
}

void sub_1860B24D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t globalGIFInfoReleaseProc(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *GIFReadPlugin::GIFReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  result = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *result = &unk_1EF4DCFF8;
  result[58] = 0;
  return result;
}

void GIFReadPlugin::~GIFReadPlugin(GIFReadPlugin *this)
{
  IIOReadPlugin::~IIOReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t GIFReadPlugin::loadDataFromXPCObject(GIFReadPlugin *this, void *a2)
{
  DataFromXPCObject = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!DataFromXPCObject)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_gif", &length);
    if (length == 8)
    {
      *(this + 58) = *data;
    }
  }

  return DataFromXPCObject;
}

uint64_t GIFReadPlugin::saveDataToXPCObject(GIFReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_gif", this + 464, 8uLL);
  }

  return v4;
}

size_t GIFReadPlugin::initialize(GIFReadPlugin *this, IIODictionary *a2)
{
  v50 = 0;
  v3 = *(this + 6);
  v4 = *(this + 7);
  *(this + 469) = IIODictionary::getBoolForKey(v3, @"IIO_SKIP_GIF_COMPOSING");
  IIOSkipMetadata(v3);
  IIOSkipXMP_and_IPTC(v3);
  v5 = *(this + 3);
  if (!v5)
  {
    goto LABEL_34;
  }

  _cg_DGifOpen(v5, gifRead, &v50);
  if (!v6)
  {
    goto LABEL_34;
  }

  v7 = v6;
  v8 = IIOImageReadSession::globalInfoForType(*(this + 3), 1195984416);
  if (!v8)
  {
    GIFReadPlugin::initialize();
LABEL_33:
    _cg_DGifCloseFile(v7, 0);
LABEL_34:
    Extension = 4294967246;
LABEL_35:
    kdebug_trace();
    return Extension;
  }

  v9 = v8;
  v10 = (this + 224);
  v11 = *(this + 56);
  if (v11 >= GlobalGIFInfo::frameCount(v8))
  {
    GIFReadPlugin::initialize(this + 224, v9);
    goto LABEL_33;
  }

  if (GlobalGIFInfo::frameCount(v9) >= 6)
  {
    *(this + 470) = 1;
  }

  *(this + 64) = 2097160;
  *(this + 85) = 1380401696;
  *(this + 372) = 0;
  *(this + 374) = 0;
  *(this + 61) = *v7;
  *(this + 62) = v7[1];
  v12 = GlobalGIFInfo::frameCount(v9);
  if (v12 >= 2)
  {
    v17 = *(this + 61);
    v18 = *(this + 62);
  }

  else
  {
    GlobalGIFInfo::getFrameInfoAtIndex(&v41, v9, 0);
    v13 = v42;
    v14 = HIWORD(v42);
    v15 = v43;
    v16 = v44;
    v17 = *(this + 61);
    if (!v17 && !*(this + 62) && !v42)
    {
      *(this + 61) = v43;
      *(this + 62) = v16;
      v17 = v15;
    }

    if (!v14 && !v13 && v17 > v15 && *(this + 62) > v16 || v17 > 0x800 || (v18 = *(this + 62), v18 >= 0x801))
    {
      *(this + 61) = v15;
      *(this + 62) = v16;
      v17 = v15;
      v18 = v16;
    }
  }

  if (4 * v12 * v18 * v17 >= 0x1E8481)
  {
    *(this + 371) = 0;
  }

  v19 = *(v9 + 22);
  if (v19)
  {
    if (*v19 == 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 1;
  }

  if (v7[1] * *v7 > (1100 * v20 * IIOImageReadSession::getSize(*(this + 3))))
  {
    if (*(this + 369) == 1)
    {
      LogError("initialize", 397, "malformed GIF file (%d x %d) - [canvasSize: %ld  fileSize: %ld   ratio: %d]  \n");
    }

    goto LABEL_33;
  }

  GlobalGIFInfo::getFrameInfoAtIndex(&v41, v9, *v10);
  v21 = v43;
  v22 = v44;
  if (v44 * v43 > 1100 * v20 * v48)
  {
    if (*(this + 369) == 1)
    {
      LogError("initialize", 411, "malformed GIF frame#%ld (%d x %d) - [canvasSize: %ld  frameDataSize: %ld   adjustment: %d]\n", *v10);
    }

    goto LABEL_33;
  }

  v25 = v46;
  v39 = v47;
  v26 = v49;
  if (*(this + 469) == 1)
  {
    v27 = HIWORD(v42);
    v38 = v45;
    IIONumber::IIONumber(&v41, v42);
    IIODictionary::setObjectForKeyGroup(v4, &v41, @"xOffset", @"{GIF}");
    IIONumber::~IIONumber(&v41);
    IIONumber::IIONumber(&v41, v27);
    IIODictionary::setObjectForKeyGroup(v4, &v41, @"yOffset", @"{GIF}");
    IIONumber::~IIONumber(&v41);
    IIONumber::IIONumber(&v41, v21);
    IIODictionary::setObjectForKeyGroup(v4, &v41, @"width", @"{GIF}");
    IIONumber::~IIONumber(&v41);
    IIONumber::IIONumber(&v41, v22);
    IIODictionary::setObjectForKeyGroup(v4, &v41, @"height", @"{GIF}");
    IIONumber::~IIONumber(&v41);
    IIONumber::IIONumber(&v41, v38);
    IIODictionary::setObjectForKeyGroup(v4, &v41, @"disposeOp", @"{GIF}");
    IIONumber::~IIONumber(&v41);
  }

  *(this + 63) = (4 * *(this + 61) + 15) & 0xFFFFFFF0;
  if ((v26 & 2) != 0)
  {
    v28 = 3;
  }

  else
  {
    v28 = 5;
  }

  *(this + 262) = v28;
  if (v12 != 1 || (v26 & 2) != 0 || v22 >= v7[1])
  {
    *(this + 130) = 4;
    if (*(this + 56) && (v26 & 2) == 0)
    {
      GlobalGIFInfo::getFrameInfoAtIndex(&v41, v9, 0);
      if ((v49 & 2) != 0)
      {
        v28 = 3;
        *(this + 262) = 3;
      }

      else
      {
        v28 = *(this + 262) & 0x1F;
      }
    }
  }

  else
  {
    v28 = 3;
    *(this + 262) = 3;
    *(this + 130) = 4;
  }

  *(this + 263) = 0;
  v29 = *(this + 264);
  v30 = *(this + 265) != 0;
  *(this + 294) = v28;
  *(this + 295) = 0;
  *(this + 296) = v29 & 0xF;
  *(this + 297) = v30;
  *(this + 378) = 1;
  if (GlobalGIFInfo::colorSyncProfileOffset(v9))
  {
    v41 = 0;
    v40 = 0;
    v31 = *(this + 3);
    v32 = GlobalGIFInfo::colorSyncProfileOffset(v9);
    IIOImageReadSession::seek(v31, v32, 0);
    Extension = _cg_DGifGetExtension(v7, &v40, &v41);
    if (!Extension)
    {
      GIFReadPlugin::initialize();
      v33 = 0;
      goto LABEL_68;
    }

    v33 = malloc_type_malloc(0, 0x100004077774924uLL);
    if (!v33)
    {
      goto LABEL_68;
    }

    v34 = 0;
    while (v41)
    {
      if (v33)
      {
        v35 = reallocf(v33, *v41 + v34);
        v33 = v35;
        if (!v35)
        {
          GIFReadPlugin::initialize();
          goto LABEL_68;
        }

        v36 = v41;
        memcpy(&v35[v34], v41 + 1, *v41);
        v34 += *v36;
      }

      Extension = _cg_DGifGetExtensionNext(v7, &v41);
      if (!Extension)
      {
        GIFReadPlugin::initialize();
        goto LABEL_68;
      }
    }

    v37 = CGColorSpaceCreateWithCopyOfData(v33 + 11, v34 - 11);
    if (v37)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v33 = 0;
  }

  v37 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
LABEL_65:
  *(this + 20) = v37;
  *(this + 49) = 1;
  *(this + 116) = v39;
  if ((v26 & 8) != 0)
  {
    IIO_addDelayTimeToDictionary(v25, v4, @"{GIF}");
  }

  Extension = 0;
  *(this + 204) = 1;
LABEL_68:
  if (v33)
  {
    free(v33);
  }

  _cg_DGifCloseFile(v7, 0);
  if (Extension)
  {
    goto LABEL_35;
  }

  return Extension;
}

void sub_1860B2D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

unint64_t GIFReadPlugin::decodeIndexedColorFrame(uint64_t a1, IIOScanner *a2, unsigned int **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v83 = *MEMORY[0x1E69E9840];
  memset(__c, 0, sizeof(__c));
  *v73 = 0;
  *(a6 + 80) = 0;
  _cg_DGifOpen(a2, gifReadWithScanner, &__c[1]);
  v72 = v9;
  if (v9)
  {
    GlobalGIFInfo::getFrameInfoAtIndex(v75, a3, *a6);
    v10 = *v75;
    v11 = v76;
    v68 = v77;
    count = v78;
    v65 = v79;
    v12 = v82;
    if ((v82 & 2) != 0)
    {
      __c[0] = v80;
    }

    else if (!v81)
    {
      v13 = a3[22];
      if (v13)
      {
        bzero(v75, 0x400uLL);
        IIOColorMap::copyToRGBX(v13, v75, 0x400uLL, 0);
        if (*a3[22] > 0x100)
        {
          goto LABEL_103;
        }

        if (!IIOColorMap::indexForColor(0xFFFFFFFFLL, v75, *a3[22], __c, v14))
        {
          __c[0] = 0;
        }
      }
    }

    IIOScanner::seek(a2, v10, 0);
    if (_cg_DGifGetImageDesc(v72))
    {
      GlobalGIFInfo::getSize(a3, &v73[1], v73);
      LODWORD(v16) = v73[1];
      v84.size.width = v16;
      LODWORD(v16) = v73[0];
      v84.size.height = v16;
      v17 = v11;
      v99.origin.y = v68;
      v99.size.width = count;
      v99.size.height = v65;
      v84.origin.x = 0.0;
      v84.origin.y = 0.0;
      v99.origin.x = v11;
      v85 = CGRectIntersection(v84, v99);
      x = v85.origin.x;
      y = v85.origin.y;
      width = v85.size.width;
      height = v85.size.height;
      if (CGRectIsEmpty(v85))
      {
        if (!*a6)
        {
          bzero(*(a6 + 40), *(a6 + 56));
        }

        v15 = 0;
        goto LABEL_100;
      }

      v86.origin.x = x;
      v86.origin.y = y;
      v86.size.width = width;
      v86.size.height = height;
      v22 = CGRectGetWidth(v86);
      v87.origin.x = v11;
      v87.size.width = count;
      v87.origin.y = v68;
      v87.size.height = v65;
      v23 = CGRectGetWidth(v87);
      v88.origin.x = v11;
      v88.size.width = count;
      v88.origin.y = v68;
      v88.size.height = v65;
      MinY = CGRectGetMinY(v88);
      v89.origin.x = x;
      v89.origin.y = y;
      v89.size.width = width;
      v89.size.height = height;
      v66 = CGRectGetMinY(v89);
      v90.origin.x = x;
      v90.origin.y = y;
      v90.size.width = width;
      v90.size.height = height;
      v24 = CGRectGetWidth(v90);
      v91.origin.x = x;
      v91.origin.y = y;
      v91.size.width = width;
      v91.size.height = height;
      v25 = v24;
      v26 = CGRectGetHeight(v91);
      if (*(a6 + 56) >= (v26 * v25))
      {
        if (v22 >= v23 && MinY >= v66)
        {
          v67 = 0;
          v27 = 0;
          goto LABEL_23;
        }

        v27 = malloc_type_calloc(count, 1uLL, 0x100004077774924uLL);
        if (v27)
        {
          if (x <= v17)
          {
            v67 = 0;
          }

          else
          {
            v67 = (x - v17);
          }

LABEL_23:
          v71 = v27;
          if ((v12 & 4) != 0)
          {
            v39 = 0;
            v40 = 0;
            v41 = -1;
            while (2)
            {
              for (i = gInterlacedOffset[v40]; i < v26; i += gInterlacedJumps[v40])
              {
                v96.origin.x = v17;
                v96.size.width = count;
                v96.origin.y = v68;
                v96.size.height = v65;
                v43 = CGRectGetMinY(v96);
                v44 = *(a6 + 40);
                v97.origin.x = x;
                v97.origin.y = y;
                v97.size.width = width;
                v97.size.height = height;
                v45 = (v44 + i * v25);
                v46 = (v43 + i);
                if (CGRectGetMinY(v97) > v46 || (v98.origin.x = x, v98.origin.y = y, v98.size.width = width, v98.size.height = height, CGRectGetMaxY(v98) <= v46))
                {
                  v48 = 0;
                  v47 = v71;
                }

                else
                {
                  if (v22 >= v23)
                  {
                    v47 = (v44 + i * v25);
                  }

                  else
                  {
                    v47 = v71;
                  }

                  v48 = 1;
                }

                if (!_cg_DGifGetLine(v72, v47, count))
                {
                  if (v41 >= 0xFFFFFFFFLL)
                  {
                    v15 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    v15 = v41;
                  }

                  if (v41 == -1)
                  {
                    v15 = -1;
                  }

                  else
                  {
                    if (i < v26)
                    {
                      v56 = gInterlacedJumps[v40];
                      v57 = v25 * i;
                      do
                      {
                        memset((*(a6 + 40) + v57), __c[0], v25);
                        i += v56;
                        v57 += v56 * v25;
                      }

                      while (i < v26);
                    }

                    if (v40 <= 2)
                    {
                      do
                      {
                        v58 = gInterlacedOffset[++v40];
                        if (v58 < v26)
                        {
                          v59 = gInterlacedJumps[v40];
                          v60 = v25 * v58;
                          do
                          {
                            memset((*(a6 + 40) + v60), __c[0], v25);
                            v58 += v59;
                            v60 += v25 * v59;
                          }

                          while (v58 < v26);
                        }
                      }

                      while (v40 != 3);
                    }
                  }

                  goto LABEL_97;
                }

                if (v22 < v23)
                {
                  v49 = v48;
                }

                else
                {
                  v49 = 0;
                }

                if (v49 == 1)
                {
                  memcpy(v45, &v71[v67], v25);
                }

                v50 = i + v68;
                if (v41 > i + v68)
                {
                  v50 = v41;
                }

                ++v39;
                v53 = v40 != 3 && v50 == v26 - 1 && v26 > 1;
                v41 = v50 - v53;
              }

              if (++v40 != 4)
              {
                continue;
              }

              break;
            }

            if (v39)
            {
              v54 = v65 == 1;
            }

            else
            {
              v54 = 0;
            }

            if (v54 && v41 == 0)
            {
              v15 = v39;
            }

            else
            {
              v15 = v41;
            }
          }

          else
          {
            v28 = *(a6 + 40);
            v92.origin.x = x;
            v92.origin.y = y;
            v92.size.width = width;
            v92.size.height = height;
            v29 = CGRectGetMinY(v92);
            v93.origin.x = v11;
            v93.size.width = count;
            v93.origin.y = v68;
            v93.size.height = v65;
            v30 = CGRectGetMinY(v93);
            v94.origin.x = x;
            v94.origin.y = y;
            v94.size.width = width;
            v94.size.height = height;
            if (CGRectGetMaxY(v94) > v30)
            {
              v31 = 0;
              v32 = v29;
              v33 = v30;
              while (1)
              {
                v34 = v33 + v31;
                v35 = v22 >= v23 ? v28 : v71;
                v36 = v34 < v32 ? v71 : v35;
                if (!_cg_DGifGetLine(v72, v36, count))
                {
                  break;
                }

                if (v34 >= v32 && v22 < v23)
                {
                  memcpy(v28, &v71[v67], v25);
                }

                v95.origin.x = x;
                v95.origin.y = y;
                v95.size.width = width;
                v95.size.height = height;
                MaxY = CGRectGetMaxY(v95);
                v28 += v25;
                v38 = (v33 + v31++ + 1);
                if (MaxY <= v38)
                {
                  v15 = v31 - 1;
                  goto LABEL_90;
                }
              }

              v61 = v33 - v32 + v31;
              v15 = v61 & ~(v61 >> 63);
              if (v15 < v26)
              {
                v62 = v61 & ~(v61 >> 63);
                v63 = v71;
                do
                {
                  memset(v28, __c[0], v25);
                  v28 += v25;
                  ++v62;
                }

                while (v62 < v26);
LABEL_98:
                if (v63)
                {
                  free(v63);
                }

                goto LABEL_100;
              }

LABEL_97:
              v63 = v71;
              goto LABEL_98;
            }

            v15 = -1;
          }

LABEL_90:
          if (*(v72 + 48))
          {
            operator new();
          }

          goto LABEL_97;
        }
      }
    }

    else
    {
      GIFReadPlugin::decodeIndexedColorFrame();
    }

LABEL_103:
    v15 = -1;
LABEL_100:
    _cg_DGifCloseFile(v72, 0);
    return v15;
  }

  return -1;
}

void GIFReadPlugin::decodeIndexedColorFrames(uint64_t a1, IIOImageRead *this, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v16 = 0;
  v12 = IIOImageRead::retainBytePointer(this, &v16, 1);
  Size = IIOImageRead::getSize(this);
  v14 = (a6[1] - *a6) >> 3;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = ___ZN13GIFReadPlugin24decodeIndexedColorFramesEP12IIOImageReadP13GlobalGIFInfoRK14ReadPluginDataRK13GIFPluginDataRNSt3__16vectorI20IIODecodeFrameParamsNSA_9allocatorISC_EEEE_block_invoke;
  v15[3] = &__block_descriptor_tmp_51;
  v15[4] = a1;
  v15[5] = a6;
  v15[6] = v12;
  v15[7] = Size;
  v15[8] = a3;
  v15[9] = a4;
  v15[10] = a5;
  dispatch_apply(0x2E8BA2E8BA2E8BA3 * v14, 0, v15);
  if (this)
  {
    if (v16)
    {
      IIOImageRead::releaseBytePointer(this, v16);
    }
  }
}

void ___ZN13GIFReadPlugin24decodeIndexedColorFramesEP12IIOImageReadP13GlobalGIFInfoRK14ReadPluginDataRK13GIFPluginDataRNSt3__16vectorI20IIODecodeFrameParamsNSA_9allocatorISC_EEEE_block_invoke(uint64_t a1, unint64_t a2)
{
  v2 = **(a1 + 40);
  if (0x2E8BA2E8BA2E8BA3 * ((*(*(a1 + 40) + 8) - v2) >> 3) <= a2)
  {
    __break(1u);
  }

  else
  {
    v4 = v2 + 88 * a2;
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    IIOScanner::IIOScanner(v8, *(a1 + 48), *(a1 + 56), 1);
    *(v4 + 64) = GIFReadPlugin::decodeIndexedColorFrame(v5, v8, *(a1 + 64), v6, v7, v4);
    IIOScanner::~IIOScanner(v8);
  }
}

void GIFReadPlugin::createFrameBufferAtIndex(IIO_ReaderHandler *a1, CGRect *a2, unint64_t a3, IIO_Reader *a4, GlobalGIFInfo *a5, uint64_t a6, uint64_t a7)
{
  ReaderHandler = IIO_ReaderHandler::GetReaderHandler(a1);
  IIO_ReaderHandler::readerForType(ReaderHandler, 1195984416);
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v15 = IIO_Reader::testHeaderSize(a4);
  if (!v15)
  {
    goto LABEL_15;
  }

  v41 = 0;
  v40 = 0;
  *length = 0u;
  v39 = 0u;
  GlobalGIFInfo::getFrameInfoAtIndex(length, a5, a3);
  LOWORD(v16) = length[1];
  v46.origin.x = v16;
  LOWORD(v16) = WORD1(length[1]);
  v46.origin.y = v16;
  LOWORD(v16) = WORD2(length[1]);
  v46.size.width = v16;
  LOWORD(v16) = HIWORD(length[1]);
  v46.size.height = v16;
  v45 = CGRectIntersection(*a2, v46);
  x = v45.origin.x;
  y = v45.origin.y;
  width = v45.size.width;
  height = v45.size.height;
  v21 = v45.size.width;
  if (CGRectIsEmpty(v45))
  {
    v22 = 0;
    goto LABEL_6;
  }

  if (!is_mul_ok(v21, height) || (v22 = _ImageIO_Malloc(v21 * height, *(a6 + 216), &v41, kImageMalloc_GIF_Data[0], 0, 0)) == 0)
  {
LABEL_15:
    *&v29 = &v42;
    std::vector<IIODecodeFrameParams>::__destroy_vector::operator()[abi:fe200100](&v29);
    return;
  }

LABEL_6:
  *&v29 = a3;
  *(&v29 + 1) = x;
  *&v30 = y;
  *(&v30 + 1) = width;
  v31 = height;
  v32 = v22;
  v33 = width;
  v34 = v41;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  std::vector<IIODecodeFrameParams>::push_back[abi:fe200100](&v42, &v29);
  IIODecodeFrameParams::~IIODecodeFrameParams(&v29);
  GIFReadPlugin::decodeIndexedColorFrames(a1, v15, a5, a6, a7, &v42);
  v23 = v42;
  if (v43 != v42)
  {
    v31 = 0.0;
    v29 = 0u;
    v30 = 0u;
    GlobalGIFInfo::getFrameInfoAtIndex(&v29, a5, *v42);
    if (WORD1(v30))
    {
      v24 = WORD1(v30) / 100.0;
    }

    else
    {
      v24 = 0.0333333333;
    }

    v25 = IIOFrameBufferCreateForBuffer(v23[5], v23[7], HIWORD(v29) * WORD6(v29), *v23, v24);
    IIOGIFFrameSetNumRowsDecoded(v25, v23[8]);
    v26 = v23[10];
    if (v26)
    {
      length[0] = 0;
      SerializedData = IIOColorMap::createSerializedData(v26, length);
      if (SerializedData)
      {
        v28 = CFDataCreate(*MEMORY[0x1E695E480], SerializedData, length[0]);
        if (v28)
        {
          IIOFrameBufferSetColorTable(v25, v28);
          CFRelease(v28);
        }

        free(SerializedData);
      }
    }

    goto LABEL_15;
  }

  __break(1u);
}

void sub_1860B38A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 - 120);
  std::vector<IIODecodeFrameParams>::__destroy_vector::operator()[abi:fe200100](&a9);
  _Unwind_Resume(a1);
}

void sub_1860B3A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<IIODecodeFrameParams>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t GIFReadPlugin::doDecodeImageData(IIO_ReaderHandler *a1, IIO_Reader *this, GlobalGIFInfo *a3, uint64_t a4, uint64_t a5, char *a6, size_t a7, uint64_t *a8, uint64_t *a9)
{
  v115 = *MEMORY[0x1E69E9840];
  if (!this || (v14 = IIO_Reader::testHeaderSize(this)) == 0)
  {
    v44 = 0;
    v93 = 0;
    NumRowsDecoded = -1;
    goto LABEL_112;
  }

  v15 = v14;
  v95 = this;
  bzero(v114, 0x400uLL);
  v16 = *a5;
  v17 = *(a4 + 112);
  v18 = *(a4 + 116);
  v108 = a4;
  *v112 = 0;
  v103 = a3;
  GlobalGIFInfo::getSize(a3, &v112[1], v112);
  LODWORD(v19) = v112[1];
  LODWORD(v20) = v112[0];
  v113.origin = 0uLL;
  v113.size.width = v19;
  v113.size.height = v20;
  v21 = *a8;
  if (!*a8)
  {
    v30 = 0;
    v23 = a4;
    goto LABEL_26;
  }

  v22 = *(v21 + 8);
  v23 = a4;
  if (!v22)
  {
    goto LABEL_25;
  }

  v24 = *(a4 + 24);
  if (!v24)
  {
    goto LABEL_25;
  }

  v25 = *(v21 + 20);
  if (v25 == v24 - 1)
  {
    GlobalGIFInfo::getFrameInfoAtIndex(__p, a3, v25);
    if (LOWORD(__p[2]) >= 2u)
    {
      v23 = a4;
      if (LOWORD(__p[2]) == 2 && (BYTE4(__p[4]) & 1) != 0)
      {
        v30 = 0;
        v16 = *(a4 + 24) - 1;
        goto LABEL_26;
      }
    }

    else
    {
      v26 = *a8;
      v23 = a4;
      if (*(*a8 + 36) == *(a4 + 236))
      {
        v27 = *(a4 + 116);
        if (v27 == *(v26 + 24))
        {
          v28 = *(v26 + 32) * v27;
          if (v28 >= a7)
          {
            v29 = a7;
          }

          else
          {
            v29 = v28;
          }

          memcpy(a6, *(v26 + 8), v29);
          v30 = 1;
          goto LABEL_26;
        }
      }
    }

LABEL_25:
    v30 = 0;
    goto LABEL_26;
  }

  v30 = 0;
  if (v25 < v16 || v25 >= v24)
  {
    goto LABEL_26;
  }

  if (*(v21 + 36) != *(a4 + 236))
  {
    goto LABEL_25;
  }

  v31 = *(a4 + 116);
  if (v31 != *(v21 + 24))
  {
    goto LABEL_25;
  }

  v32 = *(v21 + 32) * v31;
  if (v32 >= a7)
  {
    v33 = a7;
  }

  else
  {
    v33 = v32;
  }

  memcpy(a6, v22, v33);
  v30 = 0;
  v16 = *(*a8 + 20);
LABEL_26:
  if (*(a5 + 4) == 1)
  {
    v111 = 0;
    v110 = 0;
    std::string::basic_string[abi:fe200100]<0>(__p, kFrameBufferQueueKey);
    ClientValueForKey = IIOImageRead::getClientValueForKey(v15, __p, &v110);
    v23 = a4;
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    v97 = v110;
    if (!v110)
    {
      ReaderHandler = IIO_ReaderHandler::GetReaderHandler(ClientValueForKey);
      IIO_ReaderHandler::readerForType(ReaderHandler, 1195984416);
      memcpy(__p, a4, sizeof(__p));
      operator new();
    }

    if (v111)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v111);
    }
  }

  else
  {
    v97 = 0;
  }

  v107 = &a6[v18 * v17];
  if (v30 & 1) != 0 || (*(a5 + 5))
  {
    NumRowsDecoded = -1;
    v36 = v103;
    goto LABEL_37;
  }

  v36 = v103;
  if (v16 < *(v23 + 24))
  {
    NumRowsDecoded = -1;
    Buffer = 0;
    v61 = v16;
    v62 = 255;
    while (1)
    {
      v106 = v61;
      GlobalGIFInfo::getFrameInfoAtIndex(__p, v36, v61);
      v63 = LOWORD(__p[1]);
      v64 = WORD1(__p[1]);
      v65 = WORD2(__p[1]);
      v100 = HIWORD(__p[1]);
      v66 = LOWORD(__p[2]);
      v67 = SWORD2(__p[2]);
      v68 = BYTE4(__p[4]);
      if (LOWORD(__p[2]) == 2)
      {
        break;
      }

      if (LOWORD(__p[2]) != 3)
      {
        if (v97)
        {
          v104 = IIOFrameBufferQueue::getAndRetainBufferAtIndex(v97, v106);
        }

        else
        {
          GIFReadPlugin::createFrameBufferAtIndex(a1, &v113, v106, v95, v103, v108, a5);
          v104 = v70;
        }

        if (!v104)
        {
          _cg_jpeg_mem_term("doDecodeImageData", 1142, "*** IIOFrameBufferQueue returned NULL for buffer at index: %ld\n");
          goto LABEL_120;
        }

        Buffer = IIOFrameBufferGetBuffer(v104);
        ColorTable = IIOFrameBufferGetColorTable(v104);
        v72 = ColorTable;
        if (ColorTable)
        {
          memset(__p, 0, 24);
          BytePtr = CFDataGetBytePtr(ColorTable);
          Length = CFDataGetLength(v72);
          IIOColorMap::IIOColorMap(__p, BytePtr, Length);
          LOWORD(v75) = __p[0];
          IIOColorMap::copyToRGBX(__p, v114, 0x400uLL, *(v108 + 237) == 0);
          v76 = __p[2];
          __p[2] = 0;
          v77 = v104;
          if (v76)
          {
            MEMORY[0x186602830](v76, 0x1000C8033FC2DF1);
          }
        }

        else
        {
          v78 = *(v103 + 22);
          if (!v78)
          {
            bzero(a6, (*(v108 + 116) * *(v108 + 112)));
LABEL_116:
            v44 = v104;
            goto LABEL_111;
          }

          v75 = *v78;
          IIOColorMap::copyToRGBX(v78, v114, 0x400uLL, *(v108 + 237) == 0);
          v77 = v104;
        }

        NumRowsDecoded = IIOGIFFrameGetNumRowsDecoded(v77);
        if (NumRowsDecoded < 0)
        {
          goto LABEL_116;
        }

        if (v67 > v75)
        {
          v79 = v67 + 1;
        }

        else
        {
          v79 = v75;
        }

        if (v79 >= 0xFFu)
        {
          v62 = 255;
        }

        else
        {
          v62 = v79;
        }

        goto LABEL_88;
      }

      if (!v106)
      {
        bzero(a6, (*(v108 + 116) * *(v108 + 112)));
      }

      v69 = 0;
LABEL_108:
      IIOFrameBufferRelease(v69);
      v61 = v106 + 1;
      v23 = v108;
      v36 = v103;
      if (v106 + 1 >= *(v108 + 24))
      {
        goto LABEL_37;
      }
    }

    v104 = 0;
LABEL_88:
    v119.origin.x = v63;
    v119.origin.y = v64;
    v119.size.width = v65;
    v119.size.height = v100;
    x = v113.origin.x;
    v117 = CGRectIntersection(v113, v119);
    height = v117.size.height;
    if (v117.size.height)
    {
      v82 = 0;
      width = v117.size.width;
      y = v117.origin.y;
      v85 = &a6[4 * (v117.origin.x - x)];
      v86 = 4 * v117.size.width;
      do
      {
        v87 = &v85[(v82 + y) * *(v108 + 116)];
        if (v87 > v107 || &v87[v86] > v107)
        {
          break;
        }

        if (v66 < 2)
        {
          if (width)
          {
            v89 = (Buffer + v82 * width);
            v90 = width;
            do
            {
              v92 = *v89++;
              v91 = v92;
              if (v92 > v62)
              {
                v91 = 0;
              }

              if ((v68 & 2) == 0 || v91 != v67)
              {
                *v87 = v114[v91];
              }

              v87 += 4;
              --v90;
            }

            while (v90);
          }
        }

        else if (v66 == 2 && width)
        {
          bzero(v87, v86);
        }

        ++v82;
      }

      while (v82 != height);
    }

    v69 = v104;
    goto LABEL_108;
  }

  NumRowsDecoded = -1;
LABEL_37:
  v37 = (v23 + 24);
  GlobalGIFInfo::getFrameInfoAtIndex(__p, v36, *(v23 + 24));
  v38 = LOWORD(__p[1]);
  v39 = WORD1(__p[1]);
  v40 = WORD2(__p[1]);
  v105 = HIWORD(__p[1]);
  v41 = SWORD2(__p[2]);
  v42 = BYTE4(__p[4]);
  if (v97)
  {
    v43 = IIOFrameBufferQueue::getAndRetainBufferAtIndex(v97, *v37);
  }

  else
  {
    GIFReadPlugin::createFrameBufferAtIndex(a1, &v113, *v37, v95, v103, v108, a5);
  }

  v44 = v43;
  if (!v43)
  {
    GIFReadPlugin::doDecodeImageData();
LABEL_120:
    v44 = 0;
    goto LABEL_111;
  }

  v45 = IIOFrameBufferGetBuffer(v43);
  v46 = IIOFrameBufferGetColorTable(v44);
  v47 = v46;
  if (v46)
  {
    memset(__p, 0, 24);
    v48 = CFDataGetBytePtr(v46);
    v49 = CFDataGetLength(v47);
    IIOColorMap::IIOColorMap(__p, v48, v49);
    LOWORD(v50) = __p[0];
    IIOColorMap::copyToRGBX(__p, v114, 0x400uLL, *(v108 + 237) == 0);
    GIFReadPlugin::doDecodeImageData(__p);
    goto LABEL_45;
  }

  v51 = *(v103 + 22);
  if (v51)
  {
    v50 = *v51;
    IIOColorMap::copyToRGBX(v51, v114, 0x400uLL, *(v108 + 237) == 0);
LABEL_45:
    NumRowsDecoded = IIOGIFFrameGetNumRowsDecoded(v44);
    if ((NumRowsDecoded & 0x8000000000000000) == 0)
    {
      if (v41 > v50)
      {
        LOWORD(v50) = v41 + 1;
      }

      v118.origin.x = v38;
      v118.origin.y = v39;
      v118.size.width = v40;
      v118.size.height = v105;
      v52 = v113.origin.x;
      v116 = CGRectIntersection(v113, v118);
      if (v116.size.height)
      {
        v53 = 0;
        v54 = v116.size.width;
        do
        {
          v55 = &a6[4 * (v116.origin.x - v52) + (v53 + v116.origin.y) * *(v108 + 116)];
          if (v55 > v107 || &v55[4 * v116.size.width] > v107)
          {
            break;
          }

          if (v54)
          {
            v57 = (v45 + v53 * v54);
            v58 = v116.size.width;
            do
            {
              v60 = *v57++;
              v59 = v60;
              if (v60 > v50)
              {
                v59 = 0;
              }

              if ((v42 & 2) == 0 || v59 != v41)
              {
                *v55 = v114[v59];
              }

              v55 += 4;
              --v58;
            }

            while (v58);
          }

          ++v53;
        }

        while (v53 != v116.size.height);
      }
    }

    goto LABEL_111;
  }

  bzero(a6, (*(v108 + 116) * *(v108 + 112)));
LABEL_111:
  v93 = 1;
LABEL_112:
  IIOFrameBufferRelease(v44);
  *a9 = NumRowsDecoded;
  return v93;
}

void sub_1860B43D0(_Unwind_Exception *a1)
{
  if (STACK[0x310])
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](STACK[0x310]);
  }

  _Unwind_Resume(a1);
}

__CFArray *___ZN13GIFReadPlugin17doDecodeImageDataEP19IIOImageReadSessionP13GlobalGIFInfoRK14ReadPluginDataRK13GIFPluginDataPhmNSt3__110shared_ptrI13GIFBufferInfoEEPl_block_invoke(uint64_t a1, uint64_t a2)
{
  v26 = *(a1 + 32);
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v6 = 0;
  for (i = a2; i < GlobalGIFInfo::frameCount(*(a1 + 40)); ++i)
  {
    v39 = 0;
    v38 = 0;
    *length = 0u;
    v37 = 0u;
    GlobalGIFInfo::getFrameInfoAtIndex(length, *(a1 + 40), i);
    LOWORD(v8) = length[1];
    v44.origin.x = v8;
    LOWORD(v8) = WORD1(length[1]);
    v44.origin.y = v8;
    LOWORD(v8) = WORD2(length[1]);
    v44.size.width = v8;
    LOWORD(v8) = HIWORD(length[1]);
    v44.size.height = v8;
    v43 = CGRectIntersection(*(a1 + 48), v44);
    x = v43.origin.x;
    y = v43.origin.y;
    width = v43.size.width;
    height = v43.size.height;
    v13 = v43.size.width;
    if (CGRectIsEmpty(v43))
    {
      v14 = 0;
    }

    else
    {
      v15 = height;
      if (!is_mul_ok(v13, height))
      {
        goto LABEL_25;
      }

      v16 = v13 * v15;
      v14 = _ImageIO_Malloc(v13 * v15, *(a1 + 296), &v39, kImageMalloc_GIF_Data[0], 0, 0);
      if (!v14)
      {
        goto LABEL_25;
      }

      v6 += v16;
    }

    *&v27 = i;
    *(&v27 + 1) = x;
    *&v28 = y;
    *(&v28 + 1) = width;
    v29 = height;
    v30 = v14;
    v31 = width;
    v32 = v39;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    std::vector<IIODecodeFrameParams>::push_back[abi:fe200100](&v40, &v27);
    IIODecodeFrameParams::~IIODecodeFrameParams(&v27);
    v17 = (v6 & 0xFFFFFFFFFFFF0000) != 0 && (0x2E8BA2E8BA2E8BA3 * (v41 - v40)) > 2;
    if (v17 || v6 >> 20)
    {
      break;
    }
  }

  if ((gIIODebugFlags & 0x1000000000000) != 0)
  {
    ImageIOLog("    Asking for frames at indexes: (%ld, %ld), %ld bytes\n", a2, 0x2E8BA2E8BA2E8BA3 * (v41 - v40), v6);
  }

  GIFReadPlugin::decodeIndexedColorFrames(v26, *(a1 + 344), *(a1 + 40), a1 + 80, a1 + 352, &v40);
  v18 = v40;
  for (j = v41; v18 != j; v18 += 11)
  {
    v29 = 0.0;
    v27 = 0u;
    v28 = 0u;
    GlobalGIFInfo::getFrameInfoAtIndex(&v27, *(a1 + 40), *v18);
    v20 = 0.0333333333;
    if (WORD1(v28))
    {
      v20 = WORD1(v28) / 100.0;
    }

    v21 = IIOFrameBufferCreateForBuffer(v18[5], v18[7], HIWORD(v27) * WORD6(v27), *v18, v20);
    IIOGIFFrameSetNumRowsDecoded(v21, v18[8]);
    v22 = v18[10];
    if (v22)
    {
      length[0] = 0;
      SerializedData = IIOColorMap::createSerializedData(v22, length);
      if (SerializedData)
      {
        v24 = CFDataCreate(v4, SerializedData, length[0]);
        if (v24)
        {
          IIOFrameBufferSetColorTable(v21, v24);
          CFRelease(v24);
        }

        free(SerializedData);
      }
    }

    CFArrayAppendValue(Mutable, v21);
    IIOFrameBufferRelease(v21);
  }

LABEL_25:
  *&v27 = &v40;
  std::vector<IIODecodeFrameParams>::__destroy_vector::operator()[abi:fe200100](&v27);
  return Mutable;
}

void sub_1860B479C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = (v13 - 144);
  std::vector<IIODecodeFrameParams>::__destroy_vector::operator()[abi:fe200100](&a13);
  _Unwind_Resume(a1);
}

const void *GIFReadPlugin::copyImageBlockSetImp(IIOReadPlugin *this, const void *a2, const void *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v15 = a3;
  __dst = 0;
  if (a3)
  {
    CGImageProviderGetSize();
  }

  v59 = 0;
  if (!*(this + 3))
  {
    goto LABEL_51;
  }

  if (!*(this + 53))
  {
    *(this + 53) = 16;
  }

  *(this + 79) = (4 * *(this + 61) + 15) & 0xFFFFFFF0;
  IIOReadPlugin::allocateBlockArray(this, *(this + 26));
  CachedBlocks = IIOReadPlugin::getCachedBlocks(this);
  IIOReadPlugin::debugCopyBlockSet(this, v15, a4, a5, a6, a7, a8, a9);
  if (CachedBlocks)
  {
    v19 = IIOImageReadSession::globalInfoForType(*(this + 3), 1195984416);
    if (v19)
    {
      v20 = v19;
      if (GlobalGIFInfo::frameCount(v19) > *(this + 56))
      {
        v57 = 0;
        v58 = 0;
        GlobalGIFInfo::getCachedFrameBuffer(v20, &v57);
        v21 = _ImageIO_Malloc(*(this + 79) * *(this + 78), *(this + 52), &v59, kImageMalloc_GIF_Data[0], 0, 0);
        __dst = v21;
        if (v21)
        {
          if (v57)
          {
            v22 = *(v57 + 8);
            if (v22)
            {
              v23 = *(v57 + 24);
              v24 = v23 * *(v57 + 32);
              if (v24)
              {
                v25 = *(v57 + 20);
                if (v25 == *(this + 56) && v23 == *(this + 79) && v24 == *(this + 78) * v23)
                {
                  if ((gIIODebugFlags & 0x30000) != 0)
                  {
                    ImageIOLog("    frame#%d found in current-cache\n", v25);
                    v21 = __dst;
                    v22 = *(v57 + 8);
                    v24 = *(v57 + 24) * *(v57 + 32);
                  }

                  memcpy(v21, v22, v24);
                  if (*(v57 + 36) != *(this + 436))
                  {
                    *permuteMap = 50331906;
                    dest.data = __dst;
                    v27 = *(this + 308);
                    v28.i64[0] = v27;
                    v28.i64[1] = HIDWORD(v27);
                    *&dest.height = vextq_s8(v28, v28, 8uLL);
                    dest.rowBytes = *(this + 79);
                    vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0x10u);
                  }

                  LODWORD(v26) = *(this + 77);
                  v29 = v26;
                  LODWORD(v26) = *(this + 78);
                  v30 = v26;
                  v61.origin.x = 0.0;
                  v61.origin.y = 0.0;
                  v61.size.width = v29;
                  v61.size.height = v30;
                  **(this + 12) = IIOReadPlugin::createImageBlock(this, __dst, v59, v61, *(this + 79), *(this + 371));
                  v62.origin.x = 0.0;
                  v62.origin.y = 0.0;
                  v62.size.width = v29;
                  v62.size.height = v30;
                  AddSubRect((this + 120), v62);
                  CachedBlocks = 0;
                  v31 = 1;
                  *(this + 26) = 1;
                  v32 = 1;
LABEL_43:
                  if (v58)
                  {
                    std::__shared_weak_count::__release_shared[abi:fe200100](v58);
                  }

                  if ((v32 & 1) == 0)
                  {
                    goto LABEL_52;
                  }

                  goto LABEL_46;
                }
              }
            }
          }

          v56 = 0;
          memset(&dest, 0, sizeof(dest));
          GlobalGIFInfo::getFrameInfoAtIndex(&dest, v20, *(this + 56));
          v54 = 0;
          v33 = *(this + 3);
          if (v33)
          {
            CachedBlocks = IIOImageReadSession::mapData(v33);
            v33 = *(this + 3);
          }

          else
          {
            CachedBlocks = 0;
          }

          IIOImageReadSession::rewind(v33);
          v34 = *(this + 3);
          v36 = v59;
          v35 = __dst;
          v37 = v58;
          v53[0] = v57;
          v53[1] = v58;
          if (v58)
          {
            atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v31 = GIFReadPlugin::doDecodeImageData(this, v34, v20, this + 200, this + 464, v35, v36, v53, &v54);
          if (v37)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v37);
          }

          if (LOWORD(dest.width) <= 1u)
          {
            *permuteMap = 0;
            v52 = 0;
            std::allocate_shared[abi:fe200100]<GIFBufferInfo,std::allocator<GIFBufferInfo>,unsigned char *&,BOOL,unsigned int &,unsigned int &,unsigned int,0>();
          }

          if ((v54 & 0x8000000000000000) == 0)
          {
            LODWORD(v38) = *(this + 77);
            v39 = v38;
            LODWORD(v38) = *(this + 78);
            v40 = v38;
            if (v54 >= HIWORD(dest.height) - 1)
            {
              v41 = *(this + 371);
            }

            else
            {
              v41 = 0;
              *(this + 371) = 0;
            }

            v63.origin.x = 0.0;
            v63.origin.y = 0.0;
            v63.size.width = v39;
            v63.size.height = v40;
            **(this + 12) = IIOReadPlugin::createImageBlock(this, __dst, v59, v63, *(this + 79), v41 & 1);
            v43 = CGRectEqualToRect(*(this + 120), *MEMORY[0x1E695F050]);
            v44 = 0;
            if (v43)
            {
              v45 = 0;
            }

            else
            {
              v64.origin.x = 0.0;
              v64.origin.y = 0.0;
              v64.size.width = v39;
              v64.size.height = v40;
              *&v44 = CGRectUnion(*(this + 120), v64);
              v39 = v46;
              v40 = v47;
            }

            *(this + 15) = v44;
            *(this + 16) = v45;
            v32 = 1;
            *(this + 17) = v39;
            *(this + 18) = v40;
            goto LABEL_43;
          }

          v42 = *(this + 26);
          if (v42)
          {
            *(this + 26) = v42 - 1;
          }

          _ImageIO_Free(__dst, v59);
        }

        else
        {
          _cg_jpeg_mem_term("copyImageBlockSetImp", 1453, "*** ImageIO_Malloc failed to alloc %ld bytes\n");
          CachedBlocks = 0;
          v31 = 0;
        }

        v32 = 0;
        goto LABEL_43;
      }
    }

LABEL_51:
    CachedBlocks = 0;
    goto LABEL_52;
  }

  v31 = 1;
LABEL_46:
  if (v31)
  {
    v48 = *(this + 26);
    if (v48)
    {
      if (v15)
      {
        v15 = IIOReadPlugin::imageBlockSetCreate(this, v15, v48, *(this + 12), a2, *(this + 17), *(this + 18), *(this + 15), *(this + 16), *(this + 17), *(this + 18));
        IIOReadPlugin::freeBlockArray(this);
        if ((CachedBlocks & 1) == 0)
        {
          return v15;
        }

        goto LABEL_56;
      }
    }
  }

LABEL_52:
  if (v15)
  {
    IIOReadPlugin::freeBlockArray(this);
    v15 = 0;
    if ((CachedBlocks & 1) == 0)
    {
      return v15;
    }
  }

  else if (!CachedBlocks)
  {
    return v15;
  }

LABEL_56:
  v49 = *(this + 3);
  if (v49)
  {
    IIOImageReadSession::unmapData(v49);
  }

  return v15;
}

void sub_1860B4D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GIFReadPlugin::decodeImageImp(IIOReadPlugin *this, IIODecodeParameter *a2, int a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  seed = 0;
  if ((gIIODebugFlags & 0x20000) != 0)
  {
    v11 = *(this + 55);
    v12 = v11 >> 24;
    v13 = MEMORY[0x1E69E9830];
    if ((v11 >> 24) <= 0x7F)
    {
      v14 = *(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x40000;
    }

    else
    {
      v14 = __maskrune(v12, 0x40000uLL);
      v11 = *(this + 55);
    }

    if (v14)
    {
      v15 = (v11 >> 24);
    }

    else
    {
      v15 = 46;
    }

    v16 = v11 << 8 >> 24;
    if (v16 <= 0x7F)
    {
      v17 = *(v13 + 4 * v16 + 60) & 0x40000;
    }

    else
    {
      v17 = __maskrune(v16, 0x40000uLL);
      v11 = *(this + 55);
    }

    if (v17)
    {
      v18 = (v11 << 8 >> 24);
    }

    else
    {
      v18 = 46;
    }

    v19 = v11 >> 8;
    if (v19 <= 0x7F)
    {
      v20 = *(v13 + 4 * v19 + 60) & 0x40000;
    }

    else
    {
      v20 = __maskrune(v19, 0x40000uLL);
      v11 = *(this + 55);
    }

    if (v20)
    {
      v21 = (v11 >> 8);
    }

    else
    {
      v21 = 46;
    }

    if (v11 <= 0x7F)
    {
      if ((*(v13 + 4 * v11 + 60) & 0x40000) != 0)
      {
        goto LABEL_22;
      }
    }

    else if (__maskrune(v11, 0x40000uLL))
    {
LABEL_22:
      v22 = *(this + 220);
LABEL_25:
      ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v15, v18, v21, v22, iioTypeStr[a3], "virtual OSStatus GIFReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
      goto LABEL_26;
    }

    v22 = 46;
    goto LABEL_25;
  }

LABEL_26:
  IIOReadPlugin::debugDecodeImage(this, a2);
  *(this + 56) = *(a2 + 9);
  *(this + 26) = 1;
  *(this + 14) = 0x100000000;
  v23 = *(a2 + 1);
  v24 = *(a2 + 2);
  v25 = *(a2 + 3);
  v26 = *(a2 + 4);
  v27 = *(a2 + 5);
  v28 = *(a2 + 6);
  v29 = *(a2 + 7);
  v30 = *(a2 + 8);
  XmpData = _APP1XMP::getXmpData(a2);
  v32 = (*(*this + 208))(this, v23, v24, XmpData, v25, v26, v27, v28, v29, v30);
  v33 = v32;
  if (a3 == 1)
  {
    if (v32 && CGImageBlockSetGetCount() == 1 || *(this + 26) == 1)
    {
      if (!a4)
      {
        goto LABEL_39;
      }

      if (!*a4)
      {
        goto LABEL_51;
      }

      if (!IOSurfaceLock(*a4, 0, &seed))
      {
        BaseAddress = IOSurfaceGetBaseAddress(*a4);
        IOSurfaceGetWidth(*a4);
        Height = IOSurfaceGetHeight(*a4);
        BytesPerRow = IOSurfaceGetBytesPerRow(*a4);
        if (v33)
        {
          CGImageBlockSetGetImageBlock();
        }

        CGImageBlockGetRect();
        v39 = v38;
        v40 = CGImageBlockGetBytesPerRow();
        Data = CGImageBlockGetData();
        if (BytesPerRow == v40 && Height == v39)
        {
          memcpy(BaseAddress, Data, BytesPerRow * Height);
        }

        else
        {
          if (v40 >= BytesPerRow)
          {
            v42 = BytesPerRow;
          }

          else
          {
            v42 = v40;
          }

          for (; v39; --v39)
          {
            memcpy(BaseAddress, Data, v42);
            BaseAddress += BytesPerRow;
            Data += v40;
          }
        }

        IOSurfaceUnlock(*a4, 0, &seed);
LABEL_51:
        a4 = 0;
        if (!v33)
        {
          return a4;
        }

        goto LABEL_40;
      }
    }

    a4 = 4294967246;
  }

  else
  {
    a4 = 4294967246;
    if (a3 == 3 && a6)
    {
      a4 = 0;
      *a6 = v32;
      return a4;
    }
  }

LABEL_39:
  if (v33)
  {
LABEL_40:
    CGImageBlockSetRelease();
  }

  return a4;
}

void *std::__shared_ptr_emplace<GIFBufferInfo>::__shared_ptr_emplace[abi:fe200100]<unsigned char *&,BOOL,unsigned int &,unsigned int &,unsigned int,std::allocator<GIFBufferInfo>,0>(void *a1, unsigned __int8 **a2, unsigned __int8 *a3, int *a4, unsigned int *a5, unsigned int *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1EF4DC730;
  GIFBufferInfo::GIFBufferInfo((a1 + 3), *a2, *a3, *a4, *a5, *a6);
  return a1;
}

int8x16_t *png_write_filter_row_none_neon(int8x16_t *result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  if (a2 >= result && a2 - result >= a5 && a4 >= a3 && a4 - a3 >= a5)
  {
    v5 = 0uLL;
    v6 = result;
    if (a5 >= 0x40)
    {
      v7 = 0uLL;
      v8 = 0uLL;
      v9 = 0uLL;
      do
      {
        v10 = *v6;
        v11 = v6[1];
        v12 = v6[2];
        v13 = v6[3];
        v6 += 4;
        v5 = vpadalq_u16(v5, vpaddlq_u8(vabsq_s8(v10)));
        v7 = vpadalq_u16(v7, vpaddlq_u8(vabsq_s8(v11)));
        v8 = vpadalq_u16(v8, vpaddlq_u8(vabsq_s8(v12)));
        v9 = vpadalq_u16(v9, vpaddlq_u8(vabsq_s8(v13)));
        a5 -= 64;
      }

      while (a5 > 0x3F);
      v5 = vaddq_s32(vaddq_s32(v8, v9), vaddq_s32(v7, v5));
    }

    if (a5 >= 0x10)
    {
      do
      {
        v14 = *v6++;
        v5 = vpadalq_u16(v5, vpaddlq_u8(vabsq_s8(v14)));
        a5 -= 16;
      }

      while (a5 > 0xF);
    }

    v15 = vpadalq_u32(vdupq_laneq_s64(vpaddlq_u32(v5), 1), v5).u32[0];
    if (a5 < 4)
    {
      return v15;
    }

    while (v6 < a2)
    {
      if (v6 < result)
      {
        break;
      }

      v18 = v6->u8[0];
      v16 = &v6->u8[1];
      v17 = v18;
      if (v16 >= a2)
      {
        break;
      }

      if (v16 < result)
      {
        break;
      }

      v21 = *v16;
      v19 = (v16 + 1);
      v20 = v21;
      if (v19 >= a2)
      {
        break;
      }

      if (v19 < result)
      {
        break;
      }

      v22 = (v19 + 1);
      if (v22 >= a2 || v22 < result)
      {
        break;
      }

      v23 = *(v22 - 1);
      v25 = *v22;
      v6 = (v22 + 1);
      v24 = v25;
      v26 = v25;
      if ((v17 & 0x80u) != 0)
      {
        v17 = 256 - v17;
      }

      if ((v20 & 0x80u) != 0)
      {
        v20 = 256 - v20;
      }

      v27 = 256 - v23;
      if ((v23 & 0x80u) == 0)
      {
        v27 = v23;
      }

      v28 = 256 - v24;
      if (v26 >= 0)
      {
        v28 = v24;
      }

      v15 = (v17 + v15 + v20 + v27 + v28);
      a5 -= 4;
      if (a5 <= 3)
      {
        return v15;
      }
    }
  }

  __break(0x5519u);
  return result;
}

unsigned __int8 *png_write_filter_row_sub_neon(unsigned __int8 *result, unint64_t a2, int8x16_t *a3, unint64_t a4, unint64_t a5)
{
  if (a2 >= result && a2 - result >= a5 && a2 > result && a4 >= a3 && a4 - a3 >= a5)
  {
    v5 = *result;
    if ((result + 1) < a2 && result + 1 >= result && (result + 2) < a2 && result + 2 >= result && (result + 3) < a2 && result + 3 >= result && a4 > a3)
    {
      v6 = result[1];
      v7 = result[2];
      v8 = result[3];
      a3->i8[0] = v5;
      if (a3->u64 + 1 < a4 && &a3->i8[1] >= a3)
      {
        a3->i8[1] = v6;
        if (a3->u64 + 2 < a4 && &a3->i16[1] >= a3)
        {
          a3->i8[2] = v7;
          if (a3->u64 + 3 < a4 && (a3->i32 + 3) >= a3)
          {
            v9 = result + 4;
            a3->i8[3] = v8;
            v10 = (a3->i64 + 4);
            if ((v5 & 0x80u) != 0)
            {
              v5 = 256 - v5;
            }

            if ((v6 & 0x80u) != 0)
            {
              v6 = 256 - v6;
            }

            if ((v7 & 0x80u) != 0)
            {
              v7 = 256 - v7;
            }

            if ((v8 & 0x80u) != 0)
            {
              v8 = 256 - v8;
            }

            v11 = v6 + v5;
            v12 = v7 + v8;
            v13 = a5 - 4;
            v14 = 0uLL;
            if (a5 - 4 < 0x40)
            {
              v23 = result;
            }

            else
            {
              v15 = 0uLL;
              v16 = 0uLL;
              v17 = 0uLL;
              do
              {
                v18 = v9 + 64;
                v19 = vsubq_s8(*v9, *(v9 - 4));
                v20 = vsubq_s8(*(v9 + 1), *(v9 + 12));
                v21 = vsubq_s8(*(v9 + 2), *(v9 + 28));
                v22 = vsubq_s8(*(v9 + 3), *(v9 + 44));
                *v10 = v19;
                v10[1] = v20;
                v10[2] = v21;
                v10[3] = v22;
                v10 += 4;
                v14 = vpadalq_u16(v14, vpaddlq_u8(vabsq_s8(v19)));
                v15 = vpadalq_u16(v15, vpaddlq_u8(vabsq_s8(v20)));
                v16 = vpadalq_u16(v16, vpaddlq_u8(vabsq_s8(v21)));
                v17 = vpadalq_u16(v17, vpaddlq_u8(vabsq_s8(v22)));
                v13 -= 64;
                v9 += 64;
              }

              while (v13 > 0x3F);
              v14 = vaddq_s32(vaddq_s32(v16, v17), vaddq_s32(v15, v14));
              v23 = v18 - 4;
              v9 = v18;
            }

            v24 = v11 + v12;
            if (v13 >= 0x10)
            {
              do
              {
                v25 = *v9;
                v9 += 16;
                v26 = v25;
                v27 = *v23;
                v23 += 16;
                v28 = vsubq_s8(v26, v27);
                *v10++ = v28;
                v14 = vpadalq_u16(v14, vpaddlq_u8(vabsq_s8(v28)));
                v13 -= 16;
              }

              while (v13 > 0xF);
            }

            v29 = v24 + vpadalq_u32(vdupq_laneq_s64(vpaddlq_u32(v14), 1), v14).u32[0];
            if (v13 < 4)
            {
              return v29;
            }

            while (v9 < a2)
            {
              if (v9 < result)
              {
                break;
              }

              v32 = *v9;
              v30 = v9 + 1;
              v31 = v32;
              if (v30 >= a2)
              {
                break;
              }

              if (v30 < result)
              {
                break;
              }

              v35 = *v30;
              v33 = v30 + 1;
              v34 = v35;
              if (v33 >= a2)
              {
                break;
              }

              if (v33 < result)
              {
                break;
              }

              v38 = *v33;
              v36 = v33 + 1;
              v37 = v38;
              if (v36 >= a2)
              {
                break;
              }

              if (v36 < result)
              {
                break;
              }

              if (v23 >= a2)
              {
                break;
              }

              if (v23 < result)
              {
                break;
              }

              v41 = *v23;
              v40 = v23 + 1;
              v39 = v41;
              if (v40 >= a2)
              {
                break;
              }

              if (v40 < result)
              {
                break;
              }

              v44 = *v40;
              v43 = (v40 + 1);
              v42 = v44;
              if (v43 >= a2)
              {
                break;
              }

              if (v43 < result)
              {
                break;
              }

              v45 = (v43 + 1);
              if (v45 >= a2)
              {
                break;
              }

              if (v45 < result)
              {
                break;
              }

              if (v10 >= a4)
              {
                break;
              }

              if (v10 < a3)
              {
                break;
              }

              v46 = *v36;
              v47 = *(v45 - 1);
              v48 = *v45;
              v49 = (v31 - v39);
              v10->i8[0] = v49;
              v50 = &v10->i8[1];
              if (v50 >= a4)
              {
                break;
              }

              if (v50 < a3)
              {
                break;
              }

              v51 = (v34 - v42);
              v50->i8[0] = v51;
              v52 = &v50->i8[1];
              if (v52 >= a4)
              {
                break;
              }

              if (v52 < a3)
              {
                break;
              }

              v53 = (v37 - v47);
              v52->i8[0] = v53;
              v54 = &v52->i8[1];
              if (v54 >= a4 || v54 < a3)
              {
                break;
              }

              v55 = (v46 - v48);
              v54->i8[0] = v55;
              v10 = &v54->i8[1];
              if (v49 >= 0)
              {
                v49 = v49;
              }

              else
              {
                v49 = 256 - v49;
              }

              if (v51 >= 0)
              {
                v51 = v51;
              }

              else
              {
                v51 = 256 - v51;
              }

              if (v53 >= 0)
              {
                v53 = v53;
              }

              else
              {
                v53 = 256 - v53;
              }

              if (v55 >= 0)
              {
                v55 = v55;
              }

              else
              {
                v55 = 256 - v55;
              }

              v29 = (v49 + v29 + v51 + v53 + v55);
              v13 -= 4;
              v9 = v36 + 1;
              v23 = v45 + 1;
              if (v13 <= 3)
              {
                return v29;
              }
            }
          }
        }
      }
    }
  }

  __break(0x5519u);
  return result;
}

int8x16_t *png_write_filter_row_up_neon(int8x16_t *result, unint64_t a2, int8x16_t *a3, unint64_t a4, int8x16_t *a5, unint64_t a6, unint64_t a7)
{
  if (a2 >= result && a2 - result >= a7 && a4 >= a3 && a4 - a3 >= a7 && a6 >= a5 && a6 - a5 >= a7)
  {
    v7 = 0uLL;
    if (a7 < 0x40)
    {
      v10 = a5;
      v9 = a3;
      v8 = result;
    }

    else
    {
      v8 = result;
      v9 = a3;
      v10 = a5;
      v11 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v14 = *v8;
        v15 = v8[1];
        v16 = v8[2];
        v17 = v8[3];
        v8 += 4;
        v18 = *v10;
        v19 = v10[1];
        v20 = v10[2];
        v21 = v10[3];
        v10 += 4;
        v22 = vsubq_s8(v14, v18);
        v23 = vsubq_s8(v15, v19);
        v24 = vsubq_s8(v16, v20);
        v25 = vsubq_s8(v17, v21);
        *v9 = v22;
        v9[1] = v23;
        v9[2] = v24;
        v9[3] = v25;
        v9 += 4;
        v7 = vpadalq_u16(v7, vpaddlq_u8(vabsq_s8(v22)));
        v11 = vpadalq_u16(v11, vpaddlq_u8(vabsq_s8(v23)));
        v12 = vpadalq_u16(v12, vpaddlq_u8(vabsq_s8(v24)));
        v13 = vpadalq_u16(v13, vpaddlq_u8(vabsq_s8(v25)));
        a7 -= 64;
      }

      while (a7 > 0x3F);
      v7 = vaddq_s32(vaddq_s32(v12, v13), vaddq_s32(v11, v7));
    }

    if (a7 >= 0x10)
    {
      do
      {
        v26 = *v8++;
        v27 = v26;
        v28 = *v10++;
        v29 = vsubq_s8(v27, v28);
        *v9++ = v29;
        v7 = vpadalq_u16(v7, vpaddlq_u8(vabsq_s8(v29)));
        a7 -= 16;
      }

      while (a7 > 0xF);
    }

    v30 = vpadalq_u32(vdupq_laneq_s64(vpaddlq_u32(v7), 1), v7).u32[0];
    if (a7 < 4)
    {
      return v30;
    }

    while (v8 < a2)
    {
      if (v8 < result)
      {
        break;
      }

      v33 = v8->i8[0];
      v31 = &v8->i8[1];
      v32 = v33;
      if (v31 >= a2)
      {
        break;
      }

      if (v31 < result)
      {
        break;
      }

      v36 = v31->i8[0];
      v34 = &v31->i8[1];
      v35 = v36;
      if (v34 >= a2)
      {
        break;
      }

      if (v34 < result)
      {
        break;
      }

      v39 = v34->i8[0];
      v37 = &v34->i8[1];
      v38 = v39;
      if (v37 >= a2)
      {
        break;
      }

      if (v37 < result)
      {
        break;
      }

      if (v10 >= a6)
      {
        break;
      }

      if (v10 < a5)
      {
        break;
      }

      v42 = v10->i8[0];
      v41 = &v10->i8[1];
      v40 = v42;
      if (v41 >= a6)
      {
        break;
      }

      if (v41 < a5)
      {
        break;
      }

      v45 = v41->i8[0];
      v43 = v41->u64 + 1;
      v44 = v45;
      if (v43 >= a6)
      {
        break;
      }

      if (v43 < a5)
      {
        break;
      }

      v46 = (v43 + 1);
      if (v46 >= a6)
      {
        break;
      }

      if (v46 < a5)
      {
        break;
      }

      if (v9 >= a4)
      {
        break;
      }

      if (v9 < a3)
      {
        break;
      }

      v47 = v37->i8[0];
      v48 = v46[-1].i8[15];
      v49 = v46->i8[0];
      v50 = (v32 - v40);
      v9->i8[0] = v50;
      v51 = &v9->i8[1];
      if (v51 >= a4)
      {
        break;
      }

      if (v51 < a3)
      {
        break;
      }

      v52 = (v35 - v44);
      v51->i8[0] = v52;
      v53 = &v51->i8[1];
      if (v53 >= a4)
      {
        break;
      }

      if (v53 < a3)
      {
        break;
      }

      v54 = (v38 - v48);
      v53->i8[0] = v54;
      v55 = &v53->i8[1];
      if (v55 >= a4 || v55 < a3)
      {
        break;
      }

      v56 = (v47 - v49);
      v55->i8[0] = v56;
      v9 = &v55->i8[1];
      if (v50 >= 0)
      {
        v50 = v50;
      }

      else
      {
        v50 = 256 - v50;
      }

      if (v52 >= 0)
      {
        v52 = v52;
      }

      else
      {
        v52 = 256 - v52;
      }

      if (v54 >= 0)
      {
        v54 = v54;
      }

      else
      {
        v54 = 256 - v54;
      }

      if (v56 >= 0)
      {
        v56 = v56;
      }

      else
      {
        v56 = 256 - v56;
      }

      v30 = (v50 + v30 + v52 + v54 + v56);
      a7 -= 4;
      v8 = &v37->i8[1];
      v10 = &v46->i8[1];
      if (a7 <= 3)
      {
        return v30;
      }
    }
  }

  __break(0x5519u);
  return result;
}

int8x16_t *png_write_filter_row_avg_neon(int8x16_t *result, unint64_t a2, int8x16_t *a3, unint64_t a4, unsigned __int8 *a5, unint64_t a6, unint64_t a7)
{
  if (a2 >= result && a2 - result >= a7 && a4 >= a3 && a4 - a3 >= a7 && a6 >= a5 && a6 - a5 >= a7 && a2 > result && a6 > a5 && result->u64 + 1 < a2 && &result->i8[1] >= result)
  {
    v7 = a5 + 1;
    if ((a5 + 1) < a6 && v7 >= a5 && result->u64 + 2 < a2 && &result->i16[1] >= result)
    {
      v8 = a5 + 2;
      if ((a5 + 2) < a6 && v8 >= a5 && result->u64 + 3 < a2 && (result->i32 + 3) >= result && (a5 + 3) < a6 && a5 + 3 >= a5 && a4 > a3)
      {
        v9 = (result->i8[0] - (*a5 >> 1));
        v10 = result->i8[1];
        v11 = *v7;
        v12 = result->i8[2];
        v13 = *v8;
        v14 = result->i8[3];
        v15 = a5[3];
        a3->i8[0] = v9;
        if (a3->u64 + 1 < a4 && &a3->i8[1] >= a3)
        {
          v16 = (v10 - (v11 >> 1));
          a3->i8[1] = v10 - (v11 >> 1);
          if (a3->u64 + 2 < a4 && &a3->i16[1] >= a3)
          {
            v17 = (v12 - (v13 >> 1));
            a3->i8[2] = v17;
            if (a3->u64 + 3 < a4 && (a3->i32 + 3) >= a3)
            {
              v18 = (v14 - (v15 >> 1));
              v19 = a5 + 4;
              a3->i8[3] = v18;
              v20 = (a3->i64 + 4);
              if (v9 >= 0)
              {
                v9 = v9;
              }

              else
              {
                v9 = 256 - v9;
              }

              if (v16 >= 0)
              {
                v21 = (v10 - (v11 >> 1));
              }

              else
              {
                v21 = 256 - v16;
              }

              if (v17 >= 0)
              {
                v17 = v17;
              }

              else
              {
                v17 = 256 - v17;
              }

              if (v18 >= 0)
              {
                v18 = v18;
              }

              else
              {
                v18 = 256 - v18;
              }

              v22 = v21 + v9;
              v23 = v17 + v18;
              v24 = a7 - 4;
              if (a7 - 4 < 0x40)
              {
                v37 = &result->i8[4];
                v35 = 0uLL;
                v36 = result;
              }

              else
              {
                v25 = 0;
                v26 = 0uLL;
                v27 = 0uLL;
                v28 = 0uLL;
                v29 = 0uLL;
                do
                {
                  v30 = &v20[v25];
                  v31 = vsubq_s8(*(&result[v25] + 4), vhaddq_u8(result[v25], *&v19[v25 * 16]));
                  v32 = vsubq_s8(*(&result[v25 + 1] + 4), vhaddq_u8(result[v25 + 1], *&v19[v25 * 16 + 16]));
                  v33 = vsubq_s8(*(&result[v25 + 2] + 4), vhaddq_u8(result[v25 + 2], *&v19[v25 * 16 + 32]));
                  v34 = vsubq_s8(*(&result[v25 + 3] + 4), vhaddq_u8(result[v25 + 3], *&v19[v25 * 16 + 48]));
                  *v30 = v31;
                  v30[1] = v32;
                  v30[2] = v33;
                  v30[3] = v34;
                  v26 = vpadalq_u16(v26, vpaddlq_u8(vabsq_s8(v31)));
                  v27 = vpadalq_u16(v27, vpaddlq_u8(vabsq_s8(v32)));
                  v28 = vpadalq_u16(v28, vpaddlq_u8(vabsq_s8(v33)));
                  v29 = vpadalq_u16(v29, vpaddlq_u8(vabsq_s8(v34)));
                  v24 -= 64;
                  v25 += 4;
                }

                while (v24 > 0x3F);
                v35 = vaddq_s32(vaddq_s32(v28, v29), vaddq_s32(v27, v26));
                v36 = &result[v25];
                v37 = &result[v25].i8[4];
                v19 += v25 * 16;
                v20 = (v20 + v25 * 16);
              }

              v38 = v22 + v23;
              if (v24 >= 0x10)
              {
                do
                {
                  v39 = *v37;
                  v37 += 16;
                  v40 = v39;
                  v41 = *v36++;
                  v42 = v41;
                  v43 = *v19;
                  v19 += 16;
                  v44 = vsubq_s8(v40, vhaddq_u8(v42, v43));
                  *v20++ = v44;
                  v35 = vpadalq_u16(v35, vpaddlq_u8(vabsq_s8(v44)));
                  v24 -= 16;
                }

                while (v24 > 0xF);
              }

              v45 = v38 + vpadalq_u32(vdupq_laneq_s64(vpaddlq_u32(v35), 1), v35).u32[0];
              if (v24 < 4)
              {
                return v45;
              }

              while (v37 < a2)
              {
                if (v37 < result)
                {
                  break;
                }

                v48 = *v37;
                v46 = (v37 + 1);
                v47 = v48;
                if (v46 >= a2)
                {
                  break;
                }

                if (v46 < result)
                {
                  break;
                }

                v51 = v46->i8[0];
                v49 = &v46->i8[1];
                v50 = v51;
                if (v49 >= a2)
                {
                  break;
                }

                if (v49 < result)
                {
                  break;
                }

                v54 = v49->i8[0];
                v52 = &v49->i8[1];
                v53 = v54;
                if (v52 >= a2)
                {
                  break;
                }

                if (v52 < result)
                {
                  break;
                }

                if (v36 >= a2)
                {
                  break;
                }

                if (v36 < result)
                {
                  break;
                }

                v57 = v36->u8[0];
                v55 = &v36->u8[1];
                v56 = v57;
                if (v55 >= a2)
                {
                  break;
                }

                if (v55 < result)
                {
                  break;
                }

                v60 = *v55;
                v59 = v55 + 1;
                v58 = v60;
                if (v59 >= a2)
                {
                  break;
                }

                if (v59 < result)
                {
                  break;
                }

                v63 = *v59;
                v62 = v59 + 1;
                v61 = v63;
                if (v62 >= a2)
                {
                  break;
                }

                if (v62 < result)
                {
                  break;
                }

                if (v19 >= a6)
                {
                  break;
                }

                if (v19 < a5)
                {
                  break;
                }

                v66 = *v19;
                v64 = v19 + 1;
                v65 = v66;
                if (v64 >= a6)
                {
                  break;
                }

                if (v64 < a5)
                {
                  break;
                }

                v69 = *v64;
                v67 = (v64 + 1);
                v68 = v69;
                if (v67 >= a6)
                {
                  break;
                }

                if (v67 < a5)
                {
                  break;
                }

                v70 = (v67 + 1);
                if (v70 >= a6)
                {
                  break;
                }

                if (v70 < a5)
                {
                  break;
                }

                if (v20 >= a4)
                {
                  break;
                }

                if (v20 < a3)
                {
                  break;
                }

                v71 = v52->i8[0];
                v72 = *v62;
                v73 = *(v70 - 1);
                v74 = *v70;
                v75 = (v47 - ((v65 + v56) >> 1));
                v20->i8[0] = v75;
                v76 = &v20->i8[1];
                if (v76 >= a4)
                {
                  break;
                }

                if (v76 < a3)
                {
                  break;
                }

                v77 = (v50 - ((v68 + v58) >> 1));
                v76->i8[0] = v77;
                v78 = &v76->i8[1];
                if (v78 >= a4)
                {
                  break;
                }

                if (v78 < a3)
                {
                  break;
                }

                v79 = (v53 - ((v73 + v61) >> 1));
                v78->i8[0] = v79;
                v80 = &v78->i8[1];
                if (v80 >= a4 || v80 < a3)
                {
                  break;
                }

                v81 = (v71 - ((v74 + v72) >> 1));
                v80->i8[0] = v71 - ((v74 + v72) >> 1);
                v20 = &v80->i8[1];
                v82 = v75 < 0;
                v75 = v75;
                if (v82)
                {
                  v75 = 256 - v75;
                }

                if (v77 >= 0)
                {
                  v77 = v77;
                }

                else
                {
                  v77 = 256 - v77;
                }

                if (v79 >= 0)
                {
                  v79 = v79;
                }

                else
                {
                  v79 = 256 - v79;
                }

                if (v81 >= 0)
                {
                  v83 = (v71 - ((v74 + v72) >> 1));
                }

                else
                {
                  v83 = 256 - v81;
                }

                v45 = (v75 + v45 + v77 + v79 + v83);
                v24 -= 4;
                v37 = &v52->i8[1];
                v36 = (v62 + 1);
                v19 = v70 + 1;
                if (v24 <= 3)
                {
                  return v45;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(0x5519u);
  return result;
}