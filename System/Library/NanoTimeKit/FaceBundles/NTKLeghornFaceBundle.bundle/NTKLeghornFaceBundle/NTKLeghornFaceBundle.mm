__CFString *NTKFoghornTimeViewElementString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_278BA0E80[a1];
  }
}

id NTKFoghornTimeViewElementMaskString(int a1)
{
  v4 = objc_opt_new();
  v5 = 0;
  for (i = 0; i != 4; ++i)
  {
    if (((1 << i) & a1) != 0)
    {
      v7 = off_278BA0E80[i];
      if (v5)
      {
        objc_msgSend_appendString_(v4, v2, @"|");
      }

      objc_msgSend_appendString_(v4, v2, v7);
      ++v5;
    }
  }

  v8 = objc_msgSend_copy(v4, v2, v3);

  return v8;
}

__CFString *NTKFoghornTimeViewAnimationStyleString(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"stretch";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"fixedSeconds";
  }
}

__CFString *NTKFoghornTimeViewAnimationSnapStyleString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_278BA0EA0[a1];
  }
}

double sub_23BEB5F9C(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  switch(a1)
  {
    case 3:
      CLKCeilForDevice();
      goto LABEL_7;
    case 2:
      CLKRoundForDevice();
      goto LABEL_7;
    case 1:
      CLKFloorForDevice();
LABEL_7:
      a3 = v6;
      break;
  }

  return a3;
}

void sub_23BEB6E3C(CGContext *a1, const __CTFrame *a2, void *a3, const __CFArray *a4, CGFloat a5, double a6, double a7, double a8, double a9)
{
  v24 = a3;
  CGContextSaveGState(a1);
  if (a9 > 0.0 && a4 != 0)
  {
    v15 = v24;
    CGContextSaveGState(a1);
    v16 = v15;
    v19 = objc_msgSend_CGColor(v16, v17, v18);
    CGContextSetStrokeColorWithColor(a1, v19);
    CGContextTranslateCTM(a1, a5, 0.0);
    CGContextSetLineWidth(a1, a9 + a9);
    Count = CFArrayGetCount(a4);
    if (Count >= 1)
    {
      v21 = Count;
      for (i = 0; i != v21; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a4, i);
        CGContextAddPath(a1, ValueAtIndex);
      }
    }

    CGContextStrokePath(a1);
    CGContextRestoreGState(a1);

    CGContextSetShouldAntialiasFonts();
    CGContextSetShouldAntialias(a1, 0);
  }

  CTFrameDraw(a2, a1);
  CGContextRestoreGState(a1);
}

CFArrayRef sub_23BEB70F8(void *a1, void *a2, void *a3)
{
  v45[3] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x277D74240]);
  objc_msgSend_setAlignment_(v8, v9, 4);
  v10 = *MEMORY[0x277D740A8];
  v44[0] = *MEMORY[0x277D740C0];
  v44[1] = v10;
  v34 = v6;
  v35 = v5;
  v45[0] = v6;
  v45[1] = v5;
  v44[2] = *MEMORY[0x277D74118];
  v32 = v8;
  v45[2] = v8;
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v45, v44, 3);
  v13 = objc_alloc(MEMORY[0x277CCA898]);
  v33 = v7;
  v31 = v12;
  v30 = objc_msgSend_initWithString_attributes_(v13, v14, v7, v12);
  v15 = CTLineCreateWithAttributedString(v30);
  theArray = CTLineGetGlyphRuns(v15);
  Count = CFArrayGetCount(theArray);
  ascent = 0.0;
  leading = 0.0;
  descent = 0.0;
  CTLineGetTypographicBounds(v15, &ascent, &descent, &leading);
  Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x277CBF128]);
  if (Count >= 1)
  {
    v18 = 0;
    v19 = *MEMORY[0x277CC4838];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v18);
      Attributes = CTRunGetAttributes(ValueAtIndex);
      Value = CFDictionaryGetValue(Attributes, v19);
      GlyphCount = CTRunGetGlyphCount(ValueAtIndex);
      buffer.x = 0.0;
      buffer.y = 0.0;
      v46.location = 0;
      v46.length = 1;
      CTRunGetPositions(ValueAtIndex, v46, &buffer);
      if (GlyphCount >= 1)
      {
        for (i = 0; i != GlyphCount; ++i)
        {
          glyph = 0;
          v38.x = 0.0;
          v38.y = 0.0;
          v47.location = i;
          v47.length = 1;
          CTRunGetGlyphs(ValueAtIndex, v47, &glyph);
          v48.location = i;
          v48.length = 1;
          CTRunGetPositions(ValueAtIndex, v48, &v38);
          PathForGlyph = CTFontCreatePathForGlyph(Value, glyph, 0);
          CopyByNormalizing = CGPathCreateCopyByNormalizing(PathForGlyph, 0);
          CGPathRelease(PathForGlyph);
          memset(&v37, 0, sizeof(v37));
          CGAffineTransformMakeTranslation(&v37, buffer.x + v38.x, buffer.y + v38.y + descent);
          v27 = MEMORY[0x23EEC0D30](CopyByNormalizing, &v37);
          CGPathRelease(CopyByNormalizing);
          CFArrayAppendValue(Mutable, v27);
          CGPathRelease(v27);
        }
      }

      ++v18;
    }

    while (v18 != Count);
  }

  Copy = CFArrayCreateCopy(0, Mutable);
  CFRelease(Mutable);

  return Copy;
}

void sub_23BEB7D10(_Unwind_Exception *a1)
{
  for (i = 216; i != -72; i -= 72)
  {
    sub_23BEB7D3C(v1 + i);
  }

  _Unwind_Resume(a1);
}

void sub_23BEB7D3C(uint64_t a1)
{
  v2 = *(a1 + 48);
}

void sub_23BEB8134(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_CGContext(a2, a2, a3);
  MaxY = CGRectGetMaxY(*(a1 + 64));
  CGContextTranslateCTM(v4, 0.0, MaxY);
  CGContextScaleCTM(v4, 1.0, -1.0);
  v7 = objc_msgSend__CTFrameForFrame_text_textColor_font_forDevice_(*(a1 + 96), v6, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
  v8 = *(a1 + 104);
  if (v8 <= 0.0)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_23BEB70F8(*(a1 + 48), *(a1 + 40), *(a1 + 32));
    v8 = *(a1 + 104);
  }

  sub_23BEB6E3C(v4, v7, *(a1 + 40), v9, *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), v8);

  CFRelease(v7);
}

void sub_23BEB8F1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23BEB8F50(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend__updateBlinkerAlphaForSecondFraction_(WeakRetained, v6, v7, *(a3 + 32));
  }
}

void sub_23BEB9E98(void *a1@<X1>, void *a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&unk_27E1DF008);
  if (qword_27E1DF010)
  {
    v5 = qword_27E1DF010 == v6;
  }

  else
  {
    v5 = 0;
  }

  if (!v5 || objc_msgSend_version(v6, v3, v4) != qword_27E1DF018)
  {
    qword_27E1DF010 = v6;
    qword_27E1DF018 = objc_msgSend_version(v6, v3, v4, v6);
    sub_23BEB9F70(v6, __src);
    memcpy(&unk_27E1DEB70, __src, 0x498uLL);
  }

  memcpy(a2, &unk_27E1DEB70, 0x498uLL);
  os_unfair_lock_unlock(&unk_27E1DF008);
}

void sub_23BEB9F70(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a1;
  *a2 = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[8] = 0u;
  a2[9] = 0u;
  a2[10] = 0u;
  a2[11] = 0u;
  a2[12] = 0u;
  a2[13] = 0u;
  a2[14] = 0u;
  a2[15] = 0u;
  a2[16] = 0u;
  a2[17] = 0u;
  a2[18] = 0u;
  a2[19] = 0u;
  a2[20] = 0u;
  a2[21] = 0u;
  a2[22] = 0u;
  a2[23] = 0u;
  a2[24] = 0u;
  a2[25] = 0u;
  a2[26] = 0u;
  a2[27] = 0u;
  a2[28] = 0u;
  a2[29] = 0u;
  a2[30] = 0u;
  a2[31] = 0u;
  v35 = v3;
  objc_msgSend_screenBounds(v35, v4, v5);
  v7 = v6 + -26.0;
  v10 = objc_msgSend_sizeClass(v35, v8, v9);
  v34 = v10;
  v12 = qword_23BEECD70[v10 == 9];
  v13 = qword_23BEECD80[v10 == 9];
  v14 = 49.0;
  v15 = qword_23BEECD90[v10 == 9];
  v16 = qword_23BEECDA0[v10 == 9];
  v17 = 61.5;
  __src[147] = 0x402A000000000000;
  if (v10 == 9)
  {
    v17 = 64.0;
  }

  *&__src[148] = v17;
  *&__src[149] = v7;
  if (v10 == 9)
  {
    v14 = 50.0;
  }

  *&__src[150] = v14;
  __src[151] = 0x402A000000000000;
  *&__src[152] = v17;
  *&__src[153] = v7;
  if (v10 == 9)
  {
    v18 = 40.0;
  }

  else
  {
    v18 = 39.0;
  }

  *&__src[154] = v14;
  __src[155] = 0x402A000000000000;
  __src[156] = v15;
  *&__src[157] = v7;
  __src[158] = v13;
  __src[159] = 0x402A000000000000;
  __src[160] = v15;
  *&__src[161] = v7;
  v37 = xmmword_23BEECDB0;
  __src[162] = v13;
  v38 = v7;
  v40 = xmmword_23BEECDB0;
  v39 = v12;
  v41 = v7;
  v42 = v12;
  v43 = 0x402A000000000000;
  v44 = v16;
  v45 = v7;
  v46 = 0x405CC00000000000;
  v19 = objc_msgSend_metricsWithDevice_identitySizeClass_(MEMORY[0x277CBBAF8], v11, v35, 6);
  bzero(__src, 0x490uLL);
  v22 = 0;
  v23 = &xmmword_23BEECDC0;
  v24 = 98;
  for (i = 0x54u; ; ++i)
  {
    v26 = &__src[v24];
    v27 = *&__src[v24 + 51];
    *v26 = *&__src[v24 + 49];
    v26[1] = v27;
    v28 = &__src[v22];
    v29 = v23[1];
    *v28 = *v23;
    v28[1] = v29;
    v28[2] = v23[2];
    v30 = &__src[i];
    *v30 = *(&unk_23BEED060 + i * 8 - 672);
    v31 = v23[23];
    v28[22] = v23[22];
    v28[23] = v31;
    v28[21] = v23[21];
    v30[7] = *(&unk_23BEED060 + i * 8 - 616);
    objc_msgSend_scaledValue_(v19, v20, v21, 1.60000002);
    *(v30 + 42) = v32;
    if (v22 == 36)
    {
      break;
    }

    v30[49] = v18;
    v30[56] = 0.0;
    v23 += 3;
    v22 += 6;
    v24 += 4;
  }

  v33 = 23.5;
  if (v34 == 9)
  {
    v33 = 24.0;
  }

  *&__src[139] = v33;
  __src[146] = 0x3FF0000000000000;

  memcpy(a2, __src, 0x498uLL);
}

uint64_t sub_23BEBB5E4(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_fontDescriptorForSectName_fromMachO_(MEMORY[0x277D2C050], a2, @"__FoghornFont", &dword_23BEB1000);
  v5 = qword_27E1DF020;
  qword_27E1DF020 = v2;

  return MEMORY[0x2821F96F8](v2, v5, v3, v4);
}

void sub_23BEBD300(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_group_leave(v1);
  }
}

void sub_23BEBD310(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_group_leave(v1);
  }
}

void sub_23BEBD320(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_group_leave(v1);
  }
}

void sub_23BEBD330(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_group_leave(v1);
  }
}

uint64_t sub_23BEBD340(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void sub_23BEBD5A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = objc_alloc(MEMORY[0x277CBFC10]);
    v5 = objc_msgSend_initWithEffectiveBundlePath_delegate_onQueue_(v3, v4, *(a1 + 32), v7, *(a1 + 40));
    v6 = v7[6];
    v7[6] = v5;

    WeakRetained = v7;
  }
}

void sub_23BEBD9B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    ++WeakRetained[11];
    v4 = WeakRetained;
    objc_msgSend__updateLocation_(WeakRetained, v3, *(a1 + 32));
    WeakRetained = v4;
  }
}

void sub_23BEBDC5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[16] = *(a1 + 40);
  }
}

void sub_23BEBDD74(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = NTKFoghornFaceBundleLogObject(WeakRetained, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = "[NTKLeghornLocationDataSource _startLocationManager]_block_invoke";
      _os_log_impl(&dword_23BEB1000, v5, OS_LOG_TYPE_DEFAULT, "%s: starting CoreLocation updates", &v18, 0xCu);
    }

    v6 = MEMORY[0x277CBFBF8];
    v7 = NTKLocationBundle();
    v9 = objc_msgSend_newAssertionForBundle_withReason_(v6, v8, v7, @"Requesting location for ultra2025 watch face");
    v10 = *(v4 + 10);
    *(v4 + 10) = v9;

    started = objc_msgSend_startUpdatingLocation(*(v4 + 6), v11, v12);
    if (*(a1 + 40) == 1)
    {
      v15 = NTKFoghornFaceBundleLogObject(started, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315138;
        v19 = "[NTKLeghornLocationDataSource _startLocationManager]_block_invoke";
        _os_log_impl(&dword_23BEB1000, v15, OS_LOG_TYPE_DEFAULT, "%s: don't have location -- requesting", &v18, 0xCu);
      }

      objc_msgSend_requestLocation(*(v4 + 6), v16, v17);
    }
  }
}

void sub_23BEBDFA4(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = NTKFoghornFaceBundleLogObject(WeakRetained, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[NTKLeghornLocationDataSource _stopLocationManager]_block_invoke";
      _os_log_impl(&dword_23BEB1000, v4, OS_LOG_TYPE_DEFAULT, "%s: stopping CoreLocation updates", &v10, 0xCu);
    }

    objc_msgSend_invalidate(v3[10], v5, v6);
    v7 = v3[10];
    v3[10] = 0;

    objc_msgSend_stopUpdatingLocation(v3[6], v8, v9);
  }
}

void sub_23BEBE268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23BEBE28C(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend__ntkLocationManagerDidUpdateLocation_(WeakRetained, v4, v6);
  }
}

uint64_t sub_23BEC0814()
{
  v0 = objc_opt_new();
  v3 = qword_27E1DF040;
  qword_27E1DF040 = v0;

  return MEMORY[0x2821F96F8](v0, v3, v1, v2);
}

id sub_23BEC08B4(double a1, uint64_t a2, uint64_t a3, char a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v59[3] = *MEMORY[0x277D85DE8];
  v49 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = objc_alloc_init(MEMORY[0x277D74240]);
  objc_msgSend_setAlignment_(v19, v20, 1);
  v22 = MEMORY[0x277D740C0];
  v48 = v15;
  v23 = *MEMORY[0x277D740A8];
  if (v16)
  {
    v58[0] = *MEMORY[0x277D740C0];
    v58[1] = v23;
    v59[0] = v16;
    v59[1] = v15;
    v24 = *MEMORY[0x277D74118];
    v58[2] = *MEMORY[0x277D74118];
    v59[2] = v19;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v59, v58, 3);
  }

  else
  {
    v24 = *MEMORY[0x277D74118];
    v56[0] = *MEMORY[0x277D740A8];
    v56[1] = v24;
    v57[0] = v15;
    v57[1] = v19;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v57, v56, 2);
  }
  v26 = ;
  if (v18)
  {
    v54[0] = *v22;
    v54[1] = v23;
    v55[0] = v18;
    v55[1] = v17;
    v54[2] = v24;
    v55[2] = v19;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, v55, v54, 3);
  }

  else
  {
    v52[0] = v23;
    v52[1] = v24;
    v53[0] = v17;
    v53[1] = v19;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, v53, v52, 2);
  }
  v28 = ;
  v47 = v18;
  if (a4)
  {
    if (a1 >= 15000.0)
    {
      v29 = 0;
      v30 = 0;
      v32 = 1;
      v31 = 1;
      goto LABEL_16;
    }

    v29 = 0;
    if (a1 > 1500.0)
    {
      v30 = 1;
      v31 = 1;
      v32 = 1;
LABEL_16:
      a1 = a1 / 1000.0;
      goto LABEL_19;
    }

    v30 = 0;
    v31 = 0;
    v32 = 0;
  }

  else
  {
    v33 = a1 * 3.2808399;
    a1 = a1 * 3.2808399 / 5280.0;
    if (a1 >= 10.0)
    {
      v30 = 0;
      v31 = 1;
      v29 = 256;
      v32 = 1;
    }

    else
    {
      v32 = v33 > 1200.0;
      v30 = 2 * v32;
      if (v33 <= 1200.0)
      {
        a1 = v33;
      }

      v29 = 256;
      v31 = v33 > 1200.0;
    }
  }

LABEL_19:
  v34 = v31 | v29;
  v35 = v19;
  if (v34 > 255)
  {
    if (v34 == 257)
    {
      v36 = @"_MILES";
    }

    else
    {
      v36 = @"_FEET";
    }
  }

  else if (v34)
  {
    v36 = @"_KILOMETERS";
  }

  else
  {
    v36 = @"_METERS";
  }

  v37 = objc_msgSend_stringByAppendingString_(v49, v27, v36);
  v38 = sub_23BEC1ACC(v30, v32, 6, a1);
  v39 = NTKFoghornFaceLocalizedMarkdownString(v37);
  v50[0] = *MEMORY[0x277D2BE60];
  v50[1] = @"radius";
  v51[0] = v26;
  v51[1] = v26;
  v50[2] = @"radiusUnit";
  v40 = v26;
  v41 = v28;
  v51[2] = v28;
  v43 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v42, v51, v50, 3);
  v45 = objc_msgSend_ntk_attributedStringFromAttributesTable_markdownFormat_(MEMORY[0x277CCA898], v44, v43, v39, v38);

  return v45;
}

id sub_23BEC0C78(double a1, uint64_t a2, uint64_t a3, void *a4, char a5, void *a6, void *a7, void *a8, void *a9)
{
  v66[5] = *MEMORY[0x277D85DE8];
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  if (a5)
  {
    if (a1 > 10000.0)
    {
      v20 = a1 / 1000.0;
      v21 = 0;
LABEL_9:
      v23 = sub_23BEC1ACC(v21, 1, 2, v20);
      v24 = 256;
      goto LABEL_14;
    }

    if (a1 > 1000.0)
    {
      v20 = a1 / 1000.0;
      v21 = 1;
      goto LABEL_9;
    }

    v23 = sub_23BEC1ACC(0, 1, 2, a1);
    v24 = 0;
  }

  else
  {
    v22 = a1 * 3.2808399;
    if (a1 * 3.2808399 >= 52800.0)
    {
      v25 = v22 / 5280.0;
      v26 = 0;
    }

    else
    {
      if (v22 < 5280.0)
      {
        v23 = sub_23BEC1ACC(0, 1, 2, v22);
        v24 = 512;
        goto LABEL_14;
      }

      v25 = v22 / 5280.0;
      v26 = 1;
    }

    v23 = sub_23BEC1ACC(v26, 1, 2, v25);
    v24 = 768;
  }

LABEL_14:
  v27 = v15;
  objc_msgSend_timeIntervalSinceNow(v27, v28, v29);
  if (v30 <= -259200.0)
  {
    v33 = objc_alloc_init(MEMORY[0x277CCA968]);
    objc_msgSend_setDateStyle_(v33, v34, 1);
    objc_msgSend_setTimeStyle_(v33, v35, 0);
    v37 = objc_msgSend_stringFromDate_(v33, v36, v27);

    v32 = 0;
  }

  else if (v30 <= -86400.0)
  {
    v37 = sub_23BEC1ACC(0, 1, 2, v30 / -86400.0);
    v32 = 4;
  }

  else if (v30 <= -3600.0)
  {
    v37 = sub_23BEC1ACC(0, 1, 2, v30 / -3600.0);
    v32 = 3;
  }

  else
  {
    if (v30 <= -60.0)
    {
      v31 = v30 / -60.0;
      v32 = 2;
    }

    else
    {
      v31 = -v30;
      v32 = 1;
    }

    v37 = sub_23BEC1ACC(0, 1, 2, v31);
  }

  v38 = v32 | v24;
  if ((v32 | v24) > 511)
  {
    v39 = @"LEGHORN_DISTANCE_MILES_MINUTES_AGO";
    v50 = @"LEGHORN_DISTANCE_MILES_HOURS_AGO";
    v51 = @"LEGHORN_DISTANCE_MILES_DAYS_AGO";
    if (v38 != 772)
    {
      v51 = 0;
    }

    if (v38 != 771)
    {
      v50 = v51;
    }

    if (v38 != 770)
    {
      v39 = v50;
    }

    v52 = @"LEGHORN_DISTANCE_MILES_DATE";
    v53 = @"LEGHORN_DISTANCE_MILES_SECONDS_AGO";
    if (v38 != 769)
    {
      v53 = 0;
    }

    if (v38 != 768)
    {
      v52 = v53;
    }

    if (v38 <= 769)
    {
      v39 = v52;
    }

    v44 = @"LEGHORN_DISTANCE_FEET_MINUTES_AGO";
    v54 = @"LEGHORN_DISTANCE_FEET_HOURS_AGO";
    v55 = @"LEGHORN_DISTANCE_FEET_DAYS_AGO";
    if (v38 != 516)
    {
      v55 = 0;
    }

    if (v38 != 515)
    {
      v54 = v55;
    }

    if (v38 != 514)
    {
      v44 = v54;
    }

    v56 = @"LEGHORN_DISTANCE_FEET_DATE";
    v57 = @"LEGHORN_DISTANCE_FEET_SECONDS_AGO";
    if (v38 != 513)
    {
      v57 = 0;
    }

    if (v38 != 512)
    {
      v56 = v57;
    }

    if (v38 <= 513)
    {
      v44 = v56;
    }

    v49 = v38 <= 767;
  }

  else
  {
    v39 = @"LEGHORN_DISTANCE_KILOMETERS_MINUTES_AGO";
    v40 = @"LEGHORN_DISTANCE_KILOMETERS_HOURS_AGO";
    v41 = @"LEGHORN_DISTANCE_KILOMETERS_DAYS_AGO";
    if (v38 != 260)
    {
      v41 = 0;
    }

    if (v38 != 259)
    {
      v40 = v41;
    }

    if (v38 != 258)
    {
      v39 = v40;
    }

    v42 = @"LEGHORN_DISTANCE_KILOMETERS_DATE";
    v43 = @"LEGHORN_DISTANCE_KILOMETERS_SECONDS_AGO";
    if (v38 != 257)
    {
      v43 = 0;
    }

    if (v38 != 256)
    {
      v42 = v43;
    }

    if (v38 <= 257)
    {
      v39 = v42;
    }

    v44 = @"LEGHORN_DISTANCE_METERS_MINUTES_AGO";
    v45 = @"LEGHORN_DISTANCE_METERS_HOURS_AGO";
    v46 = @"LEGHORN_DISTANCE_METERS_DAYS_AGO";
    if (v38 != 4)
    {
      v46 = 0;
    }

    if (v38 != 3)
    {
      v45 = v46;
    }

    if (v38 != 2)
    {
      v44 = v45;
    }

    v47 = @"LEGHORN_DISTANCE_METERS_DATE";
    v48 = @"LEGHORN_DISTANCE_METERS_SECONDS_AGO";
    if (v38 != 1)
    {
      v48 = 0;
    }

    if (v38)
    {
      v47 = v48;
    }

    if (v38 <= 1)
    {
      v44 = v47;
    }

    v49 = v38 <= 255;
  }

  if (v49)
  {
    v58 = v44;
  }

  else
  {
    v58 = v39;
  }

  v59 = NTKFoghornFaceLocalizedMarkdownString(v58);
  v65[0] = *MEMORY[0x277D2BE60];
  v65[1] = @"distance";
  v66[0] = v16;
  v66[1] = v16;
  v65[2] = @"distanceUnit";
  v65[3] = @"duration";
  v66[2] = v17;
  v66[3] = v18;
  v65[4] = @"durationUnit";
  v66[4] = v19;
  v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v60, v66, v65, 5);
  v63 = objc_msgSend_ntk_attributedStringFromAttributesTable_markdownFormat_(MEMORY[0x277CCA898], v62, v61, v59, v23, v37);

  return v63;
}

id sub_23BEC1170(double a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a4;
  v9 = sub_23BEC1ACC(0, 1, 2, a1);
  v12 = objc_msgSend_count(&unk_284EB7240, v10, v11);
  v14 = objc_msgSend_objectAtIndexedSubscript_(&unk_284EB7258, v13, vcvtmd_s64_f64(vcvtd_n_f64_u64(0x168 / v12, 1uLL) + a1) % 360 / (0x168 / v12));
  v15 = NTKFoghornFaceLocalizedMarkdownString(v14);
  v21[0] = *MEMORY[0x277D2BE60];
  v21[1] = @"cardinal";
  v22[0] = v7;
  v22[1] = v8;
  v21[2] = @"direction";
  v22[2] = v7;
  v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v22, v21, 3);
  v19 = objc_msgSend_ntk_attributedStringFromAttributesTable_markdownFormat_(MEMORY[0x277CCA898], v18, v17, v15, v9);

  return v19;
}

id sub_23BEC1310(void *a1, double a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7)
{
  v29[2] = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277D740A8];
  v28[0] = *MEMORY[0x277D740C0];
  v12 = v28[0];
  v28[1] = v13;
  v29[0] = a7;
  v29[1] = a6;
  v14 = MEMORY[0x277CBEAC0];
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v14, v19, v29, v28, 2);
  v26[0] = v12;
  v26[1] = v13;
  v27[0] = v17;
  v27[1] = v18;
  v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v27, v26, 2);

  v24 = objc_msgSend__attributedStringForCardinalDirectionLabel_cardinalAttributes_directionAttributes_(a1, v23, v20, v22, a2);

  return v24;
}

__CFString *NTKFoghornFaceAccessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v3 = NTKFoghornFaceNSBundle(v1, v2);
  v6 = objc_msgSend_principalClass(v3, v4, v5);

  if (objc_opt_respondsToSelector())
  {
    v8 = objc_msgSend_localizedStringForKey_table_comment_(v6, v7, v1, @"Accessibility", &stru_284EA8F68);
  }

  else
  {
    v8 = &stru_284EA8F68;
  }

  return v8;
}

id sub_23BEC150C(double a1)
{
  v2 = sub_23BEC1ACC(0, 1, 2, a1);
  v3 = MEMORY[0x277CCACA8];
  v4 = NTKFoghornFaceLocalizedString(@"LEGHORN_DEGREE_FORMAT_ACCESSIBILITY");
  v6 = objc_msgSend_stringWithFormat_(v3, v5, v4, v2);

  v9 = objc_msgSend_count(&unk_284EB7270, v7, v8);
  v11 = objc_msgSend_objectAtIndexedSubscript_(&unk_284EB7288, v10, vcvtmd_s64_f64(vcvtd_n_f64_u64(0x168 / v9, 1uLL) + a1) % 360 / (0x168 / v9));
  v12 = MEMORY[0x277CCACA8];
  v13 = NTKFoghornFaceLocalizedString(@"LEGHORN_HEADING_DIRECTION_COMBINER_ACCESSIBILITY");
  v14 = NTKFoghornFaceLocalizedString(v11);
  v16 = objc_msgSend_stringWithFormat_(v12, v15, v13, v6, v14);

  return v16;
}

id sub_23BEC165C(double a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v9 = a5;
  if (a4)
  {
    if (a1 < 15000.0 && a1 <= 1500.0)
    {
      v10 = 0;
      v11 = 0;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      a1 = a1 / 1000.0;
    }
  }

  else
  {
    v11 = a1 * 3.2808399 / 5280.0 >= 10.0 || a1 * 3.2808399 > 1200.0;
    if (v11)
    {
      a1 = a1 * 3.2808399 / 5280.0;
    }

    else
    {
      a1 = a1 * 3.2808399;
    }

    v10 = 256;
  }

  v14 = objc_msgSend_meters(MEMORY[0x277CCAE20], v7, v8);
  v15 = v11 | v10;
  if ((v11 | v10) > 255)
  {
    if (v15 == 256)
    {
      objc_msgSend_feet(MEMORY[0x277CCAE20], v12, v13);
    }

    else
    {
      objc_msgSend_miles(MEMORY[0x277CCAE20], v12, v13);
    }
  }

  else if (v15)
  {
    objc_msgSend_kilometers(MEMORY[0x277CCAE20], v12, v13);
  }

  else
  {
    objc_msgSend_meters(MEMORY[0x277CCAE20], v12, v13);
  }
  v16 = ;
  v17 = v16;

  v18 = objc_alloc(MEMORY[0x277CCAB10]);
  v20 = objc_msgSend_initWithDoubleValue_unit_(v18, v19, v17, a1);
  v21 = objc_alloc_init(MEMORY[0x277CCAB18]);
  objc_msgSend_setUnitStyle_(v21, v22, 3);
  v23 = MEMORY[0x277CCACA8];
  v24 = NTKFoghornFaceLocalizedString(@"LEGHORN_COMPASS_RADIUS_FORMAT_ACCESSIBILITY");
  v26 = objc_msgSend_stringFromMeasurement_(v21, v25, v20);
  v28 = objc_msgSend_stringWithFormat_(v23, v27, v24, v26);

  return v28;
}

id sub_23BEC1844(double a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v8 = a4;
  if (a5)
  {
    if (a1 > 10000.0)
    {
      v9 = a1 / 1000.0;
      v10 = 0;
LABEL_9:
      v11 = 1;
      goto LABEL_14;
    }

    if (a1 > 1000.0)
    {
      v9 = a1 / 1000.0;
      v10 = 1;
      goto LABEL_9;
    }

    v9 = a1;
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v9 = a1 * 3.2808399;
    if (a1 * 3.2808399 >= 52800.0)
    {
      v9 = v9 / 5280.0;
      v10 = 0;
    }

    else
    {
      if (v9 < 5280.0)
      {
        v10 = 0;
        v11 = 2;
        goto LABEL_14;
      }

      v9 = v9 / 5280.0;
      v10 = 1;
    }

    v11 = 3;
  }

LABEL_14:
  v12 = sub_23BEC1C1C(v10, v11, v9, v7);
  v13 = v8;
  objc_msgSend_timeIntervalSinceNow(v13, v14, v15);
  if (v16 <= -259200.0)
  {
    v22 = objc_alloc_init(MEMORY[0x277CCA968]);
    objc_msgSend_setDateStyle_(v22, v23, 3);
    objc_msgSend_setTimeStyle_(v22, v24, 0);
    v26 = objc_msgSend_stringFromDate_(v22, v25, v13);

    v27 = v26;
    v28 = v27;
    goto LABEL_25;
  }

  v17 = -86400.0;
  if (v16 <= -86400.0)
  {
    v21 = @"LEGHORN_DAYS_AGO_ACCESSIBILITY";
  }

  else
  {
    v17 = -3600.0;
    if (v16 > -3600.0)
    {
      v18 = -v16;
      v19 = v16 > -60.0;
      v20 = v16 / -60.0;
      if (v19)
      {
        v20 = v18;
        v21 = @"LEGHORN_SECONDS_AGO_ACCESSIBILITY";
      }

      else
      {
        v21 = @"LEGHORN_MINUTES_AGO_ACCESSIBILITY";
      }

      goto LABEL_24;
    }

    v21 = @"LEGHORN_HOURS_AGO_ACCESSIBILITY";
  }

  v20 = v16 / v17;
LABEL_24:
  v27 = sub_23BEC1ACC(0, 1, 2, v20);
  v29 = MEMORY[0x277CCACA8];
  v30 = NTKFoghornFaceAccessibilityLocalizedString(v21);
  v33 = objc_msgSend_integerValue(v27, v31, v32);
  v28 = objc_msgSend_stringWithFormat_(v29, v34, v30, v33);

LABEL_25:
  v35 = MEMORY[0x277CCACA8];
  v36 = NTKFoghornFaceLocalizedString(@"LEGHORN_DISTANCE_INTERVAL_COMBINER_ACCESSIBILITY");
  v38 = objc_msgSend_stringWithFormat_(v35, v37, v36, v12, v28);

  return v38;
}

id sub_23BEC1ACC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v9 = objc_alloc(MEMORY[0x277CBEAF8]);
  v12 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], v10, v11);
  v15 = objc_msgSend_localeIdentifier(v12, v13, v14);
  v17 = objc_msgSend_initWithLocaleIdentifier_(v9, v16, v15);
  objc_msgSend_setLocale_(v8, v18, v17);

  objc_msgSend_setMaximumFractionDigits_(v8, v19, a1);
  objc_msgSend_setNumberStyle_(v8, v20, a2);
  objc_msgSend_setRoundingMode_(v8, v21, a3);
  v22 = MEMORY[0x277CCABB0];
  v23 = __exp10(0.0 - a1);
  v26 = objc_msgSend_numberWithDouble_(v22, v24, v25, v23);
  objc_msgSend_setRoundingIncrement_(v8, v27, v26);

  v30 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v28, v29, a4);
  v32 = objc_msgSend_stringFromNumber_(v8, v31, v30);

  return v32;
}

id sub_23BEC1C1C(uint64_t a1, const char *a2, double a3, uint64_t a4)
{
  v9 = objc_msgSend_meters(MEMORY[0x277CCAE20], a2, a4);
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      objc_msgSend_feet(MEMORY[0x277CCAE20], v7, v8);
    }

    else
    {
      objc_msgSend_miles(MEMORY[0x277CCAE20], v7, v8);
    }
  }

  else if (a2)
  {
    objc_msgSend_kilometers(MEMORY[0x277CCAE20], v7, v8);
  }

  else
  {
    objc_msgSend_meters(MEMORY[0x277CCAE20], v7, v8);
  }
  v10 = ;
  v11 = v10;

  v12 = objc_alloc_init(MEMORY[0x277CCAB18]);
  objc_msgSend_setUnitStyle_(v12, v13, 3);
  objc_msgSend_setUnitOptions_(v12, v14, 1);
  v17 = objc_msgSend_numberFormatter(v12, v15, v16);
  objc_msgSend_setNumberStyle_(v17, v18, 1);

  v21 = objc_msgSend_numberFormatter(v12, v19, v20);
  objc_msgSend_setRoundingMode_(v21, v22, 2);

  v25 = objc_msgSend_numberFormatter(v12, v23, v24);
  objc_msgSend_setMaximumFractionDigits_(v25, v26, a1);

  v27 = MEMORY[0x277CCABB0];
  v28 = __exp10(0.0 - a1);
  v31 = objc_msgSend_numberWithDouble_(v27, v29, v30, v28);
  v34 = objc_msgSend_numberFormatter(v12, v32, v33);
  objc_msgSend_setRoundingIncrement_(v34, v35, v31);

  v36 = objc_alloc(MEMORY[0x277CCAB10]);
  v38 = objc_msgSend_initWithDoubleValue_unit_(v36, v37, v11, a3);
  v40 = objc_msgSend_stringFromMeasurement_(v12, v39, v38);

  return v40;
}

id sub_23BEC1F54(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_name(a1, a2, a3);
  v7 = v4;
  if (!v4 || !objc_msgSend_length(v4, v5, v6))
  {
    v8 = objc_msgSend_placemark(a1, v5, v6);
    v11 = v8;
    if (v8)
    {
      v12 = objc_msgSend_name(v8, v9, v10);

      v7 = v12;
    }

    if (!v7)
    {
      goto LABEL_7;
    }
  }

  if (!objc_msgSend_length(v7, v5, v6))
  {
LABEL_7:
    v13 = objc_msgSend_pointOfInterestCategory(a1, v5, v6);
    v14 = v13;
    if (v13 == *MEMORY[0x277CD4C08])
    {
      v15 = @"LEGHORN_MAPS_SEARCH_BEACH";
    }

    else
    {
      v15 = @"LEGHORN_MAPS_SEARCH_POI";
    }

    if (v13 == *MEMORY[0x277CD4C70])
    {
      v16 = @"LEGHORN_MAPS_SEARCH_TRAILHEAD";
    }

    else
    {
      v16 = v15;
    }

    v17 = NTKFoghornFaceLocalizedString(v16);

    v7 = v17;
  }

  return v7;
}

id sub_23BEC2054(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend__styleAttributes(a1, a2, a3);
  if (!v3)
  {
    v3 = objc_msgSend_searchResultStyleAttributes(MEMORY[0x277D0EB18], v4, v5);
  }

  return v3;
}

id sub_23BEC2094(void *a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_pointOfInterestCategory(a1, a2, a3);
  if (v5 == *MEMORY[0x277CD4C08])
  {
    objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v3, v4, 0.356862745, 0.776470588, 0.956862745, 1.0);
  }

  else if (v5 == *MEMORY[0x277CD4C70])
  {
    objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v3, v4, 0.423529412, 0.741176471, 0.309803922, 1.0);
  }

  else
  {
    objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v3, v4, 0.921568627, 0.266666667, 0.270588235, 1.0);
  }
  v6 = ;

  return v6;
}

__CFString *sub_23BEC2178(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_pointOfInterestCategory(a1, a2, a3);
  if (v3 == *MEMORY[0x277CD4C08])
  {
    v4 = @"beach.umbrella.fill";
  }

  else
  {
    v4 = @"pin.point.of.interest.fill";
  }

  if (v3 == *MEMORY[0x277CD4C70])
  {
    v5 = @"signpost.right.fill";
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

id sub_23BEC21E4(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_ntk_sfSymbolName(a1, a2, a3);
  v5 = objc_msgSend_iconImageForSFSymbol_(NTKLeghornWaypoint, v4, v3);

  return v5;
}

id sub_23BEC223C(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_placemark(a1, a2, a3);
  v6 = objc_msgSend_location(v3, v4, v5);

  return v6;
}

unint64_t sub_23BEC2288(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_pointOfInterestCategory(a1, a2, a3);
  if (v3 == *MEMORY[0x277CD4C08])
  {
    v4 = 128;
  }

  else
  {
    v4 = (v3 == *MEMORY[0x277CD4C70]) << 6;
  }

  return v4;
}

void sub_23BEC2944(id *a1)
{
  v66 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v5 = *(a1[4] + 5);
    if (v5 && objc_msgSend_isSearching(v5, v2, v3))
    {
      objc_msgSend_cancel(*(a1[4] + 5), v2, v3);
    }

    v6 = objc_msgSend_poiFilter(a1[5], v2, v3);
    v8 = objc_msgSend_includesAnyOfCategories_(v6, v7, 192);

    if ((v8 & 1) == 0)
    {
      objc_msgSend__setWaypoints_(WeakRetained, v9, MEMORY[0x277CBEBF8]);
      v10 = a1[6];
      if (v10)
      {
        v11 = *(v10 + 2);
LABEL_20:
        v11();
        goto LABEL_21;
      }
    }

    v12 = objc_opt_new();
    v15 = objc_msgSend_poiFilter(a1[5], v13, v14);
    v17 = objc_msgSend_includesCategory_(v15, v16, 128);

    if (v17)
    {
      objc_msgSend_addObject_(v12, v18, *MEMORY[0x277CD4C08]);
    }

    v20 = objc_msgSend_poiFilter(a1[5], v18, v19);
    v22 = objc_msgSend_includesCategory_(v20, v21, 64);

    if (v22)
    {
      objc_msgSend_addObject_(v12, v23, *MEMORY[0x277CD4C70]);
    }

    v24 = objc_alloc(MEMORY[0x277CD4F10]);
    inited = objc_msgSend_initIncludingCategories_(v24, v25, v12);
    objc_msgSend_radius(a1[5], v27, v28);
    if (v29 <= 0.0)
    {
      v30 = 80500.0;
    }

    else
    {
      v30 = v29;
    }

    v31 = objc_alloc(MEMORY[0x277CD4E18]);
    objc_msgSend_centerCoordinate(a1[5], v32, v33);
    v36 = objc_msgSend_initWithCenterCoordinate_radius_(v31, v34, v35);
    objc_msgSend_setPointOfInterestFilter_(v36, v37, inited);
    v38 = objc_alloc(MEMORY[0x277CD4E20]);
    v40 = objc_msgSend_initWithPointsOfInterestRequest_(v38, v39, v36);
    objc_storeStrong(a1[4] + 5, v40);
    v43 = NTKFoghornFaceBundleLogObject(v41, v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      objc_msgSend_centerCoordinate(a1[5], v44, v45);
      v47 = v46;
      objc_msgSend_centerCoordinate(a1[5], v48, v49);
      *buf = 134218496;
      v61 = v47;
      v62 = 2048;
      v63 = v50;
      v64 = 2048;
      v65 = v30;
      _os_log_impl(&dword_23BEB1000, v43, OS_LOG_TYPE_DEFAULT, "local-search: started @{ %f, %f } radius = %fm", buf, 0x20u);
    }

    objc_initWeak(buf, a1[4]);
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = sub_23BEC2CB0;
    v55[3] = &unk_278BA1048;
    objc_copyWeak(&v59, buf);
    v58 = a1[6];
    v51 = a1[5];
    v52 = a1[4];
    v56 = v51;
    v57 = v52;
    objc_msgSend_startWithCompletionHandler_(v40, v53, v55);

    objc_destroyWeak(&v59);
    objc_destroyWeak(buf);
  }

  else
  {
    v54 = a1[6];
    if (v54)
    {
      v11 = *(v54 + 2);
      goto LABEL_20;
    }
  }

LABEL_21:
}

void sub_23BEC2C8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23BEC2CB0(uint64_t a1, void *a2, void *a3)
{
  v100 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      WeakRetained = objc_msgSend_code(v6, v8, v9);
      if (WeakRetained == 4)
      {
        v11 = NTKFoghornFaceBundleLogObject(4, v8);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23BEB1000, v11, OS_LOG_TYPE_DEFAULT, "local-search: did not find anything", buf, 2u);
        }

        if (*(a1 + 48))
        {
          objc_msgSend__setWaypoints_(v10, v8, 0);
          v12 = *(*(a1 + 48) + 16);
LABEL_17:
          v12();
          goto LABEL_39;
        }
      }
    }

    else if (v5)
    {
LABEL_18:
      v16 = objc_msgSend_mapItems(v5, v8, v9);
      v18 = NTKFoghornFaceBundleLogObject(v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        log = v18;
        v85 = v10;
        v86 = v6;
        v87 = v5;
        v84 = a1;
        objc_msgSend_centerCoordinate(*(a1 + 32), v19, v20);
        v22 = v21;
        v24 = v23;
        v83 = v16;
        v25 = v16;
        v26 = objc_opt_new();
        v27 = objc_alloc(MEMORY[0x277CE41F8]);
        v30 = objc_msgSend_initWithLatitude_longitude_(v27, v28, v29, v22, v24);
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        obj = v25;
        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v93, buf, 16);
        if (v32)
        {
          v35 = v32;
          v36 = *v94;
          do
          {
            for (i = 0; i != v35; ++i)
            {
              if (*v94 != v36)
              {
                objc_enumerationMutation(obj);
              }

              v38 = *(*(&v93 + 1) + 8 * i);
              v39 = objc_msgSend_name(v38, v33, v34);
              v42 = objc_msgSend_pointOfInterestCategory(v38, v40, v41);
              v44 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v42, v43, @"MKPOICategory", &stru_284EA8F68);
              v47 = objc_msgSend_placemark(v38, v45, v46);
              v50 = objc_msgSend_location(v47, v48, v49);

              objc_msgSend_distanceFromLocation_(v50, v51, v30);
              v53 = v52;
              if (objc_msgSend_length(v26, v54, v55))
              {
                objc_msgSend_appendString_(v26, v56, @", ");
              }

              objc_msgSend_coordinate(v50, v56, v57);
              v59 = v58;
              objc_msgSend_coordinate(v50, v60, v61);
              objc_msgSend_appendFormat_(v26, v62, @"%@ = '%@' @ { %f, %f } distance = %.1fm", v44, v39, v59, v63, v53);
            }

            v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, &v93, buf, 16);
          }

          while (v35);
        }

        v66 = objc_msgSend_copy(v26, v64, v65);
        *buf = 138412290;
        v99 = v66;
        v18 = log;
        _os_log_impl(&dword_23BEB1000, log, OS_LOG_TYPE_DEFAULT, "local-search: successful, found = [ %@ ]", buf, 0xCu);

        v6 = v86;
        v5 = v87;
        a1 = v84;
        v10 = v85;
        v16 = v83;
      }

      v67 = objc_opt_new();
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v68 = v16;
      v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v69, &v89, v97, 16);
      if (v70)
      {
        v72 = v70;
        v73 = *v90;
        do
        {
          for (j = 0; j != v72; ++j)
          {
            if (*v90 != v73)
            {
              objc_enumerationMutation(v68);
            }

            v75 = objc_msgSend__wrapperForPOI_(*(a1 + 40), v71, *(*(&v89 + 1) + 8 * j));
            objc_msgSend_addObject_(v67, v76, v75);
          }

          v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v71, &v89, v97, 16);
        }

        while (v72);
      }

      v79 = objc_msgSend_copy(v67, v77, v78);
      objc_msgSend__setWaypoints_(v10, v80, v79);

      v81 = *(a1 + 48);
      if (v81)
      {
        (*(v81 + 16))(v81, 1);
      }

      goto LABEL_39;
    }

    v15 = NTKFoghornFaceBundleLogObject(WeakRetained, v8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_23BEE6D24(v6, v15);
    }

    v14 = *(a1 + 48);
    if (v14)
    {
LABEL_16:
      v12 = *(v14 + 16);
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v13 = NTKFoghornFaceBundleLogObject(0, v8);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_23BEE6D9C(v6, v13);
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    goto LABEL_16;
  }

LABEL_39:
}

uint64_t sub_23BEC3318(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

CGFloat sub_23BEC33B8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = a7;
  if (objc_msgSend_isEqualToString_(v11, v12, @"house.lodge.fill"))
  {
    v14 = &off_278BA10B8;
LABEL_6:
    v19.origin.x = a1;
    v19.origin.y = a2;
    v19.size.width = a3;
    v19.size.height = a4;
    *&a1 = CGRectOffset(v19, *(v14 + 2), *(v14 + 3));
  }

  else
  {
    v15 = &off_278BA10B8;
    v16 = 5;
    while (--v16)
    {
      v14 = v15 + 4;
      isEqualToString = objc_msgSend_isEqualToString_(v11, v13, v15[4]);
      v15 = v14;
      if (isEqualToString)
      {
        goto LABEL_6;
      }
    }
  }

  return a1;
}

id sub_23BEC3488(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_msgSend_isEqualToString_(v4, v5, @"house.lodge.fill"))
  {
    v7 = &off_278BA10B8;
LABEL_6:
    v11 = *(v7 + 1);
    v12 = v11 * 8.0 + v11 * 8.0;
    v13 = v11 > 0.0;
    v14 = 16.0;
    if (v13)
    {
      v14 = v12;
    }

    objc_msgSend_configurationWithPointSize_weight_scale_(MEMORY[0x277D755D0], v6, 0, 1, round(v14) * 0.5);
  }

  else
  {
    v8 = &off_278BA10B8;
    v9 = 5;
    while (--v9)
    {
      v7 = v8 + 4;
      isEqualToString = objc_msgSend_isEqualToString_(v4, v6, v8[4]);
      v8 = v7;
      if (isEqualToString)
      {
        goto LABEL_6;
      }
    }

    objc_msgSend_configurationWithPointSize_weight_scale_(MEMORY[0x277D755D0], v6, 0, 1, 8.0);
  }
  v15 = ;
  v18 = objc_msgSend__systemImageNamed_withConfiguration_(MEMORY[0x277D755B8], v16, v4, v15);
  if (!v18)
  {
    v18 = objc_msgSend_ntk_imageForSFSymbolName_(a1, v17, @"pin.point.of.interest.fill");
  }

  return v18;
}

void sub_23BEC3AEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_23BEC3B18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BEC3BF0;
    block[3] = &unk_278BA1160;
    block[4] = WeakRetained;
    v10 = v5;
    v11 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void sub_23BEC3C00(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BEC3CD8;
    block[3] = &unk_278BA1160;
    block[4] = WeakRetained;
    v10 = v5;
    v11 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void sub_23BEC44C4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedInstance(MEMORY[0x277CBB700], a2, a3);
  objc_msgSend_stopUpdatesForToken_(v4, v5, *(a1 + 32));

  if (*(a1 + 48) == 1 && objc_msgSend_isDeviceMotionAvailable(*(a1 + 40), v6, v7))
  {
    v10 = *(a1 + 40);

    objc_msgSend_stopDeviceMotionUpdates(v10, v8, v9);
  }
}

void sub_23BEC48FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23BEC4928(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend__queue_motionError_(WeakRetained, v4, v6);
  }
}

void sub_23BEC4BE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23BEC4C04(uint64_t a1, void *a2, id *a3)
{
  v17 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = objc_msgSend_updateHandler(WeakRetained, v6, v7);
    v12 = objc_msgSend_deviceMotion(v8[6], v10, v11);
    v15 = v12;
    if (v12)
    {
      v16 = v9 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      objc_msgSend_heading(v12, v13, v14);
      (v9)[2](v9, v8);
    }
  }
}

void sub_23BEC4F60(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

double _preferencesGetAppDoubleValue(const __CFString *a1, const __CFString *a2, BOOL *a3)
{
  v4 = CFPreferencesCopyAppValue(a1, a2);
  if (!v4)
  {
    v8 = 0;
    DoubleValue = NAN;
    if (!a3)
    {
      return DoubleValue;
    }

    goto LABEL_12;
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  if (v6 == CFStringGetTypeID())
  {
    DoubleValue = CFStringGetDoubleValue(v5);
    v8 = 1;
  }

  else if (v6 == CFNumberGetTypeID())
  {
    valuePtr = 0.0;
    Value = CFNumberGetValue(v5, kCFNumberDoubleType, &valuePtr);
    v8 = Value != 0;
    if (Value)
    {
      DoubleValue = valuePtr;
    }

    else
    {
      DoubleValue = NAN;
    }
  }

  else
  {
    v8 = 0;
    DoubleValue = NAN;
  }

  CFRelease(v5);
  if (a3)
  {
LABEL_12:
    *a3 = v8;
  }

  return DoubleValue;
}

CFIndex _preferencesGetAppIntegerValueWithDefault(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(a1, a2, &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    return a3;
  }

  return result;
}

double sub_23BEC5114(uint64_t a1)
{
  if (MEMORY[0x23EEC10B0]())
  {
    if (qword_27E1DF0D8 != -1)
    {
      sub_23BEE7040();
    }

    v2 = &unk_27E1DF000;
    v3 = &unk_27E1DF000;
    v4 = &unk_27E1DF000;
    v5 = &unk_27E1DF000;
    v6 = &unk_27E1DF000;
    v7 = &unk_27E1DF000;
    v8 = &unk_27E1DF000;
    v9 = &unk_27E1DF000;
    v10 = &unk_27E1DF000;
    if (byte_27E1DF058 == 1)
    {
      v11 = qword_27E1DF0D0;
    }

    else
    {
      v13 = *MEMORY[0x277D2BF40];
      byte_27E1DF059 = CFPreferencesGetAppBooleanValue(@"NTKFoghornCompassDemo", *MEMORY[0x277D2BF40], 0) != 0;
      byte_27E1DF070 = CFPreferencesGetAppBooleanValue(@"NTKFoghornDepthDemo", v13, 0) != 0;
      byte_27E1DF088 = CFPreferencesGetAppBooleanValue(@"NTKFoghornElevationDemo", v13, 0) != 0;
      byte_27E1DF0B0 = CFPreferencesGetAppBooleanValue(@"NTKFoghornStatusIndicatorPolicyMove", v13, 0) != 0;
      qword_27E1DF060 = _preferencesGetAppDoubleValue(@"NTKFoghornCompassDemoValue", v13, 0);
      qword_27E1DF068 = _preferencesGetAppDoubleValue(@"NTKFoghornCompassDemoRate", v13, 0);
      qword_27E1DF078 = _preferencesGetAppDoubleValue(@"NTKFoghornDepthDemoValue", v13, 0);
      qword_27E1DF080 = _preferencesGetAppDoubleValue(@"NTKFoghornDepthDemoRate", v13, 0);
      qword_27E1DF090 = _preferencesGetAppDoubleValue(@"NTKFoghornElevationDemoValue", v13, 0);
      qword_27E1DF098 = _preferencesGetAppDoubleValue(@"NTKFoghornElevationDemoRate", v13, 0);
      qword_27E1DF0A0 = _preferencesGetAppDoubleValue(@"NTKFoghornElevationDemoAccuracy", v13, 0);
      qword_27E1DF0A8 = _preferencesGetAppDoubleValue(@"NTKFoghornElevationDemoPrecision", v13, 0);
      byte_27E1DF0B1 = CFPreferencesGetAppBooleanValue(@"NTKFoghornTimeViewUseStretchAnimation", v13, 0) != 0;
      keyExistsAndHasValidFormat = 0;
      AppIntegerValue = CFPreferencesGetAppIntegerValue(@"NTKFoghornTimeViewAnimationSnapStyle", v13, &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        v15 = AppIntegerValue;
      }

      else
      {
        v15 = 1;
      }

      qword_27E1DF0B8 = v15;
      byte_27E1DF0C0 = CFPreferencesGetAppBooleanValue(@"NTKFoghornHarmoniaDemo", v13, 0) != 0;
      v24 = 0;
      v16 = CFPreferencesGetAppIntegerValue(@"NTKFoghornHarmoniaDemoOvernightScenario", v13, &v24);
      if (v24)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      qword_27E1DF0C8 = v17;
      v25 = 0;
      v18 = CFPreferencesGetAppIntegerValue(@"NTKFoghornHarmoniaDemoTrainingScenario", v13, &v25);
      v3 = &unk_27E1DF000;
      v4 = &unk_27E1DF000;
      v5 = &unk_27E1DF000;
      v6 = &unk_27E1DF000;
      v7 = &unk_27E1DF000;
      v8 = &unk_27E1DF000;
      v9 = &unk_27E1DF000;
      v10 = &unk_27E1DF000;
      if (v25)
      {
        v11 = v18;
      }

      else
      {
        v11 = 0;
      }

      v2 = &unk_27E1DF000;
      qword_27E1DF0D0 = v11;
      byte_27E1DF058 = 1;
    }

    *a1 = byte_27E1DF059;
    v19 = qword_27E1DF068;
    *(a1 + 8) = qword_27E1DF060;
    *(a1 + 16) = v19;
    *(a1 + 24) = byte_27E1DF070;
    v20 = qword_27E1DF080;
    *(a1 + 32) = qword_27E1DF078;
    *(a1 + 40) = v20;
    *(a1 + 48) = byte_27E1DF088;
    v21 = v3[19];
    *(a1 + 56) = v2[18];
    *(a1 + 64) = v21;
    result = v4[20];
    v22 = v5[21];
    *(a1 + 72) = result;
    *(a1 + 80) = v22;
    *(a1 + 88) = v6[176];
    *(a1 + 89) = v7[177];
    *(a1 + 96) = v8[23];
    *(a1 + 104) = v9[192];
    *(a1 + 112) = v10[25];
    *(a1 + 120) = v11;
  }

  else
  {
    *a1 = 0;
    result = NAN;
    *(a1 + 8) = xmmword_23BEED220;
    *(a1 + 24) = 0;
    *(a1 + 32) = xmmword_23BEED220;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0x7FF8000000000000;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 1;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

  return result;
}

uint64_t sub_23BEC58A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_UTF8String(@"NTKFoghornPreferencesChangedNotification", a2, a3);
  v4 = MEMORY[0x277D85CD0];

  return notify_register_dispatch(v3, &unk_27E1DF0E0, v4, &unk_284EA8AC8);
}

void sub_23BEC58E8(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  byte_27E1DF058 = 0;
  v2 = NTKFoghornFaceBundleLogObject(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "void _foghornPreferences(_FoghornPreferences *)_block_invoke_2";
    _os_log_impl(&dword_23BEB1000, v2, OS_LOG_TYPE_DEFAULT, "%s: preferences updated", &v3, 0xCu);
  }
}

CFArrayRef sub_23BEC66A4(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_count(v1, v2, v3);
  Mutable = CFArrayCreateMutable(0, v4, MEMORY[0x277CBF128]);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v8 = objc_msgSend_objectAtIndexedSubscript_(v1, v5, i);
      v9 = CTLineCreateWithAttributedString(v8);
      CFArrayAppendValue(Mutable, v9);
      CFRelease(v9);
    }
  }

  Copy = CFArrayCreateCopy(0, Mutable);
  CFRelease(Mutable);

  return Copy;
}

double _fractionFromToDisplayMode(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = 0.0;
  if (a2 == a1)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  if (a2 == a3)
  {
    return v5;
  }

  CLKInterpolateBetweenFloatsClipped();
  if (fabs(v6) >= 0.00000011920929)
  {
    v4 = v6;
    if (fabs(v6 + -1.0) < 0.00000011920929)
    {
      return 1.0;
    }
  }

  return v4;
}

double NTKCircularBezelViewDimensionForDevice(void *a1, void *a2, _OWORD *a3, double *a4)
{
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  sub_23BECF628(a1, v8);
  if (a2)
  {
    result = *(&v9 + 1);
    *a2 = *(&v9 + 1);
  }

  if (a3)
  {
    result = *&v22;
    *a3 = v22;
  }

  if (a4)
  {
    result = v23;
    *a4 = v23;
  }

  return result;
}

void NTKCircularBezelViewHiVizComplicationCenterAndScaleFromHiVizStyleToHiVizStyle(uint64_t a1, uint64_t a2, double *a3, double *a4, long double a5, double a6, double a7)
{
  if (a1 == a2)
  {
    v9 = 0.0;
    if (a1)
    {
      v10 = -a5;
      if (a1 == 2)
      {
        v11 = a6;
      }

      else
      {
        v11 = 0.0;
      }

      if (a1 == 2)
      {
        v12 = a5;
      }

      else
      {
        v12 = 0.0;
      }

      if (a1 == 1)
      {
        v13 = a6;
      }

      else
      {
        v13 = v11;
      }

      if (a1 != 1)
      {
        v10 = v12;
      }

      v9 = 1.0;
      if (!a3)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v10 = *MEMORY[0x277CBF348];
      v13 = *(MEMORY[0x277CBF348] + 8);
      if (!a3)
      {
        goto LABEL_46;
      }
    }

LABEL_45:
    *a3 = v10;
    a3[1] = v13;
    goto LABEL_46;
  }

  v9 = a7;
  if (a1)
  {
    if (a2 == 2 || (v9 = 1.0 - a7, a2))
    {
      v17 = fmax(v9, 0.0);
      v9 = 1.0;
      v18 = fmin(v17, 1.0);
      v19 = sqrt(a6 * a6 + a5 * a5);
      v20 = atan2(a5, -a6);
      if (v18 <= 0.5)
      {
        v23 = __sincos_stret(v20 + v18 * v20 * -2.0);
        cosval = v23.__cosval;
        v10 = -(v19 * v23.__sinval);
      }

      else
      {
        v22 = __sincos_stret(v20 * (v18 + -0.5) + v20 * (v18 + -0.5));
        cosval = v22.__cosval;
        v10 = v19 * v22.__sinval;
      }

      v13 = -(v19 * cosval);
      if (!a3)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

    v10 = 0.0;
    v14 = -a5;
    if (a1 == 2)
    {
      v15 = a6;
    }

    else
    {
      v15 = 0.0;
    }

    if (a1 == 2)
    {
      v10 = a5;
    }

    v16 = a1 == 1;
  }

  else
  {
    v10 = 0.0;
    if (!a2)
    {
      v10 = *MEMORY[0x277CBF348];
      v13 = *(MEMORY[0x277CBF348] + 8);
      v9 = 0.0;
      if (!a3)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

    v14 = -a5;
    if (a2 == 2)
    {
      v15 = a6;
    }

    else
    {
      v15 = 0.0;
    }

    if (a2 == 2)
    {
      v10 = a5;
    }

    v16 = a2 == 1;
  }

  if (v16)
  {
    v13 = a6;
  }

  else
  {
    v13 = v15;
  }

  if (v16)
  {
    v10 = v14;
  }

  if (a3)
  {
    goto LABEL_45;
  }

LABEL_46:
  if (a4)
  {
    *a4 = v9;
  }
}

uint64_t sub_23BECB49C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v9 = objc_msgSend_waypointLocation(a2, v7, v8);
  objc_msgSend_distanceFromLocation_(v5, v10, v9);
  v12 = v11;

  v13 = *(a1 + 32);
  v16 = objc_msgSend_waypointLocation(v6, v14, v15);

  objc_msgSend_distanceFromLocation_(v13, v17, v16);
  v19 = v18;

  if (v12 > v19)
  {
    return -1;
  }

  else
  {
    return v12 < v19;
  }
}

double sub_23BECB538(double result, double a2, double a3)
{
  v3 = fabs(a3);
  if (a3 > 0.0 && v3 >= 2.22044605e-16)
  {
    v5 = fabs(a3 + -1.0);
    if (a3 >= 1.0 || v5 < 2.22044605e-16)
    {
      return a2;
    }

    else
    {
      CLKInterpolateBetweenFloatsClipped();
    }
  }

  return v7;
}

void sub_23BECB57C(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double *a6, void *a7, void *a8, double a9, double a10, double a11, double a12, double *a13)
{
  v31 = a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  if (a5 == 3)
  {
    v28 = MEMORY[0x23EEC10C0](v31, v24, a12);

    v29 = MEMORY[0x23EEC10C0](v23, v25, a12);

    CLKInterpolateBetweenFloatsClipped();
    a10 = v30;
    v23 = v29;
    v31 = v28;
    if (a6)
    {
LABEL_6:
      *a6 = a9;
    }
  }

  else
  {
    if (a5 == 2 || a5 == 1)
    {
      CLKInterpolateBetweenFloatsClipped();
      a9 = v26;
    }

    if (a6)
    {
      goto LABEL_6;
    }
  }

  if (a7)
  {
    *a7 = v31;
  }

  if (a8)
  {
    v27 = v23;
    *a8 = v23;
  }

  if (a13)
  {
    *a13 = a10;
  }
}

double sub_23BECB710(uint64_t a1, uint64_t a2, double a3)
{
  v3 = 0.0;
  CLKInterpolateBetweenFloatsClipped();
  if (fabs(v4) >= 0.00000011920929)
  {
    v3 = v4;
    if (fabs(v4 + -1.0) < 0.00000011920929)
    {
      return 1.0;
    }
  }

  return v3;
}

void sub_23BECBCCC(uint64_t a1, uint64_t a2, uint64_t a3, long double a4, double a5)
{
  v9 = *(a1 + 528);
  v10 = *(a1 + 536);
  __y = 0.0;
  v11 = modf(a4, &__y);
  if (__y <= 0.0)
  {
    v14.f64[0] = -v9;
    v15 = vdupq_lane_s64(COERCE__INT64(v9 + v9), 0);
    v16 = -v9;
  }

  else
  {
    memset(&v20[1], 0, 64);
    if (v11 <= 0.0)
    {
      v12 = __y;
    }

    else
    {
      v12 = __y + 1.0;
    }

    v20[0] = 0uLL;
    sub_23BED01D0(a1, a2, a3, v20, a5);
    v19 = 0uLL;
    v18 = 0uLL;
    sub_23BED02E8(a1, v20, v12, v18.f64, v19.f64);
    v13 = vcgtq_f64(v18, v19);
    v14 = vbslq_s8(v13, v19, v18);
    v15 = vsubq_f64(vbslq_s8(v13, v18, v19), v14);
    v16 = v14.f64[1];
  }

  v17 = v15.f64[1];
  CGRectInset(*v14.f64, v10 * -0.5, v10 * -0.5);
}

id sub_23BECC594(void *a1, void *a2, char a3, void *a4, double a5, double a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a4;
  v14 = v13;
  if (fabs(a6) >= 2.22044605e-16)
  {
    v15 = v11;
    if (a6 < 1.0)
    {
      v16 = MEMORY[0x23EEC10C0](v14, v15, a6);

      v15 = v16;
    }

    if (a5 > 0.0 && (a3 & 1) == 0)
    {
      v17 = MEMORY[0x23EEC10C0](v15, v12, a5);

      v15 = v17;
    }
  }

  else
  {
    v15 = v13;
  }

  return v15;
}

void sub_23BECF628(void *a1@<X1>, void *a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&unk_27E1DF498);
  if (qword_27E1DF4A0)
  {
    v5 = qword_27E1DF4A0 == v6;
  }

  else
  {
    v5 = 0;
  }

  if (!v5 || objc_msgSend_version(v6, v3, v4) != qword_27E1DF4A8)
  {
    qword_27E1DF4A0 = v6;
    qword_27E1DF4A8 = objc_msgSend_version(v6, v3, v4);
    sub_23BECF700(v6, __src);
    memcpy(&unk_27E1DF0E8, __src, 0x3B0uLL);
  }

  memcpy(a2, &unk_27E1DF0E8, 0x3B0uLL);
  os_unfair_lock_unlock(&unk_27E1DF498);
}

void *sub_23BECF700@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v3 = a1;
  objc_msgSend_screenBounds(v3, v4, v5);
  sub_23BECF75C(v3, v11, v6, v7, v8, v9);

  return memcpy(a2, v11, 0x3B0uLL);
}

double sub_23BECF75C@<D0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v11 = a1;
  v14 = objc_msgSend_sizeClass(v11, v12, v13);
  objc_msgSend_screenCornerRadius(v11, v15, v16);
  v18 = v17;

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
  v44.origin.x = a3;
  v44.origin.y = a4;
  v44.size.width = a5;
  v44.size.height = a6;
  v45 = CGRectInset(v44, 2.0, 2.0);
  *a2 = v45;
  v19 = v18 + -2.0;
  *(a2 + 32) = v18 + -2.0;
  *(a2 + 56) = xmmword_23BEED250;
  *(a2 + 72) = xmmword_23BEED260;
  *(a2 + 88) = xmmword_23BEED270;
  __asm { FMOV            V0.2D, #10.0 }

  *(a2 + 104) = v45.origin;
  *(a2 + 136) = xmmword_23BEED280;
  *(a2 + 152) = xmmword_23BEED290;
  *(a2 + 168) = xmmword_23BEED2A0;
  *(a2 + 184) = xmmword_23BEED2B0;
  *(a2 + 200) = xmmword_23BEED2C0;
  *(a2 + 216) = xmmword_23BEED2D0;
  *(a2 + 232) = xmmword_23BEED2E0;
  v24 = v45.size.height * 0.5;
  *(a2 + 248) = xmmword_23BEED2F0;
  v25 = v45.size.width * 0.5;
  *(a2 + 264) = 0x402E000000000000;
  v26 = atan2(v45.size.height * 0.5, v45.size.width * 0.5 - v19);
  v27 = atan2(v24 - v19, v25);
  *(a2 + 40) = 1.57079633 - v26;
  *(a2 + 48) = 1.57079633 - v27;
  *(a2 + 120) = xmmword_23BEED300;
  v28 = dbl_23BEED310[v14 == 9];
  if (v14 == 9)
  {
    v29 = -6.5;
  }

  else
  {
    v29 = -6.0;
  }

  v30 = vdup_n_s32(v14 == 9);
  if (v14 == 9)
  {
    v31 = 40.0;
  }

  else
  {
    v31 = 39.0;
  }

  v32 = 11.0;
  if (v14 != 9)
  {
    v32 = 10.75;
  }

  *(a2 + 272) = a3;
  *(a2 + 280) = a4;
  if (v14 == 9)
  {
    v33 = 10.5;
  }

  else
  {
    v33 = 10.0;
  }

  *(a2 + 288) = a5;
  *(a2 + 296) = a6;
  v34.i64[0] = v30.u32[0];
  v34.i64[1] = v30.u32[1];
  v35 = vcltzq_s64(vshlq_n_s64(v34, 0x3FuLL));
  *(a2 + 320) = vbslq_s8(v35, xmmword_23BEED330, xmmword_23BEED320);
  if (v14 == 9)
  {
    v36 = 5.0;
  }

  else
  {
    v36 = 4.5;
  }

  *(a2 + 336) = 0x3FF8000000000000;
  v37 = a5 * 0.5 + v29;
  *(a2 + 344) = v37 + 10.5;
  v38 = v37 + v28;
  __asm
  {
    FMOV            V4.2D, #2.0
    FMOV            V5.2D, #1.5
  }

  *(a2 + 352) = _Q4;
  *(a2 + 368) = _Q5;
  *(a2 + 384) = v36;
  *(a2 + 392) = v36;
  v41 = v31 + 2.0 + 2.0;
  *(a2 + 304) = v33;
  *(a2 + 312) = v37;
  *(a2 + 400) = 0x4006000000000000;
  *(a2 + 408) = v38;
  *(a2 + 416) = v38 + -15.5;
  *(a2 + 424) = 0x3FF8000000000000;
  *(a2 + 432) = xmmword_23BEED340;
  *(a2 + 448) = xmmword_23BEED350;
  *(a2 + 464) = xmmword_23BEED360;
  *(a2 + 480) = xmmword_23BEED370;
  *(a2 + 496) = xmmword_23BEED380;
  *(a2 + 512) = xmmword_23BEED390;
  *(a2 + 528) = v38 + -15.5 + -3.75;
  *(a2 + 536) = 0x4000000000000000;
  *(a2 + 544) = xmmword_23BEED3A0;
  *(a2 + 560) = xmmword_23BEED3B0;
  *(a2 + 576) = 0x4010000000000000;
  *(a2 + 584) = v38 * 0.5;
  *(a2 + 592) = v38 * -0.866025404;
  *(a2 + 600) = v31;
  *(a2 + 608) = 0x4000000000000000;
  *(a2 + 616) = v41;
  *(a2 + 624) = v32;
  *(a2 + 632) = 0x400C000000000000;
  *(a2 + 640) = xmmword_23BEED3C0;
  *(a2 + 656) = v32;
  *(a2 + 664) = v32;
  *(a2 + 672) = vbslq_s8(v35, xmmword_23BEED3E0, xmmword_23BEED3D0);
  *(a2 + 688) = vsubq_f64(vdupq_lane_s64(COERCE__INT64(a6 * 0.5), 0), vbslq_s8(v35, xmmword_23BEED400, xmmword_23BEED3F0));
  sub_23BECFB74(a2, a2 + 864, v38 * 0.5, v38 * -0.866025404, v41);
  sub_23BECFB74(a2, a2 + 784, -(v38 * 0.5), v38 * -0.866025404, v41);
  *(a2 + 736) = 0xC02921FB54442D18;
  *(a2 + 752) = xmmword_23BEED410;
  *(a2 + 768) = 0u;
  *(a2 + 744) = 0xFFFFFFFFLL;
  *(a2 + 704) = -(v38 * 0.5);
  *(a2 + 712) = v38 * -0.866025404;
  result = 0.0;
  *(a2 + 720) = xmmword_23BEED420;
  return result;
}

void sub_23BECFB74(uint64_t a1, uint64_t a2, long double a3, double a4, double a5)
{
  if (a5 > 0.0 && ((v9 = *(a1 + 528), v10 = sqrt(a4 * a4 + a3 * a3), v10 > 0.0) ? (v11 = v10 - a5 < v9) : (v11 = 0), v11))
  {
    v13 = a5 * a5 + v10 * v10 - v9 * v9;
    v14 = sqrt(a5 * a5 - v13 / (v10 + v10) * (v13 / (v10 + v10)));
    v15 = asin(v14 / v9);
    v16 = 3.14159265 - atan2(a3, -a4);
    v17 = v16 - v15;
    v22 = v15 + v16;
    v18 = fmod(v16 - v15, 0.104719755) / 0.104719755;
    v19 = asin(v14 / a5);
    v20 = __sincos_stret(v17);
    v21 = v19 + atan2(v9 * v20.__cosval - a4, v9 * v20.__sinval - a3) - v19 * 0.8;
    *(a2 + 24) = v17;
    *(a2 + 32) = v22;
    *(a2 + 48) = v21;
    *(a2 + 56) = v21 + v19 * 0.8 * 2.0;
    *(a2 + 64) = 1.0 - v18;
    *(a2 + 72) = (v19 * 0.8 + v19 * 0.8) / (v15 * 60.0 / 3.14159265);
    *(a2 + 40) = vcvtmd_u64_f64(v17 / 0.104719755);
    v12 = vcvtpd_u64_f64(v22 / 0.104719755);
  }

  else
  {
    v12 = 0;
    *(a2 + 24) = xmmword_23BEED410;
    *(a2 + 48) = xmmword_23BEED410;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 40) = -1;
  }

  *(a2 + 44) = v12;
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
}

id sub_23BECFD10(void *a1, void *a2, unint64_t a3)
{
  v6 = a1;
  v7 = a2;
  v10 = v7;
  if (a3 < 4)
  {
    v11 = v6;
LABEL_3:
    v3 = v11;
    goto LABEL_4;
  }

  if (a3 == 4)
  {
    v11 = objc_msgSend_clearColor(MEMORY[0x277D75348], v8, v9);
    goto LABEL_3;
  }

  if (a3 == 5)
  {
    v11 = v7;
    goto LABEL_3;
  }

LABEL_4:

  return v3;
}

double sub_23BECFDA0(double *a1, uint64_t a2)
{
  if (a2 <= 2)
  {
    if ((a2 - 1) >= 2)
    {
      if (a2)
      {
        return result;
      }

      return a1[51];
    }

    return a1[39];
  }

  switch(a2)
  {
    case 5:
      return a1[66] + a1[53] * 2.5;
    case 4:
      return a1[39];
    case 3:
      return a1[51];
  }

  return result;
}

void sub_23BECFDF8(CGContext *a1, CGColor *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  CGContextSetStrokeColorWithColor(a1, a2);
  CGContextSetLineWidth(a1, a7);
  CGContextMoveToPoint(a1, a3, a4);
  CGContextAddLineToPoint(a1, a5, a6);

  CGContextStrokePath(a1);
}

void sub_23BECFE88(CGContext *a1, CTLineRef line, int a3, double a4, double a5, double a6, CGFloat a7, double a8)
{
  GlyphRuns = CTLineGetGlyphRuns(line);
  Count = CFArrayGetCount(GlyphRuns);
  descent = 0.0;
  ascent[0] = 0.0;
  leading = 0.0;
  TypographicBounds = CTLineGetTypographicBounds(line, ascent, &descent, &leading);
  v19 = 1.0;
  if (a3)
  {
    v19 = a7 / (a7 + (ascent[0] + descent) * -0.5);
  }

  v41 = a7 * 6.28318531;
  v20 = (TypographicBounds * v19 / (a7 * 6.28318531) + TypographicBounds * v19 / (a7 * 6.28318531)) * 3.14159265;
  v21 = fmax(fmin(a8, 1.0), 0.0) * v20;
  v22 = a5 < a4;
  if (a4 >= a6)
  {
    v22 = 0;
  }

  if (a3)
  {
    v23 = a4 - v21;
    if (v22)
    {
      if (a8 <= 0.5)
      {
        v24 = v20 + v23;
        v25 = a6 - v20;
        if (v24 > a6)
        {
          v23 = v25;
        }

        if (v23 < a5)
        {
          v23 = a5;
        }
      }

      else
      {
        if (v23 < a5)
        {
          v23 = a5;
        }

        if (v20 + v23 > a6)
        {
          v23 = a6 - v20;
        }
      }
    }
  }

  else
  {
    v23 = v21 + a4;
    if (v22)
    {
      if (a8 <= 0.5)
      {
        v26 = v23 - v20;
        v27 = v20 + a5;
        if (v26 < a5)
        {
          v23 = v27;
        }

        if (v23 > a6)
        {
          v23 = a6;
        }
      }

      else
      {
        if (v23 > a6)
        {
          v23 = a6;
        }

        if (v23 - v20 < a5)
        {
          v23 = v20 + a5;
        }
      }
    }
  }

  if (Count >= 1)
  {
    v28 = 0;
    v29 = *MEMORY[0x277CC4838];
    v30 = (v19 + v19) * 3.14159265;
    if (a3)
    {
      a7 = -a7;
    }

    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, v28);
      Attributes = CTRunGetAttributes(ValueAtIndex);
      Value = CFDictionaryGetValue(Attributes, v29);
      GlyphCount = CTRunGetGlyphCount(ValueAtIndex);
      buffer.x = 0.0;
      buffer.y = 0.0;
      v49.location = 0;
      v49.length = 1;
      CTRunGetPositions(ValueAtIndex, v49, &buffer);
      if (GlyphCount >= 1)
      {
        for (i = 0; i != GlyphCount; ++i)
        {
          glyphs = 0;
          v43.x = 0.0;
          v43.y = 0.0;
          v50.location = i;
          v50.length = 1;
          CTRunGetGlyphs(ValueAtIndex, v50, &glyphs);
          v51.location = i;
          v51.length = 1;
          v36 = CTRunGetTypographicBounds(ValueAtIndex, v51, 0, 0, 0);
          v52.location = i;
          v52.length = 1;
          CTRunGetPositions(ValueAtIndex, v52, &v43);
          v37 = v30 * ((v36 * 0.5 + v43.x) / v41);
          v38 = v23 + v37 + -3.14159265;
          v39 = v23 - v37;
          if (a3)
          {
            v39 = v38;
          }

          positions.x = v36 * -0.5;
          positions.y = 0.0;
          if (fabs(v39) >= 0.02)
          {
            v40 = v39;
          }

          else
          {
            v40 = 0.0;
          }

          CGContextSaveGState(a1);
          CGContextRotateCTM(a1, v40);
          CGContextTranslateCTM(a1, 0.0, a7);
          CTFontDrawGlyphs(Value, &glyphs, &positions, 1uLL, a1);
          CGContextRestoreGState(a1);
        }
      }

      ++v28;
    }

    while (v28 != Count);
  }
}

void sub_23BED01D0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, double a5)
{
  if (a2 == a3 || fabs(a5) < 2.22044605e-16)
  {
    if (a2 != 2)
    {
      if (a2 != 1)
      {
        if (a2)
        {
          return;
        }

        goto LABEL_11;
      }

LABEL_13:
      *a4 = *(a1 + 784);
      v7 = *(a1 + 800);
      v8 = *(a1 + 816);
      v9 = *(a1 + 832);
      v10 = *(a1 + 848);
      goto LABEL_15;
    }

LABEL_14:
    *a4 = *(a1 + 864);
    v7 = *(a1 + 880);
    v8 = *(a1 + 896);
    v9 = *(a1 + 912);
    v10 = *(a1 + 928);
    goto LABEL_15;
  }

  if (fabs(a5 + -1.0) >= 2.22044605e-16)
  {
    v12 = 0.0;
    v13 = 0.0;
    v11 = 0.0;
    NTKCircularBezelViewHiVizComplicationCenterAndScaleFromHiVizStyleToHiVizStyle(a2, a3, &v12, &v11, *(a1 + 584), *(a1 + 592), a5);
    sub_23BECFB74(a1, a4, v12, v13, *(a1 + 616) * v11);
    return;
  }

  switch(a3)
  {
    case 2:
      goto LABEL_14;
    case 1:
      goto LABEL_13;
    case 0:
LABEL_11:
      *a4 = *(a1 + 704);
      v7 = *(a1 + 720);
      v8 = *(a1 + 736);
      v9 = *(a1 + 752);
      v10 = *(a1 + 768);
LABEL_15:
      a4[3] = v9;
      a4[4] = v10;
      a4[1] = v7;
      a4[2] = v8;
      break;
  }
}

void sub_23BED02E8(uint64_t a1, uint64_t a2, unsigned int a3, double *a4, double *a5)
{
  v9 = *(a2 + 40);
  if (v9 >= a3 || *(a2 + 44) <= a3)
  {
    v18 = 576;
    if (-858993459 * a3 < 0x33333334)
    {
      v18 = 568;
    }

    v19 = *(a1 + 528);
    v20 = v19 - *(a1 + v18);
    v21 = __sincos_stret(a3 * -0.104719755 + 1.57079633);
    v16 = v21.__cosval * v20;
    v17 = v21.__sinval * v20;
    *a4 = v21.__cosval * v19;
    a4[1] = v21.__sinval * v19;
    goto LABEL_12;
  }

  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = __sincos_stret(*(a2 + 48) + (*(a2 + 64) + (~v9 + a3)) * *(a2 + 72));
  if (a4)
  {
    v14 = 576;
    if (-858993459 * a3 < 0x33333334)
    {
      v14 = 568;
    }

    v15 = v12 + *(a1 + v14);
    *a4 = v10 + v15 * v13.__cosval;
    a4[1] = v11 + v15 * v13.__sinval;
  }

  if (a5)
  {
    v16 = v10 + v12 * v13.__cosval;
    v17 = v11 + v12 * v13.__sinval;
LABEL_12:
    *a5 = v16;
    a5[1] = v17;
  }
}

double sub_23BED041C(double *a1, unint64_t a2, char a3, double a4)
{
  CLKInterpolateBetweenFloatsClipped();
  v5 = 0.0;
  if (fabs(v4) >= 0.00000011920929)
  {
    v5 = v4;
    if (fabs(v4 + -1.0) < 0.00000011920929)
    {
      return 1.0;
    }
  }

  return v5;
}

void sub_23BED0510(CGContext *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, unsigned int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, unsigned __int8 a17, void *a18, void *a19, void *a20, char a21, void *a22, void *a23)
{
  v35 = a17;
  v175 = a3;
  v36 = a6;
  v37 = a7;
  v38 = a18;
  v39 = a19;
  v176 = a20;
  v174 = a22;
  v40 = a23;
  v43 = objc_msgSend_blackColor(MEMORY[0x277D75348], v41, v42);
  if (a15 >= 1.0 || a16 <= 0.0 || fabs(a16) < 2.22044605e-16 || fabs(a15 + -1.0) < 2.22044605e-16)
  {
    goto LABEL_88;
  }

  v158 = v40;
  v164 = v39;
  v44 = v175;
  v160 = v36;
  v45 = v36;
  v46 = v37;
  v47 = v45;
  v167 = v46;
  v48 = v46;
  v49 = v38;
  v165 = v44;
  v157 = v38;
  if (a4 == a5)
  {
    if (v47 == v48)
    {
      if (a12 <= 0.5)
      {
        v75 = v47;
      }

      else
      {
        v75 = v48;
      }

      if (a8 == a17)
      {
        if (a13 <= 0.5)
        {
          v152 = a8;
        }

        else
        {
          v152 = a17;
        }

        v51 = sub_23BED1274(v44, a4, v75, v49, v152);
        a11 = 1.0;
        v50 = v51;
      }

      else
      {
        v76 = v75;
        v50 = sub_23BED1274(v44, a4, v76, v49, a8);
        v51 = sub_23BED1274(v44, a4, v76, v49, a17);

        a11 = a13;
      }
    }

    else
    {
      if (a13 <= 0.5)
      {
        v35 = a8;
      }

      v50 = sub_23BED1274(v44, a4, v47, v49, v35);
      v51 = sub_23BED1274(v44, a4, v48, v49, v35);
      a11 = a12;
    }
  }

  else
  {
    if (a12 <= 0.5)
    {
      v52 = v47;
    }

    else
    {
      v52 = v48;
    }

    if (a13 <= 0.5)
    {
      v35 = a8;
    }

    v53 = v52;
    v50 = sub_23BED1274(v44, a4, v53, v49, v35);
    v51 = sub_23BED1274(v44, a5, v53, v49, v35);
  }

  v161 = v51 - 1;
  if (v51 == 1 || v50 == 1)
  {
    v56 = objc_msgSend_glyphColor(v44, v54, v55);
    v163 = sub_23BECC594(v56, v176, a21, v43, a15, a14);
  }

  else
  {
    v163 = 0;
  }

  v40 = v158;
  v36 = v160;
  v37 = v167;
  v39 = v164;
  if (v50 <= 5 && ((1 << v50) & 0x36) != 0 || (v169 = 0, v51 <= 5) && ((1 << v51) & 0x36) != 0)
  {
    v57 = objc_msgSend_fillColor(v165, v54, v55);
    v169 = sub_23BECC594(v57, v176, a21, v164, a15, a14);

    v37 = v167;
  }

  if (v50 != v51)
  {
    v66 = sub_23BED10E0(v50, v169, v43, v158);
    v154 = sub_23BED10E0(v51, v169, v43, v158);
    v155 = v66;
    v64 = MEMORY[0x23EEC10C0](v66, a11);
    CLKInterpolateBetweenFloatsClipped();
    v59 = 0.0;
    if (fabs(v67) >= 0.00000011920929)
    {
      v59 = v67;
      if (fabs(v67 + -1.0) < 0.00000011920929)
      {
        v59 = 1.0;
      }
    }

    v68 = sub_23BED11B4(v50, v163, v169, v43);
    v69 = sub_23BED11B4(v51, v163, v169, v43);
    v153 = v68;
    v65 = MEMORY[0x23EEC10C0](v68, v69, a11);
    v61 = 0.0;
    CLKInterpolateBetweenFloatsClipped();
    v62 = a1;
    if (fabs(v70) >= 0.00000011920929)
    {
      v61 = v70;
      if (fabs(v70 + -1.0) < 0.00000011920929)
      {
        v61 = 1.0;
      }
    }

    CLKInterpolateBetweenFloatsClipped();
    v159 = 0.0;
    if (fabs(v71) >= 0.00000011920929)
    {
      v159 = v71;
      if (fabs(v71 + -1.0) < 0.00000011920929)
      {
        v159 = 1.0;
      }
    }

    v72 = 0.0;
    CLKInterpolateBetweenFloatsClipped();
    v37 = v167;
    if (fabs(v73) >= 0.00000011920929)
    {
      v72 = v73;
      if (fabs(v73 + -1.0) < 0.00000011920929)
      {
        v72 = 1.0;
      }
    }

    CLKInterpolateBetweenFloatsClipped();
    v170 = 0.0;
    if (fabs(v74) >= 0.00000011920929)
    {
      v170 = v74;
      if (fabs(v74 + -1.0) < 0.00000011920929)
      {
        v170 = 1.0;
      }
    }

    CLKInterpolateBetweenFloatsClipped();

    v38 = v157;
    v39 = v164;
    goto LABEL_61;
  }

  v58 = sub_23BED10E0(v51, v169, v43, v158);
  v159 = 0.0;
  if (v161 >= 5)
  {
    v59 = 0.0;
  }

  else
  {
    v59 = 1.0;
  }

  v60 = sub_23BED11B4(v51, v163, v169, v43);
  v61 = 0.0;
  if (v161 <= 4)
  {
    v61 = dbl_23BEED6B0[v161];
  }

  v38 = v157;
  v62 = a1;
  if (v161 < 4)
  {
    v63 = 456;
    v64 = v58;
    v36 = v160;
    v65 = v60;
LABEL_57:
    v72 = *(a2 + v63);
    goto LABEL_58;
  }

  v72 = 0.0;
  v64 = v58;
  v36 = v160;
  v65 = v60;
  if (v51 == 5)
  {
    v159 = *(a2 + 520);
    v63 = 512;
    goto LABEL_57;
  }

LABEL_58:
  v170 = 0.0;
  if (v51 <= 4 && ((1 << v51) & 0x1A) != 0)
  {
    v170 = *(a2 + 472);
  }

LABEL_61:
  v79 = v43;
  v80 = a15 <= 0.0;
  v81 = fmax(fmin(1.0 - a15, 1.0), 0.0);
  v82 = v81 * v61;
  if (a15 > 0.0)
  {
    v83 = v81;
  }

  else
  {
    v82 = v61;
    v83 = 1.0;
  }

  if (v80)
  {
    v84 = v59;
  }

  else
  {
    v84 = v81 * v59;
  }

  if (a16 >= 1.0)
  {
    v85 = v82;
  }

  else
  {
    v85 = v82 * a16;
  }

  v86 = fmin(a16, 1.0);
  if (a16 < 1.0)
  {
    v84 = v84 * a16;
  }

  v87 = a9 - v72;
  v88 = a10 - v72;
  v89 = v72 + v72;
  if (v84 > 0.0)
  {
    if (v84 < 1.0)
    {
      v90 = objc_msgSend_colorWithAlphaComponent_(v64, v77, v78);

      v64 = v90;
      v39 = v164;
    }

    v91 = v64;
    v94 = objc_msgSend_CGColor(v91, v92, v93);
    CGContextSetFillColorWithColor(v62, v94);
    v178.origin.x = v87;
    v178.origin.y = a10 - v72;
    v178.size.width = v72 + v72;
    v178.size.height = v72 + v72;
    CGContextFillEllipseInRect(v62, v178);
  }

  v95 = v86 * v83;
  if (v85 > 0.0)
  {
    v96 = v65;
    v99 = v96;
    if (v85 < 1.0)
    {
      v100 = objc_msgSend_colorWithAlphaComponent_(v96, v97, v98, v85);

      v99 = v100;
    }

    v156 = v86 * v83;
    v162 = v64;
    v173 = v88;
    v101 = v65;
    if (v159 > 0.0)
    {
      v179.origin.x = v87;
      v179.origin.y = v88;
      v179.size.width = v89;
      v179.size.height = v89;
      v180 = CGRectInset(v179, v159 * -0.5, v159 * -0.5);
      x = v180.origin.x;
      y = v180.origin.y;
      width = v180.size.width;
      height = v180.size.height;
      v106 = v99;
      v109 = objc_msgSend_CGColor(v106, v107, v108);
      CGContextSetStrokeColorWithColor(v62, v109);
      CGContextSetLineWidth(v62, v159);
      v181.origin.x = x;
      v181.origin.y = y;
      v88 = v173;
      v181.size.width = width;
      v181.size.height = height;
      CGContextStrokeEllipseInRect(v62, v181);
    }

    v110 = v99;
    v111 = v165;
    objc_msgSend_adjustDrawRect_(v111, v112, v113, v87, v88, v89, v89);
    v115 = v114;
    v117 = v116;
    v119 = v118;
    v166 = v87;
    v121 = v120;
    v124 = objc_msgSend_glyphImage(v111, v122, v123);

    objc_msgSend_size(v124, v125, v126);
    v128 = v127;
    v130 = v129;
    v182.origin.x = v115;
    v182.origin.y = v117;
    v182.size.width = v119;
    v182.size.height = v121;
    MidX = CGRectGetMidX(v182);
    v183.origin.x = v115;
    v183.origin.y = v117;
    v183.size.width = v119;
    v183.size.height = v121;
    v132 = CGRectGetMidY(v183) - v130 * 0.5;
    CGContextSaveGState(v62);
    v133 = v110;
    v136 = objc_msgSend_CGColor(v133, v134, v135);

    CGContextSetFillColorWithColor(v62, v136);
    v137 = v124;
    v140 = objc_msgSend_CGImage(v137, v138, v139);
    v184.origin.x = MidX - v128 * 0.5;
    v184.origin.y = v132;
    v184.size.width = v128;
    v184.size.height = v130;
    CGContextClipToMask(v62, v184, v140);
    v185.origin.x = MidX - v128 * 0.5;
    v185.origin.y = v132;
    v87 = v166;
    v185.size.width = v128;
    v185.size.height = v130;
    v88 = v173;
    CGContextFillRect(v62, v185);
    CGContextRestoreGState(v62);

    v37 = v167;
    v39 = v164;
    v65 = v101;
    v64 = v162;
    v95 = v156;
  }

  if (v95 > 0.0 && v170 > 0.0)
  {
    v186.origin.x = v87;
    v186.origin.y = v88;
    v186.size.width = v89;
    v186.size.height = v89;
    v187 = CGRectInset(v186, -(v170 * 0.5 + v159), -(v170 * 0.5 + v159));
    v143 = v187.origin.x;
    v144 = v187.origin.y;
    v145 = v187.size.width;
    v146 = v187.size.height;
    if (v95 < 1.0)
    {
      v147 = objc_msgSend_colorWithAlphaComponent_(v79, v141, v142, v95);

      v79 = v147;
      v39 = v164;
    }

    v148 = v79;
    v151 = objc_msgSend_CGColor(v148, v149, v150);
    CGContextSetStrokeColorWithColor(v62, v151);
    CGContextSetLineWidth(v62, v170);
    v188.origin.x = v143;
    v188.origin.y = v144;
    v188.size.width = v145;
    v188.size.height = v146;
    CGContextStrokeEllipseInRect(v62, v188);
  }

LABEL_88:
}

id sub_23BED10E0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v13 = v10;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v14 = v10;
      goto LABEL_13;
    }

    if (a1 != 4)
    {
      if (a1 != 5)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

LABEL_10:
    v14 = v8;
    goto LABEL_13;
  }

  switch(a1)
  {
    case 0:
      v14 = objc_msgSend_clearColor(MEMORY[0x277D75348], v11, v12);
      goto LABEL_13;
    case 1:
      goto LABEL_10;
    case 2:
LABEL_9:
      v14 = v9;
LABEL_13:
      v4 = v14;
      break;
  }

LABEL_14:

  return v4;
}

id sub_23BED11B4(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v11 = a4;
  if (a1 <= 5)
  {
    if (((1 << a1) & 0x19) != 0)
    {
      v12 = objc_msgSend_clearColor(MEMORY[0x277D75348], v9, v10);
    }

    else if (((1 << a1) & 0x24) != 0)
    {
      v12 = v8;
    }

    else
    {
      v12 = v7;
    }

    a1 = v12;
  }

  return a1;
}

uint64_t sub_23BED1274(void *a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = 4;
  if (!a5)
  {
    v12 = 0;
  }

  if (v9 == v10)
  {
    v12 = 5;
  }

  v13 = 5;
  if (v9 != v10)
  {
    v13 = 0;
  }

  if (a2 != 3)
  {
    v13 = 0;
  }

  if (a2 != 2)
  {
    v12 = v13;
  }

  v14 = a5;
  if (v9 == v11)
  {
    v14 = 2;
  }

  v15 = 3;
  if (a5)
  {
    v15 = 1;
  }

  if (a2 != 1)
  {
    v15 = 0;
  }

  if (a2)
  {
    v14 = v15;
  }

  if (a2 <= 1)
  {
    v16 = v14;
  }

  else
  {
    v16 = v12;
  }

  return v16;
}

void sub_23BED1338(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v22 = v3;
  v7 = objc_msgSend_waypointLocation(v3, v5, v6);
  objc_msgSend_ntk_bearingTo_(v4, v8, v7);
  v10 = v9;

    ;
  }

  while (i < -3.14159265)
  {
    i = i + 6.28318531;
  }

  v14 = 1.57079633 - i;
  v15 = *(a1 + 32);
  v16 = objc_msgSend_waypointLocation(v22, v11, v12);
  objc_msgSend_distanceFromLocation_(v15, v17, v16);
  v19 = v18;

  v20 = *(a1 + 104);
  v21 = __sincos_stret(v14);
  sub_23BED0510(*(a1 + 128), *(a1 + 136), v22, *(a1 + 144), *(a1 + 152), *(a1 + 40), *(a1 + 48), v19 <= *(a1 + 112), v21.__cosval * v20, v21.__sinval * v20, *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 184), *(a1 + 192), *(a1 + 200), v19 <= *(a1 + 120), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 208), *(a1 + 80), *(a1 + 88));
}

uint64_t sub_23BED18B0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a4;
  v6 = a3;
  objc_msgSend_coordinate(v6, v7, v8);
  v10 = v9;
  objc_msgSend_coordinate(v6, v11, v12);
  v14 = v13;

  objc_msgSend_coordinate(v5, v15, v16);
  v18 = v17;
  objc_msgSend_coordinate(v5, v19, v20);
  v22 = v21;

  v23.n128_u64[0] = v10;
  v24.n128_u64[0] = v14;
  v25.n128_u64[0] = v18;
  v26.n128_u64[0] = v22;

  return MEMORY[0x282167068](v23, v24, v25, v26);
}

double sub_23BED1944(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_opt_class();
  objc_msgSend_ntk_bearingFrom_to_(v5, v6, a1, v4);
  v8 = v7;

  return v8;
}

double ntk_CLLocationCalculateDistance(double a1, double a2, double a3, double a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 0.0;
  }

  GEOCalculateDistance();
  return result;
}

double ntk_CLLocationCoordinate2DDistanceToCoordinate(double a1, double a2, double a3, double a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 0.0;
  }

  GEOCalculateDistance();
  return result;
}

double sub_23BED19C4(double a1, double a2, double a3, double a4)
{
  GEOCoordinate2DAlongBearing();

  *&result = *&CLLocationCoordinate2DMake(v4, v5);
  return result;
}

uint64_t sub_23BED1A04(void *a1, uint64_t a2)
{
  v3 = objc_opt_class();
  objc_msgSend_coordinate(a1, v4, v5);

  return MEMORY[0x2821F9670](v3, sel_ntk_coordinateAtDistance_bearing_fromCoordinate_, v6);
}

id sub_23BED1A68(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_ntk_coordinateAtDistance_bearing_(a1, a2, a3);
  v4 = v3;
  v6 = v5;
  v7 = objc_alloc(MEMORY[0x277CE41F8]);
  v10 = objc_msgSend_initWithLatitude_longitude_(v7, v8, v9, v4, v6);

  return v10;
}

uint64_t sub_23BED1AB8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v9 = v6;
  if (v5 == v6)
  {
    goto LABEL_12;
  }

  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_13;
  }

  objc_msgSend_coordinate(v5, v7, v8);
  v11 = v10;
  v13 = v12;
  objc_msgSend_coordinate(v9, v14, v15);
  v17 = v16;
  v19 = v18;
  v35.latitude = v11;
  v35.longitude = v13;
  v20 = CLLocationCoordinate2DIsValid(v35);
  v36.latitude = v17;
  v36.longitude = v19;
  v21 = CLLocationCoordinate2DIsValid(v36);
  if (v20 != v21)
  {
    goto LABEL_13;
  }

  v24 = v21;
  objc_msgSend_horizontalAccuracy(v5, v22, v23);
  v26 = v25;
  objc_msgSend_horizontalAccuracy(v9, v27, v28);
  if (v26 < 0.0 == v29 >= 0.0)
  {
    goto LABEL_13;
  }

  v30 = v29;
  v31 = v24 ^ 1;
  if (v29 < 0.0)
  {
    v31 = 1;
  }

  if (v31)
  {
    goto LABEL_12;
  }

  if (v11 != v17 || (v32 = 0.0, v13 != v19))
  {
    GEOCalculateDistance();
  }

  if (v32 <= (v26 + v30) * 0.5)
  {
LABEL_12:
    v33 = 0;
  }

  else
  {
LABEL_13:
    v33 = 1;
  }

  return v33;
}

uint64_t sub_23BED1C04(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_opt_class();
  v7 = objc_msgSend_ntk_location_significantlyDiffersFromLocation_(v5, v6, a1, v4);

  return v7;
}

double sub_23BED2200(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&unk_27E1DF4C0);
  if (qword_27E1DF4C8)
  {
    v6 = qword_27E1DF4C8 == v3;
  }

  else
  {
    v6 = 0;
  }

  if (v6 && objc_msgSend_version(v3, v4, v5) == qword_27E1DF4D0)
  {
    v7 = qword_27E1DF4B0;
  }

  else
  {
    qword_27E1DF4C8 = v3;
    qword_27E1DF4D0 = objc_msgSend_version(v3, v4, v5);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_23BED2324;
    v10[3] = &unk_278BA1288;
    v10[4] = *(a1 + 32);
    v7 = sub_23BED2324(v10, v3);
    qword_27E1DF4B0 = v7;
    qword_27E1DF4B8 = v8;
  }

  os_unfair_lock_unlock(&unk_27E1DF4C0);

  return *&v7;
}

double sub_23BED2324(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_metricsWithDevice_identitySizeClass_(MEMORY[0x277CBBAF8], a2, a2, *(a1 + 32));
  objc_msgSend_scaledValue_(v2, v3, v4, 37.5);
  v6 = v5;
  objc_msgSend_scaledValue_(v2, v7, v8, 24.5);

  return v6;
}

void sub_23BED25C4(uint64_t a1, const char *a2)
{
  v5[6] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_284EB74E0;
  v4[1] = &unk_284EB74F8;
  v5[0] = @"none";
  v5[1] = @"seconds";
  v4[2] = &unk_284EB7540;
  v4[3] = &unk_284EB7510;
  v5[2] = @"compass";
  v5[3] = @"depth";
  v4[4] = &unk_284EB7528;
  v4[5] = &unk_284EB7558;
  v5[4] = @"elevation";
  v5[5] = @"harmonia";
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 6);
  v3 = qword_27E1DF4D8;
  qword_27E1DF4D8 = v2;
}

id sub_23BED31A8(double a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_blackColor(MEMORY[0x277D75348], v8, v9);
  v23 = 0.0;
  v24 = 0.0;
  objc_msgSend_getRed_green_blue_alpha_(v6, v11, 0, 0, 0, &v24);
  objc_msgSend_getRed_green_blue_alpha_(v7, v12, 0, 0, 0, &v23);
  if (v24 != 1.0 || v23 != 1.0)
  {
    v16 = objc_msgSend_colorWithAlphaComponent_(v10, v13, v14, (v24 + v23) * 0.5);

    v10 = v16;
  }

  v17 = 1.0 - fmin(a1 / 0.6, 1.0);
  v18 = a1 + -0.4;
  if (a1 + -0.4 < 0.0)
  {
    v18 = 0.0;
  }

  v19 = 1.0 - v17 - v18 / 0.6;
  v20 = MEMORY[0x23EEC10C0](v6, v7, v18 / 0.6 / (v17 + v18 / 0.6));
  v21 = MEMORY[0x23EEC10C0](v20, v10, v19);

  return v21;
}

uint64_t sub_23BED3BAC(void *a1, const char *a2, _OWORD *a3)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a3[1];
  v8[0] = *a3;
  v8[1] = v6;
  v8[2] = a3[2];
  return objc_msgSend__applyComplicationLayoutRuleForDevice_frame_transform_slot_states_(v3, a2, v4, v8, a2, v5);
}

uint64_t sub_23BED3D04(void *a1, const char *a2, _OWORD *a3)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a3[1];
  v8[0] = *a3;
  v8[1] = v6;
  v8[2] = a3[2];
  return objc_msgSend__applyComplicationLayoutRuleForDevice_frame_transform_slot_states_(v3, a2, v4, v8, a2, v5);
}

void sub_23BED4994(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = objc_opt_class();
  if (objc_msgSend__isHiVizComplicationSlot_(v6, v7, v16))
  {
    v10 = 40;
  }

  else
  {
    v11 = objc_opt_class();
    if (objc_msgSend__isLowerRightComplicationSlot_(v11, v12, v16))
    {
      v10 = 48;
    }

    else
    {
      v13 = objc_opt_class();
      isLowerLeftComplicationSlot = objc_msgSend__isLowerLeftComplicationSlot_(v13, v14, v16);
      v10 = 64;
      if (isLowerLeftComplicationSlot)
      {
        v10 = 56;
      }
    }
  }

  objc_msgSend_setAlpha_(v5, v8, v9, *(a1 + v10));
}

void sub_23BED5654(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = objc_opt_class();
  if (objc_msgSend__isHiVizComplicationSlot_(v6, v7, v14))
  {
    v9 = 0;
LABEL_7:
    objc_msgSend_setHidden_(v5, v8, *(a1 + 40) == v9);
    goto LABEL_8;
  }

  v10 = objc_opt_class();
  if (objc_msgSend__isLowerRightComplicationSlot_(v10, v11, v14))
  {
    v9 = 2;
    goto LABEL_7;
  }

  v12 = objc_opt_class();
  if (objc_msgSend__isLowerLeftComplicationSlot_(v12, v13, v14))
  {
    v9 = 1;
    goto LABEL_7;
  }

  objc_msgSend_setHidden_(v5, v8, 0);
LABEL_8:
}

void sub_23BED5944(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a2;
  v12 = objc_opt_class();
  isHiVizComplicationSlot = objc_msgSend__isHiVizComplicationSlot_(v12, v13, v11);

  if (isHiVizComplicationSlot && a1[5])
  {
    v15 = a1[6];
    v16 = a3;
    v17 = a4;
    v18 = a5;
    v19 = a6;

    CGContextFillEllipseInRect(v15, *&v16);
  }
}

uint64_t sub_23BED5BE8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_CGContext(a2, a2, a3);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  CGContextSetRGBFillColor(v4, 0.0666666667, 0.0666666667, 0.0666666667, 1.0);
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = v5;
  v15.size.height = v6;
  CGContextFillRect(v4, v15);
  objc_msgSend_drawSnapshotInContext_hiVizComplicationStyle_colorPalette_poiFilter_forDevice_(NTKCircularBezelView, v7, v4, *(a1 + 80), *(a1 + 32), *(a1 + 40), *(a1 + 48));
  v10 = objc_msgSend_timeStyle(*(a1 + 56), v8, v9);
  objc_msgSend_drawSnapshotInContext_timeStyle_colorPalette_forDevice_(NTKLeghornTimeView, v11, v4, v10, *(a1 + 32), *(a1 + 48));
  v12 = *(a1 + 88);

  return MEMORY[0x2821F9670](v12, sel__drawComplicationsSnapshotInContext_hiVizStyle_forDevice_, v4);
}

void sub_23BED6564(void *a1@<X1>, uint64_t a2@<X8>)
{
  v11 = a1;
  os_unfair_lock_lock(&unk_27E1DF590);
  if (qword_27E1DF598)
  {
    v5 = qword_27E1DF598 == v11;
  }

  else
  {
    v5 = 0;
  }

  if (!v5 || objc_msgSend_version(v11, v3, v4) != qword_27E1DF5A0)
  {
    qword_27E1DF598 = v11;
    qword_27E1DF5A0 = objc_msgSend_version(v11, v3, v4, v11);
    sub_23BED6690(v11, v12);
    xmmword_27E1DF568 = v12[8];
    unk_27E1DF578 = v12[9];
    qword_27E1DF588 = v13;
    xmmword_27E1DF528 = v12[4];
    unk_27E1DF538 = v12[5];
    xmmword_27E1DF548 = v12[6];
    unk_27E1DF558 = v12[7];
    xmmword_27E1DF4E8 = v12[0];
    unk_27E1DF4F8 = v12[1];
    xmmword_27E1DF508 = v12[2];
    unk_27E1DF518 = v12[3];
  }

  v6 = unk_27E1DF578;
  *(a2 + 128) = xmmword_27E1DF568;
  *(a2 + 144) = v6;
  *(a2 + 160) = qword_27E1DF588;
  v7 = unk_27E1DF538;
  *(a2 + 64) = xmmword_27E1DF528;
  *(a2 + 80) = v7;
  v8 = unk_27E1DF558;
  *(a2 + 96) = xmmword_27E1DF548;
  *(a2 + 112) = v8;
  v9 = unk_27E1DF4F8;
  *a2 = xmmword_27E1DF4E8;
  *(a2 + 16) = v9;
  v10 = unk_27E1DF518;
  *(a2 + 32) = xmmword_27E1DF508;
  *(a2 + 48) = v10;
  os_unfair_lock_unlock(&unk_27E1DF590);
}

void sub_23BED6690(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  v6 = objc_msgSend_sizeClass(v3, v4, v5);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v60 = 0;
  v58 = 0.0;
  v59 = 0uLL;
  NTKCircularBezelViewDimensionForDevice(v3, &v60, &v59, &v58);
  CDGraphicExtraLargeComplicationContentDiameter();
  v8 = v7;
  v9 = v58;
  v11 = objc_msgSend_metricsWithDevice_identitySizeClass_(MEMORY[0x277CBBAF8], v10, v3, 6);

  objc_msgSend_setRoundingBehavior_(v11, v12, 0);
  objc_msgSend_scaledValue_(v11, v13, v14, 0.9);
  v57 = v15;
  objc_msgSend_scaledValue_(v11, v16, v17, 0.99);
  v56 = v18;
  objc_msgSend_scaledValue_(v11, v19, v20, 0.9);
  v55 = v21;
  objc_msgSend_scaledValue_(v11, v22, v23, 106.0);
  v54 = v24;
  objc_msgSend_scaledValue_(v11, v25, v26, 8.0);
  v53 = v27;
  objc_msgSend_scaledValue_(v11, v28, v29, 17.0);
  v52 = v30;
  objc_msgSend_scaledValue_(v11, v31, v32, 10.0);
  v34 = v33;
  objc_msgSend_scaledValue_(v11, v35, v36, 4.0);
  v38 = v37;
  objc_msgSend_scaledValue_(v11, v39, v40, 4.875);
  v42 = v41;
  objc_msgSend_scaledValue_(v11, v43, v44, 3.0);
  v46 = v45;
  v47 = dbl_23BEED750[v6 == 9] * v9;
  v48 = (v47 + v47) / v8;
  v49 = v60;
  *(a2 + 120) = v59;
  v50 = v58;
  if (v6 == 9)
  {
    v51 = 0.6325;
  }

  else
  {
    v51 = 0.625;
  }

  *a2 = v57;
  *(a2 + 8) = v56;
  *(a2 + 16) = v55;
  *(a2 + 24) = v54;
  *(a2 + 32) = v53;
  *(a2 + 40) = v52;
  *(a2 + 48) = v34;
  *(a2 + 56) = v38;
  *(a2 + 64) = v42;
  *(a2 + 72) = v46;
  *(a2 + 80) = xmmword_23BEED760;
  *(a2 + 112) = v49;
  *(a2 + 136) = v50;
  *(a2 + 144) = v48;
  *(a2 + 152) = 0x4010000000000000;
  *(a2 + 160) = v51;
}

void sub_23BED6D50(uint64_t a1, void *a2, uint64_t a3)
{
  v66[5] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = 0;
  if (a3 <= 2)
  {
    if (!a3)
    {
      v22 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v4, 4, 4000);
      v66[0] = v22;
      v24 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v23, 11, 9000);
      v66[1] = v24;
      v26 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v25, 2, 4000);
      v66[2] = v26;
      v28 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v27, 7, 4000);
      v66[3] = v28;
      v30 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v29, 1, 9000);
      v66[4] = v30;
      v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v31, v66, 5);
      objc_msgSend_setCurationPlacements_(v6, v33, v32);

      v7 = 0;
      v8 = 0;
      v9 = 0;
LABEL_24:

      goto LABEL_25;
    }

    if (a3 == 1)
    {
      v7 = objc_msgSend_depthComplication(MEMORY[0x277D2BFB0], v4, v5);
      v8 = objc_msgSend_waterTemperatureComplication(MEMORY[0x277D2BFB0], v40, v41);
      v60 = objc_msgSend_swellComplication(MEMORY[0x277D2BFB0], v42, v43);
      v15 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v44, 4, 4000);
      v9 = 0;
      v65 = v15;
      v16 = &v65;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      if (a3 != 2)
      {
        goto LABEL_25;
      }

      v7 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v4, 10);
      v8 = objc_msgSend_elevationInclineComplication(MEMORY[0x277D2BFB0], v10, v11);
      v60 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v12, 44);
      v15 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v13, 4, 4000);
      v9 = 0;
      v64 = v15;
      v16 = &v64;
    }

    goto LABEL_15;
  }

  if (a3 == 3)
  {
    v7 = objc_msgSend_humidityComplication(MEMORY[0x277D2BFB0], v4, v5);
    v8 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v34, 36);
    v9 = objc_msgSend_timerComplicationWithDuration_(MEMORY[0x277D2BFB0], v35, v36, 900.0);
    v60 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v37, 7);
    v15 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v38, 4, 4000);
    v63 = v15;
    v16 = &v63;
LABEL_12:
    v39 = 3;
    goto LABEL_16;
  }

  if (a3 != 4)
  {
    v8 = 0;
    v9 = 0;
    if (a3 != 5)
    {
      goto LABEL_25;
    }

    v7 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v4, 7);
    v8 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v17, 10);
    v9 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v18, 19);
    v60 = objc_msgSend_vitalsComplication(MEMORY[0x277D2BFB0], v19, v20);
    v15 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v21, 4, 4000);
    v61 = v15;
    v16 = &v61;
    goto LABEL_12;
  }

  v7 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v4, 1);
  v8 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v45, 10);
  v9 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v46, 4);
  v60 = objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v47, 5);
  v15 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v48, 4, 4000);
  v62 = v15;
  v16 = &v62;
LABEL_15:
  v39 = 2;
LABEL_16:
  v49 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v14, 11, 4000);
  v16[1] = v49;
  v51 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v50, v39, 4000);
  v16[2] = v51;
  v53 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v52, 7, 4000);
  v16[3] = v53;
  v55 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v54, 1, 4000);
  v16[4] = v55;
  v57 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v56, v16, 5);
  objc_msgSend_setCurationPlacements_(v6, v58, v57);

  if (v7)
  {
    objc_msgSend_setComplication_forSlot_(v6, v59, v7, *MEMORY[0x277D2BF08]);
  }

  v22 = v60;
  if (v8)
  {
    objc_msgSend_setComplication_forSlot_(v6, v59, v8, *MEMORY[0x277D2BF10]);
  }

  if (v9)
  {
    objc_msgSend_setComplication_forSlot_(v6, v59, v9, *MEMORY[0x277D2BEE0]);
  }

  if (v60)
  {
    objc_msgSend_setComplication_forSlot_(v6, v59, v60, *MEMORY[0x277D2BEF0]);
    goto LABEL_24;
  }

LABEL_25:
}

id _complicationOrDie(void *a1)
{
  v1 = a1;
  v4 = v1;
  if (v1)
  {
    v5 = v1;
  }

  else
  {
    v5 = objc_msgSend_nullComplication(MEMORY[0x277D2BFB0], v2, v3);
  }

  v6 = v5;

  return v6;
}

void sub_23BED74DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23BED7500(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = objc_msgSend_updateHandler(WeakRetained, v6, v7);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 16))(v9, v8, *(a3 + 32) + *(a3 + 24));
    }
  }
}

void sub_23BED7FC4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

id sub_23BED7FE4(uint64_t a1)
{
  if (qword_27E1DF5B8 != -1)
  {
    sub_23BEE7330();
  }

  v2 = qword_27E1DF5B0;

  return v2;
}

void sub_23BED8028(uint64_t a1, const char *a2, uint64_t a3)
{
  v14[3] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_systemFontOfSize_weight_(MEMORY[0x277CBBB08], a2, a3, 10.0, *MEMORY[0x277D74420]);
  v6 = objc_msgSend_fontDescriptor(v3, v4, v5);
  v7 = *MEMORY[0x277CC4918];
  v13[0] = *MEMORY[0x277D74338];
  v13[1] = v7;
  v14[0] = MEMORY[0x277CBEBF8];
  v14[1] = &unk_284EB7230;
  v13[2] = *MEMORY[0x277CC4988];
  v14[2] = &unk_284EB7750;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v14, v13, 3);
  v11 = objc_msgSend_fontDescriptorByAddingAttributes_(v6, v10, v9);
  v12 = qword_27E1DF5B0;
  qword_27E1DF5B0 = v11;
}

id sub_23BED8148(uint64_t a1)
{
  if (qword_27E1DF5C8 != -1)
  {
    sub_23BEE7344();
  }

  v2 = qword_27E1DF5C0;

  return v2;
}

void sub_23BED818C(uint64_t a1, const char *a2, uint64_t a3)
{
  v14[3] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_monospacedDigitSystemFontOfSize_weight_(MEMORY[0x277CBBB08], a2, a3, 10.0, *MEMORY[0x277D74420]);
  v6 = objc_msgSend_fontDescriptor(v3, v4, v5);
  v7 = *MEMORY[0x277CC4918];
  v13[0] = *MEMORY[0x277D74338];
  v13[1] = v7;
  v14[0] = MEMORY[0x277CBEBF8];
  v14[1] = &unk_284EB7230;
  v13[2] = *MEMORY[0x277CC4988];
  v14[2] = &unk_284EB7750;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v14, v13, 3);
  v11 = objc_msgSend_fontDescriptorByAddingAttributes_(v6, v10, v9);
  v12 = qword_27E1DF5C0;
  qword_27E1DF5C0 = v11;
}

id sub_23BED82AC(uint64_t a1, uint64_t a2, double a3)
{
  v4 = MEMORY[0x277CBBB08];
  v5 = objc_opt_class();
  v8 = objc_msgSend__foghornFontDescriptor(v5, v6, v7);
  v10 = objc_msgSend_fontWithDescriptor_size_(v4, v9, v8, a3);

  return v10;
}

id sub_23BED831C(uint64_t a1)
{
  if (qword_27E1DF5D8 != -1)
  {
    sub_23BEE7358();
  }

  v2 = qword_27E1DF5D0;

  return v2;
}

void sub_23BED8360(uint64_t a1, const char *a2, uint64_t a3)
{
  v14[3] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_systemFontOfSize_weight_(MEMORY[0x277CBBB08], a2, a3, 10.0, *MEMORY[0x277D74420]);
  v6 = objc_msgSend_fontDescriptor(v3, v4, v5);
  v7 = *MEMORY[0x277CC4918];
  v13[0] = *MEMORY[0x277D74338];
  v13[1] = v7;
  v14[0] = MEMORY[0x277CBEBF8];
  v14[1] = &unk_284EB7230;
  v13[2] = *MEMORY[0x277CC4988];
  v14[2] = &unk_284EB7750;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v14, v13, 3);
  v11 = objc_msgSend_fontDescriptorByAddingAttributes_(v6, v10, v9);
  v12 = qword_27E1DF5D0;
  qword_27E1DF5D0 = v11;
}

id sub_23BED8480(uint64_t a1, uint64_t a2, double a3)
{
  v4 = MEMORY[0x277CBBB08];
  v5 = objc_opt_class();
  v8 = objc_msgSend__foghornSimpleComplicationFontDescriptor(v5, v6, v7);
  v10 = objc_msgSend_fontWithDescriptor_size_(v4, v9, v8, a3);

  return v10;
}

id sub_23BED8514(uint64_t a1, uint64_t a2, double a3)
{
  v4 = MEMORY[0x277CBBB08];
  v5 = objc_opt_class();
  v8 = objc_msgSend__foghornFontDescriptor(v5, v6, v7);
  v10 = objc_msgSend_fontWithDescriptor_size_(v4, v9, v8, a3);

  return v10;
}

id sub_23BED85AC(uint64_t a1, uint64_t a2, double a3)
{
  v4 = MEMORY[0x277CBBB08];
  v5 = objc_opt_class();
  v8 = objc_msgSend__foghornMonospacedFontDescriptor(v5, v6, v7);
  v10 = objc_msgSend_fontWithDescriptor_size_(v4, v9, v8, a3);

  return v10;
}

void sub_23BED88FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23BED8920(uint64_t a1, void *a2, id *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v12 = objc_msgSend_updateHandler(WeakRetained, v7, v8);
    if (!v12)
    {
LABEL_37:

      goto LABEL_38;
    }

    v13 = *(*(v9 + 6) + 8);
    switch(v13)
    {
      case 2:
        objc_msgSend_depthDemoValue(NTKFoghornPreferences, v10, v11);
        v15 = v22;
        objc_msgSend_depthDemoRate(NTKFoghornPreferences, v23, v24);
        break;
      case 3:
        objc_msgSend_elevationDemoValue(NTKFoghornPreferences, v10, v11);
        v15 = v19;
        objc_msgSend_elevationDemoRate(NTKFoghornPreferences, v20, v21);
        break;
      case 4:
        objc_msgSend_compassDemoValue(NTKFoghornPreferences, v10, v11);
        v15 = v14;
        objc_msgSend_compassDemoRate(NTKFoghornPreferences, v16, v17);
        break;
      default:
        objc_msgSend_timeIntervalSinceNow(*(a1 + 32), v10, v11);
        v29 = fmod(-v28, *(a1 + 56));
        v30 = *(v9 + 6);
        v31 = *(v30 + 16);
        if (v31)
        {
          v32 = *(v30 + 24);
          v33 = v32[1];
          v34 = 0.0;
          v35 = *v32 + 0.0;
          if (v29 > 0.0 && *v32 >= v29)
          {
            v41 = v32[1];
LABEL_29:
            v15 = v41 + (v29 - v34) * (v33 - v41) / (v35 - v34);
            goto LABEL_30;
          }

          v37 = &v32[2 * v31];
          v38 = v32 + 2;
          while (v38 < v37)
          {
            v34 = v35;
            v41 = v33;
            v39 = *v38;
            v33 = v38[1];
            v38 += 2;
            v35 = v34 + v39;
            if (v34 < v29 && v35 >= v29)
            {
              goto LABEL_29;
            }
          }
        }

        v15 = 0.0;
LABEL_30:
        if (v15 < *(v9 + 8))
        {
          *(v9 + 8) = v15;
        }

        if (v15 > *(v9 + 9))
        {
          *(v9 + 9) = v15;
        }

        *(v9 + 7) = v15;
        v42 = (v12)[2](v12, v9, v15);
        v44 = NTKFoghornFaceBundleLogObject(v42, v43);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = **(v9 + 6);
          v46 = 136315394;
          v47 = v45;
          v48 = 2048;
          v49 = v15;
          _os_log_impl(&dword_23BEB1000, v44, OS_LOG_TYPE_DEFAULT, "NTKFoghornDemoDataSource.%s data update = %f", &v46, 0x16u);
        }

        goto LABEL_37;
    }

    if (v18 != 0.0)
    {
      v25 = fabs(v18 * *(a1 + 48));
      v26 = *(v9 + 7);
      v27 = v15 - v26;
      if (v15 - v26 >= 0.0)
      {
        if (v25 < v27)
        {
          v15 = v26 + v25;
        }
      }

      else if (v25 < -v27)
      {
        v15 = v26 - v25;
      }
    }

    goto LABEL_30;
  }

LABEL_38:
}

double sub_23BED92A8(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_27E1DF600);
  if (qword_27E1DF608)
  {
    v5 = qword_27E1DF608 == v2;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && objc_msgSend_version(v2, v3, v4) == qword_27E1DF610)
  {
    v6 = qword_27E1DF5E0;
  }

  else
  {
    qword_27E1DF608 = v2;
    qword_27E1DF610 = objc_msgSend_version(v2, v3, v4);
    v6 = sub_23BED93A8(qword_27E1DF610, v2);
    qword_27E1DF5E0 = v6;
    qword_27E1DF5E8 = v7;
    qword_27E1DF5F0 = v8;
    qword_27E1DF5F8 = v9;
  }

  os_unfair_lock_unlock(&unk_27E1DF600);

  return *&v6;
}

double sub_23BED93A8(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_metricsWithDevice_identitySizeClass_(MEMORY[0x277CBBAF8], a2, a2, 6);
  objc_msgSend_scaledValue_(v2, v3, v4, 56.0);
  objc_msgSend_scaledValue_(v2, v5, v6, 30.0);
  v8 = v7;
  objc_msgSend_scaledValue_(v2, v9, v10, 9.0);
  objc_msgSend_scaledValue_(v2, v11, v12, 1.75);

  return v8;
}

void sub_23BED95E4(uint64_t a1, const char *a2)
{
  v5[6] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_284EB7768;
  v4[1] = &unk_284EB7780;
  v5[0] = @"default";
  v5[1] = @"defaultWithSeconds";
  v4[2] = &unk_284EB7798;
  v4[3] = &unk_284EB77B0;
  v5[2] = @"large";
  v5[3] = @"largeWithSeconds";
  v4[4] = &unk_284EB77C8;
  v4[5] = &unk_284EB77E0;
  v5[4] = @"extraLarge";
  v5[5] = @"extraLargeWithSeconds";
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 6);
  v3 = qword_27E1DF618;
  qword_27E1DF618 = v2;
}

void sub_23BEDAFD0(uint64_t a1, const char *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_284EB7810;
  v4[1] = &unk_284EB7828;
  v5[0] = @"off";
  v5[1] = @"on";
  v4[2] = &unk_284EB77F8;
  v5[2] = @"auto";
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 3);
  v3 = qword_27E1DF628;
  qword_27E1DF628 = v2;
}

id sub_23BEDB08C()
{
  v0 = objc_alloc(MEMORY[0x277D0EB18]);
  v2 = objc_msgSend_initWithAttributes_(v0, v1, 4, 226, 5, 3, 6, 246, 10, 0, 82, 8, 85, 15, 89, 2, 164, 1, 193, 2, 0);

  return v2;
}

id sub_23BEDB12C()
{
  v0 = objc_alloc(MEMORY[0x277D0EB18]);
  v2 = objc_msgSend_initWithAttributes_(v0, v1, 4, 226, 5, 3, 6, 430, 10, 0, 82, 0, 85, 9, 89, 6, 92, 13, 193, 1, 0);

  return v2;
}

id sub_23BEDB1C8()
{
  v0 = objc_alloc(MEMORY[0x277D0EB18]);
  v2 = objc_msgSend_initWithAttributes_(v0, v1, 4, 226, 5, 3, 6, 116, 10, 0, 82, 8, 85, 12, 89, 1, 164, 1, 193, 1, 0);

  return v2;
}

id sub_23BEDB264()
{
  v0 = objc_alloc(MEMORY[0x277D0EB18]);
  v2 = objc_msgSend_initWithAttributes_(v0, v1, 4, 226, 5, 3, 6, 453, 82, 8, 85, 15, 89, 1, 0);

  return v2;
}

id sub_23BEDB2E8()
{
  v0 = objc_alloc(MEMORY[0x277D0EB18]);
  v2 = objc_msgSend_initWithAttributes_(v0, v1, 4, 226, 5, 3, 6, 134, 10, 0, 82, 8, 85, 11, 89, 1, 164, 1, 193, 1, 0);

  return v2;
}

id sub_23BEDB384()
{
  v0 = objc_alloc(MEMORY[0x277D0EB18]);
  v2 = objc_msgSend_initWithAttributes_(v0, v1, 4, 226, 5, 3, 6, 484, 10, 0, 82, 8, 85, 15, 89, 2, 164, 1, 193, 2, 0);

  return v2;
}

id sub_23BEDB424(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_msgSend_isEqual_(v4, v5, @"viewpoint"))
  {
    v8 = objc_msgSend__viewpointStyleAttributes(a1, v6, v7);
  }

  else if (objc_msgSend_isEqual_(v4, v6, @"summit"))
  {
    v8 = objc_msgSend__summitStyleAttributes(a1, v9, v10);
  }

  else if (objc_msgSend_isEqual_(v4, v9, @"marina"))
  {
    v8 = objc_msgSend__marinaStyleAttributes(a1, v11, v12);
  }

  else if (objc_msgSend_isEqual_(v4, v11, @"trailhead"))
  {
    v8 = objc_msgSend__trailheadStyleAttributes(a1, v13, v14);
  }

  else if (objc_msgSend_isEqual_(v4, v13, @"beach"))
  {
    v8 = objc_msgSend__beachStyleAttributes(a1, v15, v16);
  }

  else
  {
    if (objc_msgSend_isEqual_(v4, v15, @"trail"))
    {
      objc_msgSend__trailStyleAttributes(a1, v17, v18);
    }

    else
    {
      objc_msgSend_addressMarkerStyleAttributes(MEMORY[0x277D0EB18], v17, v18);
    }
    v8 = ;
  }

  v19 = v8;

  return v19;
}

void sub_23BEDC07C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_23BEDC098(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BEDC158;
  block[3] = &unk_278BA1638;
  objc_copyWeak(&v9, (a1 + 32));
  v8 = v5;
  v10 = a2;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
}

void sub_23BEDC158(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 2, *(a1 + 32));
    v3[1] = 0;
    v4 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 0;
      _os_log_impl(&dword_23BEB1000, v4, OS_LOG_TYPE_DEFAULT, "Leghorn POI guides loaded", v7, 2u);
    }

    v5 = objc_loadWeakRetained(v3 + 3);
    objc_msgSend_poiSectionDetailsLoaded_forSection_(v5, v6, *(a1 + 48), v3);
  }
}

__CFString *NTKFoghornDataSourceUpdateModeString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"invalid";
  }

  else
  {
    return off_278BA16B0[a1];
  }
}

__CFString *NTKLeghornWaypointCategoryString(uint64_t a1, const char *a2, uint64_t a3)
{
  if ((~a1 & 0x1FF) != 0)
  {
    v5 = 0;
    v4 = &stru_284EA8F68;
    while (1)
    {
      v6 = (1 << v5);
      if ((v6 & a1) != 0)
      {
        if (v6 <= 15)
        {
          if (v6 > 3)
          {
            if (v6 == 4)
            {
              v7 = @"mapsPinned";
              goto LABEL_25;
            }

            if (v6 == 8)
            {
              v7 = @"mapsPlaces";
              goto LABEL_25;
            }
          }

          else
          {
            v7 = @"compassWaypoint";
            if (v6 == 1)
            {
              goto LABEL_25;
            }

            if (v6 == 2)
            {
              v7 = @"mapsGuides";
              goto LABEL_25;
            }
          }
        }

        else if (v6 <= 63)
        {
          if (v6 == 16)
          {
            v7 = @"mapsRoutes";
            goto LABEL_25;
          }

          if (v6 == 32)
          {
            v7 = @"parkedCar";
            goto LABEL_25;
          }
        }

        else
        {
          switch(v6)
          {
            case 0x40:
              v7 = @"trailHeads";
              goto LABEL_25;
            case 0x80:
              v7 = @"beaches";
              goto LABEL_25;
            case 0x100:
              v7 = @"mapsFavorites";
LABEL_25:
              if (objc_msgSend_length(v4, a2, a3))
              {
                v9 = objc_msgSend_stringByAppendingString_(v4, v8, @"|");

                v7 = objc_msgSend_stringByAppendingString_(v9, v10, v7);
                v4 = v9;
              }

              v4 = v7;
              break;
          }
        }
      }

      if (++v5 == 17)
      {
        goto LABEL_29;
      }
    }
  }

  v4 = @"all";
LABEL_29:

  return v4;
}

__CFString *NTKLeghornWaypointCategoryShortString(uint64_t a1, const char *a2)
{
  v2 = a1;
  v3 = 0;
  v4 = &stru_284EA8F68;
  do
  {
    if (((1 << v3) & v2) != 0)
    {
      v5 = (1 << v3);
      if (v5 == 32)
      {
        v6 = @"c";
      }

      else
      {
        v6 = 0;
      }

      if (v5 == 16)
      {
        v6 = @"r";
      }

      if (v5 == 8)
      {
        v6 = @"l";
      }

      if (v5 == 4)
      {
        v7 = @"p";
      }

      else
      {
        v7 = 0;
      }

      if (v5 == 2)
      {
        v7 = @"g";
      }

      if (v5 == 1)
      {
        v7 = @"w";
      }

      if ((1 << v3) <= 7u)
      {
        objc_msgSend_stringByAppendingString_(v4, a2, v7);
      }

      else
      {
        objc_msgSend_stringByAppendingString_(v4, a2, v6);
      }
      v8 = ;

      v4 = v8;
    }

    ++v3;
  }

  while (v3 != 6);

  return v4;
}

uint64_t NTKLeghornWaypointCategoryFromString(void *a1, const char *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_msgSend_componentsSeparatedByString_(a1, a2, @"|");
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v12, v16, 16);
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (objc_msgSend_isEqualToString_(v10, v5, @"all"))
        {
          v7 = 511;
        }

        else if (objc_msgSend_isEqualToString_(v10, v5, @"compassWaypoint"))
        {
          v7 |= 1uLL;
        }

        else if (objc_msgSend_isEqualToString_(v10, v5, @"mapsGuides"))
        {
          v7 |= 2uLL;
        }

        else if (objc_msgSend_isEqualToString_(v10, v5, @"mapsPinned"))
        {
          v7 |= 4uLL;
        }

        else if (objc_msgSend_isEqualToString_(v10, v5, @"mapsPlaces"))
        {
          v7 |= 8uLL;
        }

        else if (objc_msgSend_isEqualToString_(v10, v5, @"mapsRoutes"))
        {
          v7 |= 0x10uLL;
        }

        else if (objc_msgSend_isEqualToString_(v10, v5, @"parkedCar"))
        {
          v7 |= 0x20uLL;
        }

        else if (objc_msgSend_isEqualToString_(v10, v5, @"trailHeads"))
        {
          v7 |= 0x40uLL;
        }

        else if (objc_msgSend_isEqualToString_(v10, v5, @"beaches"))
        {
          v7 |= 0x80uLL;
        }

        else if (objc_msgSend_isEqualToString_(v10, v5, @"mapsFavorites"))
        {
          v7 |= 0x100uLL;
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v12, v16, 16);
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

__CFString *NTKLeghornWaypointCategoryNameLocalizationKeyString(uint64_t a1)
{
  if (a1 <= 15)
  {
    if (a1 > 3)
    {
      if (a1 == 4)
      {
        return @"LEGHORN_WAYPOINT_CATEGORY_MAPS_PINNED";
      }

      if (a1 == 8)
      {
        return @"LEGHORN_WAYPOINT_CATEGORY_MAPS_PLACES";
      }
    }

    else
    {
      if (a1 == 1)
      {
        return @"LEGHORN_WAYPOINT_CATEGORY_COMPASS";
      }

      if (a1 == 2)
      {
        return @"LEGHORN_WAYPOINT_CATEGORY_MAPS_GUIDES";
      }
    }
  }

  else if (a1 <= 63)
  {
    if (a1 == 16)
    {
      return @"LEGHORN_WAYPOINT_CATEGORY_MAPS_ROUTES";
    }

    if (a1 == 32)
    {
      return @"LEGHORN_WAYPOINT_CATEGORY_PARKED_CAR";
    }
  }

  else
  {
    switch(a1)
    {
      case 64:
        return @"LEGHORN_WAYPOINT_CATEGORY_TRAILHEADS";
      case 128:
        return @"LEGHORN_WAYPOINT_CATEGORY_BEACHES";
      case 256:
        return @"LEGHORN_WAYPOINT_CATEGORY_FAVORITES";
    }
  }

  return &stru_284EA8F68;
}

__CFString *NTKLeghornWaypointCategorySFSymbolString(uint64_t a1)
{
  if (a1 <= 15)
  {
    if (a1 <= 3)
    {
      if (a1 == 1)
      {
        return @"location.pin.point.of.interest.2.fill";
      }

      if (a1 == 2)
      {
        return @"book";
      }

      return &stru_284EA8F68;
    }

    if (a1 == 4)
    {
      return @"pin.fill";
    }

    if (a1 != 8)
    {
      return &stru_284EA8F68;
    }

    return @"mappin";
  }

  if (a1 <= 63)
  {
    if (a1 == 16)
    {
      return @"point.bottomleft.filled.forward.to.point.topright.scurvepath";
    }

    if (a1 == 32)
    {
      return @"car.fill";
    }

    return &stru_284EA8F68;
  }

  switch(a1)
  {
    case 64:
      return @"signpost.right.fill";
    case 128:
      return @"beach.umbrella.fill";
    case 256:
      return @"mappin";
  }

  return &stru_284EA8F68;
}

id sub_23BEDD69C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void sub_23BEDD6EC(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_23BEDDCB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_23BEDE070(va);
  _Unwind_Resume(a1);
}

id sub_23BEDDCE8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = v4;
  result = *(a2 + 64);
  *(a1 + 64) = result;
  return result;
}

id sub_23BEDDD60(void *a1)
{
  v1 = a1;
  if (objc_msgSend_isEqualToString_(v1, v2, @"green"))
  {
    v5 = objc_msgSend_greenColor(MEMORY[0x277D75348], v3, v4);
    goto LABEL_16;
  }

  if (objc_msgSend_isEqualToString_(v1, v3, @"white"))
  {
    v5 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v8, v9);
    goto LABEL_16;
  }

  if (objc_msgSend_isEqualToString_(v1, v8, @"black"))
  {
    v5 = objc_msgSend_blackColor(MEMORY[0x277D75348], v10, v11);
    goto LABEL_16;
  }

  if (objc_msgSend_isEqualToString_(v1, v10, @"red"))
  {
    v5 = objc_msgSend_redColor(MEMORY[0x277D75348], v12, v13);
    goto LABEL_16;
  }

  if (objc_msgSend_isEqualToString_(v1, v12, @"yellow"))
  {
    v5 = objc_msgSend_yellowColor(MEMORY[0x277D75348], v14, v15);
    goto LABEL_16;
  }

  if (objc_msgSend_isEqualToString_(v1, v14, @"blue"))
  {
    objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v16, v17, 0.466666667, 0.564705882, 1.0, 1.0);
    v5 = LABEL_13:;
    goto LABEL_16;
  }

  if (objc_msgSend_isEqualToString_(v1, v16, @"cyan"))
  {
    v5 = objc_msgSend_cyanColor(MEMORY[0x277D75348], v18, v19);
    goto LABEL_16;
  }

  if (objc_msgSend_isEqualToString_(v1, v18, @"highlight"))
  {
    objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v22, v23, 0.729411765, 0.31372549, 0.552941176, 1.0);
    goto LABEL_13;
  }

  if (objc_msgSend_isEqualToString_(v1, v22, @"compassGreen"))
  {
    v5 = objc_msgSend_systemGreenColor(MEMORY[0x277D75348], v24, v25);
    goto LABEL_16;
  }

  if (objc_msgSend_isEqualToString_(v1, v24, @"mapsSummit"))
  {
    objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v26, v27, 0.588235294, 0.48627451, 0.419607843, 1.0);
    goto LABEL_13;
  }

  if (objc_msgSend_isEqualToString_(v1, v26, @"mapsBoating"))
  {
    objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v28, v29, 0.247058824, 0.741176471, 0.854901961, 1.0);
    goto LABEL_13;
  }

  if (objc_msgSend_isEqualToString_(v1, v28, @"mapsHome"))
  {
    objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v30, v31, 0.396078431, 0.784313725, 0.890196078, 1.0);
    goto LABEL_13;
  }

  if (objc_msgSend_isEqualToString_(v1, v30, @"compassOrange"))
  {
    v5 = objc_msgSend_systemOrangeColor(MEMORY[0x277D75348], v32, v33);
    goto LABEL_16;
  }

  if (objc_msgSend_isEqualToString_(v1, v32, @"compassRed"))
  {
    objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v34, v35, 0.964705882, 0.349019608, 0.396078431, 1.0);
    goto LABEL_13;
  }

  if (objc_msgSend_isEqualToString_(v1, v34, @"compassBlue"))
  {
    v5 = objc_msgSend_systemBlueColor(MEMORY[0x277D75348], v6, v7);
LABEL_16:
    v20 = v5;
    if (v5)
    {
      goto LABEL_18;
    }
  }

  v20 = objc_msgSend_cyanColor(MEMORY[0x277D75348], v6, v7);
LABEL_18:

  return v20;
}

void sub_23BEDE070(uint64_t a1)
{
  v2 = *(a1 + 64);
}

void sub_23BEDE2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23BEDE070(va);
  _Unwind_Resume(a1);
}

void sub_23BEDE970(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  objc_storeStrong((a1 + 8), *(a2 + 8));
  objc_storeStrong((a1 + 16), *(a2 + 16));
  objc_storeStrong((a1 + 24), *(a2 + 24));
  objc_storeStrong((a1 + 32), *(a2 + 32));
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  v5 = *(a2 + 64);

  objc_storeStrong((a1 + 64), v5);
}

uint64_t sub_23BEDE9F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 48);
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v2 > v3;
  }
}

void sub_23BEDF1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v22 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  objc_destroyWeak((v19 + 56));
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  objc_destroyWeak((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_23BEDF204(uint64_t a1, void *a2, id *a3)
{
  v19 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v11 = objc_msgSend_updateHandler(WeakRetained, v6, v7);
    if (!v11)
    {
LABEL_10:

      goto LABEL_11;
    }

    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 24);
    if (v13 % *(a1 + 64))
    {
      v14 = *(*(*(a1 + 40) + 8) + 24);
    }

    else
    {
      v15 = objc_msgSend_compass(*(a1 + 32), v9, v10);
      objc_msgSend_heading(v15, v16, v17);
      v14 = v18;

      if (vabdd_f64(v14, *(*(*(a1 + 40) + 8) + 24)) > v8[6])
      {
        goto LABEL_8;
      }

      v12 = *(*(a1 + 48) + 8);
      v13 = *(v12 + 24);
    }

    if (v13 % *(a1 + 72))
    {
LABEL_9:
      *(v12 + 24) = v13 + *(a1 + 80);
      goto LABEL_10;
    }

LABEL_8:
    (v11)[2](v11, v8, v14);
    *(*(*(a1 + 40) + 8) + 24) = v14;
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 24);
    goto LABEL_9;
  }

LABEL_11:
}

void sub_23BEDFA1C(uint64_t a1, const char *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_284EB7840;
  v4[1] = &unk_284EB7858;
  v5[0] = @"none";
  v5[1] = @"left";
  v4[2] = &unk_284EB7870;
  v5[2] = @"right";
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 3);
  v3 = qword_27E1DF648;
  qword_27E1DF648 = v2;
}

id sub_23BEDFAD8(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_nextResponder(a1, a2, a3);
  if (v3)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v6 = objc_msgSend_nextResponder(v3, v4, v5);

      v3 = v6;
    }

    while (v6);
  }

  return v3;
}

void sub_23BEDFC4C(uint64_t a1, const char *a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_284EB7888;
  v4[1] = &unk_284EB78A0;
  v5[0] = @"digital";
  v5[1] = @"analog";
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 2);
  v3 = qword_27E1DF658;
  qword_27E1DF658 = v2;
}

void sub_23BEE007C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [NTKCLeghornFaceDetailEditOptionCell alloc];
  v8 = objc_msgSend_initWithSection_category_name_all_filter_(v5, v6, v4, 0, 0, 0, *(a1 + 40));

  objc_msgSend_addObject_(v3, v7, v8);
}

void sub_23BEE0894(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(a1 + 32) == a2)
  {
    v5 = objc_msgSend_rows(*(a1 + 40), a2, a3);
    v9 = objc_msgSend_objectAtIndexedSubscript_(v5, v6, a3);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_setupDetails(v9, v7, v8);
    }
  }
}

uint64_t NTKFoghornFaceNSBundle(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CCA8D8];
  v4 = objc_opt_class();

  return objc_msgSend_bundleForClass_(v2, v3, v4);
}

id NTKFoghornFaceBundleLogObject(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();
  v5 = objc_msgSend_bundleForClass_(v2, v4, v3);
  v8 = objc_msgSend_principalClass(v5, v6, v7);

  if (objc_opt_respondsToSelector())
  {
    v11 = objc_msgSend_logObject(v8, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

__CFString *NTKFoghornFaceLocalizedString(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();
  v5 = objc_msgSend_bundleForClass_(v2, v4, v3);
  v8 = objc_msgSend_principalClass(v5, v6, v7);

  if (objc_opt_respondsToSelector())
  {
    v10 = objc_msgSend_localizedStringForKey_comment_(v8, v9, v1, &stru_284EA8F68);
  }

  else
  {
    v10 = &stru_284EA8F68;
  }

  return v10;
}

__CFString *NTKFoghornFaceLocalizedMarkdownString(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();
  v5 = objc_msgSend_bundleForClass_(v2, v4, v3);
  v8 = objc_msgSend_principalClass(v5, v6, v7);

  if (objc_opt_respondsToSelector())
  {
    v10 = objc_msgSend_localizedMarkdownStringForKey_comment_(v8, v9, v1, &stru_284EA8F68);
  }

  else
  {
    v10 = &stru_284EA8F68;
  }

  return v10;
}

id NTKFoghornFaceImageNamed(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();
  v5 = objc_msgSend_bundleForClass_(v2, v4, v3);
  v8 = objc_msgSend_principalClass(v5, v6, v7);

  if (objc_opt_respondsToSelector())
  {
    v10 = objc_msgSend_imageWithName_(v8, v9, v1);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_23BEE39C8(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_customName(a1, a2, a3);
  v7 = v4;
  if ((!v4 || !objc_msgSend_length(v4, v5, v6)) && (objc_msgSend_mapItemName(a1, v5, v6), v8 = objc_claimAutoreleasedReturnValue(), v7, (v7 = v8) == 0) || !objc_msgSend_length(v7, v5, v6))
  {
    if (objc_msgSend_favoriteType(a1, v5, v6) == 4)
    {
      v9 = @"LEGHORN_MAPS_PARKED_CAR";
    }

    else
    {
      v9 = @"LEGHORN_MAPS_PINNED";
    }

    v10 = NTKFoghornFaceLocalizedString(v9);

    v7 = v10;
  }

  return v7;
}

id sub_23BEE3A7C(void *a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_favoriteType(a1, a2, a3);
  if (v6 > 3)
  {
    if (v6 == 4)
    {
      v7 = objc_msgSend_parkedCarStyleAttributes(MEMORY[0x277D0EB18], v4, v5);
    }

    else
    {
      if (v6 != 5)
      {
        goto LABEL_8;
      }

      v7 = objc_msgSend_schoolStyleAttributes(MEMORY[0x277D0EB18], v4, v5);
    }

LABEL_13:
    v12 = v7;
    v11 = 0;
    if (v7)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v6 == 2)
  {
    v7 = objc_msgSend_homeStyleAttributes(MEMORY[0x277D0EB18], v4, v5);
    goto LABEL_13;
  }

  if (v6 == 3)
  {
    v7 = objc_msgSend_workStyleAttributes(MEMORY[0x277D0EB18], v4, v5);
    goto LABEL_13;
  }

LABEL_8:
  v10 = objc_msgSend_mapItemStorage(a1, v4, v5);
  v11 = v10;
  if (!v10 || (objc_msgSend__styleAttributes(v10, v8, v9), (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_14:
    v12 = objc_msgSend_markerStyleAttributes(MEMORY[0x277D0EB18], v8, v9);
  }

LABEL_15:

  return v12;
}

__CFString *sub_23BEE3BB0(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_favoriteType(a1, a2, a3) - 2;
  if (v3 > 2)
  {
    return @"pin.fill";
  }

  else
  {
    return off_278BA1C60[v3];
  }
}

id sub_23BEE3BF0(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_ntk_sfSymbolName(a1, a2, a3);
  v5 = objc_msgSend_iconImageForSFSymbol_(NTKLeghornWaypoint, v4, v3);

  return v5;
}

id sub_23BEE3C48(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_latitude(a1, a2, a3);
  objc_msgSend_doubleValue(v4, v5, v6);
  v8 = v7;

  v11 = objc_msgSend_longitude(a1, v9, v10);
  objc_msgSend_doubleValue(v11, v12, v13);
  v15 = v14;

  v16 = objc_alloc(MEMORY[0x277CE41F8]);
  v19 = objc_msgSend_initWithLatitude_longitude_(v16, v17, v18, v8, v15);

  return v19;
}

double sub_23BEE3CCC(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_latitude(a1, a2, a3);
  objc_msgSend_doubleValue(v3, v4, v5);
  v7 = v6;

  return v7;
}

double sub_23BEE3D0C(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_longitude(a1, a2, a3);
  objc_msgSend_doubleValue(v3, v4, v5);
  v7 = v6;

  return v7;
}

uint64_t sub_23BEE3D4C(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_favoriteType(a1, a2, a3) == 4)
  {
    return 32;
  }

  else
  {
    return 4;
  }
}

BOOL sub_23BEE3D74(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_mapItemStorage(a1, a2, a3);
  v4 = v3 != 0;

  return v4;
}

id sub_23BEE3DA8(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_mapItemStorage(a1, a2, a3);
  v4 = objc_alloc(MEMORY[0x277CD4E80]);
  isPlaceHolderPlace = objc_msgSend_initWithGeoMapItem_isPlaceHolderPlace_(v4, v5, v3, 0);

  return isPlaceHolderPlace;
}

id sub_23BEE3E04(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_customName(a1, a2, a3);
  v7 = v4;
  if ((!v4 || !objc_msgSend_length(v4, v5, v6)) && (objc_msgSend_mapItemName(a1, v5, v6), v8 = objc_claimAutoreleasedReturnValue(), v7, (v7 = v8) == 0) || !objc_msgSend_length(v7, v5, v6))
  {
    v9 = NTKFoghornFaceLocalizedString(@"LEGHORN_MAPS_PLACE");

    v7 = v9;
  }

  return v7;
}

id sub_23BEE3E98(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_mapItemStorage(a1, a2, a3);
  v6 = v3;
  if (!v3)
  {
    goto LABEL_5;
  }

  v7 = objc_msgSend__styleAttributes(v3, v4, v5);
  if (v7)
  {
LABEL_6:
    v12 = v7;
    goto LABEL_7;
  }

  v10 = objc_msgSend_place(v6, v8, v9);
  if (!v10 || (v11 = v10, objc_msgSend_styleAttributesForPlace_(MEMORY[0x277D0EB18], v4, v10), v12 = objc_claimAutoreleasedReturnValue(), v11, !v12))
  {
LABEL_5:
    v7 = objc_msgSend_addressMarkerStyleAttributes(MEMORY[0x277D0EB18], v4, v5);
    goto LABEL_6;
  }

LABEL_7:

  return v12;
}

id sub_23BEE3F84(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_latitude(a1, a2, a3);
  objc_msgSend_doubleValue(v4, v5, v6);
  v8 = v7;

  v11 = objc_msgSend_longitude(a1, v9, v10);
  objc_msgSend_doubleValue(v11, v12, v13);
  v15 = v14;

  v16 = objc_alloc(MEMORY[0x277CE41F8]);
  v19 = objc_msgSend_initWithLatitude_longitude_(v16, v17, v18, v8, v15);

  return v19;
}

double sub_23BEE4008(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_latitude(a1, a2, a3);
  objc_msgSend_doubleValue(v3, v4, v5);
  v7 = v6;

  return v7;
}

double sub_23BEE4048(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_longitude(a1, a2, a3);
  objc_msgSend_doubleValue(v3, v4, v5);
  v7 = v6;

  return v7;
}

BOOL sub_23BEE4090(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_mapItemStorage(a1, a2, a3);
  v4 = v3 != 0;

  return v4;
}

id sub_23BEE40C4(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_mapItemStorage(a1, a2, a3);
  v4 = objc_alloc(MEMORY[0x277CD4E80]);
  isPlaceHolderPlace = objc_msgSend_initWithGeoMapItem_isPlaceHolderPlace_(v4, v5, v3, 0);

  return isPlaceHolderPlace;
}

id sub_23BEE4120(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_customName(a1, a2, a3);
  v6 = v3;
  if (!v3 || !objc_msgSend_length(v3, v4, v5))
  {
    v7 = NTKFoghornFaceLocalizedString(@"LEGHORN_MAPS_ROUTE");

    v6 = v7;
  }

  return v6;
}

id sub_23BEE41DC(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_originLatitude(a1, a2, a3);
  objc_msgSend_doubleValue(v4, v5, v6);
  v8 = v7;

  v11 = objc_msgSend_originLongitude(a1, v9, v10);
  objc_msgSend_doubleValue(v11, v12, v13);
  v15 = v14;

  v16 = objc_alloc(MEMORY[0x277CE41F8]);
  v19 = objc_msgSend_initWithLatitude_longitude_(v16, v17, v18, v8, v15);

  return v19;
}

double sub_23BEE4260(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_originLatitude(a1, a2, a3);
  objc_msgSend_doubleValue(v3, v4, v5);
  v7 = v6;

  return v7;
}

double sub_23BEE42A0(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_originLongitude(a1, a2, a3);
  objc_msgSend_doubleValue(v3, v4, v5);
  v7 = v6;

  return v7;
}

BOOL sub_23BEE42E8(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_originLatitude(a1, a2, a3);

  v7 = objc_msgSend_originLongitude(a1, v5, v6);

  if (v4)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  return !v8;
}

id sub_23BEE4338(void *a1)
{
  v2 = objc_alloc(MEMORY[0x277CE41F8]);
  objc_msgSend_ntk_latitude(a1, v3, v4);
  v6 = v5;
  objc_msgSend_ntk_longitude(a1, v7, v8);
  v12 = objc_msgSend_initWithLatitude_longitude_(v2, v9, v10, v6, v11);
  v13 = objc_alloc(MEMORY[0x277CD4E80]);
  v15 = objc_msgSend_initWithCLLocation_(v13, v14, v12);
  v18 = objc_msgSend_ntk_labelText(a1, v16, v17);
  objc_msgSend_setName_(v15, v19, v18);

  return v15;
}

uint64_t sub_23BEE440C(void *a1)
{
  v2 = objc_alloc(MEMORY[0x277CCAD78]);
  v4 = objc_msgSend_initWithUUIDString_(v2, v3, @"00000000-0000-0000-0000-000000000001");
  v7 = objc_msgSend_identifier(a1, v5, v6);
  isEqual = objc_msgSend_isEqual_(v7, v8, v4);

  return isEqual;
}

id sub_23BEE4640(uint64_t a1, uint64_t a2, void *a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D26668];
  v4 = a3;
  v5 = [v3 alloc];
  v7 = objc_msgSend_initWithOffset_limit_(v5, v6, 0, 100);
  v8 = objc_alloc(MEMORY[0x277CCAC98]);
  v10 = objc_msgSend_initWithKey_ascending_(v8, v9, @"createTime", 0);
  v11 = objc_alloc(MEMORY[0x277D26678]);
  v17[0] = v10;
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, v17, 1);
  v15 = objc_msgSend_initWithPredicate_sortDescriptors_range_(v11, v14, v4, v13, v7);

  return v15;
}

uint64_t sub_23BEE48D8()
{
  v0 = objc_alloc_init(NTKMapsSyncManager);
  v3 = qword_27E1DF668;
  qword_27E1DF668 = v0;

  return MEMORY[0x2821F96F8](v0, v3, v1, v2);
}

uint64_t sub_23BEE6548(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v5 = objc_opt_class();
    v6 = v13[2];
    v7 = CLLocationCoordinate2DMake(0.0, 0.0);
    v9 = objc_msgSend__fetchMSCollectionsInStore_coordinate_radius_(v5, v8, v6, v7.latitude, v7.longitude, 2.0);
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, 1, v9);
    }
  }

  else
  {
    v11 = *(a1 + 40);
    if (!v11)
    {
      goto LABEL_8;
    }

    v13 = 0;
    v11 = (*(v11 + 16))(v11, 0, 0);
  }

  WeakRetained = v13;
LABEL_8:

  return MEMORY[0x2821F96F8](v11, WeakRetained, v3, v4);
}

void sub_23BEE6720(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = objc_opt_class();
    v4 = WeakRetained[2];
    v7 = objc_msgSend_poiFilter(*(a1 + 40), v5, v6);
    objc_msgSend_centerCoordinate(*(a1 + 40), v8, v9);
    v11 = v10;
    v13 = v12;
    objc_msgSend_radius(*(a1 + 40), v14, v15);
    v18 = objc_msgSend__fetchInStore_poiFilter_coordinate_radius_(v3, v16, v4, v7, v11, v13, v17);

    v19 = objc_opt_new();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v20 = v18;
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v35, v39, 16);
    if (v22)
    {
      v24 = v22;
      v25 = *v36;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v36 != v25)
          {
            objc_enumerationMutation(v20);
          }

          v27 = objc_msgSend__wrapperForPOI_(*(a1 + 32), v23, *(*(&v35 + 1) + 8 * i), v35);
          objc_msgSend_addObject_(v19, v28, v27);
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v35, v39, 16);
      }

      while (v24);
    }

    v31 = objc_msgSend_copy(v19, v29, v30);
    objc_msgSend__setWaypoints_(WeakRetained, v32, v31);

    v33 = *(a1 + 48);
    if (v33)
    {
      (*(v33 + 16))(v33, 1);
    }
  }

  else
  {
    v34 = *(a1 + 48);
    if (v34)
    {
      (*(v34 + 16))(v34, 0);
    }
  }
}

uint64_t sub_23BEE6AB8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_23BEE6B88(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_23BEB1000, a2, OS_LOG_TYPE_ERROR, "Invalid mini clock style %lu", &v2, 0xCu);
}

void sub_23BEE6C00(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[NTKLeghornLocationDataSource _updateLocation:]";
  _os_log_error_impl(&dword_23BEB1000, log, OS_LOG_TYPE_ERROR, "%s: received nil location", &v1, 0xCu);
}

void sub_23BEE6C98(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[NTKMapsSearchManager _wrapperForPOI:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_23BEB1000, a2, OS_LOG_TYPE_ERROR, "%s: styleAttributes = nil for poi = %@", &v2, 0x16u);
}

void sub_23BEE6D24(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23BEB1000, a2, OS_LOG_TYPE_ERROR, "local-search: did not succeed, error = %@", &v2, 0xCu);
}

void sub_23BEE6D9C(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23BEB1000, a2, OS_LOG_TYPE_ERROR, "local-search: completed outside manager lifetime, error = %@", &v2, 0xCu);
}

void sub_23BEE6E14()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315650;
  sub_23BEC426C();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&dword_23BEB1000, v2, OS_LOG_TYPE_ERROR, "%s: error found, vehicleEvents = %@, error = %@", v3, 0x20u);
}

void sub_23BEE6EA0()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  sub_23BEC426C();
  _os_log_error_impl(&dword_23BEB1000, v0, OS_LOG_TYPE_ERROR, "%s: bad payload, vehicleEvents = %@", v1, 0x16u);
}

void sub_23BEE6F20(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23BEB1000, a2, OS_LOG_TYPE_ERROR, "motion error: %@", &v2, 0xCu);
}

void sub_23BEE7068(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[NTKFoghornSecondsDataSource seconds]";
  _os_log_error_impl(&dword_23BEB1000, log, OS_LOG_TYPE_ERROR, "%s: seconds called with _clockTimerToken = nil", &v1, 0xCu);
}

void sub_23BEE70EC()
{
  v2 = 136315650;
  sub_23BED7FA8();
  sub_23BED7FC4(&dword_23BEB1000, v0, v1, "%s: bad arguments passed, styleAttributes = %@, key = %@", v2);
}

void sub_23BEE7160()
{
  v2 = 136315650;
  sub_23BED7FA8();
  sub_23BED7FC4(&dword_23BEB1000, v0, v1, "%s: bad arguments passed, styleAttributes = %@, key = %@", v2);
}

void sub_23BEE71D4()
{
  v2 = 136315650;
  sub_23BED7FA8();
  sub_23BED7FC4(&dword_23BEB1000, v0, v1, "%s: bad arguments passed, styleAttributes = %@, key = %@", v2);
}

void sub_23BEE7248()
{
  v2 = 136315650;
  sub_23BED7FA8();
  sub_23BED7FC4(&dword_23BEB1000, v0, v1, "%s: bad arguments passed, styleAttributes = %@, key = %@", v2);
}

void sub_23BEE72BC()
{
  v2 = 136315650;
  sub_23BED7FA8();
  sub_23BED7FC4(&dword_23BEB1000, v0, v1, "%s: styleAttributes.key = '%@' for styleAttributes = %@", v2);
}

void sub_23BEE73BC(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v6 = objc_msgSend_description(v3, v4, v5);
  v7 = 138412290;
  v8 = v6;
  _os_log_error_impl(&dword_23BEB1000, a2, OS_LOG_TYPE_ERROR, "Leghorn face detail controller got option of type %@", &v7, 0xCu);
}

void sub_23BEE7458(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[StewieWidgetAvailability shouldAddSkipperComplication]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_23BEB1000, a2, OS_LOG_TYPE_ERROR, "%s - Error when fetching stewie support: %@", &v2, 0x16u);
}

void sub_23BEE74E4(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[StewieWidgetAvailability shouldAddSkipperComplication]";
  _os_log_error_impl(&dword_23BEB1000, log, OS_LOG_TYPE_ERROR, "%s - No stewie state", &v1, 0xCu);
}

void sub_23BEE757C(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[NTKMapsSyncManager _wrapperForPOI:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_23BEB1000, a2, OS_LOG_TYPE_ERROR, "%s: styleAttributes = nil for poi = %@", &v2, 0x16u);
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  MEMORY[0x2821148B0](framesetter, stringRange.location, stringRange.length, frameAttributes, fitRange, constraints, *&constraints.height);
  result.height = v6;
  result.width = v5;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}