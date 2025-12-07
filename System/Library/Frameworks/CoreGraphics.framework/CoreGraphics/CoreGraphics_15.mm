BOOL CGPDFArrayGetStream(CGPDFArrayRef array, size_t index, CGPDFStreamRef *value)
{
  valuea = 0;
  Object = CGPDFArrayGetObject(array, index, &valuea);
  if (Object)
  {
    if (valuea && *(valuea + 2) == 9)
    {
      if (value)
      {
        *value = *(valuea + 4);
      }

      LOBYTE(Object) = 1;
    }

    else
    {
      LOBYTE(Object) = 0;
    }
  }

  return Object;
}

uint64_t get_array(CGPDFDictionary *a1, const char *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v6 = a4;
  v20[1] = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1EEE9AC00](8 * a4);
  v13 = v20 - v12;
  if (v11 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v14 = v20 - v12;
  }

  else
  {
    v14 = 0;
  }

  if (v11 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000082)
  {
    v14 = malloc_type_malloc(v10, 0x4D825C63uLL);
  }

  if (CGPDFDictionaryGetNumbers(a1, a2, v14, v6))
  {
    if (v6)
    {
      v15 = v14;
      do
      {
        v16 = *v15++;
        *a3++ = v16;
        --v6;
      }

      while (v6);
    }

LABEL_14:
    v18 = 1;
    goto LABEL_15;
  }

  if (a5)
  {
    for (; v6; --v6)
    {
      v17 = *a5++;
      *a3++ = v17;
    }

    goto LABEL_14;
  }

  v18 = 0;
LABEL_15:
  if (v14 != v13)
  {
    free(v14);
  }

  return v18;
}

CFDataRef CGPDFStreamCopyData(CGPDFStreamRef stream, CGPDFDataFormat *format)
{
  v2 = MEMORY[0x1EEE9AC00](stream);
  v10 = *MEMORY[0x1E69E9840];
  FilterChain = CGPDFStreamCreateFilterChain(v2, v3);
  if (!FilterChain)
  {
    return 0;
  }

  v5 = FilterChain;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    do
    {
      v7 = CGPDFSourceRead(v5, bytes, 0x1000uLL);
      CFDataAppendBytes(Mutable, bytes, v7);
    }

    while (v7 > 0xFFF);
    CFRelease(v5);
  }

  return Mutable;
}

void sub_183F48318(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    pdf_error("Exception in CGPDFStreamCopyData");
    CFRelease(v2);
    objc_end_catch();
    JUMPOUT(0x183F482D0);
  }

  _Unwind_Resume(exception_object);
}

void sub_183F48360(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x183F48348);
}

void CGPDFSourceFinalize(uint64_t a1)
{
  if (*(a1 + 209) == 1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      v2(*(a1 + 80));
    }
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 144);
  if (v4)
  {
    if (*(a1 + 152) == 1)
    {
      free(v4);
    }

    *(a1 + 144) = 0;
  }

  v5 = *(a1 + 88);

  free(v5);
}

uint64_t CGImageGetUpscaledComponentType(CGImage *a1)
{
  result = CGImageGetComponentType(a1);
  if (result > 6 || ((1 << result) & 0x49) == 0)
  {
    return result;
  }

  if (!a1)
  {
    v3 = 0;
    goto LABEL_16;
  }

  v3 = *(a1 + 7);
  BitmapInfo = CGImageGetBitmapInfo(a1);
  if (v3 > 0xF)
  {
    goto LABEL_13;
  }

  if (((1 << v3) & 0xFE) != 0)
  {
    return 1;
  }

  if (((1 << v3) & 0xF800) != 0)
  {
    return 2;
  }

  if (((1 << v3) & 0x600) == 0)
  {
LABEL_13:
    if (v3 - 33 > 0xFFFFFFFFFFFFFFDFLL)
    {
      return 4;
    }

LABEL_16:
    _CGHandleAssert("CGImageGetUpscaledComponentType", 3643, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImage.c", "bits_per_component > 0 && bits_per_component < 33", "bpc %zu", v3);
  }

  if ((BitmapInfo & 0xF0000) != 0x40000)
  {
    return 2;
  }

  return 5;
}

void fstream_release(z_streamp strm)
{
  if (strm)
  {
    if (strm->state)
    {
      inflateEnd(strm);
    }

    v2 = *&strm[1].avail_in;
    if (v2)
    {
      avail_in = strm->avail_in;
      if (!avail_in)
      {
        goto LABEL_9;
      }

      v4 = avail_in - 1;
      do
      {
        CGPDFSourceUngetc(*&strm[1].avail_in, strm->next_in[v4--]);
      }

      while (v4 != -1);
      v2 = *&strm[1].avail_in;
      if (v2)
      {
LABEL_9:
        CFRelease(v2);
      }
    }

    free(strm[1].total_in);

    free(strm);
  }
}

CGColorSpaceRef CGColorSpaceCreateICCBased(size_t nComponents, const CGFloat *range, CGDataProviderRef profile, CGColorSpaceRef alternate)
{
  v4 = 0;
  if (nComponents <= 4)
  {
    v5 = nComponents;
    if (((1 << nComponents) & 0x1A) != 0)
    {
      if (alternate && (CGColorSpaceGetType(alternate) == 9 || *(*(alternate + 3) + 48) != v5))
      {
        return 0;
      }

      v9 = CGDataProviderCopyData(profile);
      v4 = CGColorSpaceCreateWithICCData(v9);
      if (v9)
      {
        CFRelease(v9);
      }

      if (!v4 || (v10 = *(v4 + 3), *(v10 + 48) != v5))
      {
LABEL_23:
        CGColorSpaceRelease(v4);
        if (alternate)
        {
          CFRetain(alternate);
          return alternate;
        }

        return 0;
      }

      if (range)
      {
        v11 = CGColorSpaceICCGetRange(v4);
        while (*range == *v11)
        {
          ++v11;
          ++range;
          if (!--v5)
          {
            v10 = *(v4 + 3);
            goto LABEL_15;
          }
        }

        goto LABEL_23;
      }

LABEL_15:
      v12 = *(v10 + 24);
      if ((v12 - 10) >= 2 && v12 != 6)
      {
        _CGHandleAssert("CGColorSpaceICCSetAlternate", 594, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_ICC.c", "s->state->type == kCGColorSpaceICCBased || s->state->type == kCGColorSpaceProfileSets || s->state->type == kCGColorSpaceFlexGTCProxy", "Colorspace not ICC. type = %d", *(v10 + 24));
      }

      CGColorSpaceRelease(*(*(v10 + 96) + 48));
      if (alternate)
      {
        CFRetain(alternate);
      }

      *(*(*(v4 + 3) + 96) + 48) = alternate;
    }
  }

  return v4;
}

double sub_183F486E8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_183F4872C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_183F4872C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1843903A8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  sub_183F3FEF4();
  sub_1843901D8();
  v5 = v14;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  sub_1843901D8();
  v6 = v14;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  sub_1843901D8();
  v7 = v14;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  sub_1843901D8();
  v8 = v14;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  sub_1843901D8();
  v9 = v14;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  sub_1843901D8();
  v10 = v14;
  __swift_destroy_boxed_opaque_existential_0(v12);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v10;
  return result;
}

_DWORD *RGBAf16_pattern(uint64_t a1, _DWORD *a2, unsigned int a3, int a4, float *a5, float a6)
{
  v9 = *(*a1 + 64);
  _S10 = *v9;
  v10 = v9[1];
  if (a2 && a3 > 7 || (a2 = malloc_type_malloc(0x38uLL, 0x1080040E00A32E4uLL)) != 0)
  {
    if (_S10 <= a6)
    {
      _S0 = a6;
    }

    else
    {
      _S0 = _S10;
    }

    if (v10 < a6)
    {
      _S0 = v10;
    }

    if (a5)
    {
      v13 = a4;
    }

    else
    {
      v13 = 0;
    }

    if (v13 == 1)
    {
      _S10 = _S0 * *a5;
      _S1 = _S10;
      _S2 = _S10;
      goto LABEL_19;
    }

    if (v13 == 4)
    {
      v17 = a5[4];
      _S10 = _S0 * ((v10 - *a5) - v17);
      _S1 = _S0 * ((v10 - a5[1]) - v17);
      v16 = (v10 - a5[2]) - v17;
    }

    else
    {
      _S1 = _S10;
      _S2 = _S10;
      if (v13 != 3)
      {
LABEL_19:
        *a2 = xmmword_18439CD70;
        a2[6] = 0;
        *(a2 + 2) = 1;
        __asm { FCVT            H3, S10 }

        *(a2 + 24) = _H3;
        if (_S0 >= v10)
        {
          v23 = 0;
        }

        else
        {
          v23 = a2 + 12;
        }

        *(a2 + 4) = a2 + 12;
        *(a2 + 5) = v23;
        __asm { FCVT            H1, S1 }

        *(a2 + 25) = _H1;
        __asm { FCVT            H1, S2 }

        *(a2 + 26) = _H1;
        __asm { FCVT            H0, S0 }

        *(a2 + 27) = _H0;
        return a2;
      }

      _S10 = _S0 * *a5;
      _S1 = _S0 * a5[1];
      v16 = a5[2];
    }

    _S2 = _S0 * v16;
    goto LABEL_19;
  }

  return a2;
}

uint64_t RGBAf16_mark_inner(uint64_t *a1, int *a2, __n128 a3, __n128 a4, __n128 a5, __n128 _Q3, float32x4_t _Q4, float32x4_t a8, int8x16_t _Q6, float32x4_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v731 = *MEMORY[0x1E69E9840];
  v21 = *a2;
  v22 = *(a2 + 12);
  v23 = *(a2 + 6);
  v24 = *(*(*a1 + 56) + 16 * *a2 + 8 * (v22 == 0) + 4 * (v23 == 0));
  if (v24 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v26 = a2;
  v27 = a2[1];
  v28 = v27 - 1;
  if (v27 < 1)
  {
    return 0;
  }

  v29 = a2[2];
  v30 = (v29 - 1);
  if (v29 < 1)
  {
    return 0;
  }

  v31 = *(a2 + 17);
  if ((v21 & 0xFF0000) != 0x50000 && v31)
  {
    v32 = a2[32];
    if ((v32 | 8) == 8)
    {
      if ((*a2 & 0xFF00) == 0x400)
      {
        RGBAf16_mark_constmask(a2, v24, a3.n128_f64[0], a4, a5, _Q3, _Q4, *a8.i64, *_Q6.i64, a10, v31, a12, a13, a14, a15, a16);
      }

      else
      {
        RGBAf16_mark_pixelmask(a3, a4, a5, _Q3.n128_u64[0], _Q4, a8, _Q6, a10, *a1, a2, v24, a12, a13, a14, a15, a16);
      }
    }

    else
    {
      v60 = *a2 & 0xFF00;
      if ((v24 - 1) <= 1 && v60 == 1024 && v32 == 16)
      {
        if (v23)
        {
          v61 = *(a2 + 19);
          if (v61 && *(a2 + 18) == 2.0)
          {
            v729 = 0u;
            memset(v730, 0, sizeof(v730));
            v727 = 0u;
            v728 = 0u;
            RGBAf16_pattern(a1, &v727, 8u, *v61, *(v61 + 8), *(v61 + 16));
            RGBAf16_mark_const_deep_mask_BGColorARGB(v26, v24, v730, v73, v74, v75, v76, v77, v78, v79);
          }

          else
          {
            RGBAf16_mark_const_deep_mask_ARGB(a2, v24);
          }
        }

        else
        {
          RGBAf16_mark_const_deep_mask_XRGB(a2, v24, a3.n128_f64[0], a4.n128_f64[0]);
        }
      }

      else if ((v24 - 1) > 1 || v60 == 1024 || v32 != 16)
      {
        RGBAf16_mark_bits(*a1);
      }

      else
      {
        RGBAf16_mark_deep_pixel(a2, v24, a3.n128_f64[0], a4.n128_f64[0], a5.n128_f64[0], _Q3.n128_f64[0], *_Q4.i64, *a8.i64, *_Q6.i64, a10);
      }
    }

    return 1;
  }

  v685 = *(*(*a1 + 56) + 16 * *a2 + 8 * (v22 == 0) + 4 * (v23 == 0));
  if ((*a2 & 0xFF00) != 0x400)
  {
    v719 = a2[1];
    v723 = v29;
    v45 = *(a2 + 11);
    v46 = a2[7] >> 3;
    v47 = *(a2 + 5) + 8 * v46 * a2[4] + 8 * a2[3];
    v48 = a2[26];
    v49 = a2[27];
    v50 = a2[14];
    v51 = a2[15];
    v52 = a2[19] >> 3;
    if ((v21 & 0xFF00) == 0x100)
    {
      v45 += 8 * v52 * v51 + 8 * v50;
      if (v52 == v46)
      {
        v53 = (v47 - v45) >> 3;
        if (v53 < 1)
        {
          a12 = 1;
          v688 = a2[7] >> 3;
        }

        else if (v53 <= v27)
        {
          v47 += 8 * v28;
          a12 = 0xFFFFFFFFLL;
          v688 = a2[7] >> 3;
          v45 += 8 * v28;
        }

        else
        {
          v54 = v46 * v30;
          v55 = v45 + 8 * v46 * v30;
          v56 = v55 + 8 * v27 - 8;
          v57 = v47 + 8 * v54;
          v58 = v47 > v56;
          if (v47 > v56)
          {
            v59 = a2[7] >> 3;
          }

          else
          {
            v45 = v55;
            v47 = v57;
            v59 = -v46;
          }

          v688 = v59;
          if (!v58)
          {
            v46 = -v46;
          }

          a12 = 1;
        }
      }

      else
      {
        a12 = 1;
        v688 = a2[19] >> 3;
      }

      v679 = a2[15];
      v680 = a2[14];
      v62 = v22 != 0;
      if (v31)
      {
        LODWORD(v686) = 0;
        v713 = 0;
        v709 = 0;
        v63 = -1;
        v711 = v688;
        goto LABEL_50;
      }

      LODWORD(v686) = 0;
      v684 = a12;
      v70 = a12 * v27;
      v63 = -1;
      v52 = v688;
    }

    else
    {
      LODWORD(v688) = a2[16];
      v686 = a2[17];
      v709 = v45 + 8 * v52 * v686;
      v62 = v22 != 0;
      if (v31)
      {
        v711 = a2[19] >> 3;
        v679 = a2[15];
        v680 = a2[14];
        LODWORD(a12) = 1;
        v713 = *(a2 + 11);
        v63 = v713;
LABEL_50:
        v684 = a12;
        shape_enum_clip_alloc(a1, a2, v31, a12, v46, 1, v48, v49, v27, v29);
        v72 = v71;
        if (!v71)
        {
          return 1;
        }

        while (2)
        {
          a1 = shape_enum_clip_next(v72, &v722 + 1, &v722, &v719, &v723);
          if (!a1)
          {
            v460 = v72;
            goto LABEL_1018;
          }

          v687 = v72;
          if (v709)
          {
            v69 = v47 + 8 * v46 * v722 + 8 * SHIDWORD(v722);
            LODWORD(v27) = v719;
            v70 = v45 + 8 * v711 * ((v722 + v26[15]) % v686);
            v68 = v70 + 8 * ((HIDWORD(v722) + v26[14]) % v688);
            v63 = v70 + 8 * v688;
            v713 = v68;
            LODWORD(v70) = v719;
            v679 = (v722 + v26[15]) % v686;
            v680 = (HIDWORD(v722) + v26[14]) % v688;
          }

          else
          {
            LODWORD(v27) = v719;
            LODWORD(v70) = v719 * v684;
            v69 = v47 + 8 * v46 * v722 + 8 * HIDWORD(v722) * v684;
            v68 = v45 + 8 * v722 * v688 + 8 * HIDWORD(v722) * v684;
            v711 = v688 - v719 * v684;
          }

          v70 = v70;
LABEL_56:
          v707 = v46 - v70;
          v704 = v27;
          switch(v685)
          {
            case 0:
              v80 = v69 - 8 * v27 + 8;
              v81 = v707 + v27;
              if (v684 < 0)
              {
                v81 = v707 - v27;
              }

              else
              {
                v80 = v69;
              }

              v82 = (v80 + 8 * ((v81 * (v723 - 1)) & (v81 >> 63)));
              if (v81 < 0)
              {
                v81 = -v81;
              }

              CGBlt_fillBytes(8 * v27, v723, 0, v82, 8 * v81);
              goto LABEL_671;
            case 1:
              v298 = *(v26 + 1);
              v683 = v47;
              if (v298 == 2)
              {
                if (v27 >= 4 && (8 * v688) <= 0x40)
                {
                  a3.n128_u32[0] = 8 * v688;
                  v461 = vcnt_s8(a3.n128_u64[0]);
                  v461.i16[0] = vaddlv_u8(v461);
                  if (v461.i32[0] <= 1u)
                  {
                    CGSFillDRAM64(v69, 8 * (v27 + v707), 8 * v27, v723, v45, 8 * v711, 8 * v688, v686, 8 * v680, v679);
                    goto LABEL_671;
                  }
                }

LABEL_684:
                v682 = v45;
                v462 = v723;
                if (use_vImage_fp16_compositing(void)::predicate != -1)
                {
                  dispatch_once(&use_vImage_fp16_compositing(void)::predicate, &__block_literal_global_21944);
                }

                if (use_vImage_fp16_compositing(void)::status == 1)
                {
                  LODWORD(v715) = 66051;
                  *&v727 = v69;
                  *(&v727 + 1) = v462;
                  *&v728 = v27;
                  *(&v728 + 1) = 8 * (v707 + v27);
                  v724 = v68;
                  v725.i64[0] = v462;
                  v725.i64[1] = v27;
                  v726 = 8 * (v711 + v27);
                  vImageCGCompositePixelShape_ARGB16F();
                  goto LABEL_669;
                }

                v463 = 8 * v684;
                if (v23 && !v62)
                {
                  v464 = v27 + 1;
                  v465 = v63;
                  v466 = v713;
                  v72 = v687;
                  do
                  {
                    v467 = v464;
                    do
                    {
                      *v69 = *v68;
                      *(v69 + 4) = *(v68 + 4);
                      *(v69 + 6) = COERCE_UNSIGNED_INT(1.0);
                      v468 = v68 + 8 * v684;
                      if (v468 >= v465)
                      {
                        v469 = -v688;
                      }

                      else
                      {
                        v469 = 0;
                      }

                      v68 = v468 + 8 * v469;
                      v69 += v463;
                      --v467;
                    }

                    while (v467 > 1);
                    v69 += 8 * v707;
                    v470 = v466 + 8 * v711;
                    if (v470 >= v709)
                    {
                      v471 = -(v711 * v686);
                    }

                    else
                    {
                      v471 = 0;
                    }

                    v472 = v470 + 8 * v471;
                    v473 = v465 + 8 * v471 + 8 * v711;
                    if (v709)
                    {
                      v465 = v473;
                      v466 = v472;
                      v68 = v472;
                    }

                    else
                    {
                      v68 += 8 * v711;
                    }

                    _VF = __OFSUB__(v462--, 1);
                  }

                  while (!((v462 < 0) ^ _VF | (v462 == 0)));
                }

                else
                {
                  v484 = v27 + 1;
                  v485 = v63;
                  v486 = v713;
                  v72 = v687;
                  do
                  {
                    v487 = v484;
                    do
                    {
                      *v69 = *v68;
                      v488 = v68 + 8 * v684;
                      if (v488 >= v485)
                      {
                        v489 = -v711;
                      }

                      else
                      {
                        v489 = 0;
                      }

                      v68 = v488 + 8 * v489;
                      v69 += v463;
                      --v487;
                    }

                    while (v487 > 1);
                    v69 += 8 * v707;
                    v490 = v486 + 8 * v711;
                    if (v490 >= v709)
                    {
                      v491 = -(v711 * v686);
                    }

                    else
                    {
                      v491 = 0;
                    }

                    v492 = v490 + 8 * v491;
                    v493 = v485 + 8 * v491 + 8 * v711;
                    if (v709)
                    {
                      v485 = v493;
                      v486 = v492;
                      v68 = v492;
                    }

                    else
                    {
                      v68 += 8 * v711;
                    }

                    _VF = __OFSUB__(v462--, 1);
                  }

                  while (!((v462 < 0) ^ _VF | (v462 == 0)));
                }

                v47 = v683;
                goto LABEL_672;
              }

              if (v298 != 1)
              {
                goto LABEL_684;
              }

              v299 = v723;
              v300 = v723;
              if (use_vImage_fp16_compositing(void)::predicate != -1)
              {
                v705 = v723;
                dispatch_once(&use_vImage_fp16_compositing(void)::predicate, &__block_literal_global_21944);
                v299 = v705;
              }

              if (v684 & 0x80000000) == 0 && (use_vImage_fp16_compositing(void)::status)
              {
                LODWORD(v715) = 66051;
                *&v727 = v69;
                *(&v727 + 1) = v300;
                *&v728 = v27;
                *(&v728 + 1) = 8 * (v707 + v27);
                v724 = v68;
                v725.i64[0] = v300;
                v725.i64[1] = v27;
                v726 = 8 * (v711 + v27);
                vImageCGCompositePixelShape_ARGB16F();
                goto LABEL_670;
              }

              if (v23 && !v62)
              {
                v474 = v27 + 1;
                v475 = v63;
                v476 = v713;
                v47 = v683;
                v72 = v687;
                do
                {
                  v477 = v474;
                  do
                  {
                    *v69 = *v68;
                    *(v69 + 4) = *(v68 + 4);
                    *(v69 + 6) = COERCE_UNSIGNED_INT(1.0);
                    v478 = v68 + 8 * v684;
                    if (v478 >= v475)
                    {
                      v479 = -v688;
                    }

                    else
                    {
                      v479 = 0;
                    }

                    v68 = v478 + 8 * v479;
                    v69 += 8 * v684;
                    --v477;
                  }

                  while (v477 > 1);
                  v69 += 8 * v707;
                  v480 = v476 + 8 * v711;
                  if (v480 >= v709)
                  {
                    v481 = -(v711 * v686);
                  }

                  else
                  {
                    v481 = 0;
                  }

                  v482 = v480 + 8 * v481;
                  v483 = v475 + 8 * v481 + 8 * v711;
                  if (v709)
                  {
                    v475 = v483;
                    v476 = v482;
                    v68 = v482;
                  }

                  else
                  {
                    v68 += 8 * v711;
                  }

                  _VF = __OFSUB__(v299--, 1);
                }

                while (!((v299 < 0) ^ _VF | (v299 == 0)));
                goto LABEL_672;
              }

              if (v684 < 0)
              {
                v494 = v711 - v27;
                v496 = 8 * v27 - 8;
                v68 -= v496;
                v495 = v707 - v27;
                v69 -= v496;
              }

              else
              {
                v494 = v711 + v27;
                v495 = v707 + v27;
              }

              if (v494 >= 0)
              {
                LODWORD(v497) = v494;
              }

              else
              {
                v497 = -v494;
              }

              v498 = (v68 + 8 * ((v494 * (v300 - 1)) & (v494 >> 63)));
              v499 = (v495 * (v300 - 1)) & (v495 >> 63);
              if (v495 < 0)
              {
                v495 = -v495;
              }

              CGBlt_copyBytes(8 * v27, v299, v498, (v69 + 8 * v499), 8 * v497, 8 * v495);
LABEL_670:
              v47 = v683;
LABEL_671:
              v72 = v687;
LABEL_672:
              if (!v72)
              {
                return 1;
              }

              v722 = 0;
              continue;
            case 2:
              v247 = v723;
              while (1)
              {
                v248 = v27;
                do
                {
                  if (*(v68 + 6) >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
                  {
                    v254 = *v68;
                  }

                  else
                  {
                    __asm { FCMP            H2, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_286;
                    }

                    __asm { FCVT            S2, H2 }

                    _Q4.i32[0] = *v68;
                    v251.i64[0] = vcvtq_f32_f16(*_Q4.f32).u64[0];
                    _H5 = *(v68 + 4);
                    __asm { FCVT            S5, H5 }

                    v251.i64[1] = __PAIR64__(LODWORD(_S2), _S5);
                    _Q4 = vmlaq_n_f32(v251, vcvtq_f32_f16(*v69), 1.0 - _S2);
                    v254 = vcvt_f16_f32(_Q4);
                  }

                  *v69 = v254;
LABEL_286:
                  v255 = v68 + 8 * v684;
                  if (v255 >= v63)
                  {
                    v256 = -v688;
                  }

                  else
                  {
                    v256 = 0;
                  }

                  v68 = v255 + 8 * v256;
                  v69 += 8 * v684;
                  --v248;
                }

                while (v248);
                v69 += 8 * v707;
                v257 = v713;
                v258 = v713 + 8 * v711;
                if (v258 >= v709)
                {
                  v259 = -(v711 * v686);
                }

                else
                {
                  v259 = 0;
                }

                v260 = v258 + 8 * v259;
                v261 = v63 + 8 * v259 + 8 * v711;
                if (v709)
                {
                  v63 = v261;
                  v257 = v260;
                }

                v713 = v257;
                if (v709)
                {
                  v68 = v260;
                }

                else
                {
                  v68 += 8 * v711;
                }

                if (!--v247)
                {
                  goto LABEL_644;
                }
              }

            case 3:
              v272 = v723;
              do
              {
                v273 = v27;
                do
                {
                  __asm { FCMP            H1, #0 }

                  if (!_ZF & _CF)
                  {
                    v275 = *v68;
                    if (_H1 >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
                    {
                      *v69 = v275;
                      *(v69 + 2) = *(v68 + 2);
                      _H1 = COERCE_UNSIGNED_INT(1.0);
                      if (v62)
                      {
                        _H1 = *(v68 + 6);
                      }
                    }

                    else
                    {
                      *v69 = _H1 * v275;
                      *(v69 + 2) = _H1 * *(v68 + 2);
                      *(v69 + 4) = _H1 * *(v68 + 4);
                      _S2 = 1.0;
                      if (v62)
                      {
                        _H2 = *(v68 + 6);
                        __asm { FCVT            S2, H2 }
                      }

                      __asm { FCVT            S1, H1 }

                      _S1 = _S2 * _S1;
                      __asm { FCVT            H1, S1 }
                    }

                    *(v69 + 6) = _H1;
                  }

                  else
                  {
                    *v69 = 0;
                  }

                  v281 = v68 + 8 * v684;
                  if (v281 >= v63)
                  {
                    v282 = -v688;
                  }

                  else
                  {
                    v282 = 0;
                  }

                  v68 = v281 + 8 * v282;
                  v69 += 8 * v684;
                  --v273;
                }

                while (v273);
                v69 += 8 * v707;
                v283 = v713;
                v284 = v713 + 8 * v711;
                if (v284 >= v709)
                {
                  v285 = -(v711 * v686);
                }

                else
                {
                  v285 = 0;
                }

                v286 = v284 + 8 * v285;
                v287 = v63 + 8 * v285 + 8 * v711;
                if (v709)
                {
                  v63 = v287;
                  v283 = v286;
                }

                v713 = v283;
                if (v709)
                {
                  v68 = v286;
                }

                else
                {
                  v68 += 8 * v711;
                }

                --v272;
              }

              while (v272);
              goto LABEL_644;
            case 4:
              v176 = v723;
              do
              {
                v177 = v27;
                do
                {
                  _H1 = *(v69 + 6);
                  __asm { FCVT            S1, H1 }

                  v180 = 1.0 - _S1;
                  if (v180 <= 0.0)
                  {
                    *v69 = 0;
                  }

                  else
                  {
                    _H2 = *v68;
                    if (v180 >= 1.0)
                    {
                      *v69 = _H2;
                      *(v69 + 2) = *(v68 + 2);
                      _H1 = COERCE_UNSIGNED_INT(1.0);
                      if (v62)
                      {
                        _H1 = *(v68 + 6);
                      }
                    }

                    else
                    {
                      __asm { FCVT            S2, H2 }

                      _S2 = v180 * _S2;
                      __asm { FCVT            H2, S2 }

                      *v69 = LOWORD(_S2);
                      LOWORD(_S2) = *(v68 + 2);
                      __asm { FCVT            S2, H2 }

                      _S2 = v180 * _S2;
                      __asm { FCVT            H2, S2 }

                      *(v69 + 2) = LOWORD(_S2);
                      LOWORD(_S2) = *(v68 + 4);
                      __asm { FCVT            S2, H2 }

                      _S2 = v180 * _S2;
                      __asm { FCVT            H2, S2 }

                      *(v69 + 4) = LOWORD(_S2);
                      _S2 = 1.0;
                      if (v62)
                      {
                        _H2 = *(v68 + 6);
                        __asm { FCVT            S2, H2 }
                      }

                      _S1 = v180 * _S2;
                      __asm { FCVT            H1, S1 }
                    }

                    *(v69 + 6) = _H1;
                  }

                  v192 = v68 + 8 * v684;
                  if (v192 >= v63)
                  {
                    v193 = -v688;
                  }

                  else
                  {
                    v193 = 0;
                  }

                  v68 = v192 + 8 * v193;
                  v69 += 8 * v684;
                  --v177;
                }

                while (v177);
                v69 += 8 * v707;
                v194 = v713;
                v195 = v713 + 8 * v711;
                if (v195 >= v709)
                {
                  v196 = -(v711 * v686);
                }

                else
                {
                  v196 = 0;
                }

                v197 = v195 + 8 * v196;
                v198 = v63 + 8 * v196 + 8 * v711;
                if (v709)
                {
                  v63 = v198;
                  v194 = v197;
                }

                v713 = v194;
                if (v709)
                {
                  v68 = v197;
                }

                else
                {
                  v68 += 8 * v711;
                }

                --v176;
              }

              while (v176);
              goto LABEL_644;
            case 5:
              v320 = v723;
              do
              {
                v321 = v27;
                do
                {
                  v322 = vcvtq_f32_f16(*v68);
                  v323 = vcvtq_f32_f16(*v69);
                  *v69 = vcvt_f16_f32(vmlaq_laneq_f32(vmulq_n_f32(v323, 1.0 - v322.f32[3]), v322, v323, 3));
                  v324 = v68 + 8 * v684;
                  if (v324 >= v63)
                  {
                    v325 = -v688;
                  }

                  else
                  {
                    v325 = 0;
                  }

                  v68 = v324 + 8 * v325;
                  v69 += 8 * v684;
                  --v321;
                }

                while (v321);
                v69 += 8 * v707;
                v326 = v713;
                v327 = v713 + 8 * v711;
                if (v327 >= v709)
                {
                  v328 = -(v711 * v686);
                }

                else
                {
                  v328 = 0;
                }

                v329 = v327 + 8 * v328;
                v330 = v63 + 8 * v328 + 8 * v711;
                if (v709)
                {
                  v63 = v330;
                  v326 = v329;
                }

                v713 = v326;
                if (v709)
                {
                  v68 = v329;
                }

                else
                {
                  v68 += 8 * v711;
                }

                --v320;
              }

              while (v320);
              goto LABEL_644;
            case 6:
              v351 = v723;
              while (1)
              {
                v352 = v27;
                do
                {
                  _H1 = *(v69 + 6);
                  __asm { FCVT            S1, H1 }

                  v355 = 1.0 - _S1;
                  if ((1.0 - _S1) >= 1.0)
                  {
                    *v69 = *v68;
                    *(v69 + 4) = *(v68 + 4);
                    _H1 = COERCE_UNSIGNED_INT(1.0);
                    if (v62)
                    {
                      _H1 = *(v68 + 6);
                    }
                  }

                  else
                  {
                    if (v355 <= 0.0)
                    {
                      goto LABEL_498;
                    }

                    _H3 = *v69;
                    __asm { FCVT            S3, H3 }

                    _H4 = *v68;
                    __asm { FCVT            S4, H4 }

                    _S3 = _S3 + (_S4 * v355);
                    __asm { FCVT            H3, S3 }

                    *v69 = LOWORD(_S3);
                    LOWORD(_S3) = *(v69 + 2);
                    __asm { FCVT            S3, H3 }

                    LOWORD(_S4) = *(v68 + 2);
                    __asm { FCVT            S4, H4 }

                    _S3 = _S3 + (_S4 * v355);
                    __asm { FCVT            H3, S3 }

                    *(v69 + 2) = LOWORD(_S3);
                    LOWORD(_S3) = *(v69 + 4);
                    __asm { FCVT            S3, H3 }

                    LOWORD(_S4) = *(v68 + 4);
                    __asm { FCVT            S4, H4 }

                    _S3 = _S3 + (_S4 * v355);
                    __asm { FCVT            H3, S3 }

                    *(v69 + 4) = LOWORD(_S3);
                    _S3 = 1.0;
                    if (v62)
                    {
                      _H3 = *(v68 + 6);
                      __asm { FCVT            S3, H3 }
                    }

                    _S1 = _S1 + (_S3 * v355);
                    __asm { FCVT            H1, S1 }
                  }

                  *(v69 + 6) = _H1;
LABEL_498:
                  v371 = v68 + 8 * v684;
                  if (v371 >= v63)
                  {
                    v372 = -v688;
                  }

                  else
                  {
                    v372 = 0;
                  }

                  v68 = v371 + 8 * v372;
                  v69 += 8 * v684;
                  --v352;
                }

                while (v352);
                v69 += 8 * v707;
                v373 = v713;
                v374 = v713 + 8 * v711;
                if (v374 >= v709)
                {
                  v375 = -(v711 * v686);
                }

                else
                {
                  v375 = 0;
                }

                v376 = v374 + 8 * v375;
                v377 = v63 + 8 * v375 + 8 * v711;
                if (v709)
                {
                  v63 = v377;
                  v373 = v376;
                }

                v713 = v373;
                if (v709)
                {
                  v68 = v376;
                }

                else
                {
                  v68 += 8 * v711;
                }

                if (!--v351)
                {
                  goto LABEL_644;
                }
              }

            case 7:
              v288 = v723;
              do
              {
                v289 = v27;
                do
                {
                  __asm { FCMP            H1, #0 }

                  if (!_ZF & _CF)
                  {
                    if (_H1 < COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
                    {
                      *v69 = vmul_n_f16(*v69, _H1);
                    }
                  }

                  else
                  {
                    *v69 = 0;
                  }

                  v291 = v68 + 8 * v684;
                  if (v291 >= v63)
                  {
                    v292 = -v688;
                  }

                  else
                  {
                    v292 = 0;
                  }

                  v68 = v291 + 8 * v292;
                  v69 += 8 * v684;
                  --v289;
                }

                while (v289);
                v69 += 8 * v707;
                v293 = v713;
                v294 = v713 + 8 * v711;
                if (v294 >= v709)
                {
                  v295 = -(v711 * v686);
                }

                else
                {
                  v295 = 0;
                }

                v296 = v294 + 8 * v295;
                v297 = v63 + 8 * v295 + 8 * v711;
                if (v709)
                {
                  v63 = v297;
                  v293 = v296;
                }

                v713 = v293;
                if (v709)
                {
                  v68 = v296;
                }

                else
                {
                  v68 += 8 * v711;
                }

                --v288;
              }

              while (v288);
              goto LABEL_644;
            case 8:
              v399 = v723;
              do
              {
                v400 = v27;
                do
                {
                  _H1 = *(v68 + 6);
                  __asm { FCVT            S1, H1 }

                  v403 = 1.0 - _S1;
                  if (v403 <= 0.0)
                  {
                    *v69 = 0;
                  }

                  else if (v403 < 1.0)
                  {
                    *v69 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v69), v403));
                  }

                  v404 = v68 + 8 * v684;
                  if (v404 >= v63)
                  {
                    v405 = -v688;
                  }

                  else
                  {
                    v405 = 0;
                  }

                  v68 = v404 + 8 * v405;
                  v69 += 8 * v684;
                  --v400;
                }

                while (v400);
                v69 += 8 * v707;
                v406 = v713;
                v407 = v713 + 8 * v711;
                if (v407 >= v709)
                {
                  v408 = -(v711 * v686);
                }

                else
                {
                  v408 = 0;
                }

                v409 = v407 + 8 * v408;
                v410 = v63 + 8 * v408 + 8 * v711;
                if (v709)
                {
                  v63 = v410;
                  v406 = v409;
                }

                v713 = v406;
                if (v709)
                {
                  v68 = v409;
                }

                else
                {
                  v68 += 8 * v711;
                }

                --v399;
              }

              while (v399);
              goto LABEL_644;
            case 9:
              v216 = v723;
              do
              {
                v217 = v27;
                do
                {
                  v218 = vcvtq_f32_f16(*v69);
                  v219 = vcvtq_f32_f16(*v68);
                  *v69 = vcvt_f16_f32(vmlaq_n_f32(vmulq_laneq_f32(v218, v219, 3), v219, 1.0 - v218.f32[3]));
                  v220 = v68 + 8 * v684;
                  if (v220 >= v63)
                  {
                    v221 = -v688;
                  }

                  else
                  {
                    v221 = 0;
                  }

                  v68 = v220 + 8 * v221;
                  v69 += 8 * v684;
                  --v217;
                }

                while (v217);
                v69 += 8 * v707;
                v222 = v713;
                v223 = v713 + 8 * v711;
                if (v223 >= v709)
                {
                  v224 = -(v711 * v686);
                }

                else
                {
                  v224 = 0;
                }

                v225 = v223 + 8 * v224;
                v226 = v63 + 8 * v224 + 8 * v711;
                if (v709)
                {
                  v63 = v226;
                  v222 = v225;
                }

                v713 = v222;
                if (v709)
                {
                  v68 = v225;
                }

                else
                {
                  v68 += 8 * v711;
                }

                --v216;
              }

              while (v216);
              goto LABEL_644;
            case 10:
              v388 = v723;
              do
              {
                v389 = v27;
                do
                {
                  v390 = vcvtq_f32_f16(*v69);
                  v391 = vcvtq_f32_f16(*v68);
                  *v69 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(v390, 1.0 - v391.f32[3]), v391, 1.0 - v390.f32[3]));
                  v392 = v68 + 8 * v684;
                  if (v392 >= v63)
                  {
                    v393 = -v688;
                  }

                  else
                  {
                    v393 = 0;
                  }

                  v68 = v392 + 8 * v393;
                  v69 += 8 * v684;
                  --v389;
                }

                while (v389);
                v69 += 8 * v707;
                v394 = v713;
                v395 = v713 + 8 * v711;
                if (v395 >= v709)
                {
                  v396 = -(v711 * v686);
                }

                else
                {
                  v396 = 0;
                }

                v397 = v395 + 8 * v396;
                v398 = v63 + 8 * v396 + 8 * v711;
                if (v709)
                {
                  v63 = v398;
                  v394 = v397;
                }

                v713 = v394;
                if (v709)
                {
                  v68 = v397;
                }

                else
                {
                  v68 += 8 * v711;
                }

                --v388;
              }

              while (v388);
              goto LABEL_644;
            case 11:
              v134 = v723;
              do
              {
                v135 = v27;
                do
                {
                  _S0 = 1.0;
                  _S1 = 1.0;
                  if (v23)
                  {
                    _H1 = *(v69 + 6);
                    __asm { FCVT            S1, H1 }
                  }

                  if (v62)
                  {
                    _H0 = *(v68 + 6);
                    __asm { FCVT            S0, H0 }
                  }

                  _S3 = 1.0;
                  _S4 = 1.0;
                  if (v23)
                  {
                    _H2 = *(v69 + 6);
                    __asm { FCVT            S4, H2 }
                  }

                  if (v62)
                  {
                    _H2 = *(v68 + 6);
                    __asm { FCVT            S3, H2 }
                  }

                  _S0 = _S1 + _S0;
                  _S1 = 1.0;
                  if (_S0 > 1.0)
                  {
                    _S0 = 1.0;
                  }

                  _S2 = 1.0;
                  if (v23)
                  {
                    _H2 = *(v69 + 6);
                    __asm { FCVT            S2, H2 }
                  }

                  if (v62)
                  {
                    _H1 = *(v68 + 6);
                    __asm { FCVT            S1, H1 }
                  }

                  _H5 = *v69;
                  __asm { FCVT            S5, H5 }

                  v151 = _S4 - _S5;
                  LOWORD(_S5) = *v68;
                  __asm { FCVT            S5, H5 }

                  v153 = v151 + (_S3 - _S5);
                  _H5 = *(v69 + 2);
                  _H4 = *(v68 + 2);
                  _S3 = _S0 - v153;
                  __asm { FCVT            H3, S3 }

                  *v69 = LOWORD(_S3);
                  _S3 = 1.0;
                  _S6 = 1.0;
                  if (v23)
                  {
                    _H6 = *(v69 + 6);
                    __asm { FCVT            S6, H6 }
                  }

                  if (v62)
                  {
                    _H3 = *(v68 + 6);
                    __asm { FCVT            S3, H3 }
                  }

                  __asm
                  {
                    FCVT            S5, H5
                    FCVT            S4, H4
                  }

                  v163 = (_S2 - _S5) + (_S1 - _S4);
                  _H2 = *(v69 + 4);
                  __asm { FCVT            S2, H2 }

                  LOWORD(_S4) = *(v68 + 4);
                  __asm { FCVT            S4, H4 }

                  _S1 = _S0 - v163;
                  __asm { FCVT            H1, S1 }

                  *(v69 + 2) = LOWORD(_S1);
                  __asm { FCVT            H1, S0 }

                  *(v69 + 6) = LOWORD(_S1);
                  _S0 = _S0 - ((_S6 - _S2) + (_S3 - _S4));
                  __asm { FCVT            H0, S0 }

                  *(v69 + 4) = LOWORD(_S0);
                  v169 = v68 + 8 * v684;
                  if (v169 >= v63)
                  {
                    v170 = -v688;
                  }

                  else
                  {
                    v170 = 0;
                  }

                  v68 = v169 + 8 * v170;
                  v69 += 8 * v684;
                  --v135;
                }

                while (v135);
                v69 += 8 * v707;
                v171 = v713;
                v172 = v713 + 8 * v711;
                if (v172 >= v709)
                {
                  v173 = -(v711 * v686);
                }

                else
                {
                  v173 = 0;
                }

                v174 = v172 + 8 * v173;
                v175 = v63 + 8 * v173 + 8 * v711;
                if (v709)
                {
                  v63 = v175;
                  v171 = v174;
                }

                v713 = v171;
                if (v709)
                {
                  v68 = v174;
                }

                else
                {
                  v68 += 8 * v711;
                }

                --v134;
              }

              while (v134);
              goto LABEL_644;
            case 12:
              v199 = v723;
              do
              {
                v200 = v27;
                do
                {
                  v201 = *(v69 + 2);
                  v202 = *(v68 + 2);
                  *v69 = *v69 + *v68;
                  *(v69 + 2) = v201 + v202;
                  _S1 = 1.0;
                  if (v62)
                  {
                    _H1 = *(v68 + 6);
                    __asm { FCVT            S1, H1 }
                  }

                  _H2 = *(v69 + 6);
                  __asm { FCVT            S2, H2 }

                  _S1 = _S1 + _S2;
                  if (_S1 > 1.0)
                  {
                    _S1 = 1.0;
                  }

                  *(v69 + 4) = *(v69 + 4) + *(v68 + 4);
                  __asm { FCVT            H1, S1 }

                  *(v69 + 6) = _H1;
                  v209 = v68 + 8 * v684;
                  if (v209 >= v63)
                  {
                    v210 = -v688;
                  }

                  else
                  {
                    v210 = 0;
                  }

                  v68 = v209 + 8 * v210;
                  v69 += 8 * v684;
                  --v200;
                }

                while (v200);
                v69 += 8 * v707;
                v211 = v713;
                v212 = v713 + 8 * v711;
                if (v212 >= v709)
                {
                  v213 = -(v711 * v686);
                }

                else
                {
                  v213 = 0;
                }

                v214 = v212 + 8 * v213;
                v215 = v63 + 8 * v213 + 8 * v711;
                if (v709)
                {
                  v63 = v215;
                  v211 = v214;
                }

                v713 = v211;
                if (v709)
                {
                  v68 = v214;
                }

                else
                {
                  v68 += 8 * v711;
                }

                --v199;
              }

              while (v199);
              goto LABEL_644;
            case 13:
              v682 = v45;
              v683 = v47;
              v681 = v46;
              v341 = v723;
              while (1)
              {
                v698 = v341;
                do
                {
                  _S4 = 1.0;
                  a8.i32[0] = 1.0;
                  if (v62)
                  {
                    __asm { FCMP            H0, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_475;
                    }

                    __asm { FCVT            S5, H0 }
                  }

                  _Q3.n128_u16[0] = *(v69 + 6);
                  if (!v23)
                  {
                    goto LABEL_473;
                  }

                  __asm { FCMP            H3, #0 }

                  if (!_ZF & _CF)
                  {
                    __asm { FCVT            S4, H3 }

LABEL_473:
                    a3.n128_u16[0] = *v69;
                    a4.n128_u16[0] = *(v69 + 2);
                    a5.n128_u16[0] = *(v69 + 4);
                    *v69 = PDAmultiplyPDA(a3, a4, a5, _Q3.n128_f64[0], _S4, *a8.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, v48, v49, *v68, HIWORD(*v68), *(v68 + 4), a8.f32[0]);
                    *(v69 + 2) = a4.n128_u16[0];
                    *(v69 + 4) = a5.n128_u16[0];
                    goto LABEL_474;
                  }

                  *v69 = *v68;
                  *(v69 + 4) = *(v68 + 4);
                  __asm { FCVT            H3, S5 }

LABEL_474:
                  *(v69 + 6) = _Q3.n128_u16[0];
LABEL_475:
                  v344 = v68 + 8 * v684;
                  if (v344 >= v63)
                  {
                    v345 = -v688;
                  }

                  else
                  {
                    v345 = 0;
                  }

                  v68 = v344 + 8 * v345;
                  v69 += 8 * v684;
                  LODWORD(v27) = v27 - 1;
                }

                while (v27);
                v69 += 8 * v707;
                v346 = v713;
                v347 = v713 + 8 * v711;
                v348 = -(v711 * v686);
                if (v347 < v709)
                {
                  v348 = 0;
                }

                v349 = v347 + 8 * v348;
                v350 = v63 + 8 * v348 + 8 * v711;
                if (v709)
                {
                  v63 = v350;
                  v346 = v349;
                }

                v713 = v346;
                if (v709)
                {
                  v68 = v349;
                }

                else
                {
                  v68 += 8 * v711;
                }

                v341 = v698 - 1;
                LODWORD(v27) = v704;
                if (v698 == 1)
                {
LABEL_668:
                  v723 = 0;
                  v26 = a2;
                  v46 = v681;
LABEL_669:
                  v45 = v682;
                  goto LABEL_670;
                }
              }

            case 14:
              v103 = v723;
              while (1)
              {
                v104 = v27;
                do
                {
                  _S2 = 1.0;
                  _S1 = 1.0;
                  if (v62)
                  {
                    __asm { FCMP            H1, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_122;
                    }

                    __asm { FCVT            S1, H1 }
                  }

                  if (!v23)
                  {
                    goto LABEL_120;
                  }

                  __asm { FCMP            H2, #0 }

                  if (!_ZF & _CF)
                  {
                    __asm { FCVT            S2, H2 }

LABEL_120:
                    _H3 = *v69;
                    _H4 = *(v69 + 2);
                    _H5 = *(v69 + 4);
                    _H6 = *v68;
                    _H7 = *(v68 + 2);
                    _H16 = *(v68 + 4);
                    __asm
                    {
                      FCVT            S3, H3
                      FCVT            S4, H4
                      FCVT            S5, H5
                      FCVT            S6, H6
                      FCVT            S7, H7
                      FCVT            S16, H16
                    }

                    _S3 = _S3 + (_S6 * (1.0 - _S3));
                    _S4 = _S4 + (_S7 * (1.0 - _S4));
                    _S5 = _S5 + (_S16 * (1.0 - _S5));
                    _S1 = (_S1 + _S2) - (_S2 * _S1);
                    __asm
                    {
                      FCVT            H2, S3
                      FCVT            H3, S4
                      FCVT            H4, S5
                    }

                    *v69 = _H2;
                    *(v69 + 2) = LOWORD(_S3);
                    __asm { FCVT            H1, S1 }

                    *(v69 + 4) = LOWORD(_S4);
                    goto LABEL_121;
                  }

                  *v69 = *v68;
                  *(v69 + 4) = *(v68 + 4);
                  __asm { FCVT            H1, S1 }

LABEL_121:
                  *(v69 + 6) = _H1;
LABEL_122:
                  v127 = v68 + 8 * v684;
                  if (v127 >= v63)
                  {
                    v128 = -v688;
                  }

                  else
                  {
                    v128 = 0;
                  }

                  v68 = v127 + 8 * v128;
                  v69 += 8 * v684;
                  --v104;
                }

                while (v104);
                v69 += 8 * v707;
                v129 = v713;
                v130 = v713 + 8 * v711;
                if (v130 >= v709)
                {
                  v131 = -(v711 * v686);
                }

                else
                {
                  v131 = 0;
                }

                v132 = v130 + 8 * v131;
                v133 = v63 + 8 * v131 + 8 * v711;
                if (v709)
                {
                  v63 = v133;
                  v129 = v132;
                }

                v713 = v129;
                if (v709)
                {
                  v68 = v132;
                }

                else
                {
                  v68 += 8 * v711;
                }

                if (!--v103)
                {
                  goto LABEL_644;
                }
              }

            case 15:
              v682 = v45;
              v683 = v47;
              v681 = v46;
              v262 = v723;
              while (1)
              {
                v694 = v262;
                do
                {
                  _S4 = 1.0;
                  a8.i32[0] = 1.0;
                  if (v62)
                  {
                    __asm { FCMP            H0, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_311;
                    }

                    __asm { FCVT            S5, H0 }
                  }

                  _Q3.n128_u16[0] = *(v69 + 6);
                  if (!v23)
                  {
                    goto LABEL_309;
                  }

                  __asm { FCMP            H3, #0 }

                  if (!_ZF & _CF)
                  {
                    __asm { FCVT            S4, H3 }

LABEL_309:
                    a3.n128_u16[0] = *v69;
                    a4.n128_u16[0] = *(v69 + 2);
                    a5.n128_u16[0] = *(v69 + 4);
                    *v69 = PDAoverlayPDA(a3, a4, a5, _Q3.n128_f64[0], _S4, *a8.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, v48, v49, *v68, HIWORD(*v68), *(v68 + 4), a8.f32[0]);
                    *(v69 + 2) = a4.n128_u16[0];
                    *(v69 + 4) = a5.n128_u16[0];
                    goto LABEL_310;
                  }

                  *v69 = *v68;
                  *(v69 + 4) = *(v68 + 4);
                  __asm { FCVT            H3, S5 }

LABEL_310:
                  *(v69 + 6) = _Q3.n128_u16[0];
LABEL_311:
                  v265 = v68 + 8 * v684;
                  if (v265 >= v63)
                  {
                    v266 = -v688;
                  }

                  else
                  {
                    v266 = 0;
                  }

                  v68 = v265 + 8 * v266;
                  v69 += 8 * v684;
                  LODWORD(v27) = v27 - 1;
                }

                while (v27);
                v69 += 8 * v707;
                v267 = v713;
                v268 = v713 + 8 * v711;
                v269 = -(v711 * v686);
                if (v268 < v709)
                {
                  v269 = 0;
                }

                v270 = v268 + 8 * v269;
                v271 = v63 + 8 * v269 + 8 * v711;
                if (v709)
                {
                  v63 = v271;
                  v267 = v270;
                }

                v713 = v267;
                if (v709)
                {
                  v68 = v270;
                }

                else
                {
                  v68 += 8 * v711;
                }

                v262 = v694 - 1;
                LODWORD(v27) = v704;
                if (v694 == 1)
                {
                  goto LABEL_668;
                }
              }

            case 16:
              v682 = v45;
              v683 = v47;
              v681 = v46;
              v93 = v723;
              while (1)
              {
                v691 = v93;
                do
                {
                  _S4 = 1.0;
                  a8.i32[0] = 1.0;
                  if (v62)
                  {
                    __asm { FCMP            H0, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_98;
                    }

                    __asm { FCVT            S5, H0 }
                  }

                  _Q3.n128_u16[0] = *(v69 + 6);
                  if (!v23)
                  {
                    goto LABEL_96;
                  }

                  __asm { FCMP            H3, #0 }

                  if (!_ZF & _CF)
                  {
                    __asm { FCVT            S4, H3 }

LABEL_96:
                    a3.n128_u16[0] = *v69;
                    a4.n128_u16[0] = *(v69 + 2);
                    a5.n128_u16[0] = *(v69 + 4);
                    *v69 = PDAdarkenPDA(a3, a4.n128_f64[0], a5.n128_f64[0], _Q3.n128_f64[0], _S4, *a8.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, v48, v49, *v68, *(v68 + 4), a8.f32[0]);
                    *(v69 + 2) = a4.n128_u16[0];
                    *(v69 + 4) = a5.n128_u16[0];
                    goto LABEL_97;
                  }

                  *v69 = *v68;
                  *(v69 + 4) = *(v68 + 4);
                  __asm { FCVT            H3, S5 }

LABEL_97:
                  *(v69 + 6) = _Q3.n128_u16[0];
LABEL_98:
                  v96 = v68 + 8 * v684;
                  if (v96 >= v63)
                  {
                    v97 = -v688;
                  }

                  else
                  {
                    v97 = 0;
                  }

                  v68 = v96 + 8 * v97;
                  v69 += 8 * v684;
                  LODWORD(v27) = v27 - 1;
                }

                while (v27);
                v69 += 8 * v707;
                v98 = v713;
                v99 = v713 + 8 * v711;
                v100 = -(v711 * v686);
                if (v99 < v709)
                {
                  v100 = 0;
                }

                v101 = v99 + 8 * v100;
                v102 = v63 + 8 * v100 + 8 * v711;
                if (v709)
                {
                  v63 = v102;
                  v98 = v101;
                }

                v713 = v98;
                if (v709)
                {
                  v68 = v101;
                }

                else
                {
                  v68 += 8 * v711;
                }

                v93 = v691 - 1;
                LODWORD(v27) = v704;
                if (v691 == 1)
                {
                  goto LABEL_668;
                }
              }

            case 17:
              v682 = v45;
              v683 = v47;
              v681 = v46;
              v301 = v723;
              while (1)
              {
                v695 = v301;
                do
                {
                  _S4 = 1.0;
                  a8.i32[0] = 1.0;
                  if (v62)
                  {
                    __asm { FCMP            H0, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_387;
                    }

                    __asm { FCVT            S5, H0 }
                  }

                  _Q3.n128_u16[0] = *(v69 + 6);
                  if (!v23)
                  {
                    goto LABEL_385;
                  }

                  __asm { FCMP            H3, #0 }

                  if (!_ZF & _CF)
                  {
                    __asm { FCVT            S4, H3 }

LABEL_385:
                    a3.n128_u16[0] = *v69;
                    a4.n128_u16[0] = *(v69 + 2);
                    a5.n128_u16[0] = *(v69 + 4);
                    *v69 = PDAlightenPDA(a3, a4.n128_f64[0], a5.n128_f64[0], _Q3.n128_f64[0], _S4, *a8.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, v48, v49, *v68, *(v68 + 4), a8.f32[0]);
                    *(v69 + 2) = a4.n128_u16[0];
                    *(v69 + 4) = a5.n128_u16[0];
                    goto LABEL_386;
                  }

                  *v69 = *v68;
                  *(v69 + 4) = *(v68 + 4);
                  __asm { FCVT            H3, S5 }

LABEL_386:
                  *(v69 + 6) = _Q3.n128_u16[0];
LABEL_387:
                  v304 = v68 + 8 * v684;
                  if (v304 >= v63)
                  {
                    v305 = -v688;
                  }

                  else
                  {
                    v305 = 0;
                  }

                  v68 = v304 + 8 * v305;
                  v69 += 8 * v684;
                  LODWORD(v27) = v27 - 1;
                }

                while (v27);
                v69 += 8 * v707;
                v306 = v713;
                v307 = v713 + 8 * v711;
                v308 = -(v711 * v686);
                if (v307 < v709)
                {
                  v308 = 0;
                }

                v309 = v307 + 8 * v308;
                v310 = v63 + 8 * v308 + 8 * v711;
                if (v709)
                {
                  v63 = v310;
                  v306 = v309;
                }

                v713 = v306;
                if (v709)
                {
                  v68 = v309;
                }

                else
                {
                  v68 += 8 * v711;
                }

                v301 = v695 - 1;
                LODWORD(v27) = v704;
                if (v695 == 1)
                {
                  goto LABEL_668;
                }
              }

            case 18:
              v682 = v45;
              v683 = v47;
              v681 = v46;
              v378 = v723;
              while (1)
              {
                v699 = v378;
                do
                {
                  _S4 = 1.0;
                  a8.i32[0] = 1.0;
                  if (v62)
                  {
                    __asm { FCMP            H0, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_523;
                    }

                    __asm { FCVT            S5, H0 }
                  }

                  _Q3.n128_u16[0] = *(v69 + 6);
                  if (!v23)
                  {
                    goto LABEL_521;
                  }

                  __asm { FCMP            H3, #0 }

                  if (!_ZF & _CF)
                  {
                    __asm { FCVT            S4, H3 }

LABEL_521:
                    a3.n128_u16[0] = *v69;
                    a4.n128_u16[0] = *(v69 + 2);
                    a5.n128_u16[0] = *(v69 + 4);
                    *v69 = PDAcolordodgePDA(a3, a4, a5, _Q3.n128_f64[0], _S4, *a8.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, v48, v49, *v68, HIWORD(*v68), *(v68 + 4), a8.f32[0]);
                    *(v69 + 2) = a4.n128_u16[0];
                    *(v69 + 4) = a5.n128_u16[0];
                    goto LABEL_522;
                  }

                  *v69 = *v68;
                  *(v69 + 4) = *(v68 + 4);
                  __asm { FCVT            H3, S5 }

LABEL_522:
                  *(v69 + 6) = _Q3.n128_u16[0];
LABEL_523:
                  v381 = v68 + 8 * v684;
                  if (v381 >= v63)
                  {
                    v382 = -v688;
                  }

                  else
                  {
                    v382 = 0;
                  }

                  v68 = v381 + 8 * v382;
                  v69 += 8 * v684;
                  LODWORD(v27) = v27 - 1;
                }

                while (v27);
                v69 += 8 * v707;
                v383 = v713;
                v384 = v713 + 8 * v711;
                v385 = -(v711 * v686);
                if (v384 < v709)
                {
                  v385 = 0;
                }

                v386 = v384 + 8 * v385;
                v387 = v63 + 8 * v385 + 8 * v711;
                if (v709)
                {
                  v63 = v387;
                  v383 = v386;
                }

                v713 = v383;
                if (v709)
                {
                  v68 = v386;
                }

                else
                {
                  v68 += 8 * v711;
                }

                v378 = v699 - 1;
                LODWORD(v27) = v704;
                if (v699 == 1)
                {
                  goto LABEL_668;
                }
              }

            case 19:
              v682 = v45;
              v683 = v47;
              v681 = v46;
              v421 = v723;
              while (1)
              {
                v701 = v421;
                do
                {
                  _S4 = 1.0;
                  a8.i32[0] = 1.0;
                  if (v62)
                  {
                    __asm { FCMP            H0, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_607;
                    }

                    __asm { FCVT            S5, H0 }
                  }

                  _Q3.n128_u16[0] = *(v69 + 6);
                  if (!v23)
                  {
                    goto LABEL_605;
                  }

                  __asm { FCMP            H3, #0 }

                  if (!_ZF & _CF)
                  {
                    __asm { FCVT            S4, H3 }

LABEL_605:
                    a3.n128_u16[0] = *v69;
                    a4.n128_u16[0] = *(v69 + 2);
                    a5.n128_u16[0] = *(v69 + 4);
                    *v69 = PDAcolorburnPDA(a3, a4, a5, _Q3.n128_f64[0], _S4, *a8.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, v48, v49, *v68, HIWORD(*v68), *(v68 + 4), a8.f32[0]);
                    *(v69 + 2) = a4.n128_u16[0];
                    *(v69 + 4) = a5.n128_u16[0];
                    goto LABEL_606;
                  }

                  *v69 = *v68;
                  *(v69 + 4) = *(v68 + 4);
                  __asm { FCVT            H3, S5 }

LABEL_606:
                  *(v69 + 6) = _Q3.n128_u16[0];
LABEL_607:
                  v424 = v68 + 8 * v684;
                  if (v424 >= v63)
                  {
                    v425 = -v688;
                  }

                  else
                  {
                    v425 = 0;
                  }

                  v68 = v424 + 8 * v425;
                  v69 += 8 * v684;
                  LODWORD(v27) = v27 - 1;
                }

                while (v27);
                v69 += 8 * v707;
                v426 = v713;
                v427 = v713 + 8 * v711;
                v428 = -(v711 * v686);
                if (v427 < v709)
                {
                  v428 = 0;
                }

                v429 = v427 + 8 * v428;
                v430 = v63 + 8 * v428 + 8 * v711;
                if (v709)
                {
                  v63 = v430;
                  v426 = v429;
                }

                v713 = v426;
                if (v709)
                {
                  v68 = v429;
                }

                else
                {
                  v68 += 8 * v711;
                }

                v421 = v701 - 1;
                LODWORD(v27) = v704;
                if (v701 == 1)
                {
                  goto LABEL_668;
                }
              }

            case 20:
              v682 = v45;
              v683 = v47;
              v681 = v46;
              v311 = v723;
              while (1)
              {
                v696 = v311;
                do
                {
                  _Q4.i32[0] = 1.0;
                  a8.i32[0] = 1.0;
                  if (v62)
                  {
                    __asm { FCMP            H0, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_411;
                    }

                    __asm { FCVT            S5, H0 }
                  }

                  _Q3.n128_u16[0] = *(v69 + 6);
                  if (!v23)
                  {
                    goto LABEL_409;
                  }

                  __asm { FCMP            H3, #0 }

                  if (!_ZF & _CF)
                  {
                    __asm { FCVT            S4, H3 }

LABEL_409:
                    a3.n128_u16[0] = *v69;
                    a4.n128_u16[0] = *(v69 + 2);
                    a5.n128_u16[0] = *(v69 + 4);
                    *v69 = PDAsoftlightPDA(a3, a4.n128_u64[0], a5, _Q3.n128_u64[0], *_Q4.i64, *a8.i64, *_Q6.i8, *a10.i64, a1, a2, v31, a12, a13, a14, v48, v49, *v68, HIWORD(*v68), *(v68 + 4), a8.f32[0]);
                    *(v69 + 2) = a4.n128_u16[0];
                    *(v69 + 4) = a5.n128_u16[0];
                    goto LABEL_410;
                  }

                  *v69 = *v68;
                  *(v69 + 4) = *(v68 + 4);
                  __asm { FCVT            H3, S5 }

LABEL_410:
                  *(v69 + 6) = _Q3.n128_u16[0];
LABEL_411:
                  v313 = v68 + 8 * v684;
                  if (v313 >= v63)
                  {
                    v314 = -v688;
                  }

                  else
                  {
                    v314 = 0;
                  }

                  v68 = v313 + 8 * v314;
                  v69 += 8 * v684;
                  LODWORD(v27) = v27 - 1;
                }

                while (v27);
                v69 += 8 * v707;
                v315 = v713;
                v316 = v713 + 8 * v711;
                v317 = -(v711 * v686);
                if (v316 < v709)
                {
                  v317 = 0;
                }

                v318 = v316 + 8 * v317;
                v319 = v63 + 8 * v317 + 8 * v711;
                if (v709)
                {
                  v63 = v319;
                  v315 = v318;
                }

                v713 = v315;
                if (v709)
                {
                  v68 = v318;
                }

                else
                {
                  v68 += 8 * v711;
                }

                v311 = v696 - 1;
                LODWORD(v27) = v704;
                if (v696 == 1)
                {
                  goto LABEL_668;
                }
              }

            case 21:
              v682 = v45;
              v683 = v47;
              v681 = v46;
              v331 = v723;
              while (1)
              {
                v697 = v331;
                do
                {
                  _S4 = 1.0;
                  a8.i32[0] = 1.0;
                  if (v62)
                  {
                    __asm { FCMP            H0, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_451;
                    }

                    __asm { FCVT            S5, H0 }
                  }

                  _Q3.n128_u16[0] = *(v69 + 6);
                  if (!v23)
                  {
                    goto LABEL_449;
                  }

                  __asm { FCMP            H3, #0 }

                  if (!_ZF & _CF)
                  {
                    __asm { FCVT            S4, H3 }

LABEL_449:
                    a3.n128_u16[0] = *v69;
                    a4.n128_u16[0] = *(v69 + 2);
                    a5.n128_u16[0] = *(v69 + 4);
                    *v69 = PDAhardlightPDA(a3, a4, a5, _Q3.n128_f64[0], _S4, *a8.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, v48, v49, *v68, HIWORD(*v68), *(v68 + 4), a8.f32[0]);
                    *(v69 + 2) = a4.n128_u16[0];
                    *(v69 + 4) = a5.n128_u16[0];
                    goto LABEL_450;
                  }

                  *v69 = *v68;
                  *(v69 + 4) = *(v68 + 4);
                  __asm { FCVT            H3, S5 }

LABEL_450:
                  *(v69 + 6) = _Q3.n128_u16[0];
LABEL_451:
                  v334 = v68 + 8 * v684;
                  if (v334 >= v63)
                  {
                    v335 = -v688;
                  }

                  else
                  {
                    v335 = 0;
                  }

                  v68 = v334 + 8 * v335;
                  v69 += 8 * v684;
                  LODWORD(v27) = v27 - 1;
                }

                while (v27);
                v69 += 8 * v707;
                v336 = v713;
                v337 = v713 + 8 * v711;
                v338 = -(v711 * v686);
                if (v337 < v709)
                {
                  v338 = 0;
                }

                v339 = v337 + 8 * v338;
                v340 = v63 + 8 * v338 + 8 * v711;
                if (v709)
                {
                  v63 = v340;
                  v336 = v339;
                }

                v713 = v336;
                if (v709)
                {
                  v68 = v339;
                }

                else
                {
                  v68 += 8 * v711;
                }

                v331 = v697 - 1;
                LODWORD(v27) = v704;
                if (v697 == 1)
                {
                  goto LABEL_668;
                }
              }

            case 22:
              v682 = v45;
              v683 = v47;
              v681 = v46;
              v411 = v723;
              while (1)
              {
                v700 = v411;
                do
                {
                  _S4 = 1.0;
                  a8.i32[0] = 1.0;
                  if (v62)
                  {
                    __asm { FCMP            H0, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_583;
                    }

                    __asm { FCVT            S5, H0 }
                  }

                  _Q3.n128_u16[0] = *(v69 + 6);
                  if (!v23)
                  {
                    goto LABEL_581;
                  }

                  __asm { FCMP            H3, #0 }

                  if (!_ZF & _CF)
                  {
                    __asm { FCVT            S4, H3 }

LABEL_581:
                    a3.n128_u16[0] = *v69;
                    a4.n128_u16[0] = *(v69 + 2);
                    a5.n128_u16[0] = *(v69 + 4);
                    *v69 = PDAdifferencePDA(a3, a4.n128_f64[0], a5.n128_f64[0], _Q3.n128_f64[0], _S4, *a8.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, v48, v49, *v68, *(v68 + 4), a8.f32[0]);
                    *(v69 + 2) = a4.n128_u16[0];
                    *(v69 + 4) = a5.n128_u16[0];
                    goto LABEL_582;
                  }

                  *v69 = *v68;
                  *(v69 + 4) = *(v68 + 4);
                  __asm { FCVT            H3, S5 }

LABEL_582:
                  *(v69 + 6) = _Q3.n128_u16[0];
LABEL_583:
                  v414 = v68 + 8 * v684;
                  if (v414 >= v63)
                  {
                    v415 = -v688;
                  }

                  else
                  {
                    v415 = 0;
                  }

                  v68 = v414 + 8 * v415;
                  v69 += 8 * v684;
                  LODWORD(v27) = v27 - 1;
                }

                while (v27);
                v69 += 8 * v707;
                v416 = v713;
                v417 = v713 + 8 * v711;
                v418 = -(v711 * v686);
                if (v417 < v709)
                {
                  v418 = 0;
                }

                v419 = v417 + 8 * v418;
                v420 = v63 + 8 * v418 + 8 * v711;
                if (v709)
                {
                  v63 = v420;
                  v416 = v419;
                }

                v713 = v416;
                if (v709)
                {
                  v68 = v419;
                }

                else
                {
                  v68 += 8 * v711;
                }

                v411 = v700 - 1;
                LODWORD(v27) = v704;
                if (v700 == 1)
                {
                  goto LABEL_668;
                }
              }

            case 23:
              v431 = v723;
              while (1)
              {
                v432 = v27;
                do
                {
                  _S3 = 1.0;
                  _S2 = 1.0;
                  if (v62)
                  {
                    __asm { FCMP            H2, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_631;
                    }

                    __asm { FCVT            S2, H2 }
                  }

                  if (!v23)
                  {
                    goto LABEL_629;
                  }

                  __asm { FCMP            H3, #0 }

                  if (!_ZF & _CF)
                  {
                    __asm { FCVT            S3, H3 }

LABEL_629:
                    _H4 = *v69;
                    a8.i32[0] = *(v69 + 2);
                    _Q6.i16[0] = *v68;
                    a10.i32[0] = *(v68 + 2);
                    __asm
                    {
                      FCVT            S4, H4
                      FCVT            S6, H6
                    }

                    _S4 = (_S4 + *_Q6.i32) + ((_S4 * *_Q6.i32) * -2.0);
                    _S2 = (_S3 + _S2) - (_S3 * _S2);
                    __asm { FCVT            H3, S4 }

                    v441 = vcvtq_f32_f16(*a8.f32).u64[0];
                    a8.i64[0] = vcvtq_f32_f16(*a10.f32).u64[0];
                    *_Q6.i8 = vmla_f32(vadd_f32(v441, *a8.f32), 0xC0000000C0000000, vmul_f32(v441, *a8.f32));
                    *v69 = _H3;
                    *(v69 + 2) = vcvt_f16_f32(_Q6).u32[0];
                    goto LABEL_630;
                  }

                  *v69 = *v68;
                  *(v69 + 4) = *(v68 + 4);
LABEL_630:
                  __asm { FCVT            H2, S2 }

                  *(v69 + 6) = _H2;
LABEL_631:
                  v443 = v68 + 8 * v684;
                  if (v443 >= v63)
                  {
                    v444 = -v688;
                  }

                  else
                  {
                    v444 = 0;
                  }

                  v68 = v443 + 8 * v444;
                  v69 += 8 * v684;
                  --v432;
                }

                while (v432);
                v69 += 8 * v707;
                v445 = v713;
                v446 = v713 + 8 * v711;
                if (v446 >= v709)
                {
                  v447 = -(v711 * v686);
                }

                else
                {
                  v447 = 0;
                }

                v448 = v446 + 8 * v447;
                v449 = v63 + 8 * v447 + 8 * v711;
                if (v709)
                {
                  v63 = v449;
                  v445 = v448;
                }

                v713 = v445;
                if (v709)
                {
                  v68 = v448;
                }

                else
                {
                  v68 += 8 * v711;
                }

                if (!--v431)
                {
LABEL_644:
                  v723 = 0;
                  goto LABEL_671;
                }
              }

            case 24:
              v682 = v45;
              v683 = v47;
              v681 = v46;
              v237 = v723;
              while (1)
              {
                v693 = v237;
                do
                {
                  _S4 = 1.0;
                  a8.i32[0] = 1.0;
                  if (v62)
                  {
                    __asm { FCMP            H0, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_266;
                    }

                    __asm { FCVT            S5, H0 }
                  }

                  _Q3.n128_u16[0] = *(v69 + 6);
                  if (!v23)
                  {
                    goto LABEL_264;
                  }

                  __asm { FCMP            H3, #0 }

                  if (!_ZF & _CF)
                  {
                    __asm { FCVT            S4, H3 }

LABEL_264:
                    a3.n128_u16[0] = *v69;
                    a4.n128_u16[0] = *(v69 + 2);
                    a5.n128_u16[0] = *(v69 + 4);
                    *v69 = PDAhuePDA(a3, a4, a5, _Q3.n128_f64[0], _S4, *a8.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, v48, v49, *v68, HIWORD(*v68), *(v68 + 4), a8.f32[0]);
                    *(v69 + 2) = a4.n128_u16[0];
                    *(v69 + 4) = a5.n128_u16[0];
                    goto LABEL_265;
                  }

                  *v69 = *v68;
                  *(v69 + 4) = *(v68 + 4);
                  __asm { FCVT            H3, S5 }

LABEL_265:
                  *(v69 + 6) = _Q3.n128_u16[0];
LABEL_266:
                  v240 = v68 + 8 * v684;
                  if (v240 >= v63)
                  {
                    v241 = -v688;
                  }

                  else
                  {
                    v241 = 0;
                  }

                  v68 = v240 + 8 * v241;
                  v69 += 8 * v684;
                  LODWORD(v27) = v27 - 1;
                }

                while (v27);
                v69 += 8 * v707;
                v242 = v713;
                v243 = v713 + 8 * v711;
                v244 = -(v711 * v686);
                if (v243 < v709)
                {
                  v244 = 0;
                }

                v245 = v243 + 8 * v244;
                v246 = v63 + 8 * v244 + 8 * v711;
                if (v709)
                {
                  v63 = v246;
                  v242 = v245;
                }

                v713 = v242;
                if (v709)
                {
                  v68 = v245;
                }

                else
                {
                  v68 += 8 * v711;
                }

                v237 = v693 - 1;
                LODWORD(v27) = v704;
                if (v693 == 1)
                {
                  goto LABEL_668;
                }
              }

            case 25:
              v682 = v45;
              v683 = v47;
              v681 = v46;
              v227 = v723;
              while (1)
              {
                v692 = v227;
                do
                {
                  _S4 = 1.0;
                  a8.i32[0] = 1.0;
                  if (v62)
                  {
                    __asm { FCMP            H0, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_242;
                    }

                    __asm { FCVT            S5, H0 }
                  }

                  _Q3.n128_u16[0] = *(v69 + 6);
                  if (!v23)
                  {
                    goto LABEL_240;
                  }

                  __asm { FCMP            H3, #0 }

                  if (!_ZF & _CF)
                  {
                    __asm { FCVT            S4, H3 }

LABEL_240:
                    a3.n128_u16[0] = *v69;
                    a4.n128_u16[0] = *(v69 + 2);
                    a5.n128_u16[0] = *(v69 + 4);
                    *v69 = PDAsaturationPDA(a3, a4, a5, _Q3.n128_f64[0], _S4, *a8.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, v48, v49, *v68, HIWORD(*v68), *(v68 + 4), a8.f32[0]);
                    *(v69 + 2) = a4.n128_u16[0];
                    *(v69 + 4) = a5.n128_u16[0];
                    goto LABEL_241;
                  }

                  *v69 = *v68;
                  *(v69 + 4) = *(v68 + 4);
                  __asm { FCVT            H3, S5 }

LABEL_241:
                  *(v69 + 6) = _Q3.n128_u16[0];
LABEL_242:
                  v230 = v68 + 8 * v684;
                  if (v230 >= v63)
                  {
                    v231 = -v688;
                  }

                  else
                  {
                    v231 = 0;
                  }

                  v68 = v230 + 8 * v231;
                  v69 += 8 * v684;
                  LODWORD(v27) = v27 - 1;
                }

                while (v27);
                v69 += 8 * v707;
                v232 = v713;
                v233 = v713 + 8 * v711;
                v234 = -(v711 * v686);
                if (v233 < v709)
                {
                  v234 = 0;
                }

                v235 = v233 + 8 * v234;
                v236 = v63 + 8 * v234 + 8 * v711;
                if (v709)
                {
                  v63 = v236;
                  v232 = v235;
                }

                v713 = v232;
                if (v709)
                {
                  v68 = v235;
                }

                else
                {
                  v68 += 8 * v711;
                }

                v227 = v692 - 1;
                LODWORD(v27) = v704;
                if (v692 == 1)
                {
                  goto LABEL_668;
                }
              }

            case 26:
              v682 = v45;
              v683 = v47;
              v681 = v46;
              v450 = v723;
              while (1)
              {
                v702 = v450;
                do
                {
                  a8.i32[0] = 1.0;
                  _S4 = 1.0;
                  if (v62)
                  {
                    __asm { FCMP            H0, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_656;
                    }

                    __asm { FCVT            S4, H0 }
                  }

                  _Q6.i16[0] = *(v69 + 6);
                  if (!v23)
                  {
                    goto LABEL_654;
                  }

                  __asm { FCMP            H6, #0 }

                  if (!_ZF & _CF)
                  {
                    __asm { FCVT            S5, H6 }

LABEL_654:
                    a3.n128_u16[0] = *v68;
                    a4.n128_u16[0] = *(v68 + 2);
                    a5.n128_u16[0] = *(v68 + 4);
                    _Q3.n128_u16[0] = *(v68 + 6);
                    a10.i16[0] = *v69;
                    *v69 = PDAluminosityPDA(a3, a4, a5, _Q3.n128_f64[0], _S4, *a8.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, v48, v49, *v69, *(v69 + 2), HIWORD(*(v69 + 2)), a8.f32[0]);
                    *(v69 + 2) = a4.n128_u16[0];
                    *(v69 + 4) = a5.n128_u16[0];
                    goto LABEL_655;
                  }

                  *v69 = *v68;
                  *(v69 + 4) = *(v68 + 4);
                  __asm { FCVT            H3, S4 }

LABEL_655:
                  *(v69 + 6) = _Q3.n128_u16[0];
LABEL_656:
                  v453 = v68 + 8 * v684;
                  if (v453 >= v63)
                  {
                    v454 = -v688;
                  }

                  else
                  {
                    v454 = 0;
                  }

                  v68 = v453 + 8 * v454;
                  v69 += 8 * v684;
                  LODWORD(v27) = v27 - 1;
                }

                while (v27);
                v69 += 8 * v707;
                v455 = v713;
                v456 = v713 + 8 * v711;
                v457 = -(v711 * v686);
                if (v456 < v709)
                {
                  v457 = 0;
                }

                v458 = v456 + 8 * v457;
                v459 = v63 + 8 * v457 + 8 * v711;
                if (v709)
                {
                  v63 = v459;
                  v455 = v458;
                }

                v713 = v455;
                if (v709)
                {
                  v68 = v458;
                }

                else
                {
                  v68 += 8 * v711;
                }

                v450 = v702 - 1;
                LODWORD(v27) = v704;
                if (v702 == 1)
                {
                  goto LABEL_668;
                }
              }

            case 27:
              v682 = v45;
              v683 = v47;
              v681 = v46;
              v83 = v723;
              break;
            default:
              goto LABEL_671;
          }

          break;
        }

LABEL_64:
        v690 = v83;
        while (1)
        {
          _S4 = 1.0;
          a8.i32[0] = 1.0;
          if (!v62)
          {
            goto LABEL_68;
          }

          __asm { FCMP            H0, #0 }

          if (!(_NF ^ _VF | _ZF))
          {
            break;
          }

LABEL_74:
          v86 = v68 + 8 * v684;
          if (v86 >= v63)
          {
            v87 = -v688;
          }

          else
          {
            v87 = 0;
          }

          v68 = v86 + 8 * v87;
          v69 += 8 * v684;
          LODWORD(v27) = v27 - 1;
          if (!v27)
          {
            v69 += 8 * v707;
            v88 = v713;
            v89 = v713 + 8 * v711;
            v90 = -(v711 * v686);
            if (v89 < v709)
            {
              v90 = 0;
            }

            v91 = v89 + 8 * v90;
            v92 = v63 + 8 * v90 + 8 * v711;
            if (v709)
            {
              v63 = v92;
              v88 = v91;
            }

            v713 = v88;
            if (v709)
            {
              v68 = v91;
            }

            else
            {
              v68 += 8 * v711;
            }

            v83 = v690 - 1;
            LODWORD(v27) = v704;
            if (v690 == 1)
            {
              goto LABEL_668;
            }

            goto LABEL_64;
          }
        }

        __asm { FCVT            S5, H0 }

LABEL_68:
        _Q3.n128_u16[0] = *(v69 + 6);
        if (v23)
        {
          __asm { FCMP            H3, #0 }

          if (!(!_ZF & _CF))
          {
            *v69 = *v68;
            *(v69 + 4) = *(v68 + 4);
            __asm { FCVT            H3, S5 }

LABEL_73:
            *(v69 + 6) = _Q3.n128_u16[0];
            goto LABEL_74;
          }

          __asm { FCVT            S4, H3 }
        }

        a3.n128_u16[0] = *v69;
        a4.n128_u16[0] = *(v69 + 2);
        a5.n128_u16[0] = *(v69 + 4);
        *v69 = PDAluminosityPDA(a3, a4, a5, _Q3.n128_f64[0], _S4, *a8.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, v48, v49, *v68, HIWORD(*v68), *(v68 + 4), a8.f32[0]);
        *(v69 + 2) = a4.n128_u16[0];
        *(v69 + 4) = a5.n128_u16[0];
        goto LABEL_73;
      }

      if (v45)
      {
        v687 = 0;
        v66 = v50 % v688;
        v711 = a2[19] >> 3;
        v67 = v45 + 8 * v52 * (v51 % v686);
        v68 = v67 + 8 * v66;
        v63 = v67 + 8 * v688;
        v684 = 1;
        v713 = v68;
        v69 = *(a2 + 5) + 8 * v46 * a2[4] + 8 * a2[3];
        v70 = v27;
        v679 = v51 % v686;
        v680 = v66;
        goto LABEL_56;
      }

      v679 = a2[15];
      v680 = a2[14];
      v63 = 0;
      v684 = 1;
      v70 = v27;
    }

    v709 = 0;
    v687 = 0;
    v713 = 0;
    v711 = v52 - v70;
    v68 = v45;
    v69 = v47;
    goto LABEL_56;
  }

  LODWORD(v722) = a2[2];
  HIDWORD(v722) = v27;
  v33 = *(a2 + 11);
  _D18.i32[0] = *v33;
  LOWORD(_S19) = *(v33 + 4);
  LOWORD(_S9) = *(v33 + 6);
  __asm { FCVT            S20, H9 }

  a3.n128_f32[0] = 1.0 - _S20;
  v703 = a3.n128_u64[0];
  v706 = _S9;
  v39 = a2[3];
  v689 = a2[7];
  v40 = v689 >> 3;
  v41 = *(a2 + 5) + 8 * (v689 >> 3) * a2[4];
  v42 = v41 + 8 * v39;
  v710 = _S19;
  v712 = _D18;
  v708 = _S20;
  if (v31)
  {
    shape_enum_clip_alloc(a1, a2, v31, 1, 1, 1, a2[26], a2[27], v27, v29);
    v44 = v43;
    if (!v43)
    {
      return 1;
    }

    goto LABEL_1015;
  }

  v64 = v27;
  v44 = 0;
  v65 = (v41 + 8 * v39);
LABEL_746:
  v500 = v40 - v64;
  switch(v24)
  {
    case 0:
      v501 = v722;
      v502 = 8 * v64;
      v503 = v689 & 0xFFFFFFF8;
      goto LABEL_1028;
    case 1:
      v595 = *(v26 + 11);
      if (v595)
      {
        CGSFillDRAM64(v65, v689 & 0xFFFFFFF8, 8 * v64, v722, v595, 8, 8, 1, 0, 0);
        if (!v44)
        {
          return 1;
        }

        goto LABEL_1014;
      }

      v501 = v722;
      v503 = v689 & 0xFFFFFFF8;
      v502 = 8 * v64;
LABEL_1028:
      CGBlt_fillBytes(v502, v501, 0, v65, v503);
      if (v44)
      {
        goto LABEL_1014;
      }

      return 1;
    case 2:
      v584 = v722;
      v719 = _D18.i32[0];
      v720 = _S19;
      v721 = _S9;
      if (use_vImage_fp16_compositing(void)::predicate != -1)
      {
        dispatch_once(&use_vImage_fp16_compositing(void)::predicate, &__block_literal_global_21944);
        _S20 = v708;
        LOWORD(_S19) = v710;
        _D18 = v712;
      }

      if (use_vImage_fp16_compositing(void)::status == 1)
      {
        v723 = 66051;
        *&v727 = v65;
        *(&v727 + 1) = v584;
        *&v728 = v64;
        *(&v728 + 1) = v689 & 0xFFFFFFFFFFFFFFF8;
        v724 = &v719;
        v725 = vdupq_n_s64(1uLL);
        v726 = 8;
        v715 = v44;
        v716 = v584;
        v717 = v64;
        v718 = v64;
        vImageCGCompositeConstShape_ARGB16F();
        v26 = a2;
      }

      else
      {
        v672.i64[0] = vcvtq_f32_f16(_D18).u64[0];
        v670 = vdupq_lane_s32(v703, 0);
        __asm { FCVT            S2, H19 }

        v672.i64[1] = __PAIR64__(LODWORD(_S20), _S2);
        v26 = a2;
        do
        {
          if (v64 >= 1)
          {
            v673 = v64 + 1;
            do
            {
              *v65 = vcvt_f16_f32(vmlaq_f32(v672, v670, vcvtq_f32_f16(*v65)));
              ++v65;
              --v673;
            }

            while (v673 > 1);
          }

          v65 += v500;
          _VF = __OFSUB__(v584--, 1);
        }

        while (!((v584 < 0) ^ _VF | (v584 == 0)));
      }

      goto LABEL_1012;
    case 3:
      v589 = v722;
      v590.i32[0] = _D18.i32[0];
      v590.i16[2] = _S19;
      v590.i16[3] = _S9;
      do
      {
        v591 = v64;
        do
        {
          __asm { FCMP            H3, #0 }

          if (!_ZF & _CF)
          {
            if (_H3 >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
            {
              v65->i32[0] = _D18.i32[0];
              v65->i16[2] = _S19;
              v65->i16[3] = _S9;
            }

            else
            {
              *v65 = vmul_n_f16(v590, _H3);
            }
          }

          else
          {
            *v65 = 0;
          }

          ++v65;
          --v591;
        }

        while (v591);
        v65 += v500;
        --v589;
      }

      while (v589);
      goto LABEL_998;
    case 4:
      v559.i64[0] = vcvtq_f32_f16(_D18).u64[0];
      __asm { FCVT            S2, H19 }

      v558 = v722;
      v559.i64[1] = __PAIR64__(LODWORD(_S20), _S2);
      do
      {
        v560 = v64;
        do
        {
          _H3 = v65->i16[3];
          __asm { FCVT            S3, H3 }

          v563 = 1.0 - _S3;
          if (v563 <= 0.0)
          {
            *v65 = 0;
          }

          else if (v563 >= 1.0)
          {
            v65->i32[0] = _D18.i32[0];
            v65->i16[2] = _S19;
            v65->i16[3] = _S9;
          }

          else
          {
            *v65 = vcvt_f16_f32(vmulq_n_f32(v559, v563));
          }

          ++v65;
          --v560;
        }

        while (v560);
        v65 += v500;
        --v558;
      }

      while (v558);
      goto LABEL_998;
    case 5:
      v605.i64[0] = vcvtq_f32_f16(_D18).u64[0];
      __asm { FCVT            S1, H19 }

      v604 = v722;
      v605.i64[1] = __PAIR64__(LODWORD(_S20), _S1);
      do
      {
        v606 = v64;
        do
        {
          v607 = vcvtq_f32_f16(*v65);
          *v65++ = vcvt_f16_f32(vmlaq_laneq_f32(vmulq_n_f32(v607, *v703.i32), v605, v607, 3));
          --v606;
        }

        while (v606);
        v65 += v500;
        --v604;
      }

      while (v604);
      goto LABEL_998;
    case 6:
      __asm { FCVT            S0, H18; jumptable 0000000183F4B300 case 6 }

      _H1 = _D18.i16[1];
      __asm
      {
        FCVT            S2, H1
        FCVT            S3, H19
      }

      v620 = v722;
      while (1)
      {
        v621 = v64;
        do
        {
          _H5 = v65->i16[3];
          __asm { FCVT            S5, H5 }

          v624 = 1.0 - _S5;
          if ((1.0 - _S5) >= 1.0)
          {
            v65->i32[0] = _D18.i32[0];
            _H5 = _S9;
            v65->i16[2] = _S19;
          }

          else
          {
            if (v624 <= 0.0)
            {
              goto LABEL_938;
            }

            _H7 = v65->i16[0];
            __asm { FCVT            S7, H7 }

            _S7 = _S7 + (_S0 * v624);
            __asm { FCVT            H7, S7 }

            v65->i16[0] = LOWORD(_S7);
            LOWORD(_S7) = v65->i16[1];
            __asm { FCVT            S7, H7 }

            _S7 = _S7 + (_S2 * v624);
            __asm { FCVT            H7, S7 }

            v65->i16[1] = LOWORD(_S7);
            LOWORD(_S7) = v65->i16[2];
            __asm { FCVT            S7, H7 }

            _S7 = _S7 + (_S3 * v624);
            __asm { FCVT            H7, S7 }

            v65->i16[2] = LOWORD(_S7);
            _S5 = _S5 + (_S20 * v624);
            __asm { FCVT            H5, S5 }
          }

          v65->i16[3] = _H5;
LABEL_938:
          ++v65;
          --v621;
        }

        while (v621);
        v65 += v500;
        if (!--v620)
        {
LABEL_998:
          LODWORD(v722) = 0;
          if (!v44)
          {
            return 1;
          }

LABEL_1014:
          v714 = 0;
LABEL_1015:
          a1 = shape_enum_clip_next(v44, &v714 + 1, &v714, &v722 + 1, &v722);
          if (a1)
          {
            v65 = (v42 + 8 * v40 * v714 + 8 * SHIDWORD(v714));
            v64 = HIDWORD(v722);
            _S19 = v710;
            _D18 = v712;
            _S9 = v706;
            _S20 = v708;
            goto LABEL_746;
          }

          v460 = v44;
LABEL_1018:
          free(v460);
          return 1;
        }
      }

    case 7:
      v593 = v722;
      do
      {
        v594 = v64;
        do
        {
          *v65 = vmul_n_f16(*v65, *&_S9);
          ++v65;
          --v594;
        }

        while (v594);
        v65 += v500;
        --v593;
      }

      while (v593);
      goto LABEL_998;
    case 8:
      v643 = v722;
      do
      {
        v644 = v64;
        do
        {
          *v65 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v65), *v703.i32));
          ++v65;
          --v644;
        }

        while (v644);
        v65 += v500;
        --v643;
      }

      while (v643);
      goto LABEL_998;
    case 9:
      v573.i64[0] = vcvtq_f32_f16(_D18).u64[0];
      __asm { FCVT            S1, H19 }

      v572 = v722;
      v573.i64[1] = __PAIR64__(LODWORD(_S20), _S1);
      do
      {
        v574 = v64;
        do
        {
          v575 = vcvtq_f32_f16(*v65);
          *v65++ = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(v575, _S20), v573, 1.0 - v575.f32[3]));
          --v574;
        }

        while (v574);
        v65 += v500;
        --v572;
      }

      while (v572);
      goto LABEL_998;
    case 10:
      v640.i64[0] = vcvtq_f32_f16(_D18).u64[0];
      __asm { FCVT            S1, H19 }

      v639 = v722;
      v640.i64[1] = __PAIR64__(LODWORD(_S20), _S1);
      do
      {
        v641 = v64;
        do
        {
          v642 = vcvtq_f32_f16(*v65);
          *v65++ = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(v642, *v703.i32), v640, 1.0 - v642.f32[3]));
          --v641;
        }

        while (v641);
        v65 += v500;
        --v639;
      }

      while (v639);
      goto LABEL_998;
    case 11:
      __asm { FCVT            S0, H18; jumptable 0000000183F4B300 case 11 }

      v532 = _S20 - _S0;
      _H1 = _D18.i16[1];
      __asm { FCVT            S1, H1 }

      v535 = _S20 - _S1;
      __asm { FCVT            S2, H19 }

      v537 = _S20 - _S2;
      v538 = v722;
      do
      {
        v539 = v64;
        do
        {
          _S4 = 1.0;
          _S5 = 1.0;
          if (v23)
          {
            _H3 = v65->i16[3];
            __asm { FCVT            S5, H3 }
          }

          _S3 = _S5 + _S20;
          if ((_S5 + _S20) > 1.0)
          {
            _S3 = 1.0;
          }

          if (v23)
          {
            _H4 = v65->i16[3];
            __asm { FCVT            S4, H4 }
          }

          _H6 = v65->i16[0];
          __asm { FCVT            S6, H6 }

          v547 = v532 + (_S5 - _S6);
          _H5 = v65->i16[1];
          _S6 = _S3 - v547;
          __asm { FCVT            H6, S6 }

          v65->i16[0] = LOWORD(_S6);
          if (v23)
          {
            _H6 = v65->i16[3];
            __asm { FCVT            S6, H6 }
          }

          else
          {
            _S6 = 1.0;
          }

          __asm { FCVT            S5, H5 }

          v553 = v535 + (_S4 - _S5);
          LOWORD(_S5) = v65->i16[2];
          __asm { FCVT            S5, H5 }

          _S4 = _S3 - v553;
          __asm { FCVT            H4, S4 }

          v65->i16[1] = LOWORD(_S4);
          __asm { FCVT            H4, S3 }

          v65->i16[3] = LOWORD(_S4);
          _S3 = _S3 - (v537 + (_S6 - _S5));
          __asm { FCVT            H3, S3 }

          v65->i16[2] = LOWORD(_S3);
          ++v65;
          --v539;
        }

        while (v539);
        v65 += v500;
        --v538;
      }

      while (v538);
      goto LABEL_998;
    case 12:
      v564 = v722;
      do
      {
        v565 = v64;
        do
        {
          v566 = *&v65->i16[1];
          *v65->i16 = *_D18.i16 + *v65->i16;
          *&v65->i16[1] = *&_D18.i16[1] + v566;
          _H2 = v65->i16[3];
          __asm { FCVT            S2, H2 }

          _S2 = _S20 + _S2;
          if (_S2 > 1.0)
          {
            _S2 = 1.0;
          }

          *&v65->i16[2] = *&_S19 + *&v65->i16[2];
          __asm { FCVT            H2, S2 }

          v65->i16[3] = _H2;
          ++v65;
          --v565;
        }

        while (v565);
        v65 += v500;
        --v564;
      }

      while (v564);
      goto LABEL_998;
    case 13:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 13 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      v612 = _D18.i16[1];
      v613 = v722;
      while (1)
      {
        v614 = v64;
        do
        {
          _Q3.n128_u16[0] = v65->u16[3];
          if (v23)
          {
            __asm { FCMP            H3, #0 }

            if (!(!_ZF & _CF))
            {
              v65->i16[0] = _D18.i16[0];
              v65->i16[1] = v612;
              _Q3.n128_u32[0] = _S9;
              v65->i16[2] = _S19;
              goto LABEL_928;
            }

            __asm { FCVT            S4, H3 }
          }

          else
          {
            _S4 = 1.0;
          }

          a3.n128_u16[0] = v65->i16[0];
          a4.n128_u16[0] = v65->u16[1];
          a5.n128_u16[0] = v65->u16[2];
          a3.n128_u16[0] = PDAmultiplyPDA(a3, a4, a5, _Q3.n128_f64[0], _S4, *a8.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, a15, a16, _D18.i16[0], v612, _S19, _S20);
          _S9 = v706;
          _S20 = v708;
          LOWORD(_S19) = v710;
          _D18.i16[0] = v712.i16[0];
          v65->i16[0] = a3.n128_u16[0];
          v65->i16[1] = a4.n128_u16[0];
          v65->i16[2] = a5.n128_u16[0];
LABEL_928:
          v65->i16[3] = _Q3.n128_u16[0];
          ++v65;
          --v614;
        }

        while (v614);
        v65 += v500;
        if (!--v613)
        {
          goto LABEL_1011;
        }
      }

    case 14:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 14 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      __asm { FCVT            S0, H18 }

      _H1 = _D18.i16[1];
      __asm
      {
        FCVT            S2, H1
        FCVT            S3, H19
      }

      v517 = v722;
      while (1)
      {
        v518 = v64;
        do
        {
          if (v23)
          {
            __asm { FCMP            H5, #0 }

            if (!(!_ZF & _CF))
            {
              v65->i32[0] = _D18.i32[0];
              v65->i16[2] = _S19;
              v65->i16[3] = _H9;
              goto LABEL_781;
            }

            __asm { FCVT            S5, H5 }
          }

          else
          {
            _S5 = 1.0;
          }

          _H6 = v65->i16[0];
          _H7 = v65->i16[1];
          _H16 = v65->i16[2];
          __asm
          {
            FCVT            S6, H6
            FCVT            S7, H7
            FCVT            S16, H16
          }

          _S6 = _S6 + (_S0 * (1.0 - _S6));
          _S7 = _S7 + (_S2 * (1.0 - _S7));
          _S16 = _S16 + (_S3 * (1.0 - _S16));
          _S5 = (_S5 + _S20) - (_S5 * _S20);
          __asm
          {
            FCVT            H6, S6
            FCVT            H7, S7
            FCVT            H16, S16
          }

          v65->i16[0] = LOWORD(_S6);
          v65->i16[1] = LOWORD(_S7);
          __asm { FCVT            H5, S5 }

          v65->i16[2] = LOWORD(_S16);
          v65->i16[3] = LOWORD(_S5);
LABEL_781:
          ++v65;
          --v518;
        }

        while (v518);
        v65 += v500;
        if (!--v517)
        {
          goto LABEL_998;
        }
      }

    case 15:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 15 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      v585 = _D18.i16[1];
      v586 = v722;
      while (1)
      {
        v587 = v64;
        do
        {
          _Q3.n128_u16[0] = v65->u16[3];
          if (v23)
          {
            __asm { FCMP            H3, #0 }

            if (!(!_ZF & _CF))
            {
              v65->i16[0] = _D18.i16[0];
              v65->i16[1] = v585;
              _Q3.n128_u32[0] = _S9;
              v65->i16[2] = _S19;
              goto LABEL_857;
            }

            __asm { FCVT            S4, H3 }
          }

          else
          {
            _S4 = 1.0;
          }

          a3.n128_u16[0] = v65->i16[0];
          a4.n128_u16[0] = v65->u16[1];
          a5.n128_u16[0] = v65->u16[2];
          a3.n128_u16[0] = PDAoverlayPDA(a3, a4, a5, _Q3.n128_f64[0], _S4, *a8.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, a15, a16, _D18.i16[0], v585, _S19, _S20);
          _S9 = v706;
          _S20 = v708;
          LOWORD(_S19) = v710;
          _D18.i16[0] = v712.i16[0];
          v65->i16[0] = a3.n128_u16[0];
          v65->i16[1] = a4.n128_u16[0];
          v65->i16[2] = a5.n128_u16[0];
LABEL_857:
          v65->i16[3] = _Q3.n128_u16[0];
          ++v65;
          --v587;
        }

        while (v587);
        v65 += v500;
        if (!--v586)
        {
          goto LABEL_1011;
        }
      }

    case 16:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 16 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      v508 = _D18.i16[1];
      v509 = v722;
      while (1)
      {
        v510 = v64;
        do
        {
          _Q3.n128_u16[0] = v65->u16[3];
          if (v23)
          {
            __asm { FCMP            H3, #0 }

            if (!(!_ZF & _CF))
            {
              v65->i16[0] = _D18.i16[0];
              v65->i16[1] = v508;
              _Q3.n128_u32[0] = _S9;
              v65->i16[2] = _S19;
              goto LABEL_769;
            }

            __asm { FCVT            S4, H3 }
          }

          else
          {
            _S4 = 1.0;
          }

          a3.n128_u16[0] = v65->i16[0];
          a4.n128_u16[0] = v65->u16[1];
          a5.n128_u16[0] = v65->u16[2];
          HIWORD(v674) = _S9;
          LOWORD(v674) = _S19;
          a3.n128_u16[0] = PDAdarkenPDA(a3, a4.n128_f64[0], a5.n128_f64[0], _Q3.n128_f64[0], _S4, *a8.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, a15, a16, _D18.i16[0], v674, _S20);
          _S9 = v706;
          _S20 = v708;
          LOWORD(_S19) = v710;
          _D18.i16[0] = v712.i16[0];
          v65->i16[0] = a3.n128_u16[0];
          v65->i16[1] = a4.n128_u16[0];
          v65->i16[2] = a5.n128_u16[0];
LABEL_769:
          v65->i16[3] = _Q3.n128_u16[0];
          ++v65;
          --v510;
        }

        while (v510);
        v65 += v500;
        if (!--v509)
        {
          goto LABEL_1011;
        }
      }

    case 17:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 17 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      v596 = _D18.i16[1];
      v597 = v722;
      while (1)
      {
        v598 = v64;
        do
        {
          _Q3.n128_u16[0] = v65->u16[3];
          if (v23)
          {
            __asm { FCMP            H3, #0 }

            if (!(!_ZF & _CF))
            {
              v65->i16[0] = _D18.i16[0];
              v65->i16[1] = v596;
              _Q3.n128_u32[0] = _S9;
              v65->i16[2] = _S19;
              goto LABEL_887;
            }

            __asm { FCVT            S4, H3 }
          }

          else
          {
            _S4 = 1.0;
          }

          a3.n128_u16[0] = v65->i16[0];
          a4.n128_u16[0] = v65->u16[1];
          a5.n128_u16[0] = v65->u16[2];
          HIWORD(v675) = _S9;
          LOWORD(v675) = _S19;
          a3.n128_u16[0] = PDAlightenPDA(a3, a4.n128_f64[0], a5.n128_f64[0], _Q3.n128_f64[0], _S4, *a8.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, a15, a16, _D18.i16[0], v675, _S20);
          _S9 = v706;
          _S20 = v708;
          LOWORD(_S19) = v710;
          _D18.i16[0] = v712.i16[0];
          v65->i16[0] = a3.n128_u16[0];
          v65->i16[1] = a4.n128_u16[0];
          v65->i16[2] = a5.n128_u16[0];
LABEL_887:
          v65->i16[3] = _Q3.n128_u16[0];
          ++v65;
          --v598;
        }

        while (v598);
        v65 += v500;
        if (!--v597)
        {
          goto LABEL_1011;
        }
      }

    case 18:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 18 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      v634 = _D18.i16[1];
      v635 = v722;
      while (1)
      {
        v636 = v64;
        do
        {
          _Q3.n128_u16[0] = v65->u16[3];
          if (v23)
          {
            __asm { FCMP            H3, #0 }

            if (!(!_ZF & _CF))
            {
              v65->i16[0] = _D18.i16[0];
              v65->i16[1] = v634;
              _Q3.n128_u32[0] = _S9;
              v65->i16[2] = _S19;
              goto LABEL_950;
            }

            __asm { FCVT            S4, H3 }
          }

          else
          {
            _S4 = 1.0;
          }

          a3.n128_u16[0] = v65->i16[0];
          a4.n128_u16[0] = v65->u16[1];
          a5.n128_u16[0] = v65->u16[2];
          a3.n128_u16[0] = PDAcolordodgePDA(a3, a4, a5, _Q3.n128_f64[0], _S4, *a8.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, a15, a16, _D18.i16[0], v634, _S19, _S20);
          _S9 = v706;
          _S20 = v708;
          LOWORD(_S19) = v710;
          _D18.i16[0] = v712.i16[0];
          v65->i16[0] = a3.n128_u16[0];
          v65->i16[1] = a4.n128_u16[0];
          v65->i16[2] = a5.n128_u16[0];
LABEL_950:
          v65->i16[3] = _Q3.n128_u16[0];
          ++v65;
          --v636;
        }

        while (v636);
        v65 += v500;
        if (!--v635)
        {
          goto LABEL_1011;
        }
      }

    case 19:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 19 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      v649 = _D18.i16[1];
      v650 = v722;
      do
      {
        v651 = v64;
        do
        {
          _Q3.n128_u16[0] = v65->u16[3];
          if (v23)
          {
            __asm { FCMP            H3, #0 }

            if (!(!_ZF & _CF))
            {
              v65->i16[0] = _D18.i16[0];
              v65->i16[1] = v649;
              _Q3.n128_u32[0] = _S9;
              v65->i16[2] = _S19;
              goto LABEL_984;
            }

            __asm { FCVT            S4, H3 }
          }

          else
          {
            _S4 = 1.0;
          }

          a3.n128_u16[0] = v65->i16[0];
          a4.n128_u16[0] = v65->u16[1];
          a5.n128_u16[0] = v65->u16[2];
          a3.n128_u16[0] = PDAcolorburnPDA(a3, a4, a5, _Q3.n128_f64[0], _S4, *a8.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, a15, a16, _D18.i16[0], v649, _S19, _S20);
          _S9 = v706;
          _S20 = v708;
          LOWORD(_S19) = v710;
          _D18.i16[0] = v712.i16[0];
          v65->i16[0] = a3.n128_u16[0];
          v65->i16[1] = a4.n128_u16[0];
          v65->i16[2] = a5.n128_u16[0];
LABEL_984:
          v65->i16[3] = _Q3.n128_u16[0];
          ++v65;
          --v651;
        }

        while (v651);
        v65 += v500;
        --v650;
      }

      while (v650);
LABEL_1011:
      LODWORD(v722) = 0;
LABEL_1012:
      LODWORD(v24) = v685;
LABEL_1013:
      if (v44)
      {
        goto LABEL_1014;
      }

      return 1;
    case 20:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 20 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      v600 = _D18.i16[1];
      v601 = v722;
      while (1)
      {
        v602 = v64;
        do
        {
          _Q3.n128_u16[0] = v65->u16[3];
          if (v23)
          {
            __asm { FCMP            H3, #0 }

            if (!(!_ZF & _CF))
            {
              v65->i16[0] = _D18.i16[0];
              v65->i16[1] = v600;
              _Q3.n128_u32[0] = _S9;
              v65->i16[2] = _S19;
              goto LABEL_899;
            }

            __asm { FCVT            S4, H3 }
          }

          else
          {
            _Q4.i32[0] = 1.0;
          }

          a3.n128_u16[0] = v65->i16[0];
          a4.n128_u16[0] = v65->u16[1];
          a5.n128_u16[0] = v65->u16[2];
          a3.n128_u16[0] = PDAsoftlightPDA(a3, a4.n128_u64[0], a5, _Q3.n128_u64[0], *_Q4.i64, *a8.i64, *_Q6.i8, *a10.i64, a1, a2, v31, a12, a13, a14, a15, a16, _D18.i16[0], v600, _S19, _S20);
          _S9 = v706;
          _S20 = v708;
          LOWORD(_S19) = v710;
          _D18.i16[0] = v712.i16[0];
          v65->i16[0] = a3.n128_u16[0];
          v65->i16[1] = a4.n128_u16[0];
          v65->i16[2] = a5.n128_u16[0];
LABEL_899:
          v65->i16[3] = _Q3.n128_u16[0];
          ++v65;
          --v602;
        }

        while (v602);
        v65 += v500;
        if (!--v601)
        {
          goto LABEL_1011;
        }
      }

    case 21:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 21 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      v608 = _D18.i16[1];
      v609 = v722;
      while (1)
      {
        v610 = v64;
        do
        {
          _Q3.n128_u16[0] = v65->u16[3];
          if (v23)
          {
            __asm { FCMP            H3, #0 }

            if (!(!_ZF & _CF))
            {
              v65->i16[0] = _D18.i16[0];
              v65->i16[1] = v608;
              _Q3.n128_u32[0] = _S9;
              v65->i16[2] = _S19;
              goto LABEL_916;
            }

            __asm { FCVT            S4, H3 }
          }

          else
          {
            _S4 = 1.0;
          }

          a3.n128_u16[0] = v65->i16[0];
          a4.n128_u16[0] = v65->u16[1];
          a5.n128_u16[0] = v65->u16[2];
          a3.n128_u16[0] = PDAhardlightPDA(a3, a4, a5, _Q3.n128_f64[0], _S4, *a8.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, a15, a16, _D18.i16[0], v608, _S19, _S20);
          _S9 = v706;
          _S20 = v708;
          LOWORD(_S19) = v710;
          _D18.i16[0] = v712.i16[0];
          v65->i16[0] = a3.n128_u16[0];
          v65->i16[1] = a4.n128_u16[0];
          v65->i16[2] = a5.n128_u16[0];
LABEL_916:
          v65->i16[3] = _Q3.n128_u16[0];
          ++v65;
          --v610;
        }

        while (v610);
        v65 += v500;
        if (!--v609)
        {
          goto LABEL_1011;
        }
      }

    case 22:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 22 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      v645 = _D18.i16[1];
      v646 = v722;
      while (1)
      {
        v647 = v64;
        do
        {
          _Q3.n128_u16[0] = v65->u16[3];
          if (v23)
          {
            __asm { FCMP            H3, #0 }

            if (!(!_ZF & _CF))
            {
              v65->i16[0] = _D18.i16[0];
              v65->i16[1] = v645;
              _Q3.n128_u32[0] = _S9;
              v65->i16[2] = _S19;
              goto LABEL_972;
            }

            __asm { FCVT            S4, H3 }
          }

          else
          {
            _S4 = 1.0;
          }

          a3.n128_u16[0] = v65->i16[0];
          a4.n128_u16[0] = v65->u16[1];
          a5.n128_u16[0] = v65->u16[2];
          HIWORD(v676) = _S9;
          LOWORD(v676) = _S19;
          a3.n128_u16[0] = PDAdifferencePDA(a3, a4.n128_f64[0], a5.n128_f64[0], _Q3.n128_f64[0], _S4, *a8.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, a15, a16, _D18.i16[0], v676, _S20);
          _S9 = v706;
          _S20 = v708;
          LOWORD(_S19) = v710;
          _D18.i16[0] = v712.i16[0];
          v65->i16[0] = a3.n128_u16[0];
          v65->i16[1] = a4.n128_u16[0];
          v65->i16[2] = a5.n128_u16[0];
LABEL_972:
          v65->i16[3] = _Q3.n128_u16[0];
          ++v65;
          --v647;
        }

        while (v647);
        v65 += v500;
        if (!--v646)
        {
          goto LABEL_1011;
        }
      }

    case 23:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 23 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      v654 = v722;
      v655 = vdup_lane_s16(_D18, 1);
      __asm { FCVT            S1, H18 }

      v655.i16[1] = _S19;
      v657 = vcvtq_f32_f16(v655).u64[0];
      while (1)
      {
        v658 = v64;
        do
        {
          if (v23)
          {
            __asm { FCMP            H5, #0 }

            if (!(!_ZF & _CF))
            {
              v65->i32[0] = _D18.i32[0];
              _H5 = _H9;
              v65->i16[2] = _S19;
              goto LABEL_996;
            }

            __asm { FCVT            S5, H5 }
          }

          else
          {
            _S5 = 1.0;
          }

          _H6 = v65->i16[0];
          a10.i32[0] = *(v65->i32 + 2);
          __asm { FCVT            S6, H6 }

          _S6 = (_S6 + _S1) + ((_S6 * _S1) * -2.0);
          _S5 = (_S5 + _S20) - (_S5 * _S20);
          __asm { FCVT            H6, S6 }

          v665 = vcvtq_f32_f16(*a10.f32).u64[0];
          *v18.f32 = vmla_f32(vadd_f32(v665, v657), 0xC0000000C0000000, vmul_f32(v665, v657));
          *a10.f32 = vcvt_f16_f32(v18);
          v65->i16[0] = LOWORD(_S6);
          __asm { FCVT            H5, S5 }

          *(v65->i32 + 2) = a10.i32[0];
LABEL_996:
          v65->i16[3] = _H5;
          ++v65;
          --v658;
        }

        while (v658);
        v65 += v500;
        if (!--v654)
        {
          goto LABEL_998;
        }
      }

    case 24:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 24 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      v580 = _D18.i16[1];
      v581 = v722;
      while (1)
      {
        v582 = v64;
        do
        {
          _Q3.n128_u16[0] = v65->u16[3];
          if (v23)
          {
            __asm { FCMP            H3, #0 }

            if (!(!_ZF & _CF))
            {
              v65->i16[0] = _D18.i16[0];
              v65->i16[1] = v580;
              _Q3.n128_u32[0] = _S9;
              v65->i16[2] = _S19;
              goto LABEL_841;
            }

            __asm { FCVT            S4, H3 }
          }

          else
          {
            _S4 = 1.0;
          }

          a3.n128_u16[0] = v65->i16[0];
          a4.n128_u16[0] = v65->u16[1];
          a5.n128_u16[0] = v65->u16[2];
          a3.n128_u16[0] = PDAhuePDA(a3, a4, a5, _Q3.n128_f64[0], _S4, *a8.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, a15, a16, _D18.i16[0], v580, _S19, _S20);
          _S9 = v706;
          _S20 = v708;
          LOWORD(_S19) = v710;
          _D18.i16[0] = v712.i16[0];
          v65->i16[0] = a3.n128_u16[0];
          v65->i16[1] = a4.n128_u16[0];
          v65->i16[2] = a5.n128_u16[0];
LABEL_841:
          v65->i16[3] = _Q3.n128_u16[0];
          ++v65;
          --v582;
        }

        while (v582);
        v65 += v500;
        if (!--v581)
        {
          goto LABEL_1011;
        }
      }

    case 25:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 25 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      v576 = _D18.i16[1];
      v577 = v722;
      while (1)
      {
        v578 = v64;
        do
        {
          _Q3.n128_u16[0] = v65->u16[3];
          if (v23)
          {
            __asm { FCMP            H3, #0 }

            if (!(!_ZF & _CF))
            {
              v65->i16[0] = _D18.i16[0];
              v65->i16[1] = v576;
              _Q3.n128_u32[0] = _S9;
              v65->i16[2] = _S19;
              goto LABEL_829;
            }

            __asm { FCVT            S4, H3 }
          }

          else
          {
            _S4 = 1.0;
          }

          a3.n128_u16[0] = v65->i16[0];
          a4.n128_u16[0] = v65->u16[1];
          a5.n128_u16[0] = v65->u16[2];
          a3.n128_u16[0] = PDAsaturationPDA(a3, a4, a5, _Q3.n128_f64[0], _S4, *a8.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, a15, a16, _D18.i16[0], v576, _S19, _S20);
          _S9 = v706;
          _S20 = v708;
          LOWORD(_S19) = v710;
          _D18.i16[0] = v712.i16[0];
          v65->i16[0] = a3.n128_u16[0];
          v65->i16[1] = a4.n128_u16[0];
          v65->i16[2] = a5.n128_u16[0];
LABEL_829:
          v65->i16[3] = _Q3.n128_u16[0];
          ++v65;
          --v578;
        }

        while (v578);
        v65 += v500;
        if (!--v577)
        {
          goto LABEL_1011;
        }
      }

    case 26:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 26 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      LOWORD(v16) = _D18.i16[1];
      v667 = v722;
      while (1)
      {
        v668 = v64;
        do
        {
          if (v23)
          {
            __asm { FCMP            H0, #0 }

            if (!(!_ZF & _CF))
            {
              v65->i16[0] = _D18.i16[0];
              v65->i16[1] = v16;
              _Q3.n128_u16[0] = _S9;
              v65->i16[2] = _S19;
              goto LABEL_1009;
            }

            __asm { FCVT            S1, H0 }
          }

          else
          {
            a4.n128_u32[0] = 1.0;
          }

          v677 = a4.n128_f32[0];
          a3.n128_u32[0] = _D18.i32[0];
          a4.n128_u32[0] = v16;
          a5.n128_u32[0] = _S19;
          _Q3.n128_u32[0] = _S9;
          a3.n128_u16[0] = PDAluminosityPDA(a3, a4, a5, _Q3.n128_f64[0], _S20, *a8.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, a15, a16, v65->i16[0], *(v65->i32 + 2), HIWORD(*(v65->i32 + 2)), v677);
          _S9 = v706;
          _S20 = v708;
          _S19 = v710;
          _D18.i32[0] = v712.i32[0];
          v65->i16[0] = a3.n128_u16[0];
          v65->i16[1] = a4.n128_u16[0];
          v65->i16[2] = a5.n128_u16[0];
LABEL_1009:
          v65->i16[3] = _Q3.n128_u16[0];
          ++v65;
          --v668;
        }

        while (v668);
        v65 += v500;
        if (!--v667)
        {
          goto LABEL_1011;
        }
      }

    case 27:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 27 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      v504 = _D18.i16[1];
      v505 = v722;
      break;
    default:
      goto LABEL_1013;
  }

LABEL_750:
  v506 = v64;
  while (1)
  {
    _Q3.n128_u16[0] = v65->u16[3];
    if (!v23)
    {
      break;
    }

    __asm { FCMP            H3, #0 }

    if (!_ZF & _CF)
    {
      __asm { FCVT            S4, H3 }

LABEL_756:
      a3.n128_u16[0] = v65->i16[0];
      a4.n128_u16[0] = v65->u16[1];
      a5.n128_u16[0] = v65->u16[2];
      a3.n128_u16[0] = PDAluminosityPDA(a3, a4, a5, _Q3.n128_f64[0], _S4, *a8.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, a15, a16, _D18.i16[0], v504, _S19, _S20);
      _S9 = v706;
      _S20 = v708;
      LOWORD(_S19) = v710;
      _D18.i16[0] = v712.i16[0];
      v65->i16[0] = a3.n128_u16[0];
      v65->i16[1] = a4.n128_u16[0];
      v65->i16[2] = a5.n128_u16[0];
      goto LABEL_757;
    }

    v65->i16[0] = _D18.i16[0];
    v65->i16[1] = v504;
    _Q3.n128_u32[0] = _S9;
    v65->i16[2] = _S19;
LABEL_757:
    v65->i16[3] = _Q3.n128_u16[0];
    ++v65;
    if (!--v506)
    {
      v65 += v500;
      if (!--v505)
      {
        goto LABEL_1011;
      }

      goto LABEL_750;
    }
  }

  _S4 = 1.0;
  goto LABEL_756;
}

uint64_t img_interpolate_stage(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, unsigned int a8)
{
  v10 = a2;
  v100 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 264) = 0u;
  *a1 = a2;
  if (*(a2 + 8))
  {
    *(a1 + 8) = img_interpolate_extent;
  }

  *(a1 + 16) = img_interpolate_read;
  *(a1 + 24) = img_interpolate_end;
  *(a1 + 48) = a5;
  *(a1 + 52) = a6;
  v12 = *(a2 + 36);
  *(a1 + 32) = 2;
  *(a1 + 36) = v12;
  v13 = *(a2 + 40);
  *(a1 + 40) = v13;
  if (a4 == 3)
  {
    if (v12 == 1)
    {
      v14 = 4 * (*(a3 + 16) == 0);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 4;
  }

  v15 = v13;
  if (v13 == 32)
  {
    v16 = v14 | 2;
  }

  else if (a7 == 5 || v13 != 16)
  {
    v17 = v13 == 16 && a7 == 5;
    if (v17)
    {
      v16 = v14 | 8;
    }

    else
    {
      v16 = v14;
    }
  }

  else
  {
    v16 = v14 | 1;
  }

  v18 = *(a2 + 48);
  v19.i64[0] = v18;
  v19.i64[1] = __PAIR64__(a6, a5);
  if (vmaxv_u16(vmovn_s32(vceqzq_s32(v19))))
  {
    return v10;
  }

  v20 = v18;
  v21 = HIDWORD(v18);
  if (v18 == __PAIR64__(a6, a5))
  {
    return v10;
  }

  if ((v16 & 0xA) != 0)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if ((v16 & 4) != 0)
  {
    v23 = 0;
  }

  else
  {
    v23 = -1;
  }

  v24 = ((__PAIR64__(a6, v16 & 4) - 1) >> 32);
  v25 = ((__PAIR64__(v21, v16 & 4) - 1) >> 32);
  v26 = v24 / v25;
  v27 = v21;
  if (v24 / v25 != 0.0)
  {
    if (COERCE_UNSIGNED_INT64(fabs(v24 / v25)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      v28 = 4;
      goto LABEL_32;
    }

    if (v26 <= 1.0)
    {
      v35 = v24 / v25;
    }

    else
    {
      v35 = 1.0;
    }

    v36 = 1.0 / v35 + 1.0;
    if ((v16 & 4) == 0)
    {
      v36 = 4.0 / v35;
    }

    v27 = vcvtpd_s64_f64(v36);
    if (v27 >= 0x10000)
    {
      return v10;
    }
  }

  v28 = (v27 + 3) & 0xFFFFFFFC;
  if (v28 < 1)
  {
    return v10;
  }

LABEL_32:
  if ((v16 & 0xA) != 0)
  {
    v29 = 2;
  }

  else
  {
    v29 = 1;
  }

  if (v20 == v21 && a5 == a6)
  {
    v95 = a8;
    v97 = 0;
    v30 = 0;
    v31 = v26;
    goto LABEL_51;
  }

  v32 = (v23 + a5);
  v33 = (v20 + v23);
  v31 = v32 / v33;
  v34 = v20;
  if (v32 / v33 == 0.0)
  {
    goto LABEL_39;
  }

  if (COERCE_UNSIGNED_INT64(fabs(v32 / v33)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v31 <= 1.0)
    {
      v60 = v32 / v33;
    }

    else
    {
      v60 = 1.0;
    }

    v61 = 1.0 / v60 + 1.0;
    if ((v16 & 4) == 0)
    {
      v61 = 4.0 / v60;
    }

    v34 = vcvtpd_s64_f64(v61);
    if (v34 >= 0x10000)
    {
      return v10;
    }

LABEL_39:
    v97 = (v34 + 3) & 0xFFFFFFFC;
    if (v97 < 1)
    {
      return v10;
    }

    goto LABEL_50;
  }

  v97 = 4;
LABEL_50:
  v95 = a8;
  v30 = ((v97 << v29) + 8) * a5;
LABEL_51:
  v94 = v30;
  v93 = (((v28 << v29) + 8) * a6);
  v98 = v28;
  v37 = malloc_type_calloc(1uLL, v93 + v30 + 160, 0x10A00404EC14D9CuLL);
  v38 = v98;
  if (v37)
  {
    v37[19] = a6;
    v37[20] = v22;
    if ((v16 & 9) != 0)
    {
      v39 = 2;
    }

    else
    {
      v39 = 1;
    }

    v40 = 4;
    v37[18] = a5;
    if ((v16 & 2) != 0)
    {
      v39 = 4;
    }

    v37[24] = v39;
    v37[25] = v20;
    v37[26] = v21;
    if ((v16 & 2) == 0)
    {
      if ((v16 & 8) != 0)
      {
        v40 = 5;
      }

      else if (v16)
      {
        v40 = 2;
      }

      else
      {
        v40 = 1;
      }
    }

    v37[21] = v40;
    v37[29] = v95;
    v41 = v97;
    if (v98 > v97)
    {
      v41 = v98;
    }

    v42 = 8 * v41 + 32;
    v96 = v37;
    if (v42 < 0x401)
    {
      v91 = v20;
      v44 = v99;
      v45 = v21;
LABEL_69:
      v46 = ((v37 + 143) & 0xFFFFFFFFFFFFFFF0);
      *v37 = v46;
      v37[23] = v38;
      v17 = v22 == 4;
      v47 = v44;
      if (v17)
      {
        v48 = resample_filter_linear_float;
        if ((v16 & 4) == 0)
        {
          v48 = resample_filter_float;
        }

        v48((v37 + 143) & 0xFFFFFFFFFFFFFFF0, v38, a6, v44, v45, 0.0, v26);
        resample_filter_float_normalize(v46, v98, a6, v21);
      }

      else
      {
        v49 = resample_filter_linear;
        if ((v16 & 4) == 0)
        {
          v49 = resample_filter;
        }

        v49((v37 + 143) & 0xFFFFFFFFFFFFFFF0, v38, a6, v44, v45, 0.0, v26);
        resample_filter_normalize(v46, v98, a6, v21);
      }

      v50 = v96;
      if (v94)
      {
        v51 = (v46 + v93);
        *(v96 + 1) = v46 + v93;
        v96[22] = v97;
        v52 = v96[25];
        if (v96[20] == 4)
        {
          v53 = resample_filter_linear_float;
          if ((v16 & 4) == 0)
          {
            v53 = resample_filter_float;
          }

          (v53)(v51, v97, a5, v47, v52, 0.0, v31);
          resample_filter_float_normalize(v51, v97, a5, v91);
        }

        else
        {
          v54 = resample_filter_linear;
          if ((v16 & 4) == 0)
          {
            v54 = resample_filter;
          }

          (v54)(v51, v97, a5, v47, v52, 0.0, v31);
          resample_filter_normalize(v51, v97, a5, v91);
        }

        v50 = v96;
      }

      else
      {
        *(v96 + 1) = v46;
        v96[22] = v98;
      }

      if (v47 != v99)
      {
        free(v47);
        v50 = v96;
      }

      v55 = *(a1 + 44);
      if (v55 > 3)
      {
        if (v55 != 4)
        {
          if (v55 != 8)
          {
            if (v55 != 9)
            {
LABEL_110:
              v56 = 0;
              v58 = 0;
              v59 = 0;
              *(a1 + 56) = v15 / 8 * v12 * *(v10 + 48);
              v57 = 1;
LABEL_111:
              v62 = v12;
              if ((v12 - 256) < 0xFFFFFFFFFFFFFF01)
              {
LABEL_112:
                resample_destroy(v50);
                return 0;
              }

              v64 = *(v50 + 96);
              if (v64 != 4)
              {
                if (v64 != 2)
                {
                  if (v64 != 1 || !v12)
                  {
                    goto LABEL_112;
                  }

                  if (v56)
                  {
                    if (v12 == 1)
                    {
                      goto LABEL_112;
                    }

                    if (v12 == 4)
                    {
                      *(v50 + 16) = resample_byte_v_3cpp_ap;
                      *(v50 + 112) = 65539;
                      v65 = resample_byte_h_3cpp_ap;
                    }

                    else
                    {
                      *(v50 + 16) = resample_byte_v_Ncpp_ap;
                      *(v50 + 112) = v12 - 1;
                      *(v50 + 114) = 1;
                      if (v12 == 5)
                      {
                        v65 = resample_byte_h_4cpp_ap;
                      }

                      else if (v12 == 2)
                      {
                        v65 = resample_byte_h_1cpp_ap;
                      }

                      else
                      {
                        v65 = resample_byte_h_Ncpp_ap;
                      }
                    }

LABEL_198:
                    *(v50 + 24) = v65;
                    if (CGPreferencesCheck<CGResamplingAllowTemplateMethod>(void)::onceToken != -1)
                    {
                      dispatch_once(&CGPreferencesCheck<CGResamplingAllowTemplateMethod>(void)::onceToken, &__block_literal_global_3_13902);
                      v50 = v96;
                    }

                    if (CGPreferencesCheck<CGResamplingAllowTemplateMethod>(void)::result != 1)
                    {
                      if ((v56 & 1) == 0)
                      {
                        if (*(v50 + 72) * v12 >= 0x10)
                        {
                          v80 = v12 == 1 ? 1 : v57;
                          v81 = resample_byte_v_Ncpp_armv7;
                          if (v80)
                          {
                            goto LABEL_210;
                          }

                          v82 = v58 ^ 1;
                          v81 = resample_byte_v_3cpp_af_armv7;
                          if (v12 != 4)
                          {
                            v82 = 1;
                          }

                          if ((v82 & 1) == 0)
                          {
LABEL_210:
                            *(v50 + 16) = v81;
                            *(v50 + 120) = 1;
                          }
                        }

                        if (*(v50 + 88) >= 4u)
                        {
                          v83 = resample_byte_h_3cpp_armv7;
                          if (v12 != 3)
                          {
                            if (v12 != 4)
                            {
                              goto LABEL_229;
                            }

                            v83 = resample_byte_h_4cpp_armv7;
                          }

                          *(v50 + 24) = v83;
                          *(v50 + 120) = 1;
                        }
                      }

LABEL_229:
                      v84 = *(v50 + 92);
                      v85 = (v84 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                      if (v85 - v84 >= 2)
                      {
                        v86 = (v84 + 3) & 0xFFFFFFFC;
                      }

                      else
                      {
                        v86 = v85 | 2;
                      }

                      v87 = (4 * v12 * *(v50 + 72) + 15) & 0xFFFFFFFFFFFFFFF0;
                      v88 = *(v50 + 56);
                      v89 = v50;
                      if (v88)
                      {
                        v90 = malloc_type_realloc(v88, (v87 | 8) * v86, 0xA4EE092CuLL);
                      }

                      else
                      {
                        v90 = malloc_type_malloc((v87 | 8) * v86, 0xE2D5C0EEuLL);
                      }

                      *(v89 + 56) = v90;
                      v50 = v89;
                      if (v90)
                      {
                        *(v89 + 64) = &v90[v87 * v86];
                        *(v89 + 52) = v87;
                        *(v89 + 40) = v86;
                        *(v89 + 32) = 0;
                        *(v89 + 44) = 0;
                        *(v89 + 108) = v62 | (v59 << 8);
                        *(a1 + 88) = v89;
                        *(a1 + 96) = a7;
                        return a1;
                      }

                      goto LABEL_112;
                    }

                    goto LABEL_227;
                  }

                  v72 = v57 ^ 1;
                  if (v12 == 1)
                  {
                    v72 = 0;
                  }

                  if ((v72 & 1) == 0)
                  {
                    v73 = resample_byte_v_Ncpp;
                    goto LABEL_147;
                  }

                  if (v58)
                  {
                    v75 = resample_byte_v_3cpp_af;
                    if (v12 != 4)
                    {
                      v73 = resample_byte_v_Ncpp_af;
                      goto LABEL_147;
                    }
                  }

                  else
                  {
                    v75 = resample_byte_v_3cpp_al;
                    if (v12 != 4)
                    {
                      v73 = resample_byte_v_Ncpp_al;
LABEL_147:
                      *(v50 + 16) = v73;
                      *(v50 + 112) = v12;
                      if (v12 != 4)
                      {
                        if (v12 == 3)
                        {
                          v65 = resample_byte_h_3cpp;
                        }

                        else if (v12 == 1)
                        {
                          v65 = resample_byte_h_1cpp;
                        }

                        else
                        {
                          v65 = resample_byte_h_Ncpp;
                        }

                        goto LABEL_198;
                      }

LABEL_176:
                      v65 = resample_byte_h_4cpp;
                      goto LABEL_198;
                    }
                  }

                  *(v50 + 16) = v75;
                  *(v50 + 112) = v12;
                  goto LABEL_176;
                }

                v66 = *(v50 + 84);
                if (v66 == 5)
                {
                  v69 = resample_float16_select(v50, v12, v59);
                  goto LABEL_228;
                }

                if (v66 != 2)
                {
                  goto LABEL_229;
                }

                if (!v12)
                {
                  goto LABEL_112;
                }

                if (v56)
                {
                  if (v12 == 1)
                  {
                    goto LABEL_112;
                  }

                  if (v12 == 4)
                  {
                    *(v50 + 16) = resample_word_v_3cpp_ap;
                    *(v50 + 112) = 131078;
                    v67 = resample_word_h_3cpp_ap;
                  }

                  else
                  {
                    *(v50 + 16) = resample_word_v_Ncpp_ap;
                    *(v50 + 112) = 2 * v12 - 2;
                    *(v50 + 114) = 2;
                    if (v12 == 5)
                    {
                      v67 = resample_word_h_4cpp_ap;
                    }

                    else if (v12 == 2)
                    {
                      v67 = resample_word_h_1cpp_ap;
                    }

                    else
                    {
                      v67 = resample_word_h_Ncpp_ap;
                    }
                  }

LABEL_224:
                  *(v50 + 24) = v67;
                  if (CGPreferencesCheck<CGResamplingAllowTemplateMethod>(void)::onceToken != -1)
                  {
                    dispatch_once(&CGPreferencesCheck<CGResamplingAllowTemplateMethod>(void)::onceToken, &__block_literal_global_3_13902);
                    v50 = v96;
                  }

                  if (CGPreferencesCheck<CGResamplingAllowTemplateMethod>(void)::result != 1)
                  {
                    goto LABEL_229;
                  }

LABEL_227:
                  v69 = resample_select_template(v50, v12, v59);
LABEL_228:
                  v50 = v96;
                  if (!v69)
                  {
                    goto LABEL_112;
                  }

                  goto LABEL_229;
                }

                v76 = v57 ^ 1;
                if (v12 == 1)
                {
                  v76 = 0;
                }

                if ((v76 & 1) == 0)
                {
                  v77 = resample_word_v_Ncpp;
                  goto LABEL_161;
                }

                if (v58)
                {
                  v78 = resample_word_v_3cpp_af;
                  if (v12 != 4)
                  {
                    v77 = resample_word_v_Ncpp_af;
                    goto LABEL_161;
                  }
                }

                else
                {
                  v78 = resample_word_v_3cpp_al;
                  if (v12 != 4)
                  {
                    v77 = resample_word_v_Ncpp_al;
LABEL_161:
                    *(v50 + 16) = v77;
                    *(v50 + 112) = 2 * v12;
                    *(v50 + 114) = 0;
                    if (v12 != 4)
                    {
                      if (v12 == 3)
                      {
                        v67 = resample_word_h_3cpp;
                      }

                      else if (v12 == 1)
                      {
                        v67 = resample_word_h_1cpp;
                      }

                      else
                      {
                        v67 = resample_word_h_Ncpp;
                      }

                      goto LABEL_224;
                    }

LABEL_218:
                    v67 = resample_word_h_4cpp;
                    goto LABEL_224;
                  }
                }

                *(v50 + 16) = v78;
                *(v50 + 112) = 2 * v12;
                *(v50 + 114) = 0;
                goto LABEL_218;
              }

              if (!v12)
              {
                goto LABEL_112;
              }

              if (v56)
              {
                if (v12 == 1)
                {
                  goto LABEL_112;
                }

                if (v12 == 4)
                {
                  *(v50 + 16) = resample_float_v_3cpp_ap;
                  *(v50 + 112) = 262156;
                  v68 = resample_float_h_3cpp_ap;
                }

                else
                {
                  *(v50 + 16) = resample_float_v_Ncpp_ap;
                  *(v50 + 112) = 4 * v12 - 4;
                  *(v50 + 114) = 4;
                  if (v12 == 5)
                  {
                    v68 = resample_float_h_4cpp_ap;
                  }

                  else if (v12 == 2)
                  {
                    v68 = resample_float_h_1cpp_ap;
                  }

                  else
                  {
                    v68 = resample_float_h_Ncpp_ap;
                  }
                }

                goto LABEL_192;
              }

              v70 = v57 ^ 1;
              if (v12 == 1)
              {
                v70 = 0;
              }

              if ((v70 & 1) == 0)
              {
                v71 = resample_float_v_Ncpp;
                goto LABEL_139;
              }

              if (v58)
              {
                v74 = resample_float_v_3cpp_af;
                if (v12 != 4)
                {
                  v71 = resample_float_v_Ncpp_af;
                  goto LABEL_139;
                }
              }

              else
              {
                v74 = resample_float_v_3cpp_al;
                if (v12 != 4)
                {
                  v71 = resample_float_v_Ncpp_al;
LABEL_139:
                  *(v50 + 16) = v71;
                  *(v50 + 112) = 4 * v12;
                  *(v50 + 114) = 0;
                  if (v12 != 4)
                  {
                    if (v12 == 3)
                    {
                      v68 = resample_float_h_3cpp;
                    }

                    else if (v12 == 1)
                    {
                      v68 = resample_float_h_1cpp;
                    }

                    else
                    {
                      v68 = resample_float_h_Ncpp;
                    }

LABEL_192:
                    *(v50 + 24) = v68;
                    if (CGPreferencesCheck<CGResamplingAllowTemplateMethod>(void)::onceToken != -1)
                    {
                      dispatch_once(&CGPreferencesCheck<CGResamplingAllowTemplateMethod>(void)::onceToken, &__block_literal_global_3_13902);
                      v50 = v96;
                    }

                    if (CGPreferencesCheck<CGResamplingAllowTemplateMethod>(void)::result == 1)
                    {
                      v79 = resample_select_template(v50, v12, v59);
                      v50 = v96;
                      if (!v79)
                      {
                        goto LABEL_112;
                      }
                    }

                    goto LABEL_229;
                  }

LABEL_173:
                  v68 = resample_float_h_4cpp;
                  goto LABEL_192;
                }
              }

              *(v50 + 16) = v74;
              *(v50 + 112) = 4 * v12;
              *(v50 + 114) = 0;
              goto LABEL_173;
            }

            *(a1 + 44) = 8;
          }

          v57 = 0;
          v58 = 0;
          *(a1 + 56) = v15 / 8 * v12++ * *(v10 + 48);
          *(a1 + 60) = *(v10 + 48) * (v15 / 8);
          v59 = 3;
          v56 = 1;
          goto LABEL_111;
        }

        *(a1 + 44) = 2;
      }

      else
      {
        if (v55 == 1)
        {
LABEL_94:
          v56 = 0;
          v57 = 0;
          v58 = 0;
          ++v12;
          *(a1 + 56) = v15 / 8 * v12 * *(v10 + 48);
          v59 = 2;
          goto LABEL_111;
        }

        if (v55 != 2)
        {
          if (v55 == 3)
          {
            *(a1 + 44) = 1;
            goto LABEL_94;
          }

          goto LABEL_110;
        }
      }

      v56 = 0;
      v57 = 0;
      ++v12;
      *(a1 + 56) = v15 / 8 * v12 * *(v10 + 48);
      v58 = 1;
      v59 = 1;
      goto LABEL_111;
    }

    v43 = malloc_type_calloc(1uLL, v42, 0xED2B9C87uLL);
    if (v43)
    {
      v44 = v43;
      v91 = v20;
      v37 = v96;
      v22 = v96[20];
      v45 = v96[26];
      v38 = v98;
      goto LABEL_69;
    }

    free(v96);
  }

  return v10;
}

void resample_filter(__int16 *a1, unsigned int a2, int a3, double *a4, unsigned int a5, double a6, double a7)
{
  v7 = a3;
  if (a7 != 0.0 && (*&a7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v14 = fmin(a7, 1.0);
    v15 = __sincos_stret(v14 * 1.57079633);
    if (v7)
    {
      v16.f64[0] = NAN;
      v16.f64[1] = NAN;
      v46 = vnegq_f64(v16);
      v47 = 1.0 / a7;
      do
      {
        v17 = vcvtmd_s64_f64(a6);
        v18 = v14 * (v17 - a6);
        v19 = ((v18 + 2.0) / v14);
        v20 = v18 - v19 * v14;
        if (v20 > -2.0)
        {
          v21 = v20;
        }

        else
        {
          v21 = v14 + v20;
        }

        v22 = ((2.0 - v21) / v14);
        v23 = v20 <= -2.0;
        if (v21 + v22 * v14 < 2.0)
        {
          ++v22;
        }

        if (v22 >= a2)
        {
          v24 = a2;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          v28 = __sincos_stret(v21 * 1.57079633);
          *v26.i64 = v28.__cosval;
          sinval = v28.__sinval;
          v29 = 0.0;
          v30 = v24;
          v31 = a4;
          do
          {
            v32 = 1.0;
            if (fabs(v21) >= v14 * 0.5)
            {
              v32 = sinval * sinval * *v26.i64 / (v21 * v21 * 1.57079633 * 1.57079633);
            }

            *v31++ = v32;
            v29 = v29 + v32;
            v21 = v14 + v21;
            v33 = v15.__sinval * *v26.i64;
            *v26.i64 = *v26.i64 * v15.__cosval - sinval * v15.__sinval;
            sinval = v33 + sinval * v15.__cosval;
            --v30;
          }

          while (v30);
          *a1 = v17 - v19 + v23;
          *(a1 + 1) = v24;
          v34 = a4;
          v35 = v24;
          v36 = a1 + 4;
          v37 = 16384.0 / v29;
          v27.i64[0] = 0.5;
          do
          {
            v38 = *v34++;
            *v26.i64 = v37 * v38;
            v39 = (v37 * v38 + *vbslq_s8(v46, v27, v26).i64);
            *v36++ = v39;
            v30 += v39;
            --v35;
          }

          while (v35);
          if (v30 != 0x4000)
          {
            resample_kernel_normalize(a1 + 4, v24, 0x4000 - v30);
          }
        }

        else
        {
          *a1 = (v17 - v19 + v23);
          v36 = a1 + 4;
        }

        if ((a2 - v24) >= 1)
        {
          bzero(v36, 2 * (~v24 + a2) + 2);
        }

        a6 = v47 + a6;
        a1 += a2 + 4;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    if (a5 >= a2)
    {
      LODWORD(v40) = a2;
    }

    else
    {
      LODWORD(v40) = a5;
    }

    if (v40 >= 0x4000)
    {
      v40 = 0x4000;
    }

    else
    {
      v40 = v40;
    }

    if (a7 == 0.0)
    {
      v41 = v40;
    }

    else
    {
      v41 = 1;
    }

    if (0x4000 % v41 >= a2)
    {
      v42 = a2;
    }

    else
    {
      v42 = 0x4000 % v41;
    }

    if (v41 >= v42)
    {
      v43 = (v41 - v42) >> 1;
    }

    else
    {
      v43 = 0;
    }

    __pattern4 = (0x4000 / v41) | ((0x4000 / v41) << 16);
    v49 = __pattern4 + 65537;
    if (a3)
    {
      v48 = 2 * (a2 - v41);
      v44 = 4 * a2 + 8;
      do
      {
        *a1 = 0;
        *(a1 + 1) = v41;
        v45 = a1 + 4;
        memset_pattern4(a1 + 4, &__pattern4, 2 * v41);
        if (a2 > v41)
        {
          bzero(v45 + 2 * v41, v48);
        }

        if (v42)
        {
          memset_pattern4(v45 + 2 * v43, &v49, 2 * v42);
        }

        a1 = (a1 + v44);
        --v7;
      }

      while (v7);
    }
  }
}

__int16 *resample_kernel_normalize(__int16 *result, int a2, int a3)
{
  if (a2)
  {
    v3 = 0;
    v4 = 0;
    v5 = result;
    v6 = result;
    do
    {
      v8 = *v6++;
      v7 = v8;
      v9 = v4 < v8;
      if (v4 == v8)
      {
        ++v3;
      }

      if (v9)
      {
        result = v5;
        v4 = v7;
        v3 = 1;
      }

      v5 = v6;
      --a2;
    }

    while (a2);
    if (v3)
    {
      if (a3 / v3)
      {
        v10 = v3;
        v11 = result;
        do
        {
          *v11++ += a3 / v3;
          --v10;
        }

        while (v10);
        a3 %= v3;
      }

      result[v3 >> 1] += a3;
    }
  }

  return result;
}

void resample_filter_normalize(_DWORD *a1, unsigned int a2, int a3, int a4)
{
  v5 = a3;
  v6 = a1;
  v7 = 2 * a2 + 8;
  v8 = a3;
  v9 = a1;
  do
  {
    v10 = *v9;
    if ((*v9 & 0x80000000) == 0)
    {
      break;
    }

    v11 = 0;
    --v8;
    v12 = v10;
    v13 = v9[1] + v10;
    *v9 = 0;
    v9[1] = v13;
    v14 = v9 + 2;
    v15 = ~v10;
    v16 = (v9 + 2);
    do
    {
      v17 = *v16++;
      v11 += v17;
      v18 = __CFADD__(v10++, 1);
    }

    while (!v18);
    *(v9 + v15 + 5) += v11;
    if (v13)
    {
      v19 = -1 * v12;
      do
      {
        v20 = v14 + 1;
        *v14 = v14[v19];
        ++v14;
        --v13;
      }

      while (v13);
    }

    else
    {
      v20 = v9 + 2;
    }

    bzero(v20, 2 * v15 + 2);
    v9 = (v9 + v7);
  }

  while (v8);
  v21 = (v6 + v7 * (v5 - 1));
  v22 = v5;
  do
  {
    v23 = v21[1];
    v24 = *v21 - a4 + v23;
    if (v24 < 1)
    {
      break;
    }

    v25 = 0;
    --v22;
    v21[1] = a4 - *v21;
    v26 = v21 + v23 + 3;
    do
    {
      v25 += *v26;
      *v26-- = 0;
      --v24;
    }

    while (v24);
    *v26 += v25;
    v21 = (v21 - v7);
  }

  while (v22);
  do
  {
    v27 = v6[1];
    if (v27)
    {
      v28 = v6 + 2;
      v29 = 2 * v27 + 6;
      v30 = -v27;
      while (!*(v6 + v29))
      {
        v29 -= 2;
        ++v30;
        if (!--v27)
        {
          goto LABEL_34;
        }
      }

      v31 = 0;
      v32 = 8;
      while (!*(v6 + v32))
      {
        ++v31;
        v32 += 2;
        if (v27 == v31)
        {
          v31 = v27;
          break;
        }
      }

      if (v31)
      {
        v27 -= v31;
        if (v27)
        {
          v33 = v31 + v30;
          do
          {
            v34 = v28 + 1;
            *v28 = v28[v31];
            ++v28;
            v18 = __CFADD__(v33++, 1);
          }

          while (!v18);
        }

        else
        {
          v34 = v6 + 2;
        }

        *v6 += v31;
        bzero(v34, 2 * (v31 - 1) + 2);
      }
    }

LABEL_34:
    v6[1] = v27;
    v6 = (v6 + v7);
    --v5;
  }

  while (v5);
}

const void *___Z18CGPreferencesCheckI31CGResamplingAllowTemplateMethodENT_10ResultTypeEv_block_invoke()
{
  result = get_BOOLean_property("CGResamplingAllowTemplateMethod", copy_preference_value, &CGPreferencesCheck<CGResamplingAllowTemplateMethod>(void)::result);
  if ((result & 1) == 0)
  {
    CGPreferencesCheck<CGResamplingAllowTemplateMethod>(void)::result = 1;
  }

  return result;
}

BOOL resample_select_template(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 && (*(a1 + 116) & 1) != 0)
  {
    if (a3 == 3)
    {
      if (!a2)
      {
        return a1 != 0;
      }

      --a2;
    }

    if ((a2 - 6) >= 0xFFFFFFFFFFFFFFFBLL)
    {
      v3 = *(a1 + 84);
      v4 = -1;
      if (v3 <= 2)
      {
        if (!v3)
        {
          return a1 != 0;
        }

        if (v3 == 2)
        {
          v4 = 1;
        }

        if (v3 == 1)
        {
          v4 = 0;
        }
      }

      else if (v3 > 4)
      {
        if (v3 == 5)
        {
          v4 = 2;
        }

        else if (v3 == 6)
        {
          return a1 != 0;
        }
      }

      else
      {
        if (v3 == 3)
        {
          return a1 != 0;
        }

        v4 = 3;
      }

      v5 = *(&kHorizontalFunctionList[20 * v4 - 1] + 5 * a3 + a2);
      if (v5)
      {
        *(a1 + 24) = v5;
      }

      v6 = *(&kVerticalFunctionList[20 * v4 - 1] + 5 * a3 + a2);
      if (v6)
      {
        *(a1 + 16) = v6;
      }
    }
  }

  return a1 != 0;
}

uint64_t CGColorSpaceCreateDisplayP3_PQ()
{
  if (CGColorSpaceCreateDisplayP3_PQ_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateDisplayP3_PQ_predicate, &__block_literal_global_203);
  }

  v0 = CGColorSpaceCreateDisplayP3_PQ_space;
  if (CGColorSpaceCreateDisplayP3_PQ_space)
  {
    CFRetain(CGColorSpaceCreateDisplayP3_PQ_space);
  }

  return v0;
}

uint64_t img_interpolate_read(void *a1, uint64_t a2, unsigned int a3, uint64_t *a4, int *a5)
{
  v5 = a5;
  v6 = a2;
  v7 = a1;
  v127 = 0;
  v129 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v117 = 0;
  v143 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v12 = a1[11];
  v131 = 0;
  v132 = 0uLL;
  v133 = 0uLL;
  v135 = 0;
  v13 = a4[1];
  v124 = *a4;
  v14 = (a1 + 7);
  v109 = (a1 + 7);
  v110 = a1 + 60;
  v120 = a3;
  v15 = *a5;
  v118 = v11;
  while (1)
  {
    v16 = *v14;
    LODWORD(v136) = *v14;
    v123 = v13;
    if (v13)
    {
      v17 = v120;
      v18 = v13 + v5[1] * v120;
      v19 = v110;
      if (v124 == v13)
      {
        v19 = v14;
      }

      v20 = *v19;
    }

    else
    {
      v20 = 0;
      v18 = 0;
      v17 = v120;
    }

    HIDWORD(v136) = v20;
    if (v17 >= 2 && !*v118 && *(v118 + 16) == img_raw_read)
    {
      v21 = v15;
      if (*(v118 + 44) == *(v7 + 11))
      {
        v105 = img_raw_access(v118, &v136);
        v21 = *v5;
        if (v105)
        {
          LODWORD(v136) = *v5;
          if (v18)
          {
            HIDWORD(v136) = v5[1];
          }

          v117 = 1;
          v16 = v21;
        }

        else
        {
          v117 = 0;
          v16 = v136;
        }
      }
    }

    else
    {
      v21 = v15;
    }

    v22 = v124 + v15 * v120;
    v23 = v120 - 1;
    v24 = v21 * (v120 - 1) / v16;
    if (v24 < v120)
    {
      v25 = *(v7 + 16);
      if (v24 >= v25)
      {
        v23 = v24;
      }

      else
      {
        if (v120 >= v25)
        {
          v23 = *(v7 + 16);
        }

        else
        {
          v23 = v120;
        }

        v16 = *(v7 + 14);
        v22 = v7[9] + v16 * v23;
        LODWORD(v136) = v16;
        if (v123)
        {
          if (v123 == v124)
          {
            HIDWORD(v136) = v16;
            v18 = v22;
          }

          else
          {
            HIDWORD(v136) = *(v7 + 15);
            v18 = v7[10] + SHIDWORD(v136) * v23;
          }
        }
      }
    }

    v26 = resample_range(v12, 3, v6, v120, &v131);
    if (v26 < 0)
    {
      return a3 - v120;
    }

    if (v26 >= v23)
    {
      v27 = v23;
    }

    else
    {
      v27 = v26;
    }

    v28 = v18 - SHIDWORD(v136) * v27;
    if (!v18)
    {
      v28 = 0;
    }

    v121 = v28;
    v122 = v22 - v16 * v27;
    v119 = v120 + v6;
    v115 = v6;
    v114 = v6 + 1;
    v5 = a5;
    v29 = v118;
    v30 = v26;
    v116 = v6;
    while (1)
    {
      if (v30 < 1)
      {
        v126 = 0;
        v34 = 0;
        if (!v12)
        {
          goto LABEL_165;
        }
      }

      else
      {
        *&v132 = v122;
        *(&v132 + 1) = v121;
        *&v133 = v122;
        *(&v133 + 1) = v121;
        v134 = v136;
        v135 = v136;
        v126 = v27;
        if (v117)
        {
          v31 = img_raw_data(v29, v131, v27, &v132, &v134);
        }

        else
        {
          v31 = (*(v29 + 16))(v29, v131);
        }

        if (v31 <= 0)
        {
          goto LABEL_163;
        }

        v34 = v31;
        v35 = *(v29 + 44);
        v36 = *(v7 + 11);
        if (v35 == v36)
        {
          v133 = v132;
          v135 = v134;
          v9 = *(&v132 + 1);
          v127 = *(&v132 + 1);
          v10 = v132;
          v8 = v132;
          v129 = v132;
          if (!v12)
          {
            goto LABEL_165;
          }
        }

        else
        {
          v37 = *(v29 + 40);
          if (v37 == 16)
          {
            v38 = 2;
          }

          else
          {
            v38 = 1;
          }

          if (v37 == 32)
          {
            v39 = 4;
          }

          else
          {
            v39 = v38;
          }

          if (*(v7 + 24) == 5)
          {
            v40 = 5;
          }

          else
          {
            v40 = v39;
          }

          img_alpha(*(v29 + 48), v31, *(v29 + 36), v35, &v132, &v134, v36, &v133, v32, v33, &v135, v40);
          v9 = v121;
          v10 = v122;
          v127 = v121;
          v129 = v122;
          v8 = v122;
          if (!v12)
          {
LABEL_165:
            v106 = a3;
            v107 = a3;
            return v106 - v107;
          }
        }
      }

      if (!*(v12 + 24))
      {
        goto LABEL_163;
      }

      if (!*(v12 + 16))
      {
        goto LABEL_163;
      }

      v41 = v131;
      v139 = v124;
      if (!v124)
      {
        goto LABEL_163;
      }

      v141 = 0;
      if (v34)
      {
        v141 = v10;
        if (!v10)
        {
          goto LABEL_163;
        }
      }

      v125 = v30;
      v140 = v123;
      v142 = v9;
      v42 = v119 >= *(v12 + 76) ? *(v12 + 76) : v119;
      if (v42 <= v6)
      {
        v55 = 0;
      }

      else
      {
        v137 = -1;
        v138 = -1;
        if (v34 && *(v12 + 120) == 1)
        {
          v43 = *(v12 + 112);
          v44 = *(v12 + 88);
          v45 = *(v12 + 80);
          if (((4 * v43) & 0xC) != 0)
          {
            v46 = 16 - ((4 * v43) & 0xCu);
          }

          else
          {
            v46 = 0;
          }

          v47 = (v135 * (v34 - 1)) + v8;
          v48 = *(v12 + 100);
          v49 = v47 + (v48 - 1) * v43;
          v50 = (v49 + 4095) & 0xFFFFFFFFFFFFF000;
          if (v49 + (v46 + 4 * v43) > v50)
          {
            v51 = *(v12 + 72);
            while (--v51 >= 1)
            {
              v52 = (*(v12 + 8) + ((v45 * v44) + 8) * (v51 & 0x7FFFFFFF));
              v53 = *v52;
              if ((v47 + *v52 * v43 + v46 + ((v52[1] + 3) & 0xFFFFFFFFFFFFFFFCLL) * v43) > v50)
              {
                v137 = v47 + v53 * v43;
              }

              v54 = v53 + v44;
              if ((v54 & 0x80000000) != 0 || v54 < v48)
              {
                goto LABEL_71;
              }
            }

            v137 = v50 - (v46 + v44 * v43);
          }

LABEL_71:
          if (v9)
          {
            v56 = *(v12 + 114);
            v57 = ((4 * v56) & 0xC) != 0 ? 16 - ((4 * v56) & 0xCu) : 0;
            v58 = (HIDWORD(v135) * (v34 - 1)) + v9;
            v59 = v58 + (v48 - 1) * v56;
            v60 = (v59 + 4095) & 0xFFFFFFFFFFFFF000;
            if (v59 + 4 * *(v12 + 114) + v57 > v60)
            {
              v61 = *(v12 + 72);
              v62 = (v45 * v44) + 8;
              while (--v61 >= 1)
              {
                v63 = (*(v12 + 8) + v62 * (v61 & 0x7FFFFFFF));
                v64 = *v63;
                if ((v58 + *v63 * v56 + v57 + ((v63[1] + 3) & 0xFFFFFFFFFFFFFFFCLL) * v56) > v60)
                {
                  v138 = v58 + v64 * v56;
                }

                v65 = v64 + v44;
                if ((v65 & 0x80000000) != 0 || v65 < v48)
                {
                  goto LABEL_84;
                }
              }

              v138 = v60 - (v57 + v44 * v56);
            }
          }
        }

LABEL_84:
        v66 = v34 + v131;
        if (v34 + v131 >= 0 && v66 >= *(v12 + 104))
        {
          v66 = *(v12 + 104);
        }

        if (v66 < v131)
        {
          v41 = v66;
        }

        v128 = v41;
        v67 = *(v12 + 92);
        v68 = (*v12 + ((*(v12 + 80) * v67) + 8) * v115);
        v69 = *v68;
        v70 = v68[1];
        v71 = v114;
        if (v42 > v114)
        {
          v71 = v42;
        }

        v112 = v71;
        while (1)
        {
          v72 = *(v12 + 48);
          v73 = v69 - v72;
          if (v69 == v72)
          {
            v74 = *(v12 + 44);
          }

          else
          {
            if (v73 >= 1 && (v75 = *(v12 + 44), v76 = v75 >= v73, v74 = v75 - v73, v74 != 0 && v76))
            {
              v77 = *(v12 + 36) + v73;
              if (v77 >= *(v12 + 40))
              {
                v78 = *(v12 + 40);
              }

              else
              {
                v78 = 0;
              }

              *(v12 + 36) = v77 - v78;
            }

            else
            {
              v74 = 0;
              *(v12 + 32) = 0;
            }

            *(v12 + 44) = v74;
            *(v12 + 48) = v69;
          }

          if ((v70 - v74) >= 1)
          {
            v79 = v69 + v74;
            v80 = v69 + v74 - v128;
            v81 = (v69 + v74) < v128 || v66 <= v79;
            if (v81)
            {
              goto LABEL_144;
            }

            v141 = v129 + v135 * v80;
            if (v142)
            {
              v142 = v127 + SHIDWORD(v135) * v80;
            }

            v82 = *(v12 + 40);
            v83 = (v82 - v74) & 0xFFFFFFFE;
            v84 = v66 - v79;
            if (v84 >= v83)
            {
              v85 = v83;
            }

            else
            {
              v85 = v84;
            }

            v86 = *(v12 + 32);
            v87 = *(v12 + 64);
            if (v85 >= 1)
            {
              v88 = *(v12 + 52);
              v89 = *(v12 + 56);
              v90 = 8 * v85;
              v91 = *(v12 + 64);
              v92 = v69;
              do
              {
                *v91 = v89 + v88 * v86;
                if (v86 + 1 < v82)
                {
                  ++v86;
                }

                else
                {
                  v86 = 0;
                }

                if (v74 == v82)
                {
                  v93 = *(v12 + 36);
                  if (v93 + 1 < v82)
                  {
                    v94 = v93 + 1;
                  }

                  else
                  {
                    v94 = 0;
                  }

                  *(v12 + 36) = v94;
                  *(v12 + 48) = ++v92;
                  v74 = v82;
                }

                else
                {
                  ++v74;
                }

                ++v91;
                v90 -= 8;
              }

              while (v90);
            }

            *(v12 + 32) = v86;
            *(v12 + 44) = v74;
            v95 = &v137;
            if (!*(v12 + 120))
            {
              v95 = 0;
            }

            (*(v12 + 24))(*(v12 + 8), *(v12 + 88), *(v12 + 108), *(v12 + 72), v87, &v141, &v135, v85, v95);
            v141 += v135 * v85;
            if (v142)
            {
              v142 += SHIDWORD(v135) * v85;
            }
          }

          if (v70 - *(v12 + 44) > 0)
          {
            goto LABEL_144;
          }

          v96 = *(v12 + 64);
          if (v70 >= 1)
          {
            v97 = *(v12 + 48);
            v98 = *(v12 + 52);
            v99 = *(v12 + 40);
            v100 = *(v12 + 36);
            v101 = *(v12 + 56) + v100 * v98;
            v102 = v70;
            v103 = *(v12 + 64);
            do
            {
              *v103 = v101;
              if (v69 >= v97)
              {
                if (++v100 >= v99)
                {
                  v100 = 0;
                  v101 = *(v12 + 56);
                }

                else
                {
                  v101 += v98;
                }
              }

              ++v69;
              ++v103;
              --v102;
            }

            while (v102);
          }

          (*(v12 + 16))(v68, v67, *(v12 + 108), *(v12 + 72), &v139, v96);
          v139 += *a5;
          if (v140)
          {
            v140 += a5[1];
          }

          if (++v6 >= v42)
          {
            break;
          }

          v104 = v68 + (*(v12 + 80) * v67);
          v69 = *(v104 + 2);
          v70 = *(v104 + 3);
          v68 = (v104 + 8);
          if (v69 >= v66 && v70 + v69 > (*(v12 + 44) + *(v12 + 48)))
          {
            goto LABEL_144;
          }
        }

        v6 = v112;
LABEL_144:
        v55 = v6 - v116;
        v6 = v116;
        v10 = v129;
        v5 = a5;
        v8 = v129;
        v9 = v127;
        v7 = a1;
        v29 = v118;
      }

      if (v55 < 0 || !(v55 | v34))
      {
LABEL_163:
        v106 = a3;
        v107 = v120;
        return v106 - v107;
      }

      v131 += v34;
      if (v55)
      {
        break;
      }

      v30 = v125 - v34;
      if (v125 - v34 >= v126)
      {
        v27 = v126;
      }

      else
      {
        v27 = v30;
      }
    }

    v13 = v123;
    if (v123)
    {
      v13 = v123 + v5[1] * v55;
    }

    v15 = *v5;
    v124 += *v5 * v55;
    v6 += v55;
    v81 = v120 <= v55;
    v120 -= v55;
    v14 = v109;
    if (v81)
    {
      return a3;
    }
  }
}

uint64_t img_raw_access(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 112);
  v4 = *(a1 + 96);
  if (v4 == -1)
  {
    result = *(a1 + 184);
    if (result)
    {
      if (v3)
      {
        return 0;
      }
    }

    else
    {
      result = img_blocks_create(*(a1 + 144), 0, *(a1 + 152), 0);
      if (!result)
      {
        return result;
      }

      *(a1 + 184) = result;
      *(a1 + 88) = 0;
      if (v3)
      {
        return 0;
      }
    }

    return *(result + 40) == *(result + 48);
  }

  if (v4)
  {
    return !v3 && !*(a1 + 152);
  }

  if (get_image_pointer(a1) && !v3)
  {
    return 1;
  }

  if (!a2)
  {
    return 0;
  }

  result = 0;
  v7 = *(a1 + 56);
  if (v7 >= *a2 && v7 - *a2 <= 64)
  {
    *a2 = v7;
    return 0;
  }

  return result;
}

char *color_space_state_create_p3_PQ()
{
  if (color_space_state_create_p3_PQ_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_p3_PQ_cglibrarypredicate, &__block_literal_global_59);
  }

  v0 = color_space_state_create_p3_PQ_f;
  if (color_space_state_create_p3_PQ_cglibrarypredicate_60 != -1)
  {
    dispatch_once(&color_space_state_create_p3_PQ_cglibrarypredicate_60, &__block_literal_global_63_1761);
  }

  v1 = v0(color_space_state_create_p3_PQ_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceDisplayP3_PQ";
    *(icc_with_profile + 5) = 11;
    *(*(icc_with_profile + 12) + 40) = @"Display P3; SMPTE ST 2084 PQ EOTF";
    icc_with_profile[16] = 1;
    if (should_allow_as_output_space_predicate != -1)
    {
      dispatch_once(&should_allow_as_output_space_predicate, &__block_literal_global_304_1763);
    }

    if ((should_allow_as_output_space_should_allow & 1) == 0)
    {
      icc_with_profile[10] = 0;
    }
  }

  return icc_with_profile;
}

void CGContextStrokeEllipseInRect(CGContextRef c, CGRect rect)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      height = rect.size.height;
      width = rect.size.width;
      y = rect.origin.y;
      x = rect.origin.x;
      if (rect.origin.x != INFINITY && rect.origin.y != INFINITY)
      {
        v13 = *(c + 21);
        if (v13)
        {
          CFRelease(v13);
          *(c + 21) = 0;
        }

        v15.origin.x = x;
        v15.origin.y = y;
        v15.size.width = width;
        v15.size.height = height;
        CGContextAddEllipseInRect(c, v15);

        CGContextDrawPath(c, kCGPathStroke);
      }

      return;
    }

    v12 = c;
  }

  else
  {
    v12 = 0;
  }

  handle_invalid_context("CGContextStrokeEllipseInRect", v12);
}

uint64_t resample_range(uint64_t a1, int a2, unsigned int a3, int a4, int *a5)
{
  if (a1)
  {
    v5 = 92;
    if (a2 == 1)
    {
      v5 = 88;
    }

    v6 = 76;
    if (a2 == 1)
    {
      v6 = 72;
    }

    v7 = *(a1 + 8 * (a2 == 1));
    v8 = *(a1 + v6);
    v9 = *(a1 + v5);
    v10 = a4 + a3;
    if (a4 + a3 >= v8)
    {
      v10 = v8;
    }

    if (v10 >= a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = v10;
    }

    v12 = *(a1 + 80) * v9 + 8;
    v13 = *(v12 * v11 + v7);
    v14 = *(v7 + v12 * ((__PAIR64__(v10, a3) - v10) >> 32) + 4) + *(v7 + v12 * ((__PAIR64__(v10, a3) - v10) >> 32));
    if (a2 == 3 && *(a1 + 56))
    {
      v15 = *(a1 + 48);
      v16 = *(a1 + 44) + v15;
      v17 = v13 >= 0 && v13 >= v15;
      v18 = v17;
      v19 = v16 <= v14 ? v14 : v16;
      if (v18 && v13 < v16)
      {
        v13 = v16;
        v14 = v19;
      }
    }

    if (a5)
    {
      *a5 = v13;
    }

    return (v14 - v13);
  }

  else
  {
    if (a5)
    {
      *a5 = 0;
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t CG::DisplayList::getEntryStrokeState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ++*(a1 + 832);
  v4 = a1 + 632;
  v5 = *(a1 + 632);
  if (!v5)
  {
    goto LABEL_36;
  }

  v6 = a1 + 632;
  do
  {
    v7 = *(v5 + 40);
    v34[0] = *(v5 + 32);
    v34[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = CG::CompareEntryStateStroke::operator()(v34, a2);
      std::__shared_weak_count::__release_shared[abi:fe200100](v7);
    }

    else
    {
      v8 = CG::CompareEntryStateStroke::operator()(v34, a2);
    }

    if (v8)
    {
      v9 = 8;
    }

    else
    {
      v6 = v5;
      v9 = 0;
    }

    v5 = *(v5 + v9);
  }

  while (v5);
  if (v4 == v6)
  {
LABEL_36:
    operator new();
  }

  v10 = *(v6 + 40);
  v33[0] = *(v6 + 32);
  v33[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (CG::CompareEntryStateStroke::operator()(v33, a2))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v10);
      goto LABEL_36;
    }
  }

  else if (CG::CompareEntryStateStroke::operator()(v33, a2))
  {
    goto LABEL_36;
  }

  v12 = *(v6 + 32);
  v11 = *(v6 + 40);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  StrokeColor = CGGStateGetStrokeColor(a2);
  v14 = *(v12 + 8);
  if (v14)
  {
    v15 = *(v14 + 16);
  }

  else
  {
    v15 = 0;
  }

  v16 = CGColorCompare(StrokeColor, v15);
  if (v16 == -1)
  {
    goto LABEL_31;
  }

  if (v16 == 1)
  {
    goto LABEL_28;
  }

  v17 = *(a2 + 128);
  v18 = *(v12 + 40);
  v19 = v18 ? *(v18 + 16) : 0;
  v20 = CGDashCompare(*(v17 + 32), v19);
  if (v20 == -1)
  {
    goto LABEL_31;
  }

  if (v20 == 1)
  {
    goto LABEL_28;
  }

  v22 = *(v17 + 8);
  v23 = *(v12 + 16);
  if (v22 < v23)
  {
LABEL_31:
    v21 = 1;
    if (!v11)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (v22 > v23)
  {
    goto LABEL_28;
  }

  v25 = *(v17 + 24);
  v26 = *(v12 + 24);
  if (v25 < v26)
  {
    goto LABEL_31;
  }

  if (v25 > v26)
  {
    goto LABEL_28;
  }

  v27 = *(v17 + 16);
  v28 = *(v12 + 32);
  if (v27 < v28)
  {
    goto LABEL_31;
  }

  if (v27 > v28)
  {
    goto LABEL_28;
  }

  v29 = *(v17 + 2);
  v30 = (v29 << 8);
  v31 = *(v12 + 48);
  if (v30 < (v31 << 8))
  {
    goto LABEL_31;
  }

  if (v30 > (v31 << 8))
  {
    goto LABEL_28;
  }

  v32 = v29 >> 8;
  if (v32 < v31 >> 8)
  {
    goto LABEL_31;
  }

  if (v32 > v31 >> 8)
  {
LABEL_28:
    v21 = 0;
    if (!v11)
    {
      goto LABEL_33;
    }

LABEL_32:
    std::__shared_weak_count::__release_shared[abi:fe200100](v11);
    goto LABEL_33;
  }

  v21 = (*(v17 + 1) ^ 1) & *(v12 + 50);
  if (v11)
  {
    goto LABEL_32;
  }

LABEL_33:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
  }

  if (v21)
  {
    goto LABEL_36;
  }

  return *(v6 + 32);
}

const void *__should_allow_as_output_space_block_invoke()
{
  v1 = 0;
  result = get_BOOLean_property("ShouldAllowHDROutputSpaces", copy_local_domain_value, &v1);
  if (result)
  {
    should_allow_as_output_space_should_allow = v1;
  }

  return result;
}

void sub_183F4EC00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CG::DisplayList::dashResourceForDash(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  ++*(a1 + 728);
  v3 = a1 + 304;
  v4 = *(a1 + 304);
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = a1 + 304;
  do
  {
    v6 = *(v4 + 32);
    v7 = *(v4 + 40);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = CGDashCompare(*(v6 + 16), a2) == -1;
      std::__shared_weak_count::__release_shared[abi:fe200100](v7);
    }

    else
    {
      v8 = CGDashCompare(*(v6 + 16), a2) == -1;
    }

    if (v8)
    {
      v9 = 8;
    }

    else
    {
      v5 = v4;
      v9 = 0;
    }

    v4 = *(v4 + v9);
  }

  while (v4);
  if (v3 == v5)
  {
LABEL_16:
    operator new();
  }

  v10 = *(v5 + 32);
  v11 = *(v5 + 40);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    if (CGDashCompare(*(v10 + 16), a2) == -1)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v11);
      goto LABEL_16;
    }
  }

  else if (CGDashCompare(*(v10 + 16), a2) == -1)
  {
    goto LABEL_16;
  }

  v13 = *(v5 + 32);
  v14 = *(v5 + 40);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = CGDashCompare(a2, *(v13 + 16));
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v15 = CGDashCompare(a2, *(v13 + 16));
  if (v11)
  {
LABEL_20:
    std::__shared_weak_count::__release_shared[abi:fe200100](v11);
  }

LABEL_21:
  if (v15 == -1)
  {
    goto LABEL_16;
  }

  return *(v5 + 32);
}

uint64_t CGColorSpaceCreateDisplayP3_HLG()
{
  if (CGColorSpaceCreateDisplayP3_HLG_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateDisplayP3_HLG_predicate, &__block_literal_global_206);
  }

  v0 = CGColorSpaceCreateDisplayP3_HLG_space;
  if (CGColorSpaceCreateDisplayP3_HLG_space)
  {
    CFRetain(CGColorSpaceCreateDisplayP3_HLG_space);
  }

  return v0;
}

void *std::__tree<std::shared_ptr<CG::DisplayListEntryStateStroke const>,CG::CompareEntryStateStroke,std::allocator<std::shared_ptr<CG::DisplayListEntryStateStroke const>>>::__find_equal<std::shared_ptr<CG::DisplayListEntryStateStroke const>>(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_7;
  }

  v11 = *a5;
  v12 = a5[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = a2[4];
  v14 = a2[5];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = CG::CompareEntryStateStroke::operator()(v11, v13);
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_13:
    if (v15)
    {
      goto LABEL_7;
    }

LABEL_14:
    v18 = a2[4];
    v19 = a2[5];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = *a5;
    v21 = a5[1];
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      v22 = CG::CompareEntryStateStroke::operator()(v18, v20);
      std::__shared_weak_count::__release_shared[abi:fe200100](v21);
      if (!v19)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v22 = CG::CompareEntryStateStroke::operator()(v18, v20);
      if (!v19)
      {
LABEL_19:
        if (!v22)
        {
          *a3 = a2;
          *a4 = a2;
          return a4;
        }

        a4 = a2 + 1;
        v23 = a2[1];
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          v32 = a2;
          do
          {
            v24 = v32[2];
            v26 = *v24 == v32;
            v32 = v24;
          }

          while (!v26);
        }

        if (v24 == v9)
        {
          goto LABEL_48;
        }

        v33 = *a5;
        v34 = a5[1];
        if (v34)
        {
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v35 = v24[4];
        v36 = v24[5];
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          v37 = CG::CompareEntryStateStroke::operator()(v33, v35);
          std::__shared_weak_count::__release_shared[abi:fe200100](v36);
          if (v34)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v37 = CG::CompareEntryStateStroke::operator()(v33, v35);
          if (v34)
          {
LABEL_47:
            std::__shared_weak_count::__release_shared[abi:fe200100](v34);
            if ((v37 & 1) == 0)
            {
              goto LABEL_54;
            }

LABEL_48:
            if (*a4)
            {
              *a3 = v24;
              return v24;
            }

            else
            {
              *a3 = a2;
            }

            return a4;
          }
        }

        if (!v37)
        {
          goto LABEL_54;
        }

        goto LABEL_48;
      }
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v19);
    goto LABEL_19;
  }

  v15 = CG::CompareEntryStateStroke::operator()(v11, v13);
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_6:
  std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  if ((v15 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (*a1 == a2)
  {
    v17 = a2;
    goto LABEL_33;
  }

  v16 = *a2;
  if (*a2)
  {
    do
    {
      v17 = v16;
      v16 = v16[1];
    }

    while (v16);
  }

  else
  {
    v25 = a2;
    do
    {
      v17 = v25[2];
      v26 = *v17 == v25;
      v25 = v17;
    }

    while (v26);
  }

  v27 = v17[4];
  v28 = v17[5];
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v29 = *a5;
  v30 = a5[1];
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    v31 = CG::CompareEntryStateStroke::operator()(v27, v29);
    std::__shared_weak_count::__release_shared[abi:fe200100](v30);
    if (v28)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v31 = CG::CompareEntryStateStroke::operator()(v27, v29);
    if (v28)
    {
LABEL_29:
      std::__shared_weak_count::__release_shared[abi:fe200100](v28);
      if ((v31 & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_33;
    }
  }

  if (v31)
  {
LABEL_33:
    if (*a2)
    {
      *a3 = v17;
      return v17 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

LABEL_54:

  return std::__tree<std::shared_ptr<CG::DisplayListEntryStateStroke const>,CG::CompareEntryStateStroke,std::allocator<std::shared_ptr<CG::DisplayListEntryStateStroke const>>>::__find_equal<std::shared_ptr<CG::DisplayListEntryStateStroke const>>(a1, a3, a5);
}

char *color_space_state_create_p3_HLG()
{
  if (color_space_state_create_p3_HLG_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_p3_HLG_cglibrarypredicate, &__block_literal_global_70);
  }

  v0 = color_space_state_create_p3_HLG_f;
  if (color_space_state_create_p3_HLG_cglibrarypredicate_71 != -1)
  {
    dispatch_once(&color_space_state_create_p3_HLG_cglibrarypredicate_71, &__block_literal_global_74);
  }

  v1 = v0(color_space_state_create_p3_HLG_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceDisplayP3_HLG";
    *(icc_with_profile + 5) = 12;
    *(*(icc_with_profile + 12) + 40) = @"Display P3; ARIB STD-B67 HLG";
    icc_with_profile[17] = 1;
    if (should_allow_as_output_space_predicate != -1)
    {
      dispatch_once(&should_allow_as_output_space_predicate, &__block_literal_global_304_1763);
    }

    if ((should_allow_as_output_space_should_allow & 1) == 0)
    {
      icc_with_profile[10] = 0;
    }
  }

  return icc_with_profile;
}

Swift::Void __swiftcall CGMutablePathRef.move(to:transform:)(CGPoint to, CGAffineTransform *transform)
{
  v3 = *&transform->c;
  *&v4.a = *&transform->a;
  *&v4.c = v3;
  *&v4.tx = *&transform->tx;
  CGPathMoveToPoint(v2, &v4, to.x, to.y);
}

void CGPathAddArcToPoint(CGMutablePathRef path, const CGAffineTransform *m, CGFloat x1, CGFloat y1, CGFloat x2, CGFloat y2, CGFloat radius)
{
  if (path)
  {
    if ((CGPathDisableTypeValidation & 1) != 0 || (v14 = CFGetTypeID(path), v14 == CGPathGetTypeID()))
    {
      if ((*&x1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&y1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&x2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&y2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {

        CGFloatPostError();
      }

      {
        v16 = *(path + 4);
        v15 = (path + 16);
        if ((v16 - 10) > 0xFFFFFFF6)
        {
          v18.x = x1;
          v18.y = y1;
          v17.x = x2;
          v17.y = y2;
          CG::Path::add_arc_to_point(v15, &v18, &v17, radius, m);
        }

        else
        {
          CGPostError("%s: no current point.", "CGPathAddArcToPoint");
        }
      }
    }
  }
}

void CGMutablePathRef.addArc(tangent1End:tangent2End:radius:transform:)(_OWORD *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = a1[1];
  *&v8.a = *a1;
  *&v8.c = v7;
  *&v8.tx = a1[2];
  CGPathAddArcToPoint(v6, &v8, a2, a3, a4, a5, a6);
}

void CG::Path::add_arc_to_point(CG::Path *this, const CGPoint *a2, const CGPoint *a3, double a4, CGAffineTransform *a5)
{
  *&v10 = *&CG::Path::current_point(this);
  v11 = v10;
  v13 = v12;
  if (a5)
  {
    v14 = *&a5->c;
    v38 = *&a5->a;
    v39 = v14;
    v40 = *&a5->tx;
    v11 = CGPointApplyInverseAffineTransform(&v38.x, v10, v13);
    v13 = v15;
  }

  v16 = a2->x - v11;
  v17 = a2->y - v13;
  v32 = a3->x - v11;
  v31 = a3->y - v13;
  v34 = v17;
  __x = v16;
  if (v16 != 0.0 || (v18 = 0.0, v19 = 0.0, v17 != 0.0))
  {
    v18 = atan2(v17, v16);
    v19 = a4;
  }

  v20 = __sincos_stret(v18);
  v21.f64[0] = v20.__cosval;
  v21.f64[1] = -v20.__sinval;
  v22 = vmlaq_n_f64(vmulq_n_f64(v20, v31), v21, v32);
  v33 = vmlaq_n_f64(vmulq_n_f64(v20, v34), v21, __x);
  v35 = vaddq_f64(v33, 0);
  __xa = v22;
  *&v22.f64[0] = vmovn_s64(vceqq_f64(v33, v22));
  v23 = 0.0;
  v24 = 0.0;
  if ((LODWORD(v22.f64[0]) & HIDWORD(v22.f64[0]) & 1) == 0)
  {
    v25 = vsubq_f64(vaddq_f64(__xa, 0), v35);
    v24 = 3.14159265 - fabs(atan2(v25.f64[1], v25.f64[0]));
  }

  v26 = sin(v24 * 0.5);
  if (v26 == 0.0)
  {
    v27 = v35.f64[1];
    v28 = v35.f64[0];
    v29 = 0.0;
    v19 = 0.0;
    v30 = v33;
  }

  else
  {
    v28 = v35.f64[0] - v19 * fabs(cos(v24 * 0.5) / v26);
    v30 = v33;
    if (vmovn_s64(vcgtq_f64(__xa, v33)).i32[1])
    {
      v29 = 1.57079633 - v24;
      v23 = -1.57079633;
      v27 = v19;
    }

    else
    {
      v27 = -v19;
      v29 = v24 + -1.57079633;
      v23 = 1.57079633;
    }
  }

  v38.x = v11 + v27 * -v20.__sinval + v20.__cosval * v28 + 0.0;
  v38.y = v13 + v27 * v20.__cosval + v20.__sinval * v28 + 0.0;
  CG::Path::add_arc(this, &v38, v19, v18 + v23, v18 + v29, vmovn_s64(vmvnq_s8(vcgtq_f64(__xa, v30))).i32[1] & 1, a5);
}

Swift::Void __swiftcall CGMutablePathRef.addLine(to:transform:)(CGPoint to, CGAffineTransform *transform)
{
  v3 = *&transform->c;
  *&v4.a = *&transform->a;
  *&v4.c = v3;
  *&v4.tx = *&transform->tx;
  CGPathAddLineToPoint(v2, &v4, to.x, to.y);
}

uint64_t CGContextDelegateOperation(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 168);
    if (v1)
    {
      return v1();
    }

    else
    {
      return 1006;
    }
  }

  return result;
}

void CGGStateSetLineJoin(uint64_t a1, int a2)
{
  if (*(*(a1 + 128) + 3) != a2)
  {
    v2 = a2;
    maybe_copy_stroke_state(a1);
    *(*(a1 + 128) + 3) = v2;
  }
}

void CGContextSetLineJoin(CGContextRef c, CGLineJoin join)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      if (join >= (kCGLineJoinBevel|kCGLineJoinRound))
      {
        join = kCGLineJoinMiter;
      }

      CGGStateSetLineJoin(*(c + 12), join);
    }

    else
    {
      handle_invalid_context("CGContextSetLineJoin", c);
    }
  }

  else
  {
    handle_invalid_context("CGContextSetLineJoin", 0);
  }
}

atomic_uint *CGClipCreateWithMask(atomic_uint *result, char a2)
{
  if (result)
  {
    v3 = result;
    result = malloc_type_malloc(0x38uLL, 0x1062040581A6B82uLL);
    if (result)
    {
      *result = 1;
      result[1] = atomic_fetch_add_explicit(CGClipCreate_identifier, 1u, memory_order_relaxed) + 1;
      *(result + 4) = 3;
      *(result + 2) = 0;
      *(result + 10) = a2;
      atomic_fetch_add_explicit(v3, 1u, memory_order_relaxed);
      *(result + 3) = v3;
    }
  }

  return result;
}

void CGClipMaskRelease(void *a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v2 = a1[7];
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

uint64_t CG::CompareEntryStateStroke::operator()(uint64_t *a1, uint64_t a2)
{
  v4 = *(*a1 + 8);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  StrokeColor = CGGStateGetStrokeColor(a2);
  v7 = CGColorCompare(v5, StrokeColor);
  if (v7 == -1)
  {
    goto LABEL_13;
  }

  if (v7 != 1)
  {
    v8 = *a1;
    v9 = *(v8 + 40);
    if (v9)
    {
      v10 = *(v9 + 16);
    }

    else
    {
      v10 = 0;
    }

    v11 = *(a2 + 128);
    v12 = CGDashCompare(v10, *(v11 + 32));
    if (v12 != -1)
    {
      if (v12 == 1)
      {
        goto LABEL_11;
      }

      v14 = *(v8 + 16);
      v15 = *(v11 + 8);
      if (v14 >= v15)
      {
        if (v14 > v15)
        {
          goto LABEL_11;
        }

        v17 = *(v8 + 24);
        v18 = *(v11 + 24);
        if (v17 >= v18)
        {
          if (v17 > v18)
          {
            goto LABEL_11;
          }

          v19 = *(v8 + 32);
          v20 = *(v11 + 16);
          if (v19 >= v20)
          {
            if (v19 > v20)
            {
              goto LABEL_11;
            }

            v21 = *(v8 + 48);
            v22 = *(v11 + 2);
            v23 = (v22 << 8);
            if (v23 <= (v21 << 8))
            {
              if (v23 < (v21 << 8))
              {
                goto LABEL_11;
              }

              v24 = v22 >> 8;
              if (v24 <= v21 >> 8)
              {
                if (v24 >= v21 >> 8)
                {
                  v13 = *(v11 + 1) & (*(v8 + 50) ^ 1);
                  return v13 & 1;
                }

                goto LABEL_11;
              }
            }
          }
        }
      }
    }

LABEL_13:
    v13 = 1;
    return v13 & 1;
  }

LABEL_11:
  v13 = 0;
  return v13 & 1;
}

uint64_t CG::CompareEntryStateStroke::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 < v3)
  {
    goto LABEL_2;
  }

  if (v2 > v3)
  {
LABEL_4:
    v4 = 0;
    return v4 & 1;
  }

  v6 = *(a1 + 40);
  v7 = *(a2 + 40);
  if (v6 >= v7)
  {
    if (v6 > v7)
    {
      goto LABEL_4;
    }

    v8 = *(a1 + 16);
    v9 = *(a2 + 16);
    if (v8 >= v9)
    {
      if (v8 > v9)
      {
        goto LABEL_4;
      }

      v10 = *(a1 + 24);
      v11 = *(a2 + 24);
      if (v10 >= v11)
      {
        if (v10 > v11)
        {
          goto LABEL_4;
        }

        v12 = *(a1 + 32);
        v13 = *(a2 + 32);
        if (v12 >= v13)
        {
          if (v12 > v13)
          {
            goto LABEL_4;
          }

          v14 = *(a1 + 48);
          v15 = *(a2 + 48);
          if (v14 >= v15)
          {
            if (v14 > v15)
            {
              goto LABEL_4;
            }

            v16 = v14 >> 8;
            if (v16 >= v15 >> 8)
            {
              if (v16 <= v15 >> 8)
              {
                v4 = (*(a1 + 50) ^ 1) & *(a2 + 50);
                return v4 & 1;
              }

              goto LABEL_4;
            }
          }
        }
      }
    }
  }

LABEL_2:
  v4 = 1;
  return v4 & 1;
}

void *std::__tree<std::shared_ptr<CG::DisplayListEntryStateStroke const>,CG::CompareEntryStateStroke,std::allocator<std::shared_ptr<CG::DisplayListEntryStateStroke const>>>::__find_equal<std::shared_ptr<CG::DisplayListEntryStateStroke const>>(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    while (1)
    {
      v7 = v4;
      v8 = *a3;
      v9 = a3[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = *(v4 + 32);
      v11 = *(v4 + 40);
      if (!v11)
      {
        break;
      }

      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = CG::CompareEntryStateStroke::operator()(v8, v10);
      std::__shared_weak_count::__release_shared[abi:fe200100](v11);
      if (v9)
      {
        goto LABEL_6;
      }

LABEL_7:
      if (v12)
      {
        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v13 = v7[4];
        v14 = v7[5];
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = *a3;
        v16 = a3[1];
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          v17 = CG::CompareEntryStateStroke::operator()(v13, v15);
          std::__shared_weak_count::__release_shared[abi:fe200100](v16);
          if (!v14)
          {
            goto LABEL_15;
          }

LABEL_14:
          std::__shared_weak_count::__release_shared[abi:fe200100](v14);
          goto LABEL_15;
        }

        v17 = CG::CompareEntryStateStroke::operator()(v13, v15);
        if (v14)
        {
          goto LABEL_14;
        }

LABEL_15:
        if (!v17)
        {
          goto LABEL_23;
        }

        v5 = v7 + 1;
        v4 = v7[1];
        if (!v4)
        {
          goto LABEL_23;
        }
      }
    }

    v12 = CG::CompareEntryStateStroke::operator()(v8, v10);
    if (!v9)
    {
      goto LABEL_7;
    }

LABEL_6:
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
    goto LABEL_7;
  }

  v7 = (a1 + 8);
LABEL_23:
  *a2 = v7;
  return v5;
}

CFStringRef CGColorSpaceGetName(CFStringRef space)
{
  if (space)
  {
    return *(space->length + 80);
  }

  return space;
}

BOOL CGColorSpaceUsesExtendedRange(CGColorSpaceRef space)
{
  if (space)
  {
    v2 = CFGetTypeID(space);
    if (kCGColorSpace_block_invoke_once != -1)
    {
      dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
    }

    if (v2 == CGColorSpaceGetTypeID_type_id)
    {
      v3 = *(*(space + 3) + 13);
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t CGColorSpaceCreateGenericRGBLinear()
{
  if (CGColorSpaceCreateGenericRGBLinear_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateGenericRGBLinear_predicate, &__block_literal_global_224);
  }

  v0 = CGColorSpaceCreateGenericRGBLinear_space;
  if (CGColorSpaceCreateGenericRGBLinear_space)
  {
    CFRetain(CGColorSpaceCreateGenericRGBLinear_space);
  }

  return v0;
}

void CGBlt_swapBytes(unsigned int a1, int a2, void *a3, void *a4, int a5, int a6, __int16 a7)
{
  if (a1 >= 1 && a2 >= 1)
  {
    if ((a7 & 0xF000) == 0x2000)
    {
      *permuteMap = 66051;
      src.data = a3;
      src.height = a2;
      src.width = a1 >> 2;
      src.rowBytes = a5;
      dest.data = a4;
      dest.height = a2;
      dest.width = src.width;
      dest.rowBytes = a6;
      vImagePermuteChannels_ARGB8888(&src, &dest, permuteMap, 0);
    }

    else if ((a7 & 0xF000) == 0x1000)
    {
      src.data = a3;
      src.height = a2;
      src.width = a1 >> 1;
      src.rowBytes = a5;
      dest.data = a4;
      dest.height = a2;
      dest.width = src.width;
      dest.rowBytes = a6;
      vImageByteSwap_Planar16U(&src, &dest, 0);
    }

    else if (a3 != a4)
    {

      CGBlt_copyBytes(a1, a2, a3, a4, a5, a6);
    }
  }
}

uint64_t __CGColorSpaceCreateGenericRGBLinear_block_invoke()
{
  result = create_singleton(color_space_state_create_generic_rgb_linear);
  CGColorSpaceCreateGenericRGBLinear_space = result;
  return result;
}

uint64_t ripl_retain(uint64_t a1)
{
  pthread_mutex_lock((a1 + 80));
  v2 = *(a1 + 8);
  if (v2 != -1)
  {
    *(a1 + 8) = v2 + 1;
  }

  return pthread_mutex_unlock((a1 + 80));
}

int16x4_t *resample_horizontal<unsigned char,int,4,false>(int16x4_t *result, unsigned int a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, int16x4_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t *a14, int *a15, unsigned int a16)
{
  if (a12 >= 1 && a16 >= 1)
  {
    v17 = 0;
    v18 = *a14;
    v19 = *a15;
    v20 = v19 >> 2;
    v21 = a12;
    v22 = 2 * a2 + 8;
    v23 = result + v22 * a12;
    if (v19 >> 2 >= *&v23[-v22 + 4] + *&v23[-v22])
    {
      v20 = *&v23[-v22 + 4] + *&v23[-v22];
    }

    v24 = a12 - 1;
    v25 = a2 > 3;
    LODWORD(v26) = (4 * (a2 & 3)) | 0x10;
    if ((a2 & 3) != 0)
    {
      v26 = v26;
    }

    else
    {
      v26 = 32;
    }

    if ((a2 & 3) != 0)
    {
      v25 = 0;
    }

    v27 = ((v26 - 1) & 0xFFFFFFFFFFFFFFF0) + 16 * ((a2 >> 2) - v25);
    v28 = a16;
    v31 = a2 != a2 || a12 < 2 || a12 == 1;
    v32.i64[0] = 0x200000002000;
    v32.i64[1] = 0x200000002000;
    v33.i64[0] = 0xFF000000FFLL;
    v33.i64[1] = 0xFF000000FFLL;
    do
    {
      v34 = *(a13 + 8 * v17);
      v35 = 0;
      if (v31)
      {
        v36 = result;
      }

      else
      {
        v36 = result;
        while (1)
        {
          v37 = (v18 + 4 * v36->i32[0]);
          v38 = (v37 + v27);
          if (v37->u64 + v27 > 4 * v20 + v18)
          {
            break;
          }

          if (v37 >= v38)
          {
            v42 = 0uLL;
            v43 = 0uLL;
            v44 = 0uLL;
            v45 = 0uLL;
          }

          else
          {
            v39 = v36 + 1;
            v40 = v36->i32[1];
            v41 = &v38[-1];
            v42 = 0uLL;
            v43 = 0uLL;
            v44 = 0uLL;
            v45 = 0uLL;
            while (v37 < v41)
            {
              v46 = *v39++;
              a10 = v46;
              v47 = *v37++;
              v48 = vmovl_high_u8(v47);
              v16 = vmovl_u8(*v47.i8);
              v42 = vmlal_lane_s16(v42, *v16.i8, a10, 0);
              v43 = vmlal_high_lane_s16(v43, v16, a10, 1);
              v44 = vmlal_lane_s16(v44, *v48.i8, a10, 2);
              v45 = vmlal_high_lane_s16(v45, v48, a10, 3);
              v40 -= 4;
            }

            if (v40 >= 1)
            {
              a10 = *v39;
              v49 = vmovl_high_u8(*v37);
              v16 = vmovl_u8(*v37->i8);
              v42 = vmlal_lane_s16(v42, *v16.i8, *v39, 0);
              v43 = vmlal_high_lane_s16(v43, v16, *v39, 1);
              v44 = vmlal_lane_s16(v44, *v49.i8, *v39, 2);
              v45 = vmlal_high_lane_s16(v45, v49, *v39, 3);
            }
          }

          *v34++ = vmaxq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(vaddq_s32(v43, v45), vaddq_s32(v42, v44)), v32), 0xEuLL), v33), 0);
          ++v35;
          v36 = (v36 + v22);
          if (v35 == v24)
          {
            v35 = v21 - 1;
            break;
          }
        }
      }

      if (v35 < v21)
      {
        do
        {
          v50 = v36->i32[1];
          v51 = v36->i32[0];
          if (v51 >= v20)
          {
            v52 = v20;
          }

          else
          {
            v52 = v36->i32[0];
          }

          v53 = v20 - v52;
          if (v50 >= v53)
          {
            v50 = v53;
          }

          if (v50 < 1)
          {
            v57 = 0uLL;
            v59 = 0uLL;
            v60 = 0uLL;
            v61 = 0uLL;
          }

          else
          {
            v54 = (v18 + 4 * v51);
            v55 = &v54[-1] + 4 * v50;
            v56 = v36 + 1;
            v57 = 0uLL;
            if (v54 >= v55)
            {
              v59 = 0uLL;
              v60 = 0uLL;
              v61 = 0uLL;
              goto LABEL_60;
            }

            v58 = v50;
            v59 = 0uLL;
            v60 = 0uLL;
            v61 = 0uLL;
            do
            {
              v62 = v58;
              if ((v23 - v56) < 8)
              {
                if (v58)
                {
                  if (v58 == 1)
                  {
                    a10.i16[0] = v56->i16[0];
                  }

                  else
                  {
                    if (v58 == 2)
                    {
                      v65 = 0;
                    }

                    else
                    {
                      if (v50)
                      {
                        v66 = 0;
                      }

                      else
                      {
                        v66 = v56->u16[3];
                      }

                      v65.i32[0] = v56->u16[2];
                      v65.i32[1] = v66;
                    }

                    v16.i16[0] = v56->i16[0];
                    v16.i16[2] = v56->i16[1];
                    a10 = vuzp1_s16(*v16.i8, v65);
                  }
                }

                else
                {
                  a10 = 0;
                }
              }

              else
              {
                a10 = *v56;
              }

              ++v56;
              v63 = *v54++;
              v64 = vmovl_high_u8(v63);
              v16 = vmovl_u8(*v63.i8);
              v57 = vmlal_lane_s16(v57, *v16.i8, a10, 0);
              v59 = vmlal_high_lane_s16(v59, v16, a10, 1);
              v60 = vmlal_lane_s16(v60, *v64.i8, a10, 2);
              v61 = vmlal_high_lane_s16(v61, v64, a10, 3);
              v58 = v62 - 4;
            }

            while (v54 < v55);
            if (v62 >= 5)
            {
              v50 = v62 - 4;
LABEL_60:
              v67 = v50;
              while (2)
              {
                if ((v23 - v56) >= 8)
                {
                  a10 = *v56;
                  goto LABEL_63;
                }

                if (v67 == 1)
                {
                  v70 = v56->i16[0];
                  ++v56;
                  v71 = 0;
                  a10 = v70;
                  v16.i32[0] = v54->i32[0];
                  v16.i64[0] = vmovl_u8(*v16.i8).u64[0];
                  goto LABEL_70;
                }

                if (v67 == 2)
                {
                  v72 = 0;
                }

                else
                {
                  if (v50)
                  {
                    v73 = 0;
                  }

                  else
                  {
                    v73 = v56->u16[3];
                  }

                  v72.i32[0] = v56->u16[2];
                  v72.i32[1] = v73;
                }

                v16.i16[0] = v56->i16[0];
                v16.i16[2] = v56->i16[1];
                a10 = vuzp1_s16(*v16.i8, v72);
LABEL_63:
                ++v56;
                if (v67 < 4)
                {
                  if (v67 >= 2)
                  {
                    if (v67 == 2)
                    {
                      v74 = 0;
                    }

                    else
                    {
                      v16.i32[0] = v54->i32[2];
                      v75 = vmovl_u8(*v16.i8);
                      HIDWORD(v74) = 0;
                      LOBYTE(v74) = v75.i8[0];
                      BYTE1(v74) = v75.i8[2];
                      BYTE2(v74) = v75.i8[4];
                      BYTE3(v74) = v75.i8[6];
                    }

                    v16.i64[0] = v54->i64[0];
                    v16.i64[1] = v74;
                  }

                  else
                  {
                    v16.i32[0] = v54->i32[0];
                    v16.i64[0] = vmovl_u8(*v16.i8).u64[0];
                    if (v67 == 1)
                    {
                      v71 = 0;
                    }

                    else
                    {
                      LOBYTE(v71) = v54->i8[4];
                      BYTE2(v71) = v54->i8[5];
                      BYTE4(v71) = v54->i8[6];
                      BYTE6(v71) = v54->i8[7];
                    }

LABEL_70:
                    v16.i64[1] = 0;
                    v16.i8[1] = v16.i8[2];
                    v16.i8[2] = v16.i8[4];
                    v16.i8[3] = v16.i8[6];
                    v16.i8[4] = v71;
                    v16.i8[5] = BYTE2(v71);
                    v16.i8[6] = BYTE4(v71);
                    v16.i8[7] = BYTE6(v71);
                  }
                }

                else
                {
                  v16 = *v54;
                }

                ++v54;
                v68 = vmovl_high_u8(v16);
                v16 = vmovl_u8(*v16.i8);
                v57 = vmlal_lane_s16(v57, *v16.i8, a10, 0);
                v59 = vmlal_high_lane_s16(v59, v16, a10, 1);
                v60 = vmlal_lane_s16(v60, *v68.i8, a10, 2);
                v61 = vmlal_high_lane_s16(v61, v68, a10, 3);
                v69 = __OFSUB__(v67, 4);
                v67 -= 4;
                if ((v67 < 0) ^ v69 | (v67 == 0))
                {
                  break;
                }

                continue;
              }
            }
          }

          *v34++ = vmaxq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(vaddq_s32(v59, v61), vaddq_s32(v57, v60)), v32), 0xEuLL), v33), 0);
          ++v35;
          v36 = (v36 + v22);
        }

        while (v35 != v21);
      }

      v18 += v19;
      ++v17;
    }

    while (v17 != v28);
  }

  return result;
}

uint64_t resample_vertical<int,unsigned char,4,(AlphaStyle)1>(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint8x8_t **a5, uint64_t a6)
{
  v6 = *a5;
  v7 = *(result + 4);
  v8 = (result + 8);
  if (a4 >= 2)
  {
    v10 = 0;
    v11 = 2;
    v12.i64[0] = 0x200000002000;
    v12.i64[1] = 0x200000002000;
    do
    {
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = v8;
      if (v7 >= 2)
      {
        result = a6 + 8;
        v16 = 2;
        v15 = v8;
        do
        {
          v17 = (*(result - 8) + 16 * v10);
          v18 = *v17;
          v19 = v17[1];
          v20 = (*result + 16 * v10);
          v21 = *v15;
          v15 += 2;
          v22 = vdup_n_s16(v21);
          v23 = vmlal_s16(v13, vmovn_s32(v18), v22);
          *v18.i8 = vdup_n_s16(HIWORD(v21));
          v14 = vmlal_s16(vmlal_s16(v14, vmovn_s32(v19), v22), vmovn_s32(v20[1]), *v18.i8);
          v13 = vmlal_s16(v23, vmovn_s32(*v20), *v18.i8);
          v16 += 2;
          result += 16;
        }

        while (v16 <= v7);
      }

      if (v7)
      {
        v24 = (*(a6 - 8 + 8 * v7) + 16 * v10);
        v25 = vld1_dup_s16(v15);
        v14 = vmlal_s16(v14, vmovn_s32(v24[1]), v25);
        v13 = vmlal_s16(v13, vmovn_s32(*v24), v25);
      }

      v26 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(v13, v12), 0xEuLL)), vshrq_n_s32(vaddq_s32(v14, v12), 0xEuLL)));
      v27 = vmax_u8(vuzp1_s8(v26, *v12.i8), vuzp2_s8(v26, *v12.i8));
      v27.i16[0] = vmax_u8(vuzp1_s8(v27, *v12.i8), vuzp2_s8(v27, *v12.i8)).u16[0];
      v28.i32[0] = v27.u8[0];
      v28.i32[1] = v27.u8[1];
      *v6++ = vmax_u8(v26, vand_s8(v28, 0xFF000000FFLL));
      v11 += 2;
      v10 += 2;
    }

    while (v11 <= a4);
    LODWORD(v9) = a4 & 0x7FFFFFFE;
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 < a4)
  {
    v9 = v9;
    v29.i64[0] = 0x200000002000;
    v29.i64[1] = 0x200000002000;
    do
    {
      v30 = 0uLL;
      v31 = v8;
      if (v7 >= 2)
      {
        v32 = (a6 + 8);
        result = 2;
        v31 = v8;
        do
        {
          v33 = *v31;
          v31 += 2;
          v30 = vmlal_s16(vmlal_s16(v30, vmovn_s32(*(*(v32 - 1) + 16 * (v9 & 0x3FFFFFFF))), vdup_n_s16(v33)), vmovn_s32(*(*v32 + 16 * (v9 & 0x3FFFFFFF))), vdup_n_s16(HIWORD(v33)));
          result += 2;
          v32 += 2;
        }

        while (result <= v7);
      }

      if (v7)
      {
        v34 = vld1_dup_s16(v31);
        v30 = vmlal_s16(v30, vmovn_s32(*(*(a6 - 8 + 8 * v7) + 16 * (v9 & 0x3FFFFFFF))), v34);
      }

      v35 = vshrq_n_s32(vaddq_s32(v30, v29), 0xEuLL);
      *v35.i8 = vqmovn_s32(v35);
      *v35.i8 = vqmovun_s16(v35);
      v36 = v35.u8[3];
      v37 = v35.u8[2];
      v35.i8[0] = vmaxv_u8(*v35.i8);
      v35.i16[1] = v35.u8[1];
      v35.i16[2] = v37;
      v35.i16[3] = v36;
      v6->i32[0] = vmovn_s16(v35).u32[0];
      v6 = (v6 + 4);
      ++v9;
    }

    while (v9 != a4);
  }

  return result;
}

char *color_space_state_create_generic_rgb_linear()
{
  if (color_space_state_create_generic_rgb_linear_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_generic_rgb_linear_cglibrarypredicate, &__block_literal_global_227_6592);
  }

  generic_rgb_linear_f = color_space_state_create_generic_rgb_linear_f(14);
  if (color_space_state_create_icc_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_icc_cglibrarypredicate, &__block_literal_global_20_7564);
  }

  icc_with_profile = 0;
  if (!color_space_state_create_icc_f(generic_rgb_linear_f, 0, 0))
  {
LABEL_15:
    if (!generic_rgb_linear_f)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (color_space_state_create_icc_cglibrarypredicate_23 != -1)
  {
    dispatch_once(&color_space_state_create_icc_cglibrarypredicate_23, &__block_literal_global_26);
  }

  icc_f_22 = color_space_state_create_icc_f_22(generic_rgb_linear_f);
  if (icc_f_22)
  {
    v3 = icc_f_22;
    ProfileSet = CGCMSUtilsCreateProfileSet(0, generic_rgb_linear_f, @"ColorSyncTransformDeviceToPCS", 0, 0, 0);
    v5 = CGCMSUtilsCreateProfileSet(0, v3, @"ColorSyncTransformPCSToPCS", 0, 0, 0);
    v6 = color_space_state_create_with_profile_sets(ProfileSet, v5);
    icc_with_profile = v6;
    if (v6)
    {
      *(v6 + 14) = 1;
    }

    CFRelease(v3);
    if (ProfileSet)
    {
      CFRelease(ProfileSet);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    goto LABEL_15;
  }

  icc_with_profile = color_space_state_create_icc_with_profile(generic_rgb_linear_f, 0);
  if (generic_rgb_linear_f)
  {
LABEL_16:
    CFRelease(generic_rgb_linear_f);
  }

LABEL_17:
  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceGenericRGBLinear";
    *(*(icc_with_profile + 12) + 40) = @"Generic RGB Linear Profile";
  }

  return icc_with_profile;
}

void *RIPLayerIntersect(void *result, void *a2)
{
  if (a2)
  {
    v3 = result;
    if (*a2 && result != 0)
    {
      if (*result)
      {
        v5 = result[4];
        if (v5 == a2[4])
        {
          result = RIPGetDepthForLayerFormat(0);
          if (v5 == result)
          {

            return ripl_Combine(v3, a2, 0);
          }
        }
      }
    }
  }

  return result;
}

void img_interpolate_end(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    (*(v2 + 24))();
  }

  v3 = a1[11];
  if (v3)
  {

    resample_destroy(v3);
  }
}

uint64_t __CGColorSpaceCreateAdobeRGB1998_block_invoke()
{
  result = create_singleton(color_space_state_create_adobe_rgb_1998);
  CGColorSpaceCreateAdobeRGB1998_space = result;
  return result;
}

char *color_space_state_create_adobe_rgb_1998()
{
  if (color_space_state_create_adobe_rgb_1998_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_adobe_rgb_1998_cglibrarypredicate, &__block_literal_global_103);
  }

  v0 = color_space_state_create_adobe_rgb_1998_f;
  if (color_space_state_create_adobe_rgb_1998_cglibrarypredicate_104 != -1)
  {
    dispatch_once(&color_space_state_create_adobe_rgb_1998_cglibrarypredicate_104, &__block_literal_global_107);
  }

  v1 = v0(color_space_state_create_adobe_rgb_1998_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceAdobeRGB1998";
    *(icc_with_profile + 5) = 14;
    *(*(icc_with_profile + 12) + 40) = @"Adobe RGB (1998)";
  }

  return icc_with_profile;
}

uint64_t CGColorSpaceCreateAdobeRGB1998()
{
  if (CGColorSpaceCreateAdobeRGB1998_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateAdobeRGB1998_predicate, &__block_literal_global_215);
  }

  v0 = CGColorSpaceCreateAdobeRGB1998_space;
  if (CGColorSpaceCreateAdobeRGB1998_space)
  {
    CFRetain(CGColorSpaceCreateAdobeRGB1998_space);
  }

  return v0;
}

uint64_t CGContextGetDelegate(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(a1 + 40);
  }

  handle_invalid_context("CGContextGetDelegate", a1);
  return 0;
}

uint64_t CGImageGetNumberOfComponents(uint64_t image)
{
  if (image)
  {
    v1 = image;
    if ((*(image + 39) & 2) != 0)
    {
      return 1;
    }

    else
    {
      ColorSpace = CGImageGetColorSpace(image);
      if (ColorSpace)
      {
        v3 = *(*(ColorSpace + 3) + 48);
      }

      else
      {
        v3 = 0;
      }

      if (CGImageGetAlphaInfo(v1))
      {
        return v3 + 1;
      }

      else
      {
        return v3;
      }
    }
  }

  return image;
}

uint64_t (*__color_space_state_create_adobe_rgb_1998_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCreateWithName");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_1730;
  }

  color_space_state_create_adobe_rgb_1998_f = v1;
  return result;
}

uint64_t *__color_space_state_create_adobe_rgb_1998_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncAdobeRGB1998Profile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_adobe_rgb_1998_s = v1;
  return result;
}

void resample_destroy(void *a1)
{
  if (a1)
  {
    v2 = a1[7];
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

uint64_t CGColorSpaceCreateITUR_709()
{
  if (CGColorSpaceCreateITUR_709_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateITUR_709_predicate, &__block_literal_global_240_6583);
  }

  v0 = CGColorSpaceCreateITUR_709_space;
  if (CGColorSpaceCreateITUR_709_space)
  {
    CFRetain(CGColorSpaceCreateITUR_709_space);
  }

  return v0;
}

void resample_filter_linear(uint64_t a1, unsigned int a2, int a3, double *a4, unsigned int a5, double a6, double a7)
{
  v7 = a3;
  if (a7 == 0.0 || (*&a7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    if (a5 >= a2)
    {
      LODWORD(v38) = a2;
    }

    else
    {
      LODWORD(v38) = a5;
    }

    if (v38 >= 0x4000)
    {
      v38 = 0x4000;
    }

    else
    {
      v38 = v38;
    }

    if (a7 == 0.0)
    {
      v39 = v38;
    }

    else
    {
      v39 = 1;
    }

    if (0x4000 % v39 >= a2)
    {
      v40 = a2;
    }

    else
    {
      v40 = 0x4000 % v39;
    }

    if (v39 >= v40)
    {
      v41 = (v39 - v40) >> 1;
    }

    else
    {
      v41 = 0;
    }

    __pattern4 = (0x4000 / v39) | ((0x4000 / v39) << 16);
    v45 = __pattern4 + 65537;
    if (a3)
    {
      v44 = 2 * (a2 - v39);
      v42 = 4 * a2 + 8;
      do
      {
        *a1 = 0;
        *(a1 + 4) = v39;
        v43 = a1 + 8;
        memset_pattern4((a1 + 8), &__pattern4, 2 * v39);
        if (a2 > v39)
        {
          bzero((v43 + 2 * v39), v44);
        }

        if (v40)
        {
          memset_pattern4((v43 + 2 * v41), &v45, 2 * v40);
        }

        a1 += v42;
        --v7;
      }

      while (v7);
    }

    return;
  }

  v12 = 1.0 / a7;
  v13 = 1.0 / a7 * 0.5;
  if (a7 <= 1.0)
  {
    if (!a3)
    {
      return;
    }

    v25 = v13 + a6;
    v26 = 2 * a2 + 8;
    while (1)
    {
      v27 = (floor(v25 - v13) - (v25 - v13) + 1.0) * a7;
      v28 = vcvtmd_s64_f64(v25 - v13);
      if (a2)
      {
        if (v27 <= 1.0)
        {
          break;
        }
      }

      if (a2 && v27 > 1.0)
      {
        v29 = 0;
        v30 = 1.0;
        v31 = a4;
        goto LABEL_35;
      }

      v34 = 0;
      v29 = 0;
      *a1 = v28;
      *(a1 + 4) = 0;
      v36 = (a1 + 8);
      v35 = (a1 + 8);
LABEL_41:
      resample_kernel_normalize(v35, v29, 0x4000 - v34);
LABEL_42:
      if ((a2 - v29) >= 1)
      {
        bzero(v36, 2 * (~v29 + a2) + 2);
      }

      v25 = v12 + v25;
      a1 += v26;
      if (!--v7)
      {
        return;
      }
    }

    v29 = 0;
    v30 = 1.0;
    v31 = a4;
    do
    {
      *v31++ = v27;
      v30 = v30 - v27;
      v32 = ++v29 >= a2 || v30 < a7;
      v27 = a7;
    }

    while (!v32);
    if (v29 < a2 && v30 < a7)
    {
LABEL_35:
      *v31 = v30;
      ++v29;
    }

    v33 = 0;
    v34 = 0;
    *a1 = v28;
    *(a1 + 4) = v29;
    v35 = (a1 + 8);
    v36 = (a1 + 8);
    do
    {
      v37 = a4[v33] * 16384.0 + 0.5;
      *v36++ = v37;
      v34 += v37;
      ++v33;
    }

    while (v29 != v33);
    if (v34 == 0x4000)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (a3)
  {
    v14 = v13 + a6;
    v15 = a2 - 2;
    v16 = 2 * a2 + 8;
    v17 = 2 * (a2 - 2);
    do
    {
      v18 = vcvtmd_s64_f64(v14);
      v19 = v14 - floor(v14);
      v20 = v19 < 0.5;
      if (v19 >= 0.5)
      {
        v21 = -0.5;
      }

      else
      {
        v21 = 0.5;
      }

      v22 = v19 + v21;
      *(a1 + 8) = ((1.0 - v22) * 16384.0 + 0.5);
      v23 = v20;
      *(a1 + 10) = (v22 * 16384.0 + 0.5);
      *a1 = v18 - v23;
      *(a1 + 4) = 2;
      if (v15 >= 1)
      {
        bzero((a1 + 12), v17);
      }

      v14 = v12 + v14;
      a1 += v16;
      --v7;
    }

    while (v7);
  }
}