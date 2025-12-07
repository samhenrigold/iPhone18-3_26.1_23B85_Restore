unint64_t CGStyleCreateShadow2(unint64_t result, long double a2, long double a3, double a4)
{
  v9[0] = 0;
  v9[1] = 0x4046800000000000;
  v9[3] = 0x3FE5555555555555;
  v9[6] = 0x3FF0000000000000;
  if (result)
  {
    v4 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      Alpha = CGTaggedColorGetAlpha(result);
    }

    else
    {
      Alpha = *(result + 8 * *(result + 56) + 64);
    }

    if (Alpha == 0.0)
    {
      return 0;
    }

    else
    {
      *&v9[2] = atan2(a3, a2) * 180.0 / 3.14159265 + 180.0;
      v9[4] = sqrt(a3 * a3 + a2 * a2);
      *&v9[5] = a4;
      return CGStyleCreateShadowWithColor(v9, v4);
    }
  }

  return result;
}

uint64_t CGStyleCreateFocusRing(uint64_t a1)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v3 = DeviceRGB;
  v4 = *(a1 + 4);
  if (v4)
  {
    if (v4 != 1)
    {
      CGColorSpaceRelease(DeviceRGB);
      return 0;
    }

    v5 = &unk_1844F1BF8;
  }

  else
  {
    v5 = &CGStyleCreateFocusRing_focus_ring_color;
  }

  v6 = CGColorCreate(DeviceRGB, v5);
  FocusRingWithColor = CGStyleCreateFocusRingWithColor(a1, v6);
  CGColorSpaceRelease(v3);
  if (v6)
  {
    CFRelease(v6);
  }

  return FocusRingWithColor;
}

uint64_t CGStyleCreateFocusRingWithColor(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  style_with_type = create_style_with_type(2);
  if (a2)
  {
    CFRetain(a2);
  }

  *(style_with_type + 24) = a2;
  *(style_with_type + 32) = 0;
  v5 = *(a1 + 4);
  if (v5 > 1 || (*(style_with_type + 36) = v5, v6 = *(a1 + 8), v6 >= 3))
  {
    CFRelease(style_with_type);
    return 0;
  }

  *(style_with_type + 40) = v6;
  *(style_with_type + 48) = vmaxnmq_f64(vminnmq_f64(*(a1 + 16), xmmword_18439CE00), 0);
  *(style_with_type + 64) = fmax(fmin(*(a1 + 32), 1.0), 0.0);
  v7 = *(a1 + 40);
  *(style_with_type + 88) = *(a1 + 56);
  *(style_with_type + 72) = v7;
  v8 = *(a1 + 72);
  if (v8 < -1)
  {
    v8 = -1;
  }

  *(style_with_type + 104) = v8;
  return style_with_type;
}

void CGStyleRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

double CGStyleCreateGaussianBlur(uint64_t a1)
{
  style_with_type = create_style_with_type(3);
  result = fmax(fmin(*(a1 + 8), 1.79769313e308), 0.0);
  *(style_with_type + 40) = result;
  return result;
}

__n128 CGStyleCreateColorMatrix(uint64_t a1)
{
  style_with_type = create_style_with_type(4);
  v4 = *(a1 + 16);
  v3 = *(a1 + 32);
  *(style_with_type + 32) = *a1;
  *(style_with_type + 48) = v4;
  *(style_with_type + 64) = v3;
  v5 = *(a1 + 96);
  v7 = *(a1 + 48);
  v6 = *(a1 + 64);
  *(style_with_type + 112) = *(a1 + 80);
  *(style_with_type + 128) = v5;
  *(style_with_type + 80) = v7;
  *(style_with_type + 96) = v6;
  v9 = *(a1 + 128);
  result = *(a1 + 144);
  v10 = *(a1 + 112);
  *(style_with_type + 192) = *(a1 + 160);
  *(style_with_type + 160) = v9;
  *(style_with_type + 176) = result;
  *(style_with_type + 144) = v10;
  return result;
}

CFTypeRef CGStyleRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

BOOL CGStyleEqualToStyle(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    v5 = *(a1 + 20);
    if (v5 != *(a2 + 20))
    {
      return 0;
    }

    result = CGColorEqualToColor(*(a1 + 24), *(a2 + 24));
    if (!result)
    {
      return result;
    }

    result = 0;
    if (v5 <= 2)
    {
      if (v5 != 1)
      {
        if (v5 != 2)
        {
          return result;
        }

        if (*(a1 + 36) == *(a2 + 36) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64))
        {
          result = CGRectEqualToRect(*(a1 + 72), *(a2 + 72));
          if (!result)
          {
            return result;
          }

          return *(a1 + 104) == *(a2 + 104);
        }

        return 0;
      }

      if (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72))
      {
        return 0;
      }

      v10 = *(a1 + 80);
      v11 = *(a2 + 80);
      return v10 == v11;
    }

    if (v5 == 3)
    {
      v10 = *(a1 + 40);
      v11 = *(a2 + 40);
      return v10 == v11;
    }

    if (v5 == 4)
    {
      v7 = 40;
      do
      {
        v8 = *(a1 + v7);
        v9 = *(a2 + v7);
        result = v8 == v9;
        if (v8 != v9)
        {
          break;
        }

        v6 = v7 == 192;
        v7 += 8;
      }

      while (!v6);
    }
  }

  return result;
}

uint64_t CGStyleGetIdentifier(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t CGStyleGetType(uint64_t result)
{
  if (result)
  {
    return *(result + 20);
  }

  return result;
}

uint64_t CGStyleGetDrawOrdering(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  result = *(a1 + 20);
  if ((result - 3) < 2)
  {
    return 0;
  }

  if (result != 1)
  {
    if (result != 2)
    {
      return 1;
    }

    result = *(a1 + 40);
    if (result >= 3)
    {
      return 1;
    }
  }

  return result;
}

double CGStyleGetDrawBoundingBox(uint64_t a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v8 = a2;
  if (a1)
  {
    v9 = a2 == INFINITY || a3 == INFINITY;
    if (!v9 && a4 != 0.0 && a5 != 0.0)
    {
      if (a2 == -8.98846567e307 && a3 == -8.98846567e307 && a4 == 1.79769313e308 && a5 == 1.79769313e308)
      {
        return -8.98846567e307;
      }

      else
      {
        v11 = 0.0;
        v12 = 0.0;
        if (get_expansion(a1, &v11))
        {
          v13.origin.x = v8;
          v13.origin.y = a3;
          v13.size.width = a4;
          v13.size.height = a5;
          v14 = CGRectInset(v13, -v11, -v12);
          *&v8 = CGRectIntegral(v14);
        }
      }
    }
  }

  return v8;
}

uint64_t CGStyleGetColor(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t CGStyleGetData(uint64_t a1)
{
  if (a1)
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t CGStyleGetTypeID()
{
  if (kCGContextStyleContentEnd_block_invoke_once != -1)
  {
    dispatch_once(&kCGContextStyleContentEnd_block_invoke_once, &__block_literal_global_25_16445);
  }

  return CGStyleGetTypeID_style_type_id;
}

uint64_t CGStyleFilterContextDelegateCreate(uint64_t a1, uint64_t a2)
{
  if (CGStyleFilterContextDelegateCreate_once != -1)
  {
    dispatch_once_f(&CGStyleFilterContextDelegateCreate_once, 0, load_style_filter_context_delegate_creator);
  }

  v4 = creator_16484;
  if (!creator_16484)
  {
    return 0;
  }

  return v4(a1, a2);
}

void load_style_filter_context_delegate_creator()
{
  v0 = &links;
  v1 = 6;
  while (strcmp("__CGStyleFilterContextDelegateCreate", *v0))
  {
    v0 += 2;
    if (!--v1)
    {
      goto LABEL_7;
    }
  }

  if (v0[1])
  {
    creator_16484 = v0[1];
    return;
  }

LABEL_7:

  CGPostError("Failed to load style filter context delegate.");
}

void *PDFTextLayoutAddGlyphsWithPositions(void *result, const void *a2, uint64_t a3, unsigned __int16 *a4, _OWORD *a5, uint64_t a6, double a7)
{
  if (a2 && a7 != 0.0)
  {
    v13 = result;
    v14 = result[10];
    if (v14 && (v15 = *(v14 + 8), *(v15 + 24) == a2) && *(v15 + 32) == a7 && *(v15 + 40) == *a3 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v15 + 48), *(a3 + 8)), vceqq_f64(*(v15 + 64), *(a3 + 24))))) & 1) != 0 && *(v15 + 80) == *(a3 + 40))
    {

      return block_append_glyphs(v15, a4, a5, a6);
    }

    else
    {
      v16 = malloc_type_calloc(1uLL, 0x58uLL, 0x1030040C07A1629uLL);
      __CFSetLastAllocationEventName();
      *(v16 + 4) = a7;
      CFRetain(a2);
      *(v16 + 3) = a2;
      v18 = *(a3 + 16);
      v17 = *(a3 + 32);
      *(v16 + 40) = *a3;
      *(v16 + 56) = v18;
      *(v16 + 72) = v17;
      block_append_glyphs(v16, a4, a5, a6);
      v19 = v13[10];
      result = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
      *result = v19;
      result[1] = v16;
      v13[10] = result;
    }
  }

  return result;
}

void *block_append_glyphs(uint64_t *a1, unsigned __int16 *a2, _OWORD *a3, uint64_t a4)
{
  v4 = a4;
  v8 = *a1 + a4;
  a1[1] = malloc_type_realloc(a1[1], 2 * v8, 0x1000040BDFB0063uLL);
  result = malloc_type_realloc(a1[2], 16 * v8, 0x1000040451B5BE8uLL);
  for (a1[2] = result; v4; --v4)
  {
    v11 = *a2++;
    v10 = v11;
    if (v11 != 0xFFFF)
    {
      v12 = *a1;
      *(a1[1] + 2 * *a1) = v10;
      *(a1[2] + 16 * v12) = *a3;
      ++*a1;
    }

    ++a3;
  }

  return result;
}

void layout_flush_block(void *a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    v4 = MEMORY[0x1EEE9AC00](16 * *a2);
    v7 = (&v38[-1] - v5 - 7);
    if (v6 <= 0xFFFFFFFFFFFFFFELL)
    {
      v8 = (&v38[-1] - v5 - 7);
    }

    else
    {
      v8 = 0;
    }

    if (v6 - 0xFFFFFFFFFFFFFFFLL >= 0xF000000000000042)
    {
      v8 = malloc_type_malloc(v4, 0x5D3E762DuLL);
    }

    advances = 0;
    font_info = get_font_info(*(a2 + 24));
    if (font_info)
    {
      v10 = font_info[2];
    }

    else
    {
      v10 = 0.0;
    }

    if (*a2 == 1)
    {
      v11 = 0;
      v12 = 1;
      v13 = 1;
LABEL_24:
      v22 = &v8[2 * v11];
      *(v22 + 8) = 1;
      *v22 = 0.0;
      v23 = PDFDocumentAddFont(a1[1], *(a2 + 24));
      layout_begin_run(a1, (a2 + 40), *(a2 + 16), *(a2 + 32));
      if (v13 & 1) != 0 && (v12)
      {
        *(*(a1[9] + 8) + 64) = *v8 / 1000.0;
        v25 = *a2;
        v24 = *(a2 + 8);
        goto LABEL_63;
      }

      if ((v13 & 1) == 0)
      {
        *(*(a1[9] + 8) + 64) = 0;
        v33 = *a2;
        if (!*a2)
        {
          goto LABEL_64;
        }

        v34 = 0;
        v35 = 0;
        do
        {
          if (v34 < v33 - 1 && (LOBYTE(v8[2 * v34 + 1]) & 1) != 0)
          {
            PDFFontAddGlyphsToLayout(v23, a1, (*(a2 + 8) + 2 * v35), v34 - v35 + 1);
            ++v34;
            layout_begin_run(a1, (a2 + 40), (*(a2 + 16) + 16 * v34), *(a2 + 32));
            v33 = *a2;
            v35 = v34;
          }

          else
          {
            ++v34;
          }
        }

        while (v34 < v33);
LABEL_61:
        v25 = v34 - v35;
        if (v34 == v35)
        {
          goto LABEL_64;
        }

        v24 = (*(a2 + 8) + 2 * v35);
LABEL_63:
        PDFFontAddGlyphsToLayout(v23, a1, v24, v25);
LABEL_64:
        if (v8 != v7)
        {
          free(v8);
        }

        return;
      }

      v26 = *a2;
      v27 = *a2 - 1;
      if (*a2 == 1)
      {
        v30 = *v8;
LABEL_46:
        if (!a1)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v28 = 1;
        v29 = *a2 - 1;
        while ((LOBYTE(v8[v28]) & 1) != 0)
        {
          v28 += 2;
          if (!--v29)
          {
            v30 = *v8;
            v31 = v8;
            do
            {
              v32 = round(*v31 - v30);
              *v31 = v32;
              if (v32 == 0.0)
              {
                *(v31 + 8) = 0;
              }

              v31 += 2;
              --v27;
            }

            while (v27);
            goto LABEL_46;
          }
        }

        v30 = 0.0;
        if (!a1)
        {
          goto LABEL_51;
        }
      }

      if (fabs(v30) > 0.00000596046448)
      {
        *(*(a1[9] + 8) + 64) = v30 / 1000.0;
      }

LABEL_51:
      if (!v26)
      {
        goto LABEL_64;
      }

      v34 = 0;
      v35 = 0;
      do
      {
        if (v34 < v26 - 1 && (v36 = &v8[2 * v34], (v36[1] & 1) != 0))
        {
          PDFFontAddGlyphsToLayout(v23, a1, (*(a2 + 8) + 2 * v35), v34 - v35 + 1);
          if (a1)
          {
            v37 = *(*(a1[9] + 8) + 72);
            if (v37)
            {
              *(*(v37 + 8) + 8) = *(*(v37 + 8) + 8) - *v36;
            }
          }

          ++v34;
          v26 = *a2;
          v35 = v34;
        }

        else
        {
          ++v34;
        }
      }

      while (v34 < v26);
      goto LABEL_61;
    }

    v38[0] = v7;
    v38[1] = v38;
    v14 = 0;
    v15 = 0;
    v16 = 3;
    v13 = 1;
    v12 = 1;
    while (1)
    {
      v17 = (*(a2 + 16) + v14 * 8);
      v18 = *(a2 + 32);
      if (fabs((v17[3] - v17[1]) / v18 * 1000.0) <= 0.1)
      {
        v20 = (v17[2] - *v17) / v18;
        CGFontGetGlyphAdvances(*(a2 + 24), (*(a2 + 8) + v16 - 3), 1uLL, &advances);
        v21 = round(-(((1000 * advances) / v10 + 0.5) - v20 * 1000.0) * 10.0) / 10.0;
        v19 = &v8[v14];
        if (fabs(v21) > 0.00000596046448)
        {
          *(v19 + 8) = 1;
          *v19 = v21;
          if (v15)
          {
            goto LABEL_20;
          }

          goto LABEL_22;
        }

        *(v19 + 8) = 0;
      }

      else
      {
        v13 = 0;
        v19 = &v8[v14];
        LOBYTE(v8[v14 + 1]) = 1;
      }

      *v19 = 0.0;
      v21 = 0.0;
      if (v15)
      {
LABEL_20:
        if (v21 != *v8)
        {
          v12 = 0;
        }
      }

LABEL_22:
      ++v15;
      v11 = *a2 - 1;
      v14 += 2;
      v16 += 2;
      if (v15 >= v11)
      {
        v7 = v38[0];
        goto LABEL_24;
      }
    }
  }
}

void *layout_begin_run(void *result, float64x2_t *a2, double *a3, double a4)
{
  if (result)
  {
    v6 = result;
    v7 = malloc_type_calloc(1uLL, 0x50uLL, 0x107004017E849E5uLL);
    __CFSetLastAllocationEventName();
    *v7 = 0;
    *(v7 + 8) = 0;
    if (a2)
    {
      *(v7 + 8) = vmulq_n_f64(*a2, a4);
      v8 = v7 + 8;
      *(v7 + 24) = vmulq_n_f64(a2[1], a4);
      *(v7 + 40) = vaddq_f64(a2[2], vmlaq_n_f64(vmulq_n_f64(a2[1], a3[1]), *a2, *a3));
    }

    else
    {
      v8 = 0;
    }

    *(v7 + 7) = v8;
    *(v7 + 9) = 0;
    v9 = v6[9];
    result = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
    *result = v9;
    result[1] = v7;
    v6[9] = result;
  }

  return result;
}

void *layout_append_data(void *result, char *__s2, int a3, const void *a4, uint64_t a5)
{
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = result[9];
  if (v10)
  {
    v11 = *(v10 + 8);
    if (v11)
    {
      v12 = *v11;
      if (!*v11)
      {
LABEL_9:
        *v11 = __s2;
        v12 = __s2;
        goto LABEL_10;
      }

      if (!strcmp(*v11, __s2))
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  layout_begin_run(v9, 0, 0, 0.0);
  v13 = *(v11 + 64);
  v11 = *(v9[9] + 8);
  *(v11 + 64) = v13;
  v12 = *v11;
  if (!*v11)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (strcmp(v12, __s2))
  {
    _CGHandleAssert("layout_append_data", 380, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/PDF/ContentStreams/PDFTextLayout.c", "strcmp(run->font, font) == 0", "%s != %s", v12, __s2);
  }

  v14 = *(v11 + 72);
  if (v14 && (v15 = *(v14 + 8), *(v15 + 1) == 0.0) && *v15 == a3)
  {
    v16 = a3 == 2;
    v17 = malloc_type_realloc(v15, ((*(v15 + 2) + a5) << (a3 == 2)) + 24, 0x1000040D315E998uLL);
    result = memcpy(v17 + (v17[2] << v16) + 24, a4, a5 << v16);
    v17[2] += a5;
    *(*(v11 + 72) + 8) = v17;
  }

  else
  {
    v18 = a5 << (a3 == 2);
    v19 = malloc_type_calloc(1uLL, v18 + 24, 0x1000040D315E998uLL);
    __CFSetLastAllocationEventName();
    *v19 = a3;
    v19[2] = a5;
    memcpy(v19 + 3, a4, v18);
    v20 = *(v11 + 72);
    result = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
    *result = v20;
    result[1] = v19;
    *(v11 + 72) = result;
  }

  return result;
}

void emit_sequence(uint64_t *a1, _DWORD *a2)
{
  if (*a2 == 1)
  {
    PDFWriterPrintf(a1, "%A");
  }

  else
  {
    if (*a2 != 2)
    {
      abort();
    }

    PDFWriterPrintf(a1, "%G");
  }
}

uint64_t get_mask_table()
{
  if (get_mask_table_predicate != -1)
  {
    dispatch_once(&get_mask_table_predicate, &__block_literal_global_16525);
  }

  result = get_mask_table_deep_mask_table;
  if (!get_mask_table_deep_mask_table)
  {
    _CGHandleAssert("get_mask_table", 78, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/deep-mask-copy.c", "deep_mask_table != NULL", "deep mask table allocation failed");
  }

  return result;
}

char *gamma_table_create(long double a1)
{
  pthread_mutex_lock(&gamma_table_create_mutex);
  v1 = gamma_table_create_gamma_table;
  if (!gamma_table_create_gamma_table || *(gamma_table_create_gamma_table + 8) != a1)
  {
    v1 = malloc_type_malloc(0x1018uLL, 0x1000040D6031E3CuLL);
    v2 = v1 + 30;
    *v1 = 1;
    *(v1 + 1) = a1;
    v3 = xmmword_18439C740;
    v4 = xmmword_18439C750;
    v5 = xmmword_18439C760;
    v6 = xmmword_18439C670;
    v7 = -1032;
    v49 = vdupq_n_s64(0x3F50000000000000uLL);
    v51 = vdupq_n_s64(0x401uLL);
    __y = vdupq_lane_s64(*&a1, 0);
    v47 = vdupq_n_s64(8uLL);
    v8 = a1;
    do
    {
      v65 = v5;
      v67 = v4;
      v69 = v3;
      v63 = v6;
      v9 = vmovn_s64(vcgtq_u64(v51, v6));
      v10 = vuzp1_s16(v9, v9);
      v55 = vuzp1_s8(v10, v10).u8[0];
      v11 = pow(vcvtd_n_f64_u32(v7 + 1032, 0xAuLL), v8);
      v12 = pow(vcvtd_n_f64_u32(v7 + 1033, 0xAuLL), a1);
      v13 = pow(vcvtd_n_f64_u32(v7 + 1034, 0xAuLL), a1);
      v14 = vcvtd_n_s64_f64(pow(vcvtd_n_f64_u32(v7 + 1035, 0xAuLL), a1), 0xAuLL);
      v15 = vorrq_s8(vdupq_n_s32(v7 + 1032), xmmword_18439CC10);
      v16.i64[0] = v15.u32[0];
      v16.i64[1] = v15.u32[1];
      v17 = vcvtq_f64_u64(v16);
      v16.i64[0] = v15.u32[2];
      v16.i64[1] = v15.u32[3];
      v73 = vmulq_f64(vcvtq_f64_u64(v16), v49);
      __xb = vmulq_f64(v17, v49);
      v61 = pow(__xb.f64[1], *&__y.i64[1]);
      __x = pow(__xb.f64[0], *__y.i64);
      v53 = pow(v73.f64[1], *&__y.i64[1]);
      v18.f64[0] = pow(v73.f64[0], *__y.i64);
      v19.i64[0] = 0x7F0000007FLL;
      v19.i64[1] = 0x7F0000007FLL;
      v20.i64[0] = __PAIR64__(vcvtd_n_s64_f64(v12, 0xAuLL), vcvtd_n_s64_f64(v11, 0xAuLL));
      v20.i64[1] = __PAIR64__(v14, vcvtd_n_s64_f64(v13, 0xAuLL));
      v21 = vminq_s32(v20, v19);
      if (v55)
      {
        *(v2 - 7) = v21.i16[0];
      }

      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x401uLL), *&v63)), *&v18), *&v18).i8[1])
      {
        *(v2 - 6) = v21.i16[2];
      }

      if (vuzp1_s8(vuzp1_s16(*&v18, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x401uLL), *&v65))), *&v18).i8[2])
      {
        *(v2 - 5) = v21.i16[4];
        *(v2 - 4) = v21.i16[6];
      }

      v22.f64[0] = __x;
      v22.f64[1] = v61;
      v18.f64[1] = v53;
      v23 = vminq_s32(vuzp1q_s32(vcvtq_n_s64_f64(v22, 0xAuLL), vcvtq_n_s64_f64(v18, 0xAuLL)), v19);
      if (vuzp1_s8(*&v23, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x401uLL), *&v67)), *&v23)).i32[1])
      {
        *(v2 - 3) = v23.i16[0];
      }

      if (vuzp1_s8(*&v23, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x401uLL), *&v67)), *&v23)).i8[5])
      {
        *(v2 - 2) = v23.i16[2];
      }

      if (vuzp1_s8(*&v23, vuzp1_s16(*&v23, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x401uLL), *&v69)))).i8[6])
      {
        *(v2 - 1) = v23.i16[4];
        *v2 = v23.i16[6];
      }

      v4 = vaddq_s64(v67, v47);
      v5 = vaddq_s64(v65, v47);
      v6 = vaddq_s64(v63, v47);
      v2 += 8;
      v3 = vaddq_s64(v69, v47);
      v7 += 8;
      v8 = a1;
    }

    while (v7);
    v76 = 1.0 / a1;
    v24 = xmmword_18439C740;
    v25 = xmmword_18439C750;
    v26 = xmmword_18439C760;
    v27 = xmmword_18439C670;
    v28 = v1 + 2080;
    v50 = vdupq_n_s64(0x3F50000000000000uLL);
    v52 = vdupq_n_s64(0x401uLL);
    v29 = -1032;
    __ya = vdupq_lane_s64(COERCE__INT64(1.0 / v8), 0);
    v48 = vdupq_n_s64(8uLL);
    do
    {
      v66 = v26;
      v68 = v25;
      v70 = v24;
      v64 = v27;
      v30 = vmovn_s64(vcgtq_u64(v52, v27));
      v31 = vuzp1_s16(v30, v30);
      v56 = vuzp1_s8(v31, v31).u8[0];
      v32 = pow(vcvtd_n_f64_u32(v29 + 1032, 0xAuLL), v76);
      v33 = pow(vcvtd_n_f64_u32(v29 + 1033, 0xAuLL), v76);
      v34 = pow(vcvtd_n_f64_u32(v29 + 1034, 0xAuLL), v76);
      v35 = vcvtd_n_s64_f64(pow(vcvtd_n_f64_u32(v29 + 1035, 0xAuLL), v76), 0xAuLL);
      v36 = vorrq_s8(vdupq_n_s32(v29 + 1032), xmmword_18439CC10);
      v37.i64[0] = v36.u32[0];
      v37.i64[1] = v36.u32[1];
      v38 = vcvtq_f64_u64(v37);
      v37.i64[0] = v36.u32[2];
      v37.i64[1] = v36.u32[3];
      v74 = vmulq_f64(vcvtq_f64_u64(v37), v50);
      __xc = vmulq_f64(v38, v50);
      v62 = pow(__xc.f64[1], *&__ya.i64[1]);
      __xa = pow(__xc.f64[0], *__ya.i64);
      v54 = pow(v74.f64[1], *&__ya.i64[1]);
      v39.f64[0] = pow(v74.f64[0], *__ya.i64);
      v40.i64[0] = 0x7F0000007FLL;
      v40.i64[1] = 0x7F0000007FLL;
      v41.i64[0] = __PAIR64__(vcvtd_n_s64_f64(v33, 0xAuLL), vcvtd_n_s64_f64(v32, 0xAuLL));
      v41.i64[1] = __PAIR64__(v35, vcvtd_n_s64_f64(v34, 0xAuLL));
      v42 = vminq_s32(v41, v40);
      if (v56)
      {
        *(v28 - 7) = v42.i16[0];
      }

      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x401uLL), *&v64)), *&v39), *&v39).i8[1])
      {
        *(v28 - 6) = v42.i16[2];
      }

      if (vuzp1_s8(vuzp1_s16(*&v39, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x401uLL), *&v66))), *&v39).i8[2])
      {
        *(v28 - 5) = v42.i16[4];
        *(v28 - 4) = v42.i16[6];
      }

      v43.f64[0] = __xa;
      v43.f64[1] = v62;
      v39.f64[1] = v54;
      v44 = vminq_s32(vuzp1q_s32(vcvtq_n_s64_f64(v43, 0xAuLL), vcvtq_n_s64_f64(v39, 0xAuLL)), v40);
      if (vuzp1_s8(*&v44, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x401uLL), *&v68)), *&v44)).i32[1])
      {
        *(v28 - 3) = v44.i16[0];
      }

      if (vuzp1_s8(*&v44, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x401uLL), *&v68)), *&v44)).i8[5])
      {
        *(v28 - 2) = v44.i16[2];
      }

      if (vuzp1_s8(*&v44, vuzp1_s16(*&v44, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x401uLL), *&v70)))).i8[6])
      {
        *(v28 - 1) = v44.i16[4];
        *v28 = v44.i16[6];
      }

      v25 = vaddq_s64(v68, v48);
      v26 = vaddq_s64(v66, v48);
      v27 = vaddq_s64(v64, v48);
      v28 += 8;
      v24 = vaddq_s64(v70, v48);
      v29 += 8;
    }

    while (v29);
    v45 = gamma_table_create_gamma_table;
    if (gamma_table_create_gamma_table && atomic_fetch_add_explicit(gamma_table_create_gamma_table, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      free(v45);
    }

    gamma_table_create_gamma_table = v1;
  }

  atomic_fetch_add_explicit(v1, 1u, memory_order_relaxed);
  pthread_mutex_unlock(&gamma_table_create_mutex);
  return v1;
}

int64x2_t __get_mask_table_block_invoke()
{
  v0 = malloc_type_malloc(0x1004uLL, 0x10000401CB32089uLL);
  v1 = 0;
  get_mask_table_deep_mask_table = v0;
  v2 = xmmword_18439CB90;
  v3 = vdupq_n_s32(0x80808081);
  v4.i64[0] = 0x400000004;
  v4.i64[1] = 0x400000004;
  do
  {
    v5 = *&vshlq_n_s32(v2, 0xAuLL) | __PAIR128__(0x7F0000007FLL, 0x7F0000007FLL);
    *&v0[v1] = vshrn_n_s32(vuzp2q_s32(vmull_u32(*&v5, *v3.i8), vmull_high_u32(v5, v3)), 7uLL);
    v2 = vaddq_s32(v2, v4);
    v1 += 8;
  }

  while (v1 != 512);
  v6 = 0;
  v7 = xmmword_18439CE10;
  v8 = xmmword_18439CE20;
  result = xmmword_18439C740;
  v10 = xmmword_18439C750;
  v11 = xmmword_18439C760;
  v12 = xmmword_18439C670;
  v13 = v0 + 528;
  v14.i64[0] = 255;
  v14.i64[1] = 255;
  v15.i64[0] = 0x7F0000007FLL;
  v15.i64[1] = 0x7F0000007FLL;
  v16.i64[0] = 0x800000008;
  v16.i64[1] = 0x800000008;
  do
  {
    v17 = vdupq_n_s64(v6);
    v19 = vcgtq_u64(v14, vorrq_s8(v17, xmmword_18439C670));
    v18 = vmovn_s64(v19);
    *v19.i8 = vuzp1_s8(vuzp1_s16(v18, 6), 6);
    v20 = *&vshrq_n_u32(v8, 1uLL) | __PAIR128__(0x4000000040000, 0x4000000040000);
    v21 = v19.i8[0];
    if (v19.i8[0])
    {
      v19.i32[0] = v20 / (v6 + 1);
    }

    v22 = vuzp1_s8(vuzp1_s16(v18, 6), 6).i8[1];
    if (v22)
    {
      v19.i32[1] = DWORD1(v20) / (v6 + 2);
    }

    v23 = vmovn_s64(vcgtq_u64(v14, vorrq_s8(v17, xmmword_18439C760)));
    v24 = vuzp1_s8(vuzp1_s16(6, v23), 6).i8[2];
    if (v24)
    {
      v19.i32[2] = DWORD2(v20) / (v6 + 3);
    }

    v25 = vuzp1_s8(vuzp1_s16(6, v23), 6).i8[3];
    if (v25)
    {
      v19.i32[3] = HIDWORD(v20) / (v6 + 4);
    }

    v26 = *&vshrq_n_u32(v7, 1uLL) | __PAIR128__(0x4000000040000, 0x4000000040000);
    v28 = vcgtq_u64(v14, vorrq_s8(v17, xmmword_18439C750));
    v27 = vmovn_s64(v28);
    *v28.i8 = vuzp1_s8(6, vuzp1_s16(v27, 6));
    v29 = v28.i8[4];
    if (v28.i8[4])
    {
      v28.i32[0] = v26 / (v6 + 5);
    }

    v30 = vuzp1_s8(6, vuzp1_s16(v27, 6)).i8[5];
    if (v30)
    {
      v28.i32[1] = DWORD1(v26) / (v6 + 6);
    }

    v31 = vmovn_s64(vcgtq_u64(v14, vorrq_s8(v17, xmmword_18439C740)));
    v32 = vuzp1_s8(6, vuzp1_s16(6, v31)).i8[6];
    if (v32)
    {
      v28.i32[2] = DWORD2(v26) / (v6 + 7);
    }

    v33 = vuzp1_s8(6, vuzp1_s16(6, v31)).i8[7];
    if (v33)
    {
      v28.i32[3] = HIDWORD(v26) / (v6 + 8);
    }

    v34 = vminq_u32(v19, v15);
    if (v21)
    {
      *(v13 - 7) = v34.i16[0];
      if ((v22 & 1) == 0)
      {
LABEL_22:
        if ((v24 & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_34;
      }
    }

    else if ((v22 & 1) == 0)
    {
      goto LABEL_22;
    }

    *(v13 - 6) = v34.i16[2];
    if ((v24 & 1) == 0)
    {
LABEL_23:
      if ((v25 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_24:
      *(v13 - 4) = v34.i16[6];
      goto LABEL_25;
    }

LABEL_34:
    *(v13 - 5) = v34.i16[4];
    if (v25)
    {
      goto LABEL_24;
    }

LABEL_25:
    v35 = vminq_u32(v28, v15);
    if (v29)
    {
      *(v13 - 3) = v35.i16[0];
      if ((v30 & 1) == 0)
      {
LABEL_27:
        if ((v32 & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_38;
      }
    }

    else if ((v30 & 1) == 0)
    {
      goto LABEL_27;
    }

    *(v13 - 2) = v35.i16[2];
    if ((v32 & 1) == 0)
    {
LABEL_28:
      if ((v33 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_29:
      *v13 = v35.i16[6];
      goto LABEL_30;
    }

LABEL_38:
    *(v13 - 1) = v35.i16[4];
    if (v33)
    {
      goto LABEL_29;
    }

LABEL_30:
    v6 += 8;
    v8 = vaddq_s32(v8, v16);
    v7 = vaddq_s32(v7, v16);
    v13 += 8;
  }

  while (v6 != 256);
  v36 = 0;
  do
  {
    v37 = v36 + 1;
    v38 = 0x100000u / (v36 + 1);
    if (v38 >= 0x7FFF)
    {
      LOWORD(v38) = 0x7FFF;
    }

    *&v0[2 * v36++ + 1026] = v38;
  }

  while (v37 != 1024);
  v39 = xmmword_18439C700;
  v40 = xmmword_18439C710;
  v41 = xmmword_18439C720;
  v42 = xmmword_18439C730;
  v43 = v0 + 3089;
  v44 = 4337;
  v45 = 1040;
  v46 = vdupq_n_s64(0x401uLL);
  v47 = vdupq_n_s64(0x10uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v46, v12)), *result.i8), *result.i8).u8[0])
    {
      *(v43 - 15) = (v44 - 3825) >> 10;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x401uLL), *&v12)), *&result), *&result).i8[1])
    {
      *(v43 - 14) = (v44 - 3570) >> 10;
    }

    if (vuzp1_s8(vuzp1_s16(*&result, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x401uLL), *&v11))), *&result).i8[2])
    {
      *(v43 - 13) = (v44 - 3315) >> 10;
      *(v43 - 12) = (v44 - 3060) >> 10;
    }

    if (vuzp1_s8(*&result, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x401uLL), *&v10)), *&result)).i32[1])
    {
      *(v43 - 11) = (v44 - 2805) >> 10;
    }

    if (vuzp1_s8(*&result, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x401uLL), *&v10)), *&result)).i8[5])
    {
      *(v43 - 10) = (v44 - 2550) >> 10;
    }

    if (vuzp1_s8(*&result, vuzp1_s16(*&result, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x401uLL), *&result)))).i8[6])
    {
      *(v43 - 9) = (v44 - 2295) >> 10;
      *(v43 - 8) = (v44 - 2040) >> 10;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x401uLL), v42)), *result.i8), *result.i8).u8[0])
    {
      *(v43 - 7) = (v44 - 1785) >> 10;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x401uLL), *&v42)), *&result), *&result).i8[1])
    {
      *(v43 - 6) = (v44 - 1530) >> 10;
    }

    if (vuzp1_s8(vuzp1_s16(*&result, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x401uLL), *&v41))), *&result).i8[2])
    {
      *(v43 - 5) = (v44 - 1275) >> 10;
      *(v43 - 4) = (v44 - 1020) >> 10;
    }

    if (vuzp1_s8(*&result, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x401uLL), *&v40)), *&result)).i32[1])
    {
      *(v43 - 3) = (v44 - 765) >> 10;
    }

    if (vuzp1_s8(*&result, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x401uLL), *&v40)), *&result)).i8[5])
    {
      *(v43 - 2) = (v44 - 510) >> 10;
    }

    if (vuzp1_s8(*&result, vuzp1_s16(*&result, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x401uLL), *&v39)))).i8[6])
    {
      *(v43 - 1) = (v44 - 255) >> 10;
      *v43 = v44 >> 10;
    }

    v10 = vaddq_s64(v10, v47);
    v11 = vaddq_s64(v11, v47);
    v12 = vaddq_s64(v12, v47);
    result = vaddq_s64(result, v47);
    v42 = vaddq_s64(v42, v47);
    v41 = vaddq_s64(v41, v47);
    v44 += 4080;
    v40 = vaddq_s64(v40, v47);
    v43 += 16;
    v39 = vaddq_s64(v39, v47);
    v45 -= 16;
  }

  while (v45);
  return result;
}

void CGAnalyticsSendPDFDocumentGetNumberOfPagesEvent()
{
  v0 = objc_autoreleasePoolPush();
  send_analytics_event("com.apple.CoreGraphics.CGPDFDocumentGetNumberOfPages", 0);

  objc_autoreleasePoolPop(v0);
}

void CGAnalyticsSendPDFDocumentGetCatalogEvent()
{
  v0 = objc_autoreleasePoolPush();
  send_analytics_event("com.apple.CoreGraphics.CGPDFDocumentGetCatalog", 0);

  objc_autoreleasePoolPop(v0);
}

void std::vector<std::pair<std::shared_ptr<PDFPageNode>,unsigned long>>::__destroy_vector::operator()[abi:fe200100](void ***a1)
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
        v6 = *(v4 - 2);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v6);
        }

        v4 -= 24;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void PDFPageTree::addNode(PDFPageTree *this, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2[4];
  v4 = a2[5];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *this = v5;
  *(this + 1) = v4;
  if (!v5 || *(v5 + 16) == 8)
  {
    operator new();
  }

  v6 = *(v5 + 16);
  *(v5 + 16) = v6 + 1;
  *(v5 + 8 * v6 + 24) = a3;
  *(v5 + 8) += a4;
}

void sub_1842838BC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v2);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<PDFPageNode>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF240118;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865EE610);
}

const void *PDFPageTree::getObjectNumberForPageNumber(CFDictionaryRef *this, const void *a2)
{
  if (!a2)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(this[2], a2);
  if (!Value)
  {
    Value = PDFXRefTableAddObject(*(*this + 63));
    CFDictionarySetValue(this[2], a2, Value);
  }

  return Value;
}

void std::vector<std::pair<std::shared_ptr<PDFPageNode>,unsigned long>>::push_back[abi:fe200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fe200100]();
    }

    v10 = 24 * v6;
    *v10 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(v10 + 16) = *(a2 + 16);
    v5 = 24 * v6 + 24;
    v11 = *a1;
    v12 = *(a1 + 8) - *a1;
    v13 = 24 * v6 - v12;
    memcpy((v10 - v12), *a1, v12);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v3 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(v3 + 16) = *(a2 + 16);
    v5 = v3 + 24;
  }

  *(a1 + 8) = v5;
}

_OWORD *CGMatrixFilterCopy(_OWORD *a1)
{
  if (!a1)
  {
    return 0;
  }

  result = malloc_type_malloc(0x50uLL, 0x10000404247E4FDuLL);
  if (!result)
  {
    return 0;
  }

  *result = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[4];
  result[3] = a1[3];
  result[4] = v5;
  result[1] = v3;
  result[2] = v4;
  return result;
}

double CGMatrixFilterTransformComponents(float *a1, double *a2, double *a3, double *a4, double *a5)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  v8 = *a5;
  v9 = a1[5];
  *a2 = *a3 * a1[1] + *a2 * *a1 + *a4 * a1[2] + *a5 * a1[3] + a1[4];
  *a3 = v6 * a1[6] + v5 * v9 + v7 * a1[7] + v8 * a1[8] + a1[9];
  v10 = a1[15];
  *a4 = v6 * a1[11] + v5 * a1[10] + v7 * a1[12] + v8 * a1[13] + a1[14];
  result = v6 * a1[16] + v5 * v10 + v7 * a1[17] + v8 * a1[18] + a1[19];
  *a5 = result;
  return result;
}

CGColorRef CGMatrixFilterCreateTransformedColor(_OWORD *a1, unint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    ColorSpace = CGTaggedColorGetColorSpace(a2);
  }

  else
  {
    ColorSpace = *(a2 + 24);
  }

  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
  {
    if (creator_for_ID_predicate != -1)
    {
      dispatch_once(&creator_for_ID_predicate, &__block_literal_global_297_6626);
    }

    if (off_1ED4E16A0)
    {
      v7 = off_1ED4E16A0();
    }

    else
    {
      v7 = 0;
    }

    v8 = color_transform_create(v7, 0);
    CGColorSpaceRelease(v7);
    v5 = CGColorTransformConvertColor(v8, a2, 0);
    if (v8)
    {
      CFRelease(v8);
    }

    v6 = v5;
    if (v5)
    {
      goto LABEL_15;
    }

    NSLog(&cfstr_Cgcolortransfo_2.isa, a2);
    return 0;
  }

  v5 = 0;
  v6 = a2;
LABEL_15:
  if ((v6 & 0x8000000000000000) != 0)
  {
    v9 = CGTaggedColorGetColorSpace(v6);
  }

  else
  {
    v9 = *(v6 + 24);
  }

  v10 = CGColorGetComponents(v6);
  v11 = *v10;
  v19 = v10[1];
  v20 = v11;
  v12 = *(v10 + 2);
  v17 = *(v10 + 3);
  v18 = v12;
  v13 = a1[3];
  v23 = a1[2];
  v24 = v13;
  v25 = a1[4];
  v14 = a1[1];
  *components = *a1;
  v22 = v14;
  CGMatrixFilterTransformComponents(components, &v20, &v19, &v18, &v17);
  components[0] = v20;
  components[1] = v19;
  *&v22 = v18;
  *(&v22 + 1) = v17;
  v15 = CGColorCreate(v9, components);
  if (v5)
  {
    CFRelease(v5);
  }

  return v15;
}

void *provider_for_destination_rewind(void *result)
{
  v1 = *result;
  if (!*result)
  {
    _CGHandleAssert("CGDataProviderGetType", 212, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "provider != NULL", "provider is NULL");
  }

  if ((*(v1 + 20) | 2) != 3)
  {
    _CGHandleAssert("provider_for_destination_rewind", 678, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "", "Unimplemented");
  }

  v2 = result;
  v3 = *(v1 + 64);
  if (v3)
  {
    result = v3(*(v1 + 24));
  }

  *(v1 + 261) = 0;
  v2[85] = 0;
  v2[44] = 0;
  return result;
}

unint64_t provider_for_destination_skip_forward(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  memcpy(__dst, (a1 + 32), sizeof(__dst));
  BitsPerPixel = CGBitmapPixelInfoGetBitsPerPixel(__dst);
  memcpy(__dst, (a1 + 360), sizeof(__dst));
  v6 = CGBitmapPixelInfoGetBitsPerPixel(__dst);
  if ((a2 & 0x8000000000000000) != 0)
  {
    _CGHandleAssert("provider_for_destination_skip_forward", 632, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "count >= 0", "count = %lld", a2);
  }

  v7 = v6;
  v8 = byte_count_to_byte_count(v6, *(a1 + 664), *(a1 + 672), *(a1 + 680), BitsPerPixel, *(a1 + 336), a2);
  v9 = CGDataProviderSkipForwardInternal(v4, v8);
  v10 = v9;
  if ((v9 & 0x8000000000000000) != 0)
  {
    _CGHandleAssert("provider_for_destination_skip_forward", 645, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "skipped >= 0", "skipped = %lld", v9);
  }

  if (v9 != v8)
  {
    a2 = byte_count_to_byte_count(BitsPerPixel, *(a1 + 336), *(a1 + 344), *(a1 + 352), v7, *(a1 + 664), v9);
  }

  *(a1 + 352) += v10;
  *(a1 + 680) += a2;
  return a2;
}

unint64_t provider_for_destination_get_bytes(uint64_t a1, char *a2, unint64_t a3)
{
  if (*(a1 + 724))
  {
    _CGHandleAssert("provider_for_destination_get_bytes", 619, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "info->src_provider_uses_random_access == false", "", v3, v4);
  }

  return provider_for_destination_get_bytes_at_position_inner(a1, a2, 0, a3, 1);
}

uint64_t read_integer_16714(uint64_t a1, unint64_t *a2, unsigned int *a3)
{
  v6 = *a3;
  if (*a3 == 48)
  {
    v7 = *(a1 + 120);
    do
    {
      if (!v7)
      {
        if (!CGPDFSourceRefill(a1))
        {
          v9 = 0;
LABEL_18:
          v6 = -1;
LABEL_19:
          *a2 = v9;
          *a3 = v6;
          return 1;
        }

        v7 = *(a1 + 120);
      }

      --v7;
      v8 = *(a1 + 128);
      *(a1 + 120) = v7;
      *(a1 + 128) = v8 + 1;
      v6 = *v8;
    }

    while (v6 == 48);
  }

  if (v6 - 48 > 9)
  {
    v9 = 0;
    goto LABEL_19;
  }

  v9 = 0;
  while (v9 <= 0xCCCCCCCCCCCCCCBLL)
  {
    v9 = 10 * v9 + v6 - 48;
    v10 = *(a1 + 120);
    if (!v10)
    {
      if (!CGPDFSourceRefill(a1))
      {
        goto LABEL_18;
      }

      v10 = *(a1 + 120);
    }

    v11 = *(a1 + 128);
    *(a1 + 120) = v10 - 1;
    *(a1 + 128) = v11 + 1;
    v6 = *v11;
    if (v6 - 48 >= 0xA)
    {
      goto LABEL_19;
    }
  }

  return 0;
}

void *CGPDFXRefTableCreateByScanningObjects(const void **a1, const void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
  __CFSetLastAllocationEventName();
  if (!v4)
  {
    return v4;
  }

  *v4 = a1;
  v5 = pdf_object_scanner_create_with_xref(a1, 0);
  v4[2] = v5;
  if (!v5 || (v6 = malloc_type_calloc(1uLL, 0x30uLL, 0x1020040EE5BEA7CuLL), __CFSetLastAllocationEventName(), !v6) || (v7 = v4[1], v8 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL), *v8 = v7, v8[1] = v6, v4[1] = v8, v9 = malloc_type_calloc(1uLL, 0x18uLL, 0x1010040A79CA2DEuLL), __CFSetLastAllocationEventName(), !v9))
  {
LABEL_73:
    CGPDFXRefTableRelease(v4);
    return 0;
  }

  v10 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
  *v10 = 0;
  v10[1] = v9;
  v6[5] = v10;
  v11 = v4[2];
  if (v11)
  {
    v12 = *(v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  CGPDFSourceSetPosition(v12, 0);
  v13 = 0;
  v14 = 0;
LABEL_9:
  v15 = v12[15];
  while (v15)
  {
LABEL_13:
    --v15;
    v16 = v12[16];
    v17 = v16 + 1;
    v12[15] = v15;
    v12[16] = v16 + 1;
    v18 = *v16;
    if (v18 == 13 || v18 == 10)
    {
      do
      {
        if (!v15)
        {
          if (!CGPDFSourceRefill(v12))
          {
            goto LABEL_45;
          }

          v15 = v12[15];
          v17 = v12[16];
        }

        v12[15] = --v15;
        v12[16] = v17 + 1;
        v20 = *v17;
        v21 = v20 == 10 || v20 == 13;
        ++v17;
      }

      while (v21);
      CGPDFSourceUngetc(v12, v20);
      v22 = v12[11];
      if (v12[18])
      {
        v23 = v12[24];
        v22 += v12[15];
      }

      else
      {
        v23 = v12[16];
      }

      v24 = v23 - v22;
      v25 = v12[14];
      *&v43[0] = 0;
      if (read_integer(v12, v43))
      {
        v26 = *&v43[0];
        if ((*&v43[0] & 0x8000000000000000) == 0)
        {
          *&v43[0] = 0;
          if (read_integer(v12, v43))
          {
            v39 = *&v43[0];
            if ((*&v43[0] & 0x8000000000000000) == 0)
            {
              CGPDFSourceSkipWhitespace(v12);
              if (CGPDFSourceMatch(v12, "obj") && v26 <= 10000000)
              {
                if (v26 < v14)
                {
                  v27 = v9[2];
                  goto LABEL_40;
                }

                do
                {
                  v14 = 2 * v14 + 7;
                }

                while (v26 >= v14);
                v28 = malloc_type_realloc(v9, 8 * v14 + 24, 0x1010040A79CA2DEuLL);
                if (!v28)
                {
                  goto LABEL_73;
                }

                v9 = v28;
                *(v6[5] + 8) = v28;
                v27 = malloc_type_realloc(*(v28 + 2), 2 * v14, 0x1000040BDFB0063uLL);
                if (!v27)
                {
                  goto LABEL_73;
                }

                v9[2] = v27;
LABEL_40:
                if (v13 <= v26)
                {
                  do
                  {
                    v27[v13] = 0;
                    v9[v13++ + 3] = 0;
                  }

                  while (v13 <= v26);
                  v13 = v26 + 1;
                }

                if (v39 >= v27[v26])
                {
                  v27[v26] = v39;
                  v9[v26 + 3] = v24 + v25;
                }
              }
            }
          }
        }
      }

      goto LABEL_9;
    }
  }

  if (CGPDFSourceRefill(v12))
  {
    v15 = v12[15];
    goto LABEL_13;
  }

LABEL_45:
  v9[1] = v13;
  *v6 = v13;
  if (a2)
  {
    v6[2] = a2;
    CFRetain(a2);
    return v4;
  }

  v41 = 0;
  v29 = v4[2];
  if (!v29)
  {
    v30 = 0;
    goto LABEL_52;
  }

  v30 = *(v29 + 8);
  if (!v30)
  {
LABEL_52:
    v31 = 0;
    goto LABEL_53;
  }

  v31 = v30[2];
  if (v31 == -1)
  {
    _CGHandleAssert("CGPDFSourceGetLength", 179, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Reader/CGPDFSource.c", "source->length != (pdf_off_t)-1", "source length would overflow");
  }

LABEL_53:
  CGPDFSourceSetPosition(v30, v31);
  while (2)
  {
    if ((CGPDFSourceReverseSearch(v30, "trailer", " \n\r", " \n\r<", &v41) & 1) == 0)
    {
      v6[2] = 0;
LABEL_72:
      pdf_error("missing or invalid cross-reference trailer.");
      goto LABEL_73;
    }

    v32 = v41;
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    v42 = 0;
    CGPDFSourceSetPosition(*(v4[2] + 8), v41 + 7);
    if (!read_dictionary(v4[2], &v42))
    {
      goto LABEL_70;
    }

    v33 = v42;
    v45 = "Root";
    if (!v42 || (v34 = std::__hash_table<std::__hash_value_type<CGPDFObject *,CGPDFObject *>,std::__unordered_map_hasher<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_hash,pdf_name_equal,true>,std::__unordered_map_equal<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_equal,pdf_name_hash,true>,std::allocator<std::__hash_value_type<CGPDFObject *,CGPDFObject *>>>::find<char const*>(v42 + 6, &v45)) == 0)
    {
LABEL_68:
      if (v33)
      {
LABEL_69:
        CFRelease(v33);
      }

LABEL_70:
      CGPDFSourceSetPosition(v30, v32);
      continue;
    }

    break;
  }

  v35 = v34[3];
  if (!v35 || *(v35 + 8) != 10)
  {
    goto LABEL_69;
  }

  if ((CGPDFXRefTableGetObject(v4, *(v35 + 16), *(v35 + 24), v43) & 1) == 0 || DWORD2(v43[0]) != 8 || (v36 = v44, v45 = "Pages", !v44))
  {
LABEL_67:
    v33 = v42;
    goto LABEL_68;
  }

  v37 = std::__hash_table<std::__hash_value_type<CGPDFObject *,CGPDFObject *>,std::__unordered_map_hasher<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_hash,pdf_name_equal,true>,std::__unordered_map_equal<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_equal,pdf_name_hash,true>,std::allocator<std::__hash_value_type<CGPDFObject *,CGPDFObject *>>>::find<char const*>(v44 + 6, &v45);
  if (!v37)
  {
    CFRelease(v36);
    goto LABEL_67;
  }

  v40 = v37[3];
  CFRelease(v36);
  v33 = v42;
  if (!v40)
  {
    goto LABEL_68;
  }

  v6[2] = v42;
  if (!v33)
  {
    goto LABEL_72;
  }

  return v4;
}

void *CGMetalContextCreate(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, int a7)
{
  if (!a1)
  {
    return 0;
  }

  if (metal_context_vtable_once != -1)
  {
    dispatch_once(&metal_context_vtable_once, &__block_literal_global_16808);
  }

  v14 = metal_context_vtable_vtable;
  if (!metal_context_vtable_vtable)
  {
    return 0;
  }

  v15 = malloc_type_malloc(0x38uLL, 0x10E00409D7B582DuLL);
  *v15 = a2;
  v15[1] = a3;
  v15[2] = CFRetain(a1);
  v15[3] = a4;
  v15[4] = a5;
  if (a6)
  {
    CFRetain(a6);
  }

  v15[5] = a6;
  *(v15 + 12) = a7;
  v16 = CGContextCreateWithDelegateAndInfo(0, 10, 0, 0, v15, metal_context_finalize);
  v17 = (*(v14 + 8))(v15, 0);
  v16[5] = v17;
  if (!v17)
  {
    CFRelease(v16);
    return 0;
  }

  return v16;
}

double metal_context_finalize(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      v1 = *(a1 + 32);
      if (v1)
      {
        v2 = *(v1 + 16);
        if (v2)
        {
          CFRelease(v2);
        }

        CGColorSpaceRelease(*(v1 + 40));

        free(v1);
      }
    }

    else
    {

      handle_invalid_context("metal_context_finalize", a1);
    }
  }

  return result;
}

void *__metal_context_vtable_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/QuartzCore.framework/QuartzCore", 1);
  if (result)
  {
    result = dlsym(result, "CAMetalContextVTable");
    metal_context_vtable_vtable = result;
  }

  return result;
}

double CGMetalContextSetDisplayMask(_DWORD *a1)
{
  v2 = a1;
  if (a1 && a1[4] == 1129601108 && a1[6] == 10)
  {
    if (metal_context_vtable_once != -1)
    {
      dispatch_once(&metal_context_vtable_once, &__block_literal_global_16808);
      v2 = a1;
    }

    v3 = *(metal_context_vtable_vtable + 16);
    v4 = *(v2 + 5);

    v3(v4);
  }

  else
  {

    handle_invalid_context("CGMetalContextSetDisplayMask", a1);
  }

  return result;
}

uint64_t CGMetalContextGetDisplayMask(_DWORD *a1)
{
  v1 = a1;
  if (a1 && a1[4] == 1129601108 && a1[6] == 10)
  {
    if (metal_context_vtable_once != -1)
    {
      dispatch_once(&metal_context_vtable_once, &__block_literal_global_16808);
      v1 = a1;
    }

    v2 = *(metal_context_vtable_vtable + 24);
    v3 = *(v1 + 5);

    return v2(v3);
  }

  else
  {
    handle_invalid_context("CGMetalContextGetDisplayMask", a1);
    return 0;
  }
}

double CGMetalContextSetGPURegistryID(_DWORD *a1)
{
  v2 = a1;
  if (a1 && a1[4] == 1129601108 && a1[6] == 10)
  {
    if (metal_context_vtable_once != -1)
    {
      dispatch_once(&metal_context_vtable_once, &__block_literal_global_16808);
      v2 = a1;
    }

    v3 = *(metal_context_vtable_vtable + 48);
    v4 = *(v2 + 5);

    v3(v4);
  }

  else
  {

    handle_invalid_context("CGMetalContextSetGPURegistryID", a1);
  }

  return result;
}

uint64_t CGMetalContextGetGPURegistryID(_DWORD *a1)
{
  v1 = a1;
  if (a1 && a1[4] == 1129601108 && a1[6] == 10)
  {
    if (metal_context_vtable_once != -1)
    {
      dispatch_once(&metal_context_vtable_once, &__block_literal_global_16808);
      v1 = a1;
    }

    v2 = *(metal_context_vtable_vtable + 56);
    v3 = *(v1 + 5);

    return v2(v3);
  }

  else
  {
    handle_invalid_context("CGMetalContextGetGPURegistryID", a1);
    return 0;
  }
}

uint64_t CGMetalContextGetWidth(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 10)
  {
    return **(a1 + 32);
  }

  handle_invalid_context("CGMetalContextGetWidth", a1);
  return 0;
}

uint64_t CGMetalContextGetHeight(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 10)
  {
    return *(*(a1 + 32) + 8);
  }

  handle_invalid_context("CGMetalContextGetHeight", a1);
  return 0;
}

uint64_t CGMetalContextGetTexture(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 10)
  {
    return *(*(a1 + 32) + 16);
  }

  handle_invalid_context("CGMetalContextGetTexture", a1);
  return 0;
}

uint64_t CGMetalContextGetBitsPerComponent(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 10)
  {
    return *(*(a1 + 32) + 24);
  }

  handle_invalid_context("CGMetalContextGetBitsPerComponent", a1);
  return 0;
}

uint64_t CGMetalContextGetBitsPerPixel(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 10)
  {
    return *(*(a1 + 32) + 32);
  }

  handle_invalid_context("CGMetalContextGetBitsPerPixel", a1);
  return 0;
}

uint64_t CGMetalContextGetColorSpace(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 10)
  {
    return *(*(a1 + 32) + 40);
  }

  handle_invalid_context("CGMetalContextGetColorSpace", a1);
  return 0;
}

uint64_t CGMetalContextGetBitmapInfo(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 10)
  {
    return *(*(a1 + 32) + 48);
  }

  handle_invalid_context("CGMetalContextGetBitmapInfo", a1);
  return 0;
}

uint64_t CGMetalContextCreateImage(_DWORD *a1)
{
  v1 = a1;
  if (a1 && a1[4] == 1129601108 && a1[6] == 10)
  {
    if (metal_context_vtable_once != -1)
    {
      dispatch_once(&metal_context_vtable_once, &__block_literal_global_16808);
      v1 = a1;
    }

    v2 = *(metal_context_vtable_vtable + 32);
    v4 = *(v1 + 4);
    v3 = *(v1 + 5);

    return v2(v3, v4);
  }

  else
  {
    handle_invalid_context("CGMetalContextCreateImage", a1);
    return 0;
  }
}

uint64_t CGMetalContextCreateImageReference(_DWORD *a1)
{
  v1 = a1;
  if (a1 && a1[4] == 1129601108 && a1[6] == 10)
  {
    if (metal_context_vtable_once != -1)
    {
      dispatch_once(&metal_context_vtable_once, &__block_literal_global_16808);
      v1 = a1;
    }

    v2 = *(metal_context_vtable_vtable + 40);
    v4 = *(v1 + 4);
    v3 = *(v1 + 5);

    return v2(v3, v4);
  }

  else
  {
    handle_invalid_context("CGMetalContextCreateImageReference", a1);
    return 0;
  }
}

uint64_t CGPDFShadingCreateWithObject(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = CGPDFObjectCopyAssociation(result, "Shading");
    if (!result)
    {
      if (CGPDFShadingGetTypeID_onceToken != -1)
      {
        dispatch_once(&CGPDFShadingGetTypeID_onceToken, &__block_literal_global_16817);
      }

      result = pdf_create_cftype(CGPDFShadingGetTypeID_id, 136);
      if (result)
      {
        v2 = result;
        value = 0;
        v17 = 0;
        v15 = 0;
        v3 = *(v1 + 8);
        if (v3 == 9)
        {
          v4 = *(v1 + 32);
          if (!v4)
          {
            v6 = 0;
LABEL_12:
            *(v2 + 24) = v6;
            *(v2 + 32) = v4;
            if (CGPDFDictionaryGetObject(v6, "ColorSpace", &value))
            {
              v7 = CGPDFCreateColorSpace(value);
              *(v2 + 40) = v7;
              if (v7)
              {
                if (CGColorSpaceGetType(v7) == 9)
                {
                }

                else
                {
                  *(v2 + 48) = 0;
                  v8 = *(v2 + 40);
                  if (v8)
                  {
                    v9 = *(*(v8 + 24) + 48);
                  }

                  else
                  {
                    v9 = 0;
                  }

                  v10 = malloc_type_malloc(8 * v9 + 8, 0x100004000313F17uLL);
                  if (!v10)
                  {
                    goto LABEL_18;
                  }

                  v11 = v10;
                  if (CGPDFDictionaryGetNumbers(*(v2 + 24), "Background", v10, v9))
                  {
                    v11[v9] = 1.0;
                    *(v2 + 48) = CGColorCreate(*(v2 + 40), v11);
                  }

                  free(v11);
                  Rect = CGPDFDictionaryGetRect(*(v2 + 24), "BBox", (v2 + 64));
                  *(v2 + 57) = Rect;
                  if (!Rect)
                  {
                    *(v2 + 64) = CGRectInfinite;
                  }

                  *(v2 + 56) = 0;
                  if (!CGPDFDictionaryGetBoolean(*(v2 + 24), "AntiAlias", &v15))
                  {
                    *(v2 + 56) = v15 != 0;
                  }

                  if (CGPDFDictionaryGetInteger(*(v2 + 24), "ShadingType", &v17))
                  {
                    if ((v17 - 8) > 0xFFFFFFFFFFFFFFF8)
                    {
                      v13 = *(v2 + 32);
                      if (v17 > 3)
                      {
                        if (!v13)
                        {
                          pdf_error("invalid shading object: not a stream.");
                          goto LABEL_18;
                        }
                      }

                      else if (v13)
                      {
                        pdf_error("invalid shading object: not a dictionary.");
                        goto LABEL_18;
                      }

                      v14 = off_1EF240340[v17 - 1];
                      *(v2 + 16) = v17;
                      if ((v14)(v2, v2 + 96, v2 + 104))
                      {
                        *(v2 + 128) = 0;
                        return CGPDFObjectSetAssociation(v1, v2, "Shading");
                      }

                      goto LABEL_18;
                    }
                  }

                  else
                  {
                  }
                }
              }
            }

            else
            {
            }

LABEL_18:
            CFRelease(v2);
            return 0;
          }

          v5 = (v4 + 48);
        }

        else
        {
          if (v3 != 8)
          {
            pdf_error("invalid shading: not a dictionary or stream.");
            goto LABEL_18;
          }

          v4 = 0;
          v5 = (v1 + 32);
        }

        v6 = *v5;
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t __CGPDFShadingGetTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFShadingGetTypeID_class);
  CGPDFShadingGetTypeID_id = result;
  return result;
}

void CGPDFShadingFinalize(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    v2(a1, *(a1 + 96));
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
  }

  CGColorSpaceRelease(*(a1 + 40));
  v4 = *(a1 + 120);
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t CGPDFShadingGetShading(uint64_t a1)
{
  result = *(a1 + 120);
  if (!result)
  {
    if (*(a1 + 104))
    {
      os_unfair_lock_lock((a1 + 128));
      if (!*(a1 + 120))
      {
        v3 = *(a1 + 104);
        if (v3)
        {
          *(a1 + 120) = v3(a1, *(a1 + 96));
        }
      }

      os_unfair_lock_unlock((a1 + 128));
      return *(a1 + 120);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void _CGDataProviderReleaseDataCallback(void *a1, const void *a2)
{
  if (a1)
  {
    free(a1);
  }
}

CGImageRef create_jpeg_copy(CGImageRef image, double a2)
{
  v2 = image;
  valuePtr = a2;
  if (!image)
  {
    return v2;
  }

  UTType = CGImageGetUTType(image);
  if (UTType && CFEqual(UTType, @"public.jpeg"))
  {
    return 0;
  }

  if ((*(v2 + 39) & 4) == 0 && !*(v2 + 22))
  {
    goto LABEL_10;
  }

  Mask = CGImageGetMask(v2);
  if (Mask)
  {
    MaskFromAlpha = Mask;
    if ((is_image_alpha_opaque(Mask) & 1) == 0)
    {
      CFRetain(MaskFromAlpha);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (is_image_alpha_opaque(v2))
  {
LABEL_10:
    MaskFromAlpha = 0;
    goto LABEL_12;
  }

  MaskFromAlpha = CGImageCreateMaskFromAlpha(v2);
LABEL_12:
  Mutable = CFDataCreateMutable(0, 0);
  if (create_jpeg_copy::predicate != -1)
  {
    dispatch_once(&create_jpeg_copy::predicate, &__block_literal_global_16851);
  }

  v8 = create_jpeg_copy::f(Mutable, @"public.jpeg", 1, 0);
  if (!v8)
  {
    if (MaskFromAlpha)
    {
      CFRelease(MaskFromAlpha);
    }

    return 0;
  }

  v9 = v8;
  v10 = 0;
  if (a2 >= 0.0 && a2 <= 1.0)
  {
    v11 = *MEMORY[0x1E695E480];
    v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
    if (v12)
    {
      v13 = v12;
      values = v12;
      keys = @"kCGImageDestinationLossyCompressionQuality";
      v10 = CFDictionaryCreate(v11, &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFRelease(v13);
    }

    else
    {
      v10 = 0;
    }
  }

  if (create_jpeg_copy::predicate != -1)
  {
    dispatch_once(&create_jpeg_copy::predicate, &__block_literal_global_8_16853);
  }

  create_jpeg_copy::f(v9, v2, v10);
  if (create_jpeg_copy::predicate != -1)
  {
    dispatch_once(&create_jpeg_copy::predicate, &__block_literal_global_12_16854);
  }

  create_jpeg_copy::f(v9);
  CFRelease(v9);
  if (v10)
  {
    CFRelease(v10);
  }

  v14 = CGDataProviderCreateWithCFData(Mutable);
  CFRelease(Mutable);
  v2 = CGImageCreateWithJPEGDataProvider2(v14, 0, 0, 0, 0);
  CGDataProviderRelease(v14);
  if (v2 && MaskFromAlpha)
  {
    v15 = CGImageCreateWithMaskAndMatte(v2, MaskFromAlpha, 0);
    CFRelease(v2);
    v2 = v15;
LABEL_33:
    CFRelease(MaskFromAlpha);
    return v2;
  }

  if (MaskFromAlpha)
  {
    goto LABEL_33;
  }

  return v2;
}

uint64_t is_image_alpha_opaque(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  Mask = a1;
  if (*(a1 + 40) < 4uLL)
  {
    return 0;
  }

  if ((*(a1 + 39) & 4) == 0)
  {
    if (!*(a1 + 176))
    {
      return 0;
    }

    Mask = CGImageGetMask(a1);
  }

  CGBuf::CGBuf(v12, Mask);
  v3 = v14;
  if (v14 == 1)
  {
    v15 = 964689920;
    __pattern4 = 1065353216;
    memset_pattern4(__b, &__pattern4, 4uLL);
    memset_pattern4(v17, &v15, 4uLL);
    if ((v13 & 0x1F) != 0)
    {
      __b[1] = 0;
      v17[1] = INFINITY;
    }
  }

  else
  {
    v15 = 2139095040;
    __pattern4 = 0;
    if (v14 >= 0x10u)
    {
      v9 = 16;
    }

    else
    {
      v9 = v14;
    }

    memset_pattern4(__b, &__pattern4, 4 * v9);
    memset_pattern4(v17, &v15, 4 * v9);
    if (v3 <= 0xF && (v13 & 0x1F) != 0)
    {
      v10 = INFINITY;
      if ((v13 & 0x1Fu) < 5)
      {
        v10 = 0.00024414;
      }

      __b[v9] = 1065353216;
      v17[v9] = v10;
    }
  }

  IsConstantValue_0 = CGBufIsConstantValue_0(v12, __b, v17, v4, v5, v6, v7, v8);
  CGBuf::~CGBuf(v12);
  return IsConstantValue_0;
}

void sub_184285808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CGBuf::~CGBuf(va);
  _Unwind_Resume(a1);
}

uint64_t (*__create_jpeg_copy_block_invoke_3())(void)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageDestinationFinalize");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageDestinationFinalize");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageDestinationFinalize", v0);
  }

  create_jpeg_copy::f = result;
  return result;
}

void *__create_jpeg_copy_block_invoke_2()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageDestinationAddImage");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageDestinationAddImage");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageDestinationAddImage", v0);
  }

  create_jpeg_copy::f = result;
  return result;
}

void *__create_jpeg_copy_block_invoke()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageDestinationCreateWithData");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageDestinationCreateWithData");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageDestinationCreateWithData", v0);
  }

  create_jpeg_copy::f = result;
  return result;
}

_DWORD *resample_word_h_Ncpp(_DWORD *result, unsigned int a2, unsigned __int8 a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = a3;
    v10 = *a6;
    v11 = 2 * a2 + 8;
    do
    {
      if (a4)
      {
        v12 = v10 + *a7 * v8;
        v13 = *(a5 + 8 * v8);
        v14 = a4;
        v15 = result;
        do
        {
          if (v9)
          {
            v16 = 0;
            v17 = v15[1];
            v18 = (v12 + 2 * *v15 * v9);
            do
            {
              if (v17)
              {
                v19 = 0x2000;
                v20 = v18;
                v21 = (v15 + 2);
                v22 = v17;
                do
                {
                  v23 = *v21++;
                  v19 += *v20 * v23;
                  v20 += v9;
                  --v22;
                }

                while (v22);
                v24 = v19 >> 14;
              }

              else
              {
                v24 = 0;
              }

              if (v24 >= 0xFFFF)
              {
                v24 = 0xFFFF;
              }

              *v13++ = v24 & ~(v24 >> 31);
              ++v16;
              ++v18;
            }

            while (v16 != v9);
          }

          v15 = (v15 + v11);
          --v14;
        }

        while (v14);
      }

      ++v8;
    }

    while (v8 != a8);
  }

  return result;
}

int *resample_word_h_4cpp(int *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = *a6;
    v10 = 2 * a2 + 8;
    v11.i64[0] = 0xFFFF0000FFFFLL;
    v11.i64[1] = 0xFFFF0000FFFFLL;
    do
    {
      if (a4)
      {
        v12 = v9 + *a7 * v8;
        v13 = *(a5 + 8 * v8);
        v14 = a4;
        v15 = result;
        do
        {
          v16 = v15[1];
          if (v16)
          {
            v17 = (v15 + 2);
            v18 = (v12 + 8 * *v15);
            v19.i64[0] = 0x200000002000;
            v19.i64[1] = 0x200000002000;
            do
            {
              v20 = *v18++;
              v21 = vld1_dup_s16(v17++);
              v19 = vmlaq_s32(v19, vmovl_s16(v21), vmovl_u16(v20));
              --v16;
            }

            while (v16);
            v22 = vshrq_n_s32(v19, 0xEuLL);
          }

          else
          {
            v22 = 0uLL;
          }

          *v13++ = vmaxq_s32(vminq_s32(v22, v11), 0);
          v15 = (v15 + v10);
          --v14;
        }

        while (v14);
      }

      ++v8;
    }

    while (v8 != a8);
  }

  return result;
}

_DWORD *resample_word_h_3cpp(_DWORD *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = *a6;
    v10 = 2 * a2 + 8;
    do
    {
      if (a4)
      {
        v11 = *(a5 + 8 * v8);
        v12 = v9 + *a7 * v8 + 4;
        v13 = a4;
        v14 = result;
        do
        {
          v15 = v14[1];
          if (v15)
          {
            v16 = (v14 + 2);
            v17 = (v12 + 6 * *v14);
            v18 = 0x200000002000;
            v19 = 0x2000;
            do
            {
              v20 = *v16++;
              v21.i32[0] = *(v17 - 2);
              v21.i32[1] = *(v17 - 1);
              v18 = vmla_s32(v18, vdup_n_s32(v20), v21);
              v19 += *v17 * v20;
              v17 += 3;
              --v15;
            }

            while (v15);
            v22 = vshr_n_s32(v18, 0xEuLL);
            v15 = v19 >> 14;
          }

          else
          {
            v22 = 0;
          }

          v23 = vmin_s32(v22, 0xFFFF0000FFFFLL);
          if (v15 >= 0xFFFF)
          {
            v15 = 0xFFFF;
          }

          *v11 = vmax_s32(v23, 0);
          v11[1].i32[0] = v15 & ~(v15 >> 31);
          v11 = (v11 + 12);
          v14 = (v14 + v10);
          --v13;
        }

        while (v13);
      }

      ++v8;
    }

    while (v8 != a8);
  }

  return result;
}

int *resample_word_h_1cpp(int *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, unsigned int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = *a6;
    v10 = 2 * a2 + 8;
    v11 = a8;
    do
    {
      if (a4)
      {
        v12 = v9 + *a7 * v8 - 2;
        v13 = *(a5 + 8 * v8);
        v14 = a4;
        v15 = result;
        do
        {
          v16 = v15[1];
          v17 = v12 + 2 * *v15;
          v19 = v15 + 2;
          v18 = *(v15 + 4);
          v20 = 0x2000;
          if (v16 >= 4)
          {
            v21 = *(v15 + 4);
            v22 = v15[1];
            do
            {
              v24 = *(v17 + 8);
              v17 += 8;
              v23 = v24;
              v16 = v22 - 4;
              v25 = *(v19 + 4);
              v19 += 2;
              v18 = v25;
              v20 += v21 * *(v17 - 6) + *(v17 - 4) * *(v19 - 3) + *(v17 - 2) * *(v19 - 2) + v23 * *(v19 - 1);
              v21 = v25;
              v26 = v22 > 7;
              v22 -= 4;
            }

            while (v26);
          }

          if (v16)
          {
            v27 = (v17 + 2);
            v28 = v19 + 1;
            do
            {
              v29 = *v27++;
              v20 += v18 * v29;
              v30 = *v28++;
              v18 = v30;
              --v16;
            }

            while (v16);
          }

          v31 = v20 >> 14;
          if (v20 >> 14 >= 0xFFFF)
          {
            v31 = 0xFFFF;
          }

          *v13++ = v31 & ~(v31 >> 31);
          v15 = (v15 + v10);
          --v14;
        }

        while (v14);
      }

      ++v8;
    }

    while (v8 != v11);
  }

  return result;
}

uint64_t resample_word_v_Ncpp_al(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, void *a5, uint64_t *a6)
{
  v6 = *a5 - 2;
  v7 = *(result + 4);
  v8 = (result + 8);
  v9 = a3;
  v10 = a3 * a4;
  v11 = v10 & 0xFFFFFFFC;
  if (v11 < 1)
  {
    LODWORD(v12) = 0;
    v13 = 0;
    v15 = a3;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14.i64[0] = 0xFFFF0000FFFFLL;
    v14.i64[1] = 0xFFFF0000FFFFLL;
    v15 = a3;
    do
    {
      v16 = 0uLL;
      if (v7)
      {
        v17.i64[0] = 0x200000002000;
        v17.i64[1] = 0x200000002000;
        v18 = a6;
        v19 = v8;
        v20 = v7;
        do
        {
          v21 = *v18++;
          v22 = vld1_dup_s16(v19++);
          v17 = vmlaq_s32(v17, *(v21 + 4 * v12), vmovl_s16(v22));
          --v20;
        }

        while (v20);
        v16 = vshrq_n_s32(v17, 0xEuLL);
      }

      v23 = v12 | 1;
      v24 = v12 | 2;
      v25 = v12 | 3;
      v12 += 4;
      v26 = v6 + 8;
      v27 = vmaxq_s32(vminq_s32(v16, v14), 0);
      v28 = v27.i32[0];
      if (v13 > v27.i32[0])
      {
        v28 = v13;
      }

      v29 = v23 == v15;
      v30 = v29;
      if (v23 == v15)
      {
        v31 = v9;
      }

      else
      {
        v31 = 0;
      }

      v32 = (v31 + v15);
      if (v29)
      {
        v33 = 0;
      }

      else
      {
        v33 = v28;
      }

      if (v33 <= v27.i32[1])
      {
        result = v27.u32[1];
      }

      else
      {
        result = v33;
      }

      v34 = v24 == v32;
      v35 = v24 == v32;
      if (v34)
      {
        v36 = v9;
      }

      else
      {
        v36 = 0;
      }

      v37 = (v36 + v32);
      if (v34)
      {
        v38 = 0;
      }

      else
      {
        v38 = result;
      }

      if (v38 <= v27.i32[2])
      {
        v38 = v27.u32[2];
      }

      v39 = v25 == v37;
      v40 = v25 == v37;
      if (v39)
      {
        v41 = v9;
      }

      else
      {
        v41 = 0;
      }

      v42 = (v41 + v37);
      v43 = v27.i32[3];
      if (v39)
      {
        v44 = 0;
      }

      else
      {
        v44 = v38;
      }

      if (v44 > v27.i32[3])
      {
        v43 = v44;
      }

      v45 = v12 == v42;
      v46 = v12 == v42;
      if (v12 == v42)
      {
        v47 = v9;
      }

      else
      {
        v47 = 0;
      }

      v15 = v47 + v42;
      v48.i16[0] = v30;
      v48.i16[1] = v35;
      v48.i16[2] = v40;
      if (v45)
      {
        v13 = 0;
      }

      else
      {
        v13 = v43;
      }

      v48.i16[3] = v46;
      v49.i64[0] = __PAIR64__(result, v28);
      v49.i64[1] = __PAIR64__(v43, v38);
      *(v6 + 2) = vmovn_s32(vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v48), 0x1FuLL)), v49, v27));
      v6 += 8;
    }

    while (v12 < v11);
    v6 = v26;
  }

  if (v12 < v10)
  {
    v12 = v12;
    do
    {
      if (v7)
      {
        v50 = 0x2000;
        v51 = a6;
        v52 = v8;
        v53 = v7;
        do
        {
          v55 = *v52++;
          v54 = v55;
          v56 = *v51++;
          v50 += *(v56 + 4 * v12) * v54;
          --v53;
        }

        while (v53);
        v57 = v50 >> 14;
      }

      else
      {
        v57 = 0;
      }

      if (v57 >= 0xFFFF)
      {
        v57 = 0xFFFF;
      }

      v58 = v57 & ~(v57 >> 31);
      if (v13 <= v58)
      {
        result = v58;
      }

      else
      {
        result = v13;
      }

      v59 = ++v12 == v15;
      if (v12 == v15)
      {
        v60 = v9;
      }

      else
      {
        v60 = 0;
      }

      v15 += v60;
      if (v59)
      {
        v13 = 0;
      }

      else
      {
        v13 = result;
      }

      if (v59)
      {
        LOWORD(v58) = result;
      }

      *(v6 + 2) = v58;
      v6 += 2;
    }

    while (v12 != v10);
  }

  return result;
}

unint64_t resample_word_v_3cpp_al(unint64_t result, uint64_t a2, unsigned __int8 a3, int a4, _WORD **a5, uint64_t *a6)
{
  v6 = (a3 * a4) & 0xFFFFFFFC;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 4);
    v9 = (result + 8);
    v10 = *a5;
    do
    {
      if (v8)
      {
        v11.i64[0] = 0x200000002000;
        v11.i64[1] = 0x200000002000;
        v12 = a6;
        v13 = v9;
        v14 = v8;
        do
        {
          v15 = *v12++;
          result = 4 * v7;
          v16 = vld1_dup_s16(v13++);
          v11 = vmlaq_s32(v11, *(v15 + 4 * v7), vmovl_s16(v16));
          --v14;
        }

        while (v14);
        v17 = vshrq_n_s32(v11, 0xEuLL);
      }

      else
      {
        v17 = 0uLL;
      }

      v18 = v17.i32[0];
      if (v17.i32[0] >= 0xFFFF)
      {
        v18 = 0xFFFF;
      }

      v19 = v18 & ~(v18 >> 31);
      v20 = v17.i32[1];
      if (v17.i32[1] >= 0xFFFF)
      {
        v20 = 0xFFFF;
      }

      v21 = v20 & ~(v20 >> 31);
      v22 = v17.i32[2];
      if (v17.i32[2] >= 0xFFFF)
      {
        v22 = 0xFFFF;
      }

      v23 = v22 & ~(v22 >> 31);
      v24 = v17.i32[3];
      if (v17.i32[3] >= 0xFFFF)
      {
        v24 = 0xFFFF;
      }

      v25 = v24 & ~(v24 >> 31);
      if (v19 > v25)
      {
        v25 = v19;
      }

      if (v21 > v25)
      {
        v25 = v21;
      }

      if (v23 > v25)
      {
        LOWORD(v25) = v23;
      }

      *v10 = v19;
      v10[1] = v21;
      v10[2] = v23;
      v10[3] = v25;
      v10 += 4;
      v7 += 4;
    }

    while (v7 < v6);
  }

  return result;
}

uint64_t resample_word_v_Ncpp_af(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, void *a5, uint64_t *a6)
{
  v6 = (*a5 - 2);
  v7 = *(result + 4);
  v8 = (result + 8);
  v9 = a3;
  v10 = 2 - a3;
  v11 = a3 * a4;
  v12 = v11 & 0xFFFFFFFC;
  if (v12 < 1)
  {
    LODWORD(v13) = 0;
    v14 = 0;
    v15 = a3;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    result = 2 - a3;
    v15 = a3;
    do
    {
      if (v7)
      {
        v16.i64[0] = 0x200000002000;
        v16.i64[1] = 0x200000002000;
        v17 = a6;
        v18 = v8;
        v19 = v7;
        do
        {
          v20 = *v17++;
          v21 = vld1_dup_s16(v18++);
          v16 = vmlaq_s32(v16, *(v20 + 4 * v13), vmovl_s16(v21));
          --v19;
        }

        while (v19);
        v22 = vshrq_n_s32(v16, 0xEuLL);
      }

      else
      {
        v22 = 0uLL;
      }

      v23 = v22.i32[0];
      if (v22.i32[0] >= 0xFFFF)
      {
        v23 = 0xFFFF;
      }

      v24 = v22.i32[1];
      v25 = v23 & ~(v23 >> 31);
      if (v22.i32[1] >= 0xFFFF)
      {
        v24 = 0xFFFF;
      }

      if (v14 <= v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = v14;
      }

      if ((v13 | 1) == v15)
      {
        v6[v10] = v26;
        v27 = v15 + v9;
        v15 += v9;
        v26 = 0;
      }

      else
      {
        v27 = v15;
      }

      v28 = v24 & ~(v24 >> 31);
      v6[1] = v25;
      if (v26 <= v28)
      {
        v29 = v24 & ~(v24 >> 31);
      }

      else
      {
        v29 = v26;
      }

      if ((v13 | 2) == v27)
      {
        v6[v10 + 1] = v29;
        v27 = v15 + v9;
        v15 += v9;
        v29 = 0;
      }

      v6[2] = v28;
      v30 = v22.i32[2];
      if (v22.i32[2] >= 0xFFFF)
      {
        v30 = 0xFFFF;
      }

      v31 = v30 & ~(v30 >> 31);
      v32 = v22.i32[3];
      if (v22.i32[3] >= 0xFFFF)
      {
        v32 = 0xFFFF;
      }

      if (v29 <= v31)
      {
        v29 = v31;
      }

      if ((v13 | 3) == v27)
      {
        v6[v10 + 2] = v29;
        v27 = v15 + v9;
        v15 += v9;
        v29 = 0;
      }

      v33 = v32 & ~(v32 >> 31);
      v6[3] = v31;
      if (v29 <= v33)
      {
        v14 = v33;
      }

      else
      {
        v14 = v29;
      }

      v13 += 4;
      if (v13 == v27)
      {
        v6[v10 + 3] = v14;
        v15 += v9;
        v14 = 0;
      }

      v6[4] = v33;
      v6 += 4;
    }

    while (v13 < v12);
  }

  if (v13 < v11)
  {
    v13 = v13;
    do
    {
      if (v7)
      {
        v34 = 0x2000;
        v35 = a6;
        v36 = v8;
        v37 = v7;
        do
        {
          v39 = *v36++;
          v38 = v39;
          v40 = *v35++;
          v34 += *(v40 + 4 * v13) * v38;
          --v37;
        }

        while (v37);
        v41 = v34 >> 14;
      }

      else
      {
        v41 = 0;
      }

      if (v41 >= 0xFFFF)
      {
        v41 = 0xFFFF;
      }

      result = v41 & ~(v41 >> 31);
      if (v14 <= result)
      {
        v14 = result;
      }

      if (++v13 == v15)
      {
        v6[v10] = v14;
        v15 += v9;
        v14 = 0;
      }

      v6[1] = result;
      ++v6;
    }

    while (v13 != v11);
  }

  return result;
}

unint64_t resample_word_v_3cpp_af(unint64_t result, uint64_t a2, unsigned __int8 a3, int a4, _WORD **a5, uint64_t *a6)
{
  v6 = (a3 * a4) & 0xFFFFFFFC;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 4);
    v9 = (result + 8);
    v10 = *a5;
    do
    {
      if (v8)
      {
        v11.i64[0] = 0x200000002000;
        v11.i64[1] = 0x200000002000;
        v12 = a6;
        v13 = v9;
        v14 = v8;
        do
        {
          v15 = *v12++;
          result = 4 * v7;
          v16 = vld1_dup_s16(v13++);
          v11 = vmlaq_s32(v11, *(v15 + 4 * v7), vmovl_s16(v16));
          --v14;
        }

        while (v14);
        v17 = vshrq_n_s32(v11, 0xEuLL);
      }

      else
      {
        v17 = 0uLL;
      }

      v18 = v17.i32[0];
      if (v17.i32[0] >= 0xFFFF)
      {
        v18 = 0xFFFF;
      }

      v19 = v18 & ~(v18 >> 31);
      v20 = v17.i32[1];
      if (v17.i32[1] >= 0xFFFF)
      {
        v20 = 0xFFFF;
      }

      v21 = v20 & ~(v20 >> 31);
      v22 = v17.i32[2];
      if (v17.i32[2] >= 0xFFFF)
      {
        v22 = 0xFFFF;
      }

      v23 = v22 & ~(v22 >> 31);
      v24 = v17.i32[3];
      if (v17.i32[3] >= 0xFFFF)
      {
        v24 = 0xFFFF;
      }

      v25 = v24 & ~(v24 >> 31);
      if (v21 > v19)
      {
        v19 = v21;
      }

      if (v23 > v19)
      {
        v19 = v23;
      }

      if (v25 > v19)
      {
        LOWORD(v19) = v25;
      }

      *v10 = v19;
      v10[1] = v21;
      v10[2] = v23;
      v10[3] = v25;
      v10 += 4;
      v7 += 4;
    }

    while (v7 < v6);
  }

  return result;
}

uint64_t resample_word_v_Ncpp(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, int16x4_t **a5, uint64_t *a6)
{
  v6 = *a5;
  v7 = *(result + 4);
  v8 = (result + 8);
  v9 = a3 * a4;
  v10 = v9 & 0xFFFFFFFC;
  if (v10 < 1)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = 0;
    v12.i64[0] = 0xFFFF0000FFFFLL;
    v12.i64[1] = 0xFFFF0000FFFFLL;
    do
    {
      v13 = 0uLL;
      if (v7)
      {
        v14.i64[0] = 0x200000002000;
        v14.i64[1] = 0x200000002000;
        v15 = a6;
        v16 = v8;
        v17 = v7;
        do
        {
          v18 = *v15++;
          result = v18;
          v19 = vld1_dup_s16(v16++);
          v14 = vmlaq_s32(v14, *(v18 + 4 * v11), vmovl_s16(v19));
          --v17;
        }

        while (v17);
        v13 = vshrq_n_s32(v14, 0xEuLL);
      }

      *v6++ = vmovn_s32(vmaxq_s32(vminq_s32(v13, v12), 0));
      v11 += 4;
    }

    while (v11 < v10);
  }

  if (v11 < v9)
  {
    v11 = v11;
    do
    {
      if (v7)
      {
        v20 = 0x2000;
        v21 = a6;
        v22 = v8;
        v23 = v7;
        do
        {
          v24 = *v22++;
          result = v24;
          v25 = *v21++;
          v20 += *(v25 + 4 * v11) * result;
          --v23;
        }

        while (v23);
        v26 = v20 >> 14;
      }

      else
      {
        v26 = 0;
      }

      if (v26 >= 0xFFFF)
      {
        v26 = 0xFFFF;
      }

      v6->i16[0] = v26 & ~(v26 >> 31);
      v6 = (v6 + 2);
      ++v11;
    }

    while (v11 != v9);
  }

  return result;
}

int *resample_word_h_Ncpp_ap(int *result, unsigned int a2, unsigned __int8 a3, int a4, uint64_t a5, uint64_t *a6, int *a7, unsigned int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = a3;
    v10 = a3 - 1;
    v11 = *a6;
    v12 = a6[1];
    v13 = 2 * a2 + 8;
    v14 = a8;
    v15 = 2 * a3 - 2;
    do
    {
      if (a4)
      {
        v16 = v11 + *a7 * v8;
        v17 = v12 + a7[1] * v8;
        v18 = *(a5 + 8 * v8);
        v19 = a4;
        v20 = result;
        do
        {
          v21 = v20[1];
          v22 = *v20;
          v23 = (v20 + 2);
          if (v9 >= 2)
          {
            v24 = 0;
            do
            {
              if (v21)
              {
                v25 = 0x2000;
                v26 = (v16 + 2 * v22 * v10);
                v27 = (v20 + 2);
                v28 = v21;
                do
                {
                  v29 = *v27++;
                  v25 += *v26 * v29;
                  v26 = (v26 + v15);
                  --v28;
                }

                while (v28);
                v30 = v25 >> 14;
              }

              else
              {
                v30 = 0;
              }

              if (v30 >= 0xFFFF)
              {
                v30 = 0xFFFF;
              }

              *v18++ = v30 & ~(v30 >> 31);
              ++v24;
            }

            while (v24 != v10);
          }

          if (v21)
          {
            v31 = (v17 + 2 * v22);
            v32 = 0x2000;
            do
            {
              v34 = *v23++;
              v33 = v34;
              v35 = *v31++;
              v32 += v35 * v33;
              --v21;
            }

            while (v21);
            v21 = v32 >> 14;
          }

          if (v21 >= 0xFFFF)
          {
            v21 = 0xFFFF;
          }

          *v18++ = v21 & ~(v21 >> 31);
          v20 = (v20 + v13);
          --v19;
        }

        while (v19);
      }

      ++v8;
    }

    while (v8 != v14);
  }

  return result;
}

int *resample_word_h_4cpp_ap(int *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, unsigned int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = *a6;
    v10 = a6[1];
    v11 = 2 * a2 + 8;
    v12 = a8;
    v13.i64[0] = 0xFFFF0000FFFFLL;
    v13.i64[1] = 0xFFFF0000FFFFLL;
    do
    {
      if (a4)
      {
        v14 = v9 + *a7 * v8;
        v15 = v10 + a7[1] * v8;
        v16 = *(a5 + 8 * v8);
        v17 = a4;
        v18 = result;
        do
        {
          v19 = v18[1];
          if (v19)
          {
            v20 = (v18 + 2);
            v21 = *v18;
            v22 = (v14 + 8 * v21);
            v23 = (v15 + 2 * v21);
            v24.i64[0] = 0x200000002000;
            v24.i64[1] = 0x200000002000;
            v25 = 0x2000;
            do
            {
              v27 = *v20++;
              v26 = v27;
              v29 = *v23++;
              v28 = v29;
              v30 = *v22++;
              v24 = vmlaq_s32(v24, vmovl_s16(vdup_n_s16(v26)), vmovl_u16(v30));
              v25 += v28 * v26;
              --v19;
            }

            while (v19);
            v31 = vshrq_n_s32(v24, 0xEuLL);
            v19 = v25 >> 14;
          }

          else
          {
            v31 = 0uLL;
          }

          v32 = vminq_s32(v31, v13);
          if (v19 >= 0xFFFF)
          {
            v19 = 0xFFFF;
          }

          *v16 = vmaxq_s32(v32, 0);
          v16[1].i32[0] = v19 & ~(v19 >> 31);
          v16 = (v16 + 20);
          v18 = (v18 + v11);
          --v17;
        }

        while (v17);
      }

      ++v8;
    }

    while (v8 != v12);
  }

  return result;
}

uint64_t resample_word_h_1cpp_ap(uint64_t result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, unsigned int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = *a6;
    v10 = a6[1];
    v11 = 2 * a2 + 8;
    v12 = a8;
    while (!a4)
    {
LABEL_18:
      if (++v8 == v12)
      {
        return result;
      }
    }

    v13 = v9 + *a7 * v8;
    v14 = v10 + a7[1] * v8;
    v15 = *(a5 + 8 * v8);
    v16 = a4;
    v17 = result;
    while (1)
    {
      v18 = *(v17 + 4);
      v20 = v17 + 8;
      v19 = *(v17 + 8);
      v21 = *v17 - 1;
      v22 = v13 + 2 * v21;
      v23 = v14 + 2 * v21;
      if (v18 >= 2)
      {
        break;
      }

      v26 = 0x2000;
      v25 = 0x2000;
      if (v18)
      {
        goto LABEL_11;
      }

LABEL_13:
      v38 = v26 >> 14;
      v39 = v25 >> 14;
      if (v26 >> 14 >= 0xFFFF)
      {
        v38 = 0xFFFF;
      }

      v40 = v38 & ~(v38 >> 31);
      if (v39 >= 0xFFFF)
      {
        v39 = 0xFFFF;
      }

      *v15 = v40;
      v15[1] = v39 & ~(v39 >> 31);
      v15 += 2;
      v17 += v11;
      if (!--v16)
      {
        goto LABEL_18;
      }
    }

    v24 = 0;
    v25 = 0x2000;
    v26 = 0x2000;
    do
    {
      v27 = v18;
      v18 -= 2;
      v28 = v26 + v19 * *(v22 + v24 + 2);
      v29 = v25 + v19 * *(v23 + v24 + 2);
      v30 = *(v17 + v24 + 10);
      v26 = v28 + v30 * *(v22 + v24 + 4);
      v25 = v29 + *(v23 + v24 + 4) * v30;
      v19 = *(v17 + v24 + 12);
      v24 += 4;
    }

    while (v27 > 3);
    v23 += v24;
    v22 += v24;
    v20 = v17 + v24 + 8;
    if (!v18)
    {
      goto LABEL_13;
    }

LABEL_11:
    v31 = (v23 + 2);
    v32 = (v22 + 2);
    v33 = (v20 + 2);
    do
    {
      v35 = *v32++;
      v34 = v35;
      v36 = *v31++;
      v26 += v19 * v34;
      v25 += v19 * v36;
      v37 = *v33++;
      v19 = v37;
      --v18;
    }

    while (v18);
    goto LABEL_13;
  }

  return result;
}

uint64_t resample_word_v_Ncpp_ap(uint64_t a1, uint64_t a2, unsigned __int8 a3, int a4, void *a5, uint64_t *a6)
{
  v6 = *a5 - 2;
  v7 = a5[1] - 2;
  v8 = *(a1 + 4);
  v9 = (a1 + 8);
  v10 = a3;
  v11 = a3 * a4;
  v12 = v11 & 0xFFFFFFFC;
  if (v12 < 1)
  {
    LODWORD(v13) = 0;
    result = 0;
    v15 = a3;
  }

  else
  {
    v13 = 0;
    LODWORD(result) = 0;
    v15 = a3;
    do
    {
      if (v8)
      {
        v16.i64[0] = 0x200000002000;
        v16.i64[1] = 0x200000002000;
        v17 = a6;
        v18 = v9;
        v19 = v8;
        do
        {
          v20 = *v17++;
          v21 = vld1_dup_s16(v18++);
          v16 = vmlaq_s32(v16, *(v20 + 4 * v13), vmovl_s16(v21));
          --v19;
        }

        while (v19);
        v22 = vshrq_n_s32(v16, 0xEuLL);
      }

      else
      {
        v22 = 0uLL;
      }

      v23 = v22.i32[0];
      if (v22.i32[0] >= 0xFFFF)
      {
        v23 = 0xFFFF;
      }

      v24 = v23 & ~(v23 >> 31);
      if (v22.i32[1] >= 0xFFFF)
      {
        v25 = 0xFFFF;
      }

      else
      {
        v25 = v22.i32[1];
      }

      if (result <= v24)
      {
        LODWORD(result) = v24;
      }

      if ((v13 | 1) == v15)
      {
        *(v7 + 2) = result;
        v7 += 2;
        v26 = v15 + v10;
        v15 += v10;
        LODWORD(result) = 0;
      }

      else
      {
        v26 = v15;
        *(v6 + 2) = v24;
        v6 += 2;
      }

      v27 = v25 & ~(v25 >> 31);
      if (result <= v27)
      {
        v28 = v25 & ~(v25 >> 31);
      }

      else
      {
        v28 = result;
      }

      if ((v13 | 2) == v26)
      {
        *(v7 + 2) = v28;
        v7 += 2;
        v26 = v15 + v10;
        v15 += v10;
        v28 = 0;
      }

      else
      {
        *(v6 + 2) = v27;
        v6 += 2;
      }

      v29 = v22.i32[2];
      if (v22.i32[2] >= 0xFFFF)
      {
        v29 = 0xFFFF;
      }

      v30 = v29 & ~(v29 >> 31);
      v31 = v22.i32[3];
      if (v22.i32[3] >= 0xFFFF)
      {
        v31 = 0xFFFF;
      }

      if (v28 <= v30)
      {
        v28 = v30;
      }

      if ((v13 | 3) == v26)
      {
        *(v7 + 2) = v28;
        v7 += 2;
        v26 = v15 + v10;
        v15 += v10;
        v28 = 0;
      }

      else
      {
        *(v6 + 2) = v30;
        v6 += 2;
      }

      v32 = v31 & ~(v31 >> 31);
      if (v28 <= v32)
      {
        result = v32;
      }

      else
      {
        result = v28;
      }

      v13 += 4;
      if (v13 == v26)
      {
        *(v7 + 2) = result;
        v7 += 2;
        v15 += v10;
        result = 0;
      }

      else
      {
        *(v6 + 2) = v32;
        v6 += 2;
      }
    }

    while (v13 < v12);
  }

  if (v13 < v11)
  {
    v13 = v13;
    do
    {
      if (v8)
      {
        v33 = 0x2000;
        v34 = a6;
        v35 = v9;
        v36 = v8;
        do
        {
          v38 = *v35++;
          v37 = v38;
          v39 = *v34++;
          v33 += *(v39 + 4 * v13) * v37;
          --v36;
        }

        while (v36);
        v40 = v33 >> 14;
      }

      else
      {
        v40 = 0;
      }

      if (v40 >= 0xFFFF)
      {
        v40 = 0xFFFF;
      }

      v41 = v40 & ~(v40 >> 31);
      if (result <= v41)
      {
        result = v41;
      }

      else
      {
        result = result;
      }

      if (++v13 == v15)
      {
        *(v7 + 2) = result;
        v7 += 2;
        v15 += v10;
        result = 0;
      }

      else
      {
        *(v6 + 2) = v41;
        v6 += 2;
      }
    }

    while (v13 != v11);
  }

  return result;
}

int *resample_word_h_3cpp_ap(int *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, unsigned int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = *a6;
    v10 = a6[1];
    v11 = 2 * a2 + 8;
    v12 = a8;
    v13.i64[0] = 0xFFFF0000FFFFLL;
    v13.i64[1] = 0xFFFF0000FFFFLL;
    do
    {
      if (a4)
      {
        v14 = v9 + *a7 * v8;
        v15 = v10 + a7[1] * v8;
        v16 = *(a5 + 8 * v8);
        v17 = a4;
        v18 = result;
        do
        {
          v19 = v18[1];
          if (v19)
          {
            v20 = (v18 + 2);
            v21 = *v18;
            v22 = (v14 + 6 * v21);
            v23 = (v15 + 2 * v21);
            v24.i64[0] = 0x200000002000;
            v24.i64[1] = 0x200000002000;
            do
            {
              v25 = (v22 + 1);
              v26 = *v22;
              v22 = (v22 + 6);
              v27.i32[0] = v26;
              v27.i16[2] = *v25;
              v27.i16[3] = *v23++;
              v28 = vld1_dup_s16(v20++);
              v24 = vmlaq_s32(v24, vmovl_s16(v28), vmovl_u16(v27));
              --v19;
            }

            while (v19);
            v29 = vshrq_n_s32(v24, 0xEuLL);
          }

          else
          {
            v29 = 0uLL;
          }

          *v16++ = vmaxq_s32(vminq_s32(v29, v13), 0);
          v18 = (v18 + v11);
          --v17;
        }

        while (v17);
      }

      ++v8;
    }

    while (v8 != v12);
  }

  return result;
}

uint64_t resample_word_v_3cpp_ap(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, uint64_t a5, uint64_t *a6)
{
  v6 = (a3 * a4) & 0xFFFFFFFC;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 4);
    v9 = (result + 8);
    v10.i64[0] = 0xFFFF0000FFFFLL;
    v10.i64[1] = 0xFFFF0000FFFFLL;
    v12 = *a5;
    v11 = *(a5 + 8);
    do
    {
      v13 = 0uLL;
      if (v8)
      {
        v14.i64[0] = 0x200000002000;
        v14.i64[1] = 0x200000002000;
        v15 = a6;
        v16 = v9;
        v17 = v8;
        do
        {
          v18 = *v15++;
          result = v18;
          v19 = vld1_dup_s16(v16++);
          v14 = vmlaq_s32(v14, *(v18 + 4 * v7), vmovl_s16(v19));
          --v17;
        }

        while (v17);
        v13 = vshrq_n_s32(v14, 0xEuLL);
      }

      v20 = vmaxq_s32(vminq_s32(v13, v10), 0);
      v12[1] = v20.i16[2];
      v12[2] = v20.i16[4];
      *v12 = v20.i16[0];
      v12 += 3;
      *v11++ = vmaxvq_u32(v20);
      v7 += 4;
    }

    while (v7 < v6);
  }

  return result;
}

uint64_t handleDefaults()
{
  get_BOOLean_property("CGPDFShouldAnnotate", copy_local_domain_value, &shouldAnnotate);
  get_BOOLean_property("CGPDFShouldCompress", copy_local_domain_value, &shouldCompress);
  get_BOOLean_property("CGPDFShouldUsePNGPredictors", copy_local_domain_value, &shouldUsePNGPredictors);
  get_integer_property("CGPDFSecurityHandlerKeyLength", copy_local_domain_value, &securityHandlerKeyLength);
  get_BOOLean_property("CGPDFContextShouldOutputAllImagesAsJPEG", copy_local_domain_value, &shouldOutputAllImagesAsJPEG);
  get_BOOLean_property("CGPDFOptimizeImagesForScreenDisplay", copy_local_domain_value, &shouldOptimizeImagesForScreenDisplay);
  result = CGPreferencesGetCGFloat("CGPDFOptimizeImagesCompressionQuality", &optimizeImagesCompressionQuality);
  didHandleDefaults = 1;
  return result;
}

CGPDFOperatorTableRef CGPDFOperatorTableRetain(CGPDFOperatorTableRef table)
{
  if (table)
  {
    CFRetain(table);
  }

  return table;
}

void CGPDFOperatorTableRelease(CGPDFOperatorTableRef table)
{
  if (table)
  {
    CFRelease(table);
  }
}

void *_CGExceptionDescription@<X0>(void *__return_ptr a1@<X8>, const char *a2@<X4>, int a3@<W0>, const char *a4@<X1>, const char *a5@<X2>, uint64_t a6@<X3>, char a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  v36 = *MEMORY[0x1E69E9840];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:fe200100](v28);
  v35[0] = 40;
  std::__put_character_sequence[abi:fe200100]<char,std::char_traits<char>>(&v29, v35, 1);
  v35[0] = 40;
  std::__put_character_sequence[abi:fe200100]<char,std::char_traits<char>>(&v29, v35, 1);
  v16 = strlen(a4);
  std::__put_character_sequence[abi:fe200100]<char,std::char_traits<char>>(&v29, a4, v16);
  v35[0] = 41;
  std::__put_character_sequence[abi:fe200100]<char,std::char_traits<char>>(&v29, v35, 1);
  std::__put_character_sequence[abi:fe200100]<char,std::char_traits<char>>(&v29, " is ", 4);
  if ((a3 - 1) > 2)
  {
    v17 = "Nil";
  }

  else
  {
    v17 = off_1E6E32550[a3 - 1];
  }

  v18 = strlen(v17);
  std::__put_character_sequence[abi:fe200100]<char,std::char_traits<char>>(&v29, v17, v18);
  v35[0] = 41;
  std::__put_character_sequence[abi:fe200100]<char,std::char_traits<char>>(&v29, v35, 1);
  if (a2)
  {
    *v35 = &a7;
    __s = 0;
    vasprintf(&__s, a2, &a7);
    std::__put_character_sequence[abi:fe200100]<char,std::char_traits<char>>(&v29, " - ", 3);
    v34 = 34;
    std::__put_character_sequence[abi:fe200100]<char,std::char_traits<char>>(&v29, &v34, 1);
    v19 = strlen(__s);
    std::__put_character_sequence[abi:fe200100]<char,std::char_traits<char>>(&v29, __s, v19);
    v34 = 34;
    std::__put_character_sequence[abi:fe200100]<char,std::char_traits<char>>(&v29, &v34, 1);
    free(__s);
  }

  if (a5)
  {
    std::__put_character_sequence[abi:fe200100]<char,std::char_traits<char>>(&v29, " - ", 3);
    v20 = basename_r(a5, v35);
    v21 = strlen(v20);
    std::__put_character_sequence[abi:fe200100]<char,std::char_traits<char>>(&v29, v20, v21);
    std::__put_character_sequence[abi:fe200100]<char,std::char_traits<char>>(&v29, " : ", 3);
    MEMORY[0x1865EE470](&v29, a6);
  }

  v22 = std::stringbuf::view[abi:fe200100](&v30);
  if (v23 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:fe200100]();
  }

  v24 = v23;
  if (v23 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v23;
  if (v23)
  {
    memmove(a1, v22, v23);
  }

  *(a1 + v24) = 0;
  v28[0] = *MEMORY[0x1E69E54D8];
  v25 = *(MEMORY[0x1E69E54D8] + 72);
  *(v28 + *(v28[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v29 = v25;
  v30 = MEMORY[0x1E69E5548] + 16;
  if (v32 < 0)
  {
    operator delete(v31[7].__locale_);
  }

  v30 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v31);
  std::iostream::~basic_iostream();
  return MEMORY[0x1865EE5C0](&v33);
}

__n128 recordPreviousInlineInfo(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    [*(a1 + 56) setLeftSpacerIndex:*(v2 + 52)];
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    [*(a1 + 56) setRightSpacerIndex:*(v3 + 52)];
  }

  if (*(a1 + 64))
  {
    [*(a1 + 56) setIsListItem:1];
    [*(a1 + 56) setListSpacerIndex:*(*(a1 + 64) + 52)];
  }

  *(a1 + 64) = *(a1 + 72);
  *(a1 + 72) = 0;
  v4 = *(a1 + 88);
  if (v4 >= 1)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      v6 = *v5 + 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 8) + 72 * *(a1 + 80);
    v8 = v7 + 72 * v4;
    do
    {
      v9 = *(v7 + 56);
      if (v9)
      {
        if (*v7 >= v6)
        {
          v10 = *v7 - v6 + 1;
        }

        else
        {
          v10 = 0;
        }

        Count = CFArrayGetCount(v9);
        v12 = Count;
        if (Count)
        {
          v13 = 0;
          do
          {
            [*(a1 + 56) anchorChunk:CFArrayGetValueAtIndex(*(v7 + 56) atWordIndex:{v13++), v10}];
          }

          while (v12 != v13);
        }
      }

      v7 += 72;
    }

    while (v7 < v8);
  }

  result = *(a1 + 96);
  *(a1 + 80) = result;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 24) = *(a1 + 32);
  *(a1 + 32) = 0;
  return result;
}

uint64_t isSplitBySpacer(uint64_t a1, uint64_t a2, int *a3)
{
  if (*(a3 + 40) == 1)
  {
    v4 = [*(a3 + 6) count];
    if (v4)
    {
      *(a3 + 7) = [*(a3 + 6) objectAtIndex:(v4 - 1)];
    }

    *(a3 + 40) = 0;
  }

  v5 = a3[4];
  v6 = *a3;
  if (v5 < a3[5] && (v7 = *(a3 + 1) + 72 * v5, v6 == *v7))
  {
    v8 = *(v7 + 64);
    if (v8 == 1)
    {
      recordPreviousInlineInfo(a3);
      *(a3 + 4) = v7;
      if (*(a3 + 3))
      {
        *(a3 + 40) = 1;
      }
    }

    else
    {
      if (*(v7 + 48) == 1 && !*(a3 + 9))
      {
        *(a3 + 9) = v7;
      }

      if (*(v7 + 56))
      {
        if (*(a3 + 13))
        {
          *(a3 + 13) = (v5 + 1) - *(a3 + 12);
        }

        else
        {
          *(a3 + 12) = v5;
          *(a3 + 13) = 1;
        }
      }
    }

    ++a3[4];
    v6 = *a3;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v6 + 1;
  return v8;
}

void excludeSpacerFromBounds(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  if (a2)
  {
    v8 = *(a2 + 8);
    v9 = *(a2 + 24);
    v10 = (a6 + fabs(a4)) * 0.00000011920929 + 1.17549435e-38;
    v21 = 0.0;
    v22 = 0;
    v11 = CGIntervalExclusion(&v21, v8, v9, a4 - v10, a6 + v10 * 2.0);
    v13 = v12;
    if (fabs(v11) == INFINITY)
    {
      v14 = *(a2 + 48);
      *(v14 + 170) = 0;
    }

    else
    {
      v15 = v21;
      if (fabs(v21) != INFINITY)
      {
        v16 = *(a1 + 8);
        v17 = *(a2 + 16);
        v20[0] = *a2;
        v20[1] = v17;
        v18 = *(a2 + 48);
        v20[2] = *(a2 + 32);
        v20[3] = v18;
        v19 = addSpacer(a1, v16, v20);
        if (v19)
        {
          *(v19 + 8) = v15;
          *(v19 + 24) = v22;
          *(a2 + 40) = v19;
        }
      }

      *(a2 + 8) = v11;
      *(a2 + 24) = v13;
      v14 = *(a2 + 48);
    }

    *(v14 + 169) = 1;
  }
}

uint64_t preferredSpacer(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3 = *(a2 + 16);
    v4 = 0.0;
    v5 = 0.0;
    if (v2 != v3)
    {
      v5 = 1.0;
      if (v3 != 0.0)
      {
        v5 = -1.0;
        if (v2 != 0.0)
        {
          v5 = (v2 - v3) / (v2 + v3);
        }
      }
    }

    v6 = *(a1 + 48);
    v7 = *(a2 + 48);
    v8 = *(a1 + 24);
    v9 = *(a2 + 24);
    if (v8 != v9)
    {
      v4 = 0.5;
      if (v9 != 0.0)
      {
        v4 = -0.5;
        if (v8 != 0.0)
        {
          v4 = (v8 - v9) / (v8 + v9) * 0.5;
        }
      }
    }

    v10 = v5 + v4;
    v11 = *(a1 + 32);
    v12 = *(a2 + 32);
    v13 = 0.0;
    v14 = 0.0;
    if (v11 != v12)
    {
      if (v12)
      {
        if (v11)
        {
          v14 = (v11 - v12) / (v11 + v12);
        }

        else
        {
          v14 = -1.0;
        }
      }

      else
      {
        v14 = 1.0;
      }
    }

    v15 = v10 + v14;
    v16 = *(v6 + 16);
    v17 = *(v7 + 16);
    if (v16 != v17)
    {
      v13 = 1.0;
      if (v17 != 0.0)
      {
        v13 = -1.0;
        if (v16 != 0.0)
        {
          v13 = (v16 - v17) / (v16 + v17);
        }
      }
    }

    v18 = *(v6 + 32);
    v19 = v15 + v13;
    v20 = *(v6 + 24);
    v21 = *(v7 + 24);
    v22 = 0.0;
    v23 = 0.0;
    if (v20 != v21)
    {
      v23 = 1.0;
      if (v21 != 0.0)
      {
        v23 = -1.0;
        if (v20 != 0.0)
        {
          v23 = (v20 - v21) / (v20 + v21);
        }
      }
    }

    v24 = v19 + v23 * 0.5;
    v25 = (*(v6 + 56) + *(v6 + 44)) * v18;
    v26 = (*(v7 + 56) + *(v7 + 44)) * v18;
    if (v25 != v26)
    {
      if (v26)
      {
        if (v25)
        {
          v22 = (v25 - v26) / (v25 + v26);
        }

        else
        {
          v22 = -1.0;
        }
      }

      else
      {
        v22 = 1.0;
      }
    }

    v27 = v24 + v22 * -2.0;
    v28 = *(v6 + 68) * v18;
    v29 = *(v7 + 68) * v18;
    v30 = 0.0;
    v31 = 0.0;
    if (v28 != v29)
    {
      v31 = 1.0;
      v32 = (v28 - v29) / (v28 + v29);
      if (!v28)
      {
        v32 = -1.0;
      }

      if (v29)
      {
        v31 = v32;
      }
    }

    v33 = *(v6 + 80) * v18;
    v34 = *(v7 + 80) * v18;
    v35 = v27 + v31 * 0.5;
    v36 = 1.0;
    v37 = -1.0;
    v38 = (v33 - v34) / (v33 + v34);
    if (!v33)
    {
      v38 = -1.0;
    }

    if (!v34)
    {
      v38 = 1.0;
    }

    if (v33 == v34)
    {
      v39 = 0.0;
    }

    else
    {
      v39 = v38;
    }

    v40 = v35 + v39;
    v41 = *(v6 + 169);
    v42 = *(v7 + 169);
    if (v41)
    {
      v37 = 0.0;
    }

    if (v42)
    {
      v36 = v37;
    }

    if (v41 != v42)
    {
      v30 = v36;
    }

    if (v40 + v30 >= 0.0)
    {
      return a1;
    }
  }

  return a2;
}

BOOL isConsistentWithNarrowWordsCommon(double *a1, double a2, double a3, double a4, double a5)
{
  v5 = a1[2];
  v6 = 0.0;
  if (fabs(a2) != INFINITY)
  {
    v6 = -a3;
    if (a3 < 0.0)
    {
      a2 = a3 + a2;
    }

    else
    {
      v6 = a3;
    }

    v7 = a2 + v6;
    if (a2 <= v5)
    {
      if (v7 < v5)
      {
        v6 = v5 - a2;
      }
    }

    else
    {
      v6 = v7 - v5;
    }
  }

  v8 = a1[5] * 0.2;
  if (v6 - a3 <= v8)
  {
    return 1;
  }

  v9 = 0.0;
  if (fabs(a4) != INFINITY)
  {
    v10 = v5 + a1[4];
    v9 = -a5;
    if (a5 < 0.0)
    {
      a4 = a5 + a4;
    }

    else
    {
      v9 = a5;
    }

    v11 = a4 + v9;
    if (a4 <= v10)
    {
      if (v11 < v10)
      {
        v9 = v10 - a4;
      }
    }

    else
    {
      v9 = v11 - v10;
    }
  }

  return v9 - a5 <= v8;
}

BOOL canSeparateWordRight(_BOOL8 result, double a2)
{
  if (result)
  {
    v2 = *(result + 48);
    LODWORD(a2) = v2[14];
    v3 = *&a2;
    v4 = v2[10];
    v5 = vcvtd_n_f64_u32(v4, 1uLL);
    if (v5 <= v3 && v2[20] + v4 >= v2[8])
    {
      LODWORD(v5) = v2[16];
      return *&v5 * 0.2 > v3;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t addSpacer(uint64_t a1, unsigned int a2, __int128 *a3)
{
  v3 = *(a1 + 4);
  if (v3 >= *a1)
  {
    return 0;
  }

  if (*(a1 + 8) < a2)
  {
    return 0;
  }

  v6 = (*(a1 + 16) + (v3 << 6));
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[3];
  v6[2] = a3[2];
  v6[3] = v9;
  *v6 = v7;
  v6[1] = v8;
  v10 = *(a1 + 8) - a2;
  v11 = a2;
  if (v10)
  {
    v12 = *(a1 + 24) + 8 * a2;
    memmove((v12 + 8), v12, 8 * v10);
    a2 = *(a1 + 8);
  }

  v13 = *(a1 + 4);
  *(*(a1 + 24) + 8 * v11) = *(a1 + 16) + (v13 << 6);
  *(a1 + 4) = v13 + 1;
  *(a1 + 8) = a2 + 1;
  return *(*(a1 + 24) + 8 * v11);
}

uint64_t segmentTextLine(int a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v6 = a3;
  if (!a3)
  {
    goto LABEL_11;
  }

  if ([**(a5 + 1) isMonospaced])
  {
    [**(a5 + 1) monospaceWidth];
    if (wordsMakeJunctionMonospaced(a2, v6, v9))
    {
      goto LABEL_11;
    }
  }

  else if ((*(v6 + 8) > 1 || (*(a2 + 12) & 0xAA) != 0 || (*(v6 + 12) & 0x55) != 0) && *(a2 + 16) + *(a2 + 32) < *(v6 + 16))
  {
    goto LABEL_11;
  }

  *(a5 + 12) = CGRectUnion(*(a5 + 12), *(v6 + 16));
  if (a1 + 2 == [**(a5 + 1) wordCount])
  {
    while (1)
    {
      ++a1;
      a2 = v6;
      v6 = 0;
LABEL_11:
      v10 = *(a5 + 6);
      v11 = *(a5 + 7);
      v12 = *(a5 + 8);
      v13 = v10 + v12;
      v14 = v11 + *(a5 + 9);
      v15 = a5[8];
      v16 = *(a5 + 3);
      v17 = (v16 + 8);
      v18 = *(v16 + 8);
      if (v15 < v18)
      {
        break;
      }

      v22 = 0;
      v20 = v10 + v12;
LABEL_33:
      v19 = v13;
LABEL_34:
      if (!v6)
      {
        goto LABEL_60;
      }

      v26 = *(v6 + 32);
      *(a5 + 3) = *(v6 + 16);
      *(a5 + 4) = v26;
      v27 = *(v6 + 16);
      v28 = *(a2 + 40) >= *(v6 + 40) ? v6 : a2;
      v29 = *(v28 + 40);
      v30 = *(v28 + 24);
      v31 = *(a5 + 1);
      v32 = a5[4];
      v33 = *(v31 + 16) + 72 * v32;
      *v33 = a1;
      *(v33 + 8) = v13;
      *(v33 + 16) = v30;
      *(v33 + 24) = v27 - v13;
      *(v33 + 32) = v29;
      *(v33 + 48) = 0;
      *(v33 + 52) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      a5[4] = v32 + 1;
      if (v20 > v13 && v19 < v27 && v22)
      {
        *(v33 + 40) = v22;
        if (v20 <= v27)
        {
          v34 = (v15 + 1);
          v35 = v22;
          do
          {
            v15 = v34;
            if ((v35[7] & 1) == 0)
            {
              v29 = v14 - v35[1];
              v35[3] = v29;
              ++*(v35 + 8);
            }

            v36 = *(a5 + 3);
            if (v15 >= *(v36 + 8))
            {
              break;
            }

            v35 = *(*(v36 + 24) + 8 * v15);
            if ((v35[7] & 1) == 0)
            {
              v29 = *v35;
              v20 = *v35 + v35[2];
              if (*v35 < v27)
              {
                v22 = mergeLinkage(v22, v35);
                *(v33 + 40) = v22;
              }
            }

            v34 = v15 + 1;
          }

          while (v20 <= v27);
        }
      }

      else
      {
        started = startSpacersAtJunction(*(a5 + 3), v15, *a5, v31, 1, *(v33 + 8), *(v33 + 16), *(v33 + 24), *(v33 + 32));
        *(v33 + 40) = *(*(*(a5 + 3) + 24) + 8 * v15);
        LODWORD(v15) = started + v15;
      }

      *(a5 + 5) = 0;
      if (a1 + 2 != [**(a5 + 1) wordCount])
      {
LABEL_60:
        a5[8] = v15;
        return 1;
      }

      a5[8] = v15;
    }

    v19 = v10 + v12;
    v20 = v10 + v12;
    while (1)
    {
      v21 = *(v16 + 24) + 8 * v15;
      v22 = *v21;
      if ((*(*v21 + 56) & 1) == 0)
      {
        break;
      }

LABEL_22:
      v15 = (v15 + 1);
      v16 = *(a5 + 3);
      v17 = (v16 + 8);
      v18 = *(v16 + 8);
      if (v15 >= v18)
      {
        goto LABEL_34;
      }
    }

    v19 = *v22;
    v20 = *v22 + v22[2];
    if (v20 > v10)
    {
      if (v19 >= v13)
      {
        *(a5 + 5) = 0;
        goto LABEL_34;
      }

      if (v19 >= v10)
      {
        if (v20 > v13)
        {
          *v22 = v13;
          v40 = v14 - v22[1];
          v22[2] = v20 - v13;
          v22[3] = v40;
          goto LABEL_34;
        }

        v24 = *(a5 + 5);
        if (!v24 || v15 != a5[8])
        {
          v22[3] = v11 - v22[1];
          *(v22 + 56) = 1;
          *(a5 + 5) = 0;
          goto LABEL_22;
        }

        v24[5] = v22[5];
        v19 = *v24;
        *v17 = v18 - 1;
        if (v18 - 1 != v15)
        {
          memmove(v21, (v21 + 8), 8 * (v18 - 1 - v15));
        }

        LODWORD(v15) = v15 - 1;
        --*(v24 + 8);
        v25 = *(v24 + 56);
        *(a5 + 5) = 0;
        if (v25)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      v23 = v22[1];
      v22[2] = v10 - v19;
      v22[3] = v14 - v23;
      if (v20 > v13)
      {
        ++*(v22 + 8);
        v38 = *(v22 + 3);
        v45 = *(v22 + 2);
        v46 = v38;
        *(a5 + 5) = v22;
        v15 = (v15 + 1);
        *&v42 = v13;
        *(&v42 + 1) = v23;
        v43 = v20 - v13;
        v44 = v14 - v23;
        v39 = addSpacer(v16, v15, &v42);
        v22 = *(a5 + 5);
        if (v39)
        {
          *(v22 + 5) = v39;
          v22 = v39;
        }

        else
        {
          *(a5 + 5) = 0;
        }

        goto LABEL_33;
      }

      *(a5 + 5) = 0;
    }

    v24 = v22;
LABEL_20:
    ++*(v24 + 8);
LABEL_21:
    v22 = v24;
    goto LABEL_22;
  }

  return 1;
}

BOOL wordsMakeJunctionMonospaced(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a2 + 8);
  if (a3 < 4.0)
  {
    if (v3 > 1 || (*(a1 + 12) & 0xAA) != 0 || (*(a2 + 12) & 0x55) != 0)
    {
      return *(a1 + 16) + *(a1 + 32) < *(a2 + 16);
    }

    return 0;
  }

  if (v3 < 2)
  {
    return 0;
  }

  return rint((*(a2 + 16) - *(a1 + 16) - *(a1 + 32)) / a3) > 1;
}

double *mergeLinkage(double *a1, double *a2)
{
  v2 = 0;
  if (a1)
  {
    v3 = a1;
    do
    {
      ++v2;
      v3 = *(v3 + 5);
    }

    while (v3);
  }

  v4 = 0;
  if (a2)
  {
    v5 = a2;
    do
    {
      ++v4;
      v5 = *(v5 + 5);
    }

    while (v5);
  }

  v6 = a1;
  if (v2 > v4)
  {
    do
    {
      v6 = *(v6 + 5);
      --v2;
    }

    while (v2 > v4);
    v2 = v4;
  }

  v7 = a2;
  if (v4 > v2)
  {
    v7 = a2;
    do
    {
      v7 = *(v7 + 5);
      --v4;
    }

    while (v4 > v2);
  }

  while (v6 != v7)
  {
    v6 = *(v6 + 5);
    v7 = *(v7 + 5);
  }

  if (v6 == a2)
  {
    return a1;
  }

  if (v6 == a1)
  {
    return a2;
  }

  v8 = *a1;
  if (*a1 <= *a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
  }

  if (*a1 > *a2)
  {
    v10 = a1;
  }

  else
  {
    v8 = *a2;
    v10 = a2;
  }

  v11 = v9;
  while (1)
  {
    v12 = v11;
    v11 = *(v11 + 5);
    if (v11 == v6 || v11 == 0)
    {
      break;
    }

    v14 = *v11;
    if (*v11 > v8)
    {
      *(v12 + 5) = v10;
      for (i = *(v10 + 5); i != v6 && i != 0; i = *(i + 40))
      {
        v8 = *i;
        if (*i > v14)
        {
          break;
        }

        v10 = i;
      }

      *(v10 + 5) = v11;
      v17 = i == v6 || i == 0;
      v10 = i;
      if (v17)
      {
        return v9;
      }
    }
  }

  *(v12 + 5) = v10;
  return v9;
}

uint64_t startSpacersAtJunction(uint64_t a1, uint64_t a2, int a3, id *a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v9 = a5;
  v10 = a6;
  v13 = a6 + a8;
  v14 = a7 + a9;
  v62 = 0;
  if (a5 >= 0xFB)
  {
    v25 = a7;
    v15 = 0;
    v37 = 0;
    v36 = v13 - a6;
    v35 = v14 - a7;
    goto LABEL_28;
  }

  v15 = 0;
  if (!a3)
  {
LABEL_23:
    [*a4 bounds];
    v25 = v34;
    v35 = v14 - v34;
    goto LABEL_24;
  }

  v16 = a3 - 1;
  v17 = a4 - 3;
  while (1)
  {
    [*v17 bounds];
    v22 = v18 + v20;
    if (v13 > v18 && v10 < v22)
    {
      break;
    }

LABEL_21:
    ++v9;
    --v16;
    v17 -= 3;
    if (v16 == -1)
    {
      a4 = v17 + 3;
      goto LABEL_23;
    }
  }

  v24 = v18;
  v25 = v19 + v21;
  if (v10 < v18)
  {
    if (v13 > v22)
    {
      started = startSpacersAtJunction(a1, a2, v16, v17, (v9 + 1), v22, v19, v13 - v22, v14 - v19);
      v27 = started;
      if (v15 && started)
      {
        v28 = *(a1 + 24);
        v29 = *(v28 + 8 * (started + a2 - 1));
        *(v29 + 40) = mergeLinkage(*(v29 + 40), *(v28 + 8 * (started + a2)));
      }

      LODWORD(v15) = v27 + v15;
    }

    if (v14 < v25)
    {
      v14 = v25;
    }

    v30 = passSpacersThroughJunctions(a1, a2, v16, v17, v9, &v62, v10, v25, v13 - v10, v14 - v25);
    v31 = v30;
    if (v15 && v30)
    {
      v32 = *(a1 + 24);
      v33 = *(v32 + 8 * (v30 + a2 - 1));
      *(v33 + 40) = mergeLinkage(*(v33 + 40), *(v32 + 8 * (v30 + a2)));
    }

    v15 = (v31 + v15);
    v13 = v24;
    goto LABEL_21;
  }

  if (v13 <= v22)
  {
    v39 = v13 - v10;
  }

  else
  {
    v39 = v13 - v22;
    v40 = startSpacersAtJunction(a1, a2, v16, v17, (v9 + 1), v18 + v20, v19, v13 - v22, v14 - v19);
    v41 = v40;
    if (v15 && v40)
    {
      v42 = *(a1 + 24);
      v43 = *(v42 + 8 * (v40 + a2 - 1));
      *(v43 + 40) = mergeLinkage(*(v43 + 40), *(v42 + 8 * (v40 + a2)));
    }

    v15 = (v41 + v15);
    v10 = v22;
  }

  if (v14 >= v25)
  {
    v44 = v14;
  }

  else
  {
    v44 = v25;
  }

  v35 = v44 - v25;
  v45 = passSpacersThroughJunctions(a1, a2, v16, v17, v9, &v62, v10, v25, v39, v44 - v25);
  v46 = v45;
  if (v15 && v45)
  {
    v47 = *(a1 + 24);
    v48 = v45 + a2;
    v49 = *(v47 + 8 * (v45 + a2 - 1));
    *(v49 + 40) = mergeLinkage(*(v49 + 40), *(v47 + 8 * v48));
    return (v46 + v15);
  }

  if (v13 > v22 || v45 != 0)
  {
    return (v46 + v15);
  }

LABEL_24:
  v36 = v13 - v10;
  if (v15)
  {
    v37 = *(*(a1 + 24) + 8 * a2);
  }

  else
  {
    v37 = 0;
  }

LABEL_28:
  v60 = 0;
  v59 = 0;
  *&v51 = v10;
  *(&v51 + 1) = v25;
  v52 = v36;
  v53 = v35;
  v54 = v9;
  v55 = 0;
  v56 = v37;
  v57 = 0;
  v58 = 0;
  v61 = 0;
  if (addSpacer(a1, a2, &v51))
  {
    if (v62)
    {
      mergeLinkage(*(*(a1 + 24) + 8 * a2), v62);
    }

    return (v15 + 1);
  }

  return v15;
}

uint64_t passSpacersThroughJunctions(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, double **a6, double a7, double a8, double a9, double a10)
{
  v11 = a2;
  v13 = a7 + a9;
  v14 = a8 + a10;
  v15 = 72 * *(a4 + 8);
  do
  {
    v16 = v15 - 72;
    if (!v15)
    {
      return 0;
    }

    v17 = *(a4 + 16);
    v18 = v17 + v15;
    v19 = *(v18 - 64);
    v20 = v19 + *(v18 - 48);
    if (v20 <= a7)
    {
      return 0;
    }

    v15 = v16;
  }

  while (v19 >= v13);
  v21 = v17 + v16;
  if (v19 >= a7)
  {
    a7 = v19;
  }

  if (v20 <= v13)
  {
    v13 = v20;
  }

  started = startSpacersAtJunction(a1, a2, a3, a4, (a5 + 1), a7, *(v21 + 16), v13 - a7, v14 - *(v21 + 16));
  v23 = *(v21 + 40);
  if (started)
  {
    v23 = mergeLinkage(*(v21 + 40), *(*(a1 + 24) + 8 * v11));
    *(v21 + 40) = v23;
  }

  if (*a6)
  {
    v23 = mergeLinkage(*a6, v23);
  }

  *a6 = v23;
  return started;
}

uint64_t countJunctions(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if ((*(a2 + 8) > 1 || (*(a1 + 12) & 0xAA) != 0 || (*(a2 + 12) & 0x55) != 0) && *(a1 + 16) + *(a1 + 32) < *(a2 + 16))
  {
    ++*a4;
  }

  return 1;
}

uint64_t countJunctionsMonospaced(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (wordsMakeJunctionMonospaced(a1, a2, *(a4 + 8)))
  {
    ++**a4;
  }

  return 1;
}

uint64_t compareSegmentationsBottomAscendingLeftDescending(id *a1, id *a2)
{
  [*a1 bounds];
  v4 = v3;
  v6 = v5;
  [*a2 bounds];
  if (v6 < v8)
  {
    return 0xFFFFFFFFLL;
  }

  if (v6 > v8)
  {
    return 1;
  }

  if (v4 > v7)
  {
    return 0xFFFFFFFFLL;
  }

  return v4 < v7;
}

uint64_t PDFImageEmitData(uint64_t a1, CGImage *image)
{
  v71 = *MEMORY[0x1E69E9840];
  if (image)
  {
    v4 = *(image + 5);
  }

  else
  {
    v4 = 0;
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v63 = 0u;
  v61 = v4;
  BYTE8(v66) = (CGImageGetBitmapInfo(image) >> 8) & 1;
  if (image && (*(image + 39) & 2) != 0)
  {
    v6 = 1;
    v62 = 1;
LABEL_11:
    v8 = *(image + 7);
    v7 = *(image + 8);
    *&v64 = v8;
    goto LABEL_13;
  }

  ColorSpace = CGImageGetColorSpace(image);
  if (ColorSpace)
  {
    v6 = *(*(ColorSpace + 3) + 48);
  }

  else
  {
    v6 = 0;
  }

  v62 = v6;
  if (image)
  {
    goto LABEL_11;
  }

  v7 = 0;
  v8 = 0;
  *&v64 = 0;
LABEL_13:
  v9 = v7 - v8 * v6;
  v10 = CGImageGetBitmapInfo(image) & 0x1F;
  if (v10)
  {
    if (v10 == 6)
    {
      v63 = v9;
      if (image)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }

    if (v10 != 5)
    {
      v63 = 0uLL;
      if (image)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }

  *&v63 = 0;
  *(&v63 + 1) = v9;
  if (image)
  {
LABEL_17:
    v11 = *(image + 9);
    goto LABEL_20;
  }

LABEL_19:
  v11 = 0;
LABEL_20:
  *(&v64 + 1) = v11;
  if (v8 <= 8)
  {
    if (((1 << v8) & 0x116) != 0)
    {
      *&v65 = v8;
      v12 = v8;
      goto LABEL_30;
    }

    if (((1 << v8) & 0xE0) != 0)
    {
      v12 = 8;
LABEL_29:
      *&v65 = v12;
      goto LABEL_30;
    }

    if (v8 == 3)
    {
      v12 = 4;
      goto LABEL_29;
    }
  }

  if (v8 > 0x20)
  {
    PDFDocumentPrintf(*(a1 + 8), "/BitsPerComponent 1");
    PDFStreamBeginData(*(a1 + 16));
    v48 = *(a1 + 16);

    return PDFStreamEndData(v48);
  }

  *&v65 = 16;
  v49 = *(a1 + 8);
  v50 = *(v49 + 4);
  if (v50 <= 0)
  {
    *(v49 + 4) = 1;
    v51 = (v49 + 8);
  }

  else
  {
    if (v50 != 1)
    {
      goto LABEL_82;
    }

    v52 = *(v49 + 8);
    v51 = (v49 + 8);
    if (v52 > 4)
    {
      goto LABEL_82;
    }
  }

  *v51 = 5;
LABEL_82:
  v12 = 16;
LABEL_30:
  v13 = (v6 * v4 * v12 + 7) >> 3;
  *(&v65 + 1) = v13;
  *&v66 = 0;
  *&v67 = 0;
  v58 = v4;
  if (v8 >= v12)
  {
    v15 = 0;
    if (v8 > v12)
    {
      *&v66 = v8 - v12;
    }
  }

  else
  {
    v14 = ~(-1 << v8);
    v15 = malloc_type_malloc(2 * v14 + 2, 0x1000040BDFB0063uLL);
    __CFSetLastAllocationEventName();
    v16 = 0;
    *&v67 = v15;
    v17 = v14 >> 1;
    do
    {
      if (v8)
      {
        v18 = v17 / v14;
      }

      else
      {
        LOWORD(v18) = 0;
      }

      *&v15[v16] = v18;
      v16 += 2;
      v17 += ~(-1 << v12);
    }

    while (2 * v14 + 2 != v16);
  }

  v19 = malloc_type_malloc(v11, 0x97665255uLL);
  __CFSetLastAllocationEventName();
  *(&v67 + 1) = v19;
  PDFDocumentPrintf(*(a1 + 8), "/BitsPerComponent %d", v12);
  v20 = *(a1 + 8);
  if (*(v20 + 73) != 1)
  {
    goto LABEL_43;
  }

  v21 = 0;
  if (v12 == 8 && (*(v20 + 89) & 1) != 0)
  {
    v22 = CGImageGetColorSpace(image);
    if (CGColorSpaceGetType(v22) == 7)
    {
LABEL_43:
      v21 = 0;
      goto LABEL_44;
    }

    PDFDocumentPrintf(*(a1 + 8), "/DecodeParms <<");
    PDFDocumentPrintf(*(a1 + 8), "/Predictor 15");
    PDFDocumentPrintf(*(a1 + 8), "/Colors %d", v6);
    PDFDocumentPrintf(*(a1 + 8), "/Columns %d", v58);
    PDFDocumentPrintf(*(a1 + 8), "/BitsPerComponent %d", 8);
    PDFDocumentPrintf(*(a1 + 8), ">>");
    v21 = 1;
  }

LABEL_44:
  PDFStreamBeginData(*(a1 + 16));
  v23 = CGImageGetBitmapInfo(image) & 0x7000;
  DataProviderInternal = CGImageGetDataProviderInternal(image, 0);
  if (v23 == 0x2000)
  {
    v25 = 4;
  }

  else
  {
    if (v23 != 4096)
    {
      v26 = CGDataProviderRetain(DataProviderInternal);
      goto LABEL_50;
    }

    v25 = 2;
  }

  v26 = CGDataProviderCreateWithSwappedProvider(DataProviderInternal, v25);
LABEL_50:
  v69 = 0;
  v70 = 0;
  provider = v26;
  v27 = CGAccessSessionCreate(v26);
  if (v21)
  {
    v28 = v12 * v6 + 7;
    v29 = v13 + (v28 >> 3);
    v30 = malloc_type_calloc(1uLL, v29, 0xD099ED58uLL);
    __CFSetLastAllocationEventName();
    v69 = v30;
    v31 = malloc_type_calloc(1uLL, v29, 0x2C83ADFAuLL);
    __CFSetLastAllocationEventName();
    v70 = v31;
    if (image)
    {
      v55 = *(image + 6);
      if (v55)
      {
        v56 = a1;
        v32 = 0;
        v33 = v28 >> 3;
        v54 = v27;
        do
        {
          v59 = v32 + 1;
          v60 = (&v69)[v32 & 1];
          v34 = (&v69)[(v32 + 1) & 1];
          unpackImageRow(v27, &v61, &v34[v33]);
          v57 = *(v56 + 16);
          v35 = *(&v65 + 1);
          v36 = malloc_type_malloc(*(&v65 + 1), 0xA0994FFAuLL);
          v37 = 0;
          LOBYTE(v38) = 0;
          v39 = 0xFFFFFFFFLL;
          v40 = &off_1EF240460;
          v41 = 5;
          do
          {
            v42 = (*v40)(&v34[v33], &v60[v33], v35, v33, v39, v36);
            if (v42 < v39)
            {
              v43 = v42;
              free(v37);
              v38 = *(v40 - 2);
              if (!v43)
              {
                v68 = *(v40 - 2);
                goto LABEL_63;
              }

              v37 = v36;
              v36 = malloc_type_malloc(v35, 0xA15DB724uLL);
              v39 = v43;
            }

            v40 += 2;
            --v41;
          }

          while (v41);
          v68 = v38;
          if (v36 != v37)
          {
            free(v36);
          }

          v36 = v37;
LABEL_63:
          v27 = v54;
          CGDataConsumerPutBytes(*(v57 + 24), &v68, 1);
          CGDataConsumerPutBytes(*(v57 + 24), v36, v35);
          free(v36);
          v32 = v59;
        }

        while (v59 != v55);
        v30 = v69;
        v31 = v70;
        v19 = *(&v67 + 1);
        v15 = v67;
        a1 = v56;
      }
    }

    free(v31);
    v44 = v30;
  }

  else
  {
    v45 = malloc_type_calloc(1uLL, v13, 0xF13C99B4uLL);
    __CFSetLastAllocationEventName();
    v69 = v45;
    if (image)
    {
      for (i = *(image + 6); i; --i)
      {
        unpackImageRow(v27, &v61, v45);
        CGDataConsumerPutBytes(*(*(a1 + 16) + 24), v45, v13);
      }
    }

    v44 = v45;
  }

  free(v44);
  CGAccessSessionRelease(v27);
  CGDataProviderRelease(provider);
  free(v19);
  free(v15);
  return PDFStreamEndData(*(a1 + 16));
}

void unpackImageRow(uint64_t *a1, uint64_t a2, char *a3)
{
  if (*(a2 + 16) == 0 && *(a2 + 32) == *(a2 + 48) && (*(a2 + 72) & 1) == 0)
  {
    v72 = *(a2 + 56);
    v73 = *(a2 + 40);
    if (v72 > v73)
    {
      _CGHandleAssert("unpackImageRow", 120, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/PDF/Images/PDFImageEmit.c", "info->dstBytesPerRow <= info->srcBytesPerRow", "dest bpr %lu  src bpr: %lu", *(a2 + 56), v73);
    }

    CGAccessSessionGetBytes(a1, a3, v72);
    v74 = *(a2 + 56);
    v75 = *(a2 + 40);
    if (v75 > v74)
    {
      v76 = *(a2 + 88);

      CGAccessSessionGetBytes(a1, v76, v75 - v74);
    }

    return;
  }

  CGAccessSessionGetBytes(a1, *(a2 + 88), *(a2 + 40));
  v6 = *(a2 + 88);
  v7 = *(a2 + 40);
  v8 = malloc_type_malloc(0x28uLL, 0x1050040F264A4C2uLL);
  *v8 = v6;
  v8[2] = &v6[v7];
  *(v8 + 6) = 0;
  v8[4] = 0;
  v9 = malloc_type_malloc(0x28uLL, 0x1050040F264A4C2uLL);
  v9[1] = a3;
  v9[2] = 0;
  *(v9 + 6) = 0;
  v9[4] = 0;
  if (!*a2)
  {
    goto LABEL_94;
  }

  v10 = 0;
  do
  {
    v11 = *(a2 + 16);
    if (v11)
    {
      v12 = v11 - 24;
      if (v11 <= 0x18)
      {
        v19 = v8[4];
        v12 = *(a2 + 16);
      }

      else
      {
        v13 = v8[4];
        if (v13 > 0x17)
        {
          v17 = v8[4];
        }

        else
        {
          v14 = v8[2];
          v15 = *(v8 + 6);
          v16 = *v8;
          do
          {
            v15 <<= 8;
            *(v8 + 6) = v15;
            if (v16 < v14)
            {
              *v8 = v16 + 1;
              v15 |= *v16;
              *(v8 + 6) = v15;
              ++v16;
            }

            v17 = v13 + 8;
            v8[4] = (v13 + 8);
            _CF = v13 >= 0x10;
            v13 += 8;
          }

          while (!_CF);
        }

        v19 = (v17 - 24);
        v8[4] = (v17 - 24);
      }

      if (v19 < v12)
      {
        v20 = v8[2];
        v21 = *(v8 + 6);
        v22 = *v8;
        do
        {
          v21 <<= 8;
          *(v8 + 6) = v21;
          if (v22 < v20)
          {
            *v8 = v22 + 1;
            v21 |= *v22;
            *(v8 + 6) = v21;
            ++v22;
          }

          v19 += 8;
          v8[4] = v19;
        }

        while (v19 < v12);
      }

      v8[4] = &v19[-v12];
    }

    v23 = *(a2 + 8);
    if (v23)
    {
      for (i = 0; i < v23; ++i)
      {
        v25 = *(a2 + 32);
        v26 = v25 - 24;
        if (v25 <= 0x18)
        {
          v32 = 0;
          v33 = v8[4];
          v26 = *(a2 + 32);
        }

        else
        {
          v27 = v8[4];
          if (v27 >= 0x18)
          {
            v29 = *(v8 + 6);
          }

          else
          {
            v28 = v8[2];
            v29 = *(v8 + 6);
            v30 = v8[4];
            v31 = *v8;
            do
            {
              v29 <<= 8;
              *(v8 + 6) = v29;
              if (v31 < v28)
              {
                *v8 = v31 + 1;
                v29 |= *v31;
                *(v8 + 6) = v29;
                ++v31;
              }

              v27 = v30 + 8;
              v8[4] = (v30 + 8);
              _CF = v30 >= 0x10;
              v30 += 8;
            }

            while (!_CF);
          }

          v33 = v27 - 24;
          v8[4] = (v27 - 24);
          v32 = ((v29 >> (v27 - 24)) & 0xFFFFFF) << v26;
        }

        if (v33 >= v26)
        {
          v35 = *(v8 + 6);
        }

        else
        {
          v34 = v8[2];
          v35 = *(v8 + 6);
          v36 = *v8;
          do
          {
            v35 <<= 8;
            *(v8 + 6) = v35;
            if (v36 < v34)
            {
              *v8 = v36 + 1;
              v35 |= *v36;
              *(v8 + 6) = v35;
              ++v36;
            }

            v33 += 8;
            v8[4] = v33;
          }

          while (v33 < v26);
        }

        v37 = (v33 - v26);
        v8[4] = v37;
        LODWORD(v38) = (v35 >> v37) & (0xFFFFFFFF >> -v26) | v32;
        if (*(a2 + 72) == 1)
        {
          if (v25 == 16)
          {
            v40 = *(a2 + 48);
            __asm { FCMP            H2, #0 }

            if (_NF)
            {
LABEL_65:
              v44 = 0;
              LOWORD(v41) = 0;
              goto LABEL_54;
            }

            v41 = ~(-1 << v40);
            if (_H2 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
            {
LABEL_67:
              v44 = v41 & 0x7FFF0000;
              goto LABEL_54;
            }

            __asm { FCVT            S2, H2 }

            goto LABEL_69;
          }

          if (v25 == 32)
          {
            _S2 = v38;
            v40 = *(a2 + 48);
            if (v38 < 0.0)
            {
              goto LABEL_65;
            }

            v41 = ~(-1 << v40);
            if (_S2 > 1.0)
            {
              goto LABEL_67;
            }

LABEL_69:
            v41 = (_S2 * v41);
            v44 = v41 & 0xFFFF0000;
            goto LABEL_54;
          }
        }

        v42 = *(a2 + 80);
        if (v42)
        {
          v43 = 0;
          LOWORD(v38) = *(v42 + 2 * LODWORD(v38));
        }

        else
        {
          v43 = LODWORD(v38) & 0xFFFF0000;
        }

        v41 = (v43 | LOWORD(v38)) >> *(a2 + 64);
        v44 = v41 & 0xFFFF0000;
        v40 = *(a2 + 48);
LABEL_54:
        v45 = v41 | v44;
        if (v40 >= 0x19)
        {
          v46 = v9[4];
          if (v46 >= 8)
          {
            do
            {
              v47 = v46 - 8;
              v9[4] = v47;
              LODWORD(v47) = *(v9 + 6) >> v47;
              v48 = v9[1];
              v9[1] = v48 + 1;
              *v48 = v47;
              v46 = v9[4];
            }

            while (v46 > 7);
          }

          v40 -= 24;
          *(v9 + 6) = (v45 >> v40) & 0xFFFFFF | (*(v9 + 6) << 24);
          for (j = v46 | 0x18; j > 7; j = v9[4])
          {
LABEL_59:
            v9[4] = j - 8;
            v50 = *(v9 + 6) >> (j - 8);
            v51 = v9[1];
            v9[1] = v51 + 1;
            *v51 = v50;
          }

          v23 = *(a2 + 8);
          goto LABEL_61;
        }

        j = v9[4];
        if (j >= 8)
        {
          goto LABEL_59;
        }

LABEL_61:
        *(v9 + 6) = (0xFFFFFFFF >> -v40) & v45 | (*(v9 + 6) << v40);
        v9[4] = j + v40;
      }
    }

    v56 = *(a2 + 24);
    if (v56)
    {
      v57 = v56 - 24;
      if (v56 <= 0x18)
      {
        v63 = v8[4];
        v57 = *(a2 + 24);
      }

      else
      {
        v58 = v8[4];
        if (v58 > 0x17)
        {
          v62 = v8[4];
        }

        else
        {
          v59 = v8[2];
          v60 = *(v8 + 6);
          v61 = *v8;
          do
          {
            v60 <<= 8;
            *(v8 + 6) = v60;
            if (v61 < v59)
            {
              *v8 = v61 + 1;
              v60 |= *v61;
              *(v8 + 6) = v60;
              ++v61;
            }

            v62 = v58 + 8;
            v8[4] = (v58 + 8);
            _CF = v58 >= 0x10;
            v58 += 8;
          }

          while (!_CF);
        }

        v63 = (v62 - 24);
        v8[4] = (v62 - 24);
      }

      if (v63 < v57)
      {
        v64 = v8[2];
        v65 = *(v8 + 6);
        v66 = *v8;
        do
        {
          v65 <<= 8;
          *(v8 + 6) = v65;
          if (v66 < v64)
          {
            *v8 = v66 + 1;
            v65 |= *v66;
            *(v8 + 6) = v65;
            ++v66;
          }

          v63 += 8;
          v8[4] = v63;
        }

        while (v63 < v57);
      }

      v8[4] = &v63[-v57];
    }

    ++v10;
  }

  while (v10 < *a2);
  for (k = v9[4]; k; v9[4] = k)
  {
    m = k;
    if (k >= 8)
    {
      for (m = k; m > 7; m = v9[4])
      {
        v69 = m - 8;
        v9[4] = v69;
        LODWORD(v69) = *(v9 + 6) >> v69;
        v70 = v9[1];
        v9[1] = v70 + 1;
        *v70 = v69;
      }
    }

    v71 = -k & 7;
    *(v9 + 6) <<= v71;
    k = m + v71;
  }

LABEL_94:
  free(v9);

  free(v8);
}

uint64_t none_filter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  if (!a3)
  {
    return 0;
  }

  v6 = result;
  LODWORD(result) = 0;
  while (1)
  {
    v8 = *v6++;
    v7 = v8;
    *a6 = v8;
    v9 = 256 - v8;
    if ((v8 & 0x80u) != 0)
    {
      v7 = v9;
    }

    result = (v7 + result);
    if (result > a5)
    {
      break;
    }

    ++a6;
    if (!--a3)
    {
      return result;
    }
  }

  return a5;
}

uint64_t sub_filter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  if (!a3)
  {
    return 0;
  }

  v6 = result;
  LODWORD(result) = 0;
  while (1)
  {
    v7 = *v6 - v6[-a4];
    v8 = v7;
    *a6 = v7;
    v9 = v7;
    v10 = 256 - v7;
    if (v8 >= 0)
    {
      v10 = v9;
    }

    result = (v10 + result);
    if (result > a5)
    {
      break;
    }

    ++v6;
    ++a6;
    if (!--a3)
    {
      return result;
    }
  }

  return a5;
}

uint64_t up_filter(uint64_t result, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  if (!a3)
  {
    return 0;
  }

  v6 = result;
  LODWORD(result) = 0;
  while (1)
  {
    v8 = *v6++;
    v7 = v8;
    v9 = *a2++;
    v10 = v7 - v9;
    v11 = v10;
    *a6 = v10;
    v12 = v10;
    v13 = 256 - v10;
    if (v11 >= 0)
    {
      v13 = v12;
    }

    result = (v13 + result);
    if (result > a5)
    {
      break;
    }

    ++a6;
    if (!--a3)
    {
      return result;
    }
  }

  return a5;
}

uint64_t avg_filter(uint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  if (!a3)
  {
    return 0;
  }

  v6 = result;
  LODWORD(result) = 0;
  while (1)
  {
    v7 = *a2++;
    v8 = *v6 - ((v7 + v6[-a4]) >> 1);
    v9 = v8;
    *a6 = v8;
    v10 = v8;
    v11 = 256 - v8;
    if (v9 >= 0)
    {
      v11 = v10;
    }

    result = (v11 + result);
    if (result > a5)
    {
      break;
    }

    ++v6;
    ++a6;
    if (!--a3)
    {
      return result;
    }
  }

  return a5;
}

uint64_t paeth_filter(uint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  if (!a3)
  {
    return 0;
  }

  v6 = result;
  LODWORD(result) = 0;
  while (1)
  {
    v7 = v6[-a4];
    v8 = a2[-a4];
    v9 = *a2;
    v10 = v9 - v8;
    if (v9 - v8 < 0)
    {
      v10 = v8 - v9;
    }

    v11 = v7 - v8;
    if (v7 - v8 < 0)
    {
      v11 = v8 - v7;
    }

    v12 = v9 + v7 - v8 - v8;
    if (v12 < 0)
    {
      v12 = v8 - (v9 + v7 - v8);
    }

    if (v11 <= v12)
    {
      LOBYTE(v8) = *a2;
    }

    if (v10 > v12 || v10 > v11)
    {
      LOBYTE(v7) = v8;
    }

    v14 = *v6 - v7;
    v15 = v14;
    *a6 = v14;
    v16 = v14;
    v17 = 256 - v14;
    if (v15 >= 0)
    {
      v17 = v16;
    }

    result = (v17 + result);
    if (result > a5)
    {
      break;
    }

    ++v6;
    ++a2;
    ++a6;
    if (!--a3)
    {
      return result;
    }
  }

  return a5;
}

void CGContextSetShadow(CGContextRef c, CGSize offset, CGFloat blur)
{
  height = offset.height;
  width = offset.width;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v8 = CGColorCreate(DeviceRGB, CGContextSetShadow_components);
  CGColorSpaceRelease(DeviceRGB);
  v10.width = width;
  v10.height = height;
  CGContextSetShadowWithColor(c, v10, blur, v8);
  if (v8)
  {

    CFRelease(v8);
  }
}

void CGContextSetFocusRingWithColor(uint64_t a1, const void *a2, const CGRect *a3, double a4)
{
  v8 = 0u;
  memset(&v11[16], 0, 32);
  DWORD2(v8) = 2;
  v9 = 0x3FE999999999999ALL;
  v10 = a4;
  *v11 = 0x3FE0000000000000uLL;
  v5 = &CGRectZero;
  if (a3)
  {
    v5 = a3;
  }

  size = v5->size;
  *&v11[8] = v5->origin;
  *&v11[24] = size;
  *&v11[40] = -1;
  FocusRingWithColor = CGStyleCreateFocusRingWithColor(&v8, a2);
  CGContextSetStyle(a1, FocusRingWithColor);
  if (FocusRingWithColor)
  {
    CFRelease(FocusRingWithColor);
  }
}

void CGContextBeginPage(CGContextRef c, const CGRect *mediaBox)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      v3 = *(c + 22);
      *(c + 22) = v3 + 1;
      if (v3)
      {
        CGPostError("%s: Don't nest calls to this function -- the results will not be what you expect.", "CGContextBeginPage");
      }

      else
      {
        if (*(c + 6) == 1)
        {
          CGContextResetTopGState(c);
        }

        if (mediaBox)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CGCFDictionarySetRect(Mutable, @"MediaBox", mediaBox->origin.x, mediaBox->origin.y, mediaBox->size.width, mediaBox->size.height);
        }

        else
        {
          Mutable = 0;
        }

        v7 = *(c + 5);
        if (v7)
        {
          v8 = *(v7 + 152);
          if (v8)
          {
            v8();
          }
        }

        if (Mutable)
        {

          CFRelease(Mutable);
        }
      }

      return;
    }

    v4 = c;
  }

  else
  {
    v4 = 0;
  }

  handle_invalid_context("CGContextBeginPage", v4);
}

void CGContextEndPage(CGContextRef c)
{
  if (!c)
  {
    v3 = 0;

    goto LABEL_7;
  }

  if (*(c + 4) != 1129601108)
  {
    v3 = c;

LABEL_7:
    handle_invalid_context("CGContextEndPage", v3);
    return;
  }

  v2 = *(c + 22) - 1;
  *(c + 22) = v2;
  if (v2)
  {
    CGPostError("%s: Don't nest calls to this function -- the results will not be what you expect.", "CGContextEndPage");
  }

  else
  {
    v4 = *(c + 5);
    if (v4)
    {
      v5 = *(v4 + 160);
      if (v5)
      {

        v5();
      }
    }
  }
}

void CGContextFlush(CGContextRef c)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      v2 = *(c + 7);
      if (v2)
      {
        v2(c);
      }

      v3 = *(c + 5);
      if (v3)
      {
        v4 = *(v3 + 168);
        if (v4)
        {

          v4();
        }
      }

      return;
    }

    v5 = c;
  }

  else
  {
    v5 = 0;
  }

  handle_invalid_context("CGContextFlush", v5);
}

void CGContextSynchronize(CGContextRef c)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      v1 = *(c + 5);
      if (v1)
      {
        v2 = *(v1 + 168);
        if (v2)
        {
          v2();
        }
      }
    }

    else
    {
      handle_invalid_context("CGContextSynchronize", c);
    }
  }

  else
  {
    handle_invalid_context("CGContextSynchronize", 0);
  }
}

double CGContextSynchronizeAttributes(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      v1 = *(a1 + 40);
      if (v1)
      {
        v2 = *(v1 + 168);
        if (v2)
        {
          v2();
        }
      }
    }

    else
    {
      handle_invalid_context("CGContextSynchronizeAttributes", a1);
    }
  }

  else
  {
    handle_invalid_context("CGContextSynchronizeAttributes", 0);
  }

  return result;
}

double CGContextWait(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      v1 = *(a1 + 40);
      if (v1)
      {
        v2 = *(v1 + 168);
        if (v2)
        {
          v2();
        }
      }
    }

    else
    {
      handle_invalid_context("CGContextWait", a1);
    }
  }

  else
  {
    handle_invalid_context("CGContextWait", 0);
  }

  return result;
}

double CGContextSetFlush(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      *(a1 + 56) = a2;
    }

    else
    {
      handle_invalid_context("CGContextSetFlush", a1);
    }
  }

  else
  {
    handle_invalid_context("CGContextSetFlush", 0);
  }

  return result;
}

void CGContextDrawDisplayList(uint64_t a1, CFTypeRef cf, __CFDictionary *a3)
{
  if (!a1)
  {
    v7 = 0;
LABEL_14:

    handle_invalid_context("CGContextDrawDisplayList", v7);
    return;
  }

  if (*(a1 + 16) != 1129601108)
  {
    v7 = a1;
    goto LABEL_14;
  }

  if (cf && *(cf + 86) != *(cf + 87) && *(cf + 11) != INFINITY && *(cf + 12) != INFINITY)
  {
    if (a3)
    {
      CGDisplayList = CG::DisplayList::createCGDisplayList(cf, a3);
      if (!CGDisplayList)
      {
        return;
      }
    }

    else
    {
      CGDisplayList = CFRetain(cf);
    }

    CGDisplayListDelegateDrawDisplayList(*(a1 + 40), *(a1 + 112), *(a1 + 96), CGDisplayList, v6);
    if (CGDisplayList)
    {

      CFRelease(CGDisplayList);
    }
  }
}

double CGContextGetRenderingResolution(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return fmax(*(*(a1 + 112) + 8), *(*(a1 + 112) + 16));
  }

  handle_invalid_context("CGContextGetRenderingResolution", a1);
  return 0.0;
}

double CGContextSetRenderingResolution(uint64_t a1, double a2)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v2 = *(a1 + 112);
    v3 = 72.0;
    v4 = 432.0;
    if (a2 <= 432.0)
    {
      v4 = a2;
    }

    v5 = 432.0;
    if (a2 <= 432.0)
    {
      v5 = a2;
    }

    v6 = a2 < 72.0;
    if (a2 >= 72.0)
    {
      result = v4;
    }

    else
    {
      result = 72.0;
    }

    if (!v6)
    {
      v3 = v5;
    }

    *(v2 + 8) = result;
    *(v2 + 16) = v3;
  }

  else
  {
    handle_invalid_context("CGContextSetRenderingResolution", a1);
  }

  return result;
}

void CGContextSetAllowsAntialiasing(CGContextRef c, BOOL allowsAntialiasing)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      *(*(c + 14) + 81) = allowsAntialiasing;
    }

    else
    {
      handle_invalid_context("CGContextSetAllowsAntialiasing", c);
    }
  }

  else
  {
    handle_invalid_context("CGContextSetAllowsAntialiasing", 0);
  }
}

uint64_t CGContextGetAllowsAntialiasing(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v1 = *(*(a1 + 112) + 81);
  }

  else
  {
    handle_invalid_context("CGContextGetAllowsAntialiasing", a1);
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t CGContextGetAllowsFontAntialiasing(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v1 = *(*(a1 + 112) + 83);
  }

  else
  {
    handle_invalid_context("CGContextGetAllowsFontAntialiasing", a1);
    v1 = 1;
  }

  return v1 & 1;
}

double CGContextSetAllowsFontAntialiasing(uint64_t a1, char a2)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      *(*(a1 + 112) + 83) = a2;
    }

    else
    {
      handle_invalid_context("CGContextSetAllowsFontAntialiasing", a1);
    }
  }

  else
  {
    handle_invalid_context("CGContextSetAllowsFontAntialiasing", 0);
  }

  return result;
}

uint64_t CGContextGetAllowsFontSmoothing(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v1 = *(*(a1 + 112) + 84);
  }

  else
  {
    handle_invalid_context("CGContextGetAllowsFontSmoothing", a1);
    v1 = 1;
  }

  return v1 & 1;
}

void CGContextSetAllowsFontSmoothing(CGContextRef c, BOOL allowsFontSmoothing)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      *(*(c + 14) + 84) = allowsFontSmoothing;
    }

    else
    {
      handle_invalid_context("CGContextSetAllowsFontSmoothing", c);
    }
  }

  else
  {
    handle_invalid_context("CGContextSetAllowsFontSmoothing", 0);
  }
}

uint64_t CGContextGetAllowsFontSubpixelPositioning(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v1 = *(*(a1 + 112) + 85);
  }

  else
  {
    handle_invalid_context("CGContextGetAllowsFontSubpixelPositioning", a1);
    v1 = 1;
  }

  return v1 & 1;
}

void CGContextSetAllowsFontSubpixelPositioning(CGContextRef c, BOOL allowsFontSubpixelPositioning)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      *(*(c + 14) + 85) = allowsFontSubpixelPositioning;
    }

    else
    {
      handle_invalid_context("CGContextSetAllowsFontSubpixelPositioning", c);
    }
  }

  else
  {
    handle_invalid_context("CGContextSetAllowsFontSubpixelPositioning", 0);
  }
}

uint64_t CGContextGetAllowsFontSubpixelQuantization(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v1 = *(*(a1 + 112) + 86);
  }

  else
  {
    handle_invalid_context("CGContextGetAllowsFontSubpixelQuantization", a1);
    v1 = 1;
  }

  return v1 & 1;
}

void CGContextSetAllowsFontSubpixelQuantization(CGContextRef c, BOOL allowsFontSubpixelQuantization)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      *(*(c + 14) + 86) = allowsFontSubpixelQuantization;
    }

    else
    {
      handle_invalid_context("CGContextSetAllowsFontSubpixelQuantization", c);
    }
  }

  else
  {
    handle_invalid_context("CGContextSetAllowsFontSubpixelQuantization", 0);
  }
}

uint64_t CGContextGetAllowedFontRenderingStyle(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v1 = *(a1 + 112);
    if (v1[81] == 1 && v1[83] == 1)
    {
      if (v1[84])
      {
        v2 = 3;
      }

      else
      {
        v2 = 1;
      }

      if (v1[85] == 1)
      {
        if (v1[86])
        {
          v3 = 12;
        }

        else
        {
          v3 = 4;
        }

        v2 |= v3;
      }
    }

    else
    {
      v2 = 0;
    }

    return v2 | 0x3DF0u;
  }

  else
  {
    handle_invalid_context("CGContextGetAllowedFontRenderingStyle", a1);
    return 0;
  }
}

double CGContextSetAllowsDithering(uint64_t a1, char a2)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      *(*(a1 + 112) + 82) = a2;
    }

    else
    {
      handle_invalid_context("CGContextSetAllowsDithering", a1);
    }
  }

  else
  {
    handle_invalid_context("CGContextSetAllowsDithering", 0);
  }

  return result;
}

uint64_t CGContextGetAllowsDithering(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v1 = *(*(a1 + 112) + 82);
  }

  else
  {
    handle_invalid_context("CGContextGetAllowsDithering", a1);
    v1 = 1;
  }

  return v1 & 1;
}

double CGContextClipToTextClipping(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      CGGStateClipToTextClipping(*(a1 + 96), a2);
    }

    else
    {
      handle_invalid_context("CGContextClipToTextClipping", a1);
    }
  }

  else
  {
    handle_invalid_context("CGContextClipToTextClipping", 0);
  }

  return result;
}

uint64_t CGContextCopyDeviceColorSpace(uint64_t a1)
{
  if (!a1)
  {
    v3 = 0;
LABEL_8:
    handle_invalid_context("CGContextCopyDeviceColorSpace", v3);
    return 0;
  }

  if (*(a1 + 16) != 1129601108)
  {
    v3 = a1;
    goto LABEL_8;
  }

  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = v1[4];
    if (v2)
    {
      v1 = v2();
    }

    else
    {
      v1 = 0;
    }
  }

  Cache = CGColorTransformGetCache(v1);
  if (!Cache)
  {
    return 0;
  }

  v4 = Cache[2];
  if (v4)
  {
    CFRetain(Cache[2]);
  }

  return v4;
}

BOOL CGContextColorIsExtendedRGB(uint64_t a1)
{
  if (!a1)
  {
    v4 = 0;
LABEL_8:
    handle_invalid_context("CGContextColorIsExtendedRGB", v4);
    return 0;
  }

  if (*(a1 + 16) != 1129601108)
  {
    v4 = a1;
    goto LABEL_8;
  }

  v1 = *(a1 + 40);
  if (v1 && (v2 = *(v1 + 264)) != 0)
  {
    v3 = v2();
  }

  else
  {
    v3 = 0;
  }

  if (CGColorSpaceGetModel(v3) != kCGColorSpaceModelRGB)
  {
    return 0;
  }

  return CGColorSpaceUsesExtendedRange(v3);
}

void CGContextBeginPage2(CGContext *c, __n128 a2)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      v3 = *(c + 22);
      *(c + 22) = v3 + 1;
      if (v3)
      {
        CGPostError("%s: Don't nest calls to this function -- the results will not be what you expect.", "CGContextBeginPage2");
      }

      else
      {
        if (*(c + 6) == 1)
        {
          a2.n128_f64[0] = CGContextResetTopGState(c);
        }

        v5 = *(c + 5);
        if (v5)
        {
          v6 = *(v5 + 152);
          if (v6)
          {

            v6(a2);
          }
        }
      }

      return;
    }

    v4 = c;
  }

  else
  {
    v4 = 0;
  }

  handle_invalid_context("CGContextBeginPage2", v4);
}

void CGContextEndPage2(uint64_t a1)
{
  if (!a1)
  {
    v3 = 0;

    goto LABEL_7;
  }

  if (*(a1 + 16) != 1129601108)
  {
    v3 = a1;

LABEL_7:
    handle_invalid_context("CGContextEndPage2", v3);
    return;
  }

  v2 = *(a1 + 88) - 1;
  *(a1 + 88) = v2;
  if (v2)
  {
    CGPostError("%s: Don't nest calls to this function -- the results will not be what you expect.", "CGContextEndPage2");
  }

  else
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = *(v4 + 160);
      if (v5)
      {

        v5();
      }
    }
  }
}

CGFloat CGContextGetDefaultUserSpaceToDeviceSpaceTransform@<D0>(uint64_t a1@<X0>, CGAffineTransform *a2@<X8>)
{
  if (!a1)
  {
    v6 = 0;
LABEL_10:
    handle_invalid_context("CGContextGetDefaultUserSpaceToDeviceSpaceTransform", v6);
LABEL_11:
    *a2 = CGAffineTransformIdentity;
    return CGAffineTransformIdentity.tx;
  }

  if (*(a1 + 16) != 1129601108)
  {
    v6 = a1;
    goto LABEL_10;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = *(v3 + 40);
  if (!v4)
  {
    goto LABEL_11;
  }

  v4();
  return result;
}

CGSize CGContextConvertSizeToDeviceSpace(CGContextRef c, CGSize size)
{
  height = size.height;
  width = size.width;
  if (c && *(c + 4) == 1129601108)
  {
    CGContextGetUserSpaceToDeviceSpaceTransform(&v7, c);
    v4 = height * v7.c;
    height = height * v7.d + v7.b * width;
    width = v4 + v7.a * width;
  }

  else
  {
    handle_invalid_context("CGContextConvertSizeToDeviceSpace", c);
  }

  v5 = width;
  v6 = height;
  result.height = v6;
  result.width = v5;
  return result;
}

CGSize CGContextConvertSizeToUserSpace(CGContextRef c, CGSize size)
{
  height = size.height;
  width = size.width;
  memset(&v9, 0, sizeof(v9));
  if (c && *(c + 4) == 1129601108)
  {
    CGContextGetUserSpaceToDeviceSpaceTransform(&v9, c);
    v7 = v9;
    CGAffineTransformInvert(&v8, &v7);
    v4 = height * v8.c;
    height = height * v8.d + v8.b * width;
    width = v4 + v8.a * width;
  }

  else
  {
    handle_invalid_context("CGContextConvertSizeToUserSpace", c);
  }

  v5 = width;
  v6 = height;
  result.height = v6;
  result.width = v5;
  return result;
}

CGRect CGContextConvertRectToDeviceSpace(CGContextRef c, CGRect rect)
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  memset(&v11, 0, sizeof(v11));
  if (c && *(c + 4) == 1129601108)
  {
    CGContextGetUserSpaceToDeviceSpaceTransform(&v11, c);
    v10 = v11;
    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    v13 = CGRectApplyAffineTransform(v12, &v10);
    x = v13.origin.x;
    y = v13.origin.y;
    width = v13.size.width;
    height = v13.size.height;
  }

  else
  {
    handle_invalid_context("CGContextConvertRectToDeviceSpace", c);
  }

  v6 = x;
  v7 = y;
  v8 = width;
  v9 = height;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

CGRect CGContextConvertRectToUserSpace(CGContextRef c, CGRect rect)
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  v5.n64_u64[0] = *&rect.origin.x;
  memset(&v14, 0, sizeof(v14));
  if (c && *(c + 4) == 1129601108)
  {
    CGContextGetUserSpaceToDeviceSpaceTransform(&v14, c);
    v13 = v14;
    v5.n64_u64[0] = CGRectApplyInverseAffineTransform(&v13.a, v5, y, width, height).n64_u64[0];
    y = v6;
    width = v7;
    height = v8;
  }

  else
  {
    handle_invalid_context("CGContextConvertRectToUserSpace", c);
  }

  v9 = v5.n64_f64[0];
  v10 = y;
  v11 = width;
  v12 = height;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

uint64_t CGContextGetIdentifier(_DWORD *a1)
{
  if (a1 && a1[4] == 1129601108)
  {
    return a1[5];
  }

  handle_invalid_context("CGContextGetIdentifier", a1);
  return 0;
}

_DWORD *CGContextValidate(_DWORD *result, int a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (_block_invoke_once_15726 != -1)
    {
      dispatch_once(&_block_invoke_once_15726, &__block_literal_global_5_15727);
    }

    result = 0;
    if (v4 == CGContextGetTypeID_type_id)
    {
      if (!a2)
      {
        return 1;
      }

      if (v3[4] == 1129601108)
      {
        v5 = v3[6];
      }

      else
      {
        handle_invalid_context("CGContextGetType", v3);
        v5 = 0;
      }

      if (v5 == a2)
      {
        return 1;
      }
    }
  }

  return result;
}

void CGContextSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  if (a1 && a2 && a3)
  {
    if (!*(a1 + 176))
    {
      v6 = CGPropertiesCreate();
      v7 = 0;
      atomic_compare_exchange_strong_explicit((a1 + 176), &v7, v6, memory_order_relaxed, memory_order_relaxed);
      if (v7)
      {
        CGPropertiesRelease(v6);
      }
    }

    v8 = *(a1 + 176);

    CGPropertiesSetProperty(v8, a2, a3);
  }
}

const void *CGContextGetProperty(uint64_t a1, const void *a2)
{
  if (a1 && a2 && (v2 = *(a1 + 176)) != 0)
  {
    return CGPropertiesGetProperty(v2, a2);
  }

  else
  {
    return 0;
  }
}

const UInt8 *CGContextGetContentMD5(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = "CGContextCopyData";
    v9 = 0;
LABEL_12:
    handle_invalid_context(v8, v9);
    return 0;
  }

  v2 = *(a1 + 176);
  if (v2)
  {
    Property = CGPropertiesGetProperty(v2, @"CGContextMD5");
    if (Property)
    {
      return CFDataGetBytePtr(Property);
    }
  }

  if (*(a1 + 16) != 1129601108)
  {
    v8 = "CGContextCopyData";
LABEL_11:
    v9 = a1;
    goto LABEL_12;
  }

  v5 = *(a1 + 176);
  if (!v5)
  {
LABEL_16:
    if (*(a1 + 24) != 4)
    {
      return 0;
    }

    v7 = CGBitmapContextCopyData(a1);
    goto LABEL_18;
  }

  v6 = CGPropertiesGetProperty(v5, @"CGContextData");
  if (!v6)
  {
    if (*(a1 + 16) == 1129601108)
    {
      goto LABEL_16;
    }

    v8 = "CGContextGetType";
    goto LABEL_11;
  }

  v7 = CFRetain(v6);
LABEL_18:
  v10 = v7;
  if (v7)
  {
    *md = 0;
    v15 = 0;
    v11 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
    CC_MD5_Init(v11);
    BytePtr = CFDataGetBytePtr(v10);
    Length = CFDataGetLength(v10);
    if (v11)
    {
      md5_update(v11, BytePtr, Length);
      CC_MD5_Final(md, v11);
    }

    free(v11);
    Property = CFDataCreate(0, md, 16);
    CGContextSetProperty(a1, @"CGContextMD5", Property);
    if (Property)
    {
      CFRelease(Property);
      CFRelease(v10);
      return CFDataGetBytePtr(Property);
    }

    CFRelease(v10);
  }

  return 0;
}

uint64_t CGContextGetDelegateName(uint64_t a1)
{
  if (*(a1 + 16) != 1129601108)
  {
    handle_invalid_context("CGContextGetDelegateName", a1);
    return 0;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 224);
  if (!v3)
  {
    return 0;
  }

  return v3();
}

double CGContextSetOwnerIdentity(uint64_t a1, int a2)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      v2 = *(a1 + 40);
      if (v2)
      {
        *(v2 + 280) = a2;
      }
    }

    else
    {
      handle_invalid_context("CGContextSetOwnerIdentity", a1);
    }
  }

  else
  {
    handle_invalid_context("CGContextSetOwnerIdentity", 0);
  }

  return result;
}

uint64_t CGContextGetOwnerIdentity(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v1 = *(a1 + 40);
    if (v1)
    {
      return *(v1 + 280);
    }
  }

  else
  {
    handle_invalid_context("CGContextGetOwnerIdentity", a1);
  }

  return 0;
}

BOOL CGPDFShadingType1Init(CGPDFDictionary *a1, void *a2, _OWORD *a3)
{
  v5 = a1;
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    a1 = *(a1 + 5);
  }

  if (CGColorSpaceGetType(a1) == 7)
  {
  }

  else
  {
    v6 = malloc_type_calloc(1uLL, 0x58uLL, 0x102004004D1CACCuLL);
    __CFSetLastAllocationEventName();
    *a2 = v6;
    *a3 = CGPDFShadingType1Init_type1_callbacks;
    if (v5)
    {
      v5 = *(v5 + 3);
    }

    if (!CGPDFDictionaryGetNumbers(v5, "Domain", v6, 4))
    {
      *v6 = xmmword_18439C780;
      *(v6 + 1) = xmmword_18439C780;
    }

    if (CGPDFDictionaryGetNumbers(v5, "Matrix", v10, 6))
    {
      v7 = v10[1];
      *(v6 + 2) = v10[0];
      *(v6 + 3) = v7;
      *(v6 + 4) = v10[2];
    }

    else
    {
      *(v6 + 32) = CGAffineTransformIdentity;
    }

    *&v10[0] = 0;
    if (CGPDFDictionaryGetObject(v5, "Function", v10))
    {
      ShadingFunction = CGPDFShadingCreateShadingFunction(*&v10[0], 2uLL);
      *(v6 + 10) = ShadingFunction;
      return ShadingFunction != 0;
    }
  }

  return 0;
}

void type1_release_info_17124(int a1, void *a2)
{
  if (a2)
  {
    v3 = a2[10];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a2);
  }
}

uint64_t type1_create_shading(CGColor *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = *(a1 + 5);
    a1 = *(a1 + 6);
    v5 = (v3 + 64);
    p_y = (v3 + 72);
    p_size = (v3 + 80);
    p_height = (v3 + 88);
  }

  else
  {
    v4 = 0;
    v5 = &CGRectNull;
    p_height = &CGRectNull.size.height;
    p_y = &CGRectNull.origin.y;
    p_size = &CGRectNull.size;
  }

  v9 = *p_height;
  x = v5->origin.x;
  v11 = *p_y;
  width = p_size->width;
  v22[0] = *&v5->origin.x;
  *&v22[1] = v11;
  *&v22[2] = width;
  *&v22[3] = v9;
  Components = CGColorGetComponents(a1);
  if (v9 == 1.79769313e308 && width == 1.79769313e308 && v11 == -8.98846567e307 && x == -8.98846567e307)
  {
    v17 = 0;
  }

  else
  {
    v17 = v22;
  }

  v18 = *(a2 + 80);
  v19 = *(a2 + 48);
  v21[0] = *(a2 + 32);
  v21[1] = v19;
  v21[2] = *(a2 + 64);
  return CGShadingCreateCustom(v4, Components, v17, a2, v21, v18);
}

void PDFClipMaskRelease(void **a1)
{
  if (a1)
  {
    if ((*a1)-- == 1)
    {
      if (a1[4])
      {
        v3 = 0;
        do
        {
          CGClipMaskRelease(a1[v3++ + 5]);
        }

        while (v3 < a1[4]);
      }

      free(a1);
    }
  }
}

BOOL PDFClipMaskEqualToClipMask(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  v4 = *(a1 + 32);
  if (v4 != *(a2 + 32))
  {
    return 0;
  }

  if (!v4)
  {
    return 1;
  }

  v5 = (a1 + 40);
  v6 = (a2 + 40);
  v7 = v4 - 1;
  do
  {
    v9 = *v5++;
    v8 = v9;
    v10 = *v6++;
    result = CGClipMaskEqualToClipMask(v8, v10);
    v12 = v7-- != 0;
  }

  while (result && v12);
  return result;
}

uint64_t CPPDFCreateImageFromRawData(uint64_t a1, const __CFData *a2, char a3, _BOOL4 a4)
{
  if (!a1)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  if (!v4)
  {
    return 0;
  }

  value = 0;
  if (!CGPDFDictionaryGetInteger(v4, "W", &value) && !CGPDFDictionaryGetInteger(v4, "Width", &value))
  {
    return 0;
  }

  v41 = 0;
  if (!CGPDFDictionaryGetInteger(v4, "H", &v41) && !CGPDFDictionaryGetInteger(v4, "Height", &v41))
  {
    return 0;
  }

  v40 = 0;
  if (!CGPDFDictionaryGetInteger(v4, "BPC", &v40) && !CGPDFDictionaryGetInteger(v4, "BitsPerComponent", &v40))
  {
    v40 = 0;
  }

  v39 = 0;
  if (!CGPDFDictionaryGetObject(v4, "CS", &v39) && !CGPDFDictionaryGetObject(v4, "ColorSpace", &v39))
  {
    v39 = 0;
  }

  if ((a3 & 1) == 0)
  {
    v37[0] = 0;
    a4 = (CGPDFDictionaryGetBoolean(v4, "IM", v37) || CGPDFDictionaryGetBoolean(v4, "ImageMask", v37)) && v37[0] != 0;
  }

  v38 = 0;
  if (!CGPDFDictionaryGetBoolean(v4, "I", &v38) && !CGPDFDictionaryGetBoolean(v4, "Interpolate", &v38))
  {
    v38 = 0;
  }

  *v37 = 0;
  v9 = CGPDFDictionaryGetArray(v4, "D", v37) || CGPDFDictionaryGetArray(v4, "Decode", v37);
  space = 0;
  if (v39 != 0 && !a4)
  {
    CreateColorSpaceFromInlineObject(v39, &space);
  }

  if (!v9)
  {
    v13 = 0;
    decode = 0;
    goto LABEL_46;
  }

  if (!*v37 || (v10 = *(*v37 + 16), v11 = *(*v37 + 24), v12 = v11 - v10, v11 == v10))
  {
    v13 = 0;
    decode = 0;
  }

  else
  {
    v13 = v12 >> 3;
    decode = malloc_type_malloc(v12, 0x100004000313F17uLL);
    v15 = 0;
    do
    {
      v35 = 0.0;
      CGPDFArrayGetNumber(*v37, v15, &v35);
      decode[v15++] = v35;
    }

    while (v13 != v15);
  }

  if (space)
  {
    v16 = 1;
  }

  else
  {
    v16 = a4;
  }

  if (!v16)
  {
    switch(v13)
    {
      case 8:
        DeviceCMYK = CGColorSpaceCreateDeviceCMYK();
        break;
      case 6:
        DeviceCMYK = CGColorSpaceCreateDeviceRGB();
        break;
      case 2:
        DeviceCMYK = CGColorSpaceCreateDeviceGray();
        break;
      default:
        goto LABEL_46;
    }

    space = DeviceCMYK;
  }

LABEL_46:
  v18 = CGDataProviderCreateWithCFData(a2);
  if (v18)
  {
    v19 = v18;
    if (a4)
    {
      v40 = 1;
      v20 = value;
      Length = CFDataGetLength(a2);
      v22 = v41 * value * v40;
      v24 = v22 + 7;
      v23 = v22 < -7;
      v25 = v22 + 14;
      if (!v23)
      {
        v25 = v24;
      }

      if (Length < v25 >> 3)
      {
        v8 = 0;
LABEL_66:
        CGDataProviderRelease(v19);
        goto LABEL_67;
      }

      v33 = v20 + 7;
      if (v20 < -7)
      {
        v33 = v20 + 14;
      }

      v32 = mask_create(value, v41, v40, v40, v33 >> 3, v19, 0, v38 != 0, 4);
    }

    else
    {
      v8 = 0;
      v26 = space;
      if (!space)
      {
        goto LABEL_66;
      }

      v27 = v40;
      if (v40 < 1)
      {
        goto LABEL_66;
      }

      v28 = *(*(space + 3) + 48);
      v29 = value;
      v30 = CFDataGetLength(a2);
      v8 = 0;
      v31 = v13 == 2 * v28 || decode == 0;
      if (!v31 || value * v28 * v41 * v40 / 8 > v30)
      {
        goto LABEL_66;
      }

      v32 = CGImageCreate(value, v41, v40, v27 * v28, vcvtps_u32_f32(vcvts_n_f32_u64(v27 * v28 * v29, 3uLL)), v26, 0, v19, decode, v38 != 0, kCGRenderingIntentDefault);
    }

    v8 = v32;
    goto LABEL_66;
  }

  v8 = 0;
LABEL_67:
  if (space)
  {
    CGColorSpaceRelease(space);
  }

  free(decode);
  return v8;
}

uint64_t CPPDFCreateJPEGImageFromImageStream(uint64_t a1, CFDataRef theData, CGImage **a3, CFDataRef *a4)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  BytePtr = CFDataGetBytePtr(theData);
  if (__PAIR64__(BytePtr[1], *BytePtr) == 0xD8000000FFLL && BytePtr[2] == 255 && BytePtr[3] == 238 && !BytePtr[4] && BytePtr[5] == 14)
  {
    v9 = 0;
    v10 = BytePtr[17];
  }

  else
  {
    v10 = -1;
    v9 = 1;
    if (!a3 && a4)
    {
      *a4 = CFDataCreateCopy(*MEMORY[0x1E695E480], theData);
      return 1;
    }
  }

  if (CPPDFCreateJPEGImageFromImageStream_predicate != -1)
  {
    dispatch_once(&CPPDFCreateJPEGImageFromImageStream_predicate, &__block_literal_global_17169);
  }

  result = CPPDFCreateJPEGImageFromImageStream_f(theData, 0);
  if (result)
  {
    v12 = result;
    if (v9)
    {
      if (a1)
      {
        v13 = *(a1 + 48);
      }

      else
      {
        v13 = 0;
      }

      value = 0;
      if (CGPDFDictionaryGetDictionary(v13, "DecodeParms", &value))
      {
        v32 = 0;
        if (CGPDFDictionaryGetInteger(value, "ColorTransform", &v32))
        {
          v10 = v32;
        }

        else
        {
          v10 = -1;
        }
      }

      else
      {
        v10 = -1;
      }
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v15 = Mutable;
    if ((v10 & 0x8000000000000000) == 0)
    {
      CGCFDictionarySetInteger(Mutable, @"kCGImageSourceColorTransform", v10);
    }

    if (CPPDFCreateJPEGImageFromImageStream_predicate_20 != -1)
    {
      dispatch_once(&CPPDFCreateJPEGImageFromImageStream_predicate_20, &__block_literal_global_23_17173);
    }

    v16 = CPPDFCreateJPEGImageFromImageStream_f_19(v12, 0, v15);
    CFRelease(v12);
    CFRelease(v15);
    if (v16)
    {
      if (CGImageGetDecode(v16))
      {
        v30 = *(v16 + 6);
        v31 = *(v16 + 5);
        v17 = *(v16 + 7);
        v18 = *(v16 + 8);
        v19 = *(v16 + 9);
        ColorSpace = CGImageGetColorSpace(v16);
        BitmapInfo = CGImageGetBitmapInfo(v16);
        DataProviderInternal = CGImageGetDataProviderInternal(v16, 0);
        shouldInterpolate = CGImageGetShouldInterpolate(v16);
        intent = CGImageGetRenderingIntent(v16);
        v25 = CGImageCreate(v31, v30, v17, v18, v19, ColorSpace, BitmapInfo, DataProviderInternal, CPPDFCreateJPEGImageFromImageStream_decode, shouldInterpolate, intent);
        CFRelease(v16);
        v16 = v25;
      }

      v26 = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
      if (CPPDFCreateJPEGImageFromImageStream_predicate_26 != -1)
      {
        dispatch_once(&CPPDFCreateJPEGImageFromImageStream_predicate_26, &__block_literal_global_29_17174);
      }

      v27 = CPPDFCreateJPEGImageFromImageStream_f_25(v26, @"public.jpeg", 1, 0);
      if (v27)
      {
        v28 = v27;
        if (CPPDFCreateJPEGImageFromImageStream_predicate_35 != -1)
        {
          dispatch_once(&CPPDFCreateJPEGImageFromImageStream_predicate_35, &__block_literal_global_38_17176);
        }

        CPPDFCreateJPEGImageFromImageStream_f_34(v28, v16, 0);
        if (CPPDFCreateJPEGImageFromImageStream_predicate_41 != -1)
        {
          dispatch_once(&CPPDFCreateJPEGImageFromImageStream_predicate_41, &__block_literal_global_44_17177);
        }

        v29 = CPPDFCreateJPEGImageFromImageStream_f_40(v28);
        CFRelease(v28);
        if (v29)
        {
          if (a3)
          {
            *a3 = v16;
          }

          else if (v16)
          {
            CFRelease(v16);
          }

          if (a4)
          {
            *a4 = v26;
          }

          else
          {
            CFRelease(v26);
          }

          return 1;
        }
      }

      if (v16)
      {
        CFRelease(v16);
      }

      CFRelease(v26);
    }

    return 0;
  }

  return result;
}

void *__CPPDFCreateJPEGImageFromImageStream_block_invoke_4()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageDestinationAddImage");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageDestinationAddImage");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageDestinationAddImage", v0);
  }

  CPPDFCreateJPEGImageFromImageStream_f_34 = result;
  return result;
}

void *__CPPDFCreateJPEGImageFromImageStream_block_invoke_3()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageDestinationCreateWithData");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageDestinationCreateWithData");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageDestinationCreateWithData", v0);
  }

  CPPDFCreateJPEGImageFromImageStream_f_25 = result;
  return result;
}

void *__CPPDFCreateJPEGImageFromImageStream_block_invoke_2()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageSourceCreateImageAtIndex");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageSourceCreateImageAtIndex");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageSourceCreateImageAtIndex", v0);
  }

  CPPDFCreateJPEGImageFromImageStream_f_19 = result;
  return result;
}

void *__CPPDFCreateJPEGImageFromImageStream_block_invoke()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageSourceCreateWithData");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageSourceCreateWithData");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageSourceCreateWithData", v0);
  }

  CPPDFCreateJPEGImageFromImageStream_f = result;
  return result;
}

CGPDFStream *CPPDFCreateImageFromStream(CGPDFStream *result, char a2, _BOOL4 a3)
{
  if (result)
  {
    v5 = result;
    format = CGPDFDataFormatRaw;
    result = CGPDFStreamCopyData(result, &format);
    if (result)
    {
      v6 = result;
      v9 = 0;
      if (format)
      {
        if (format == CGPDFDataFormatJPEG2000)
        {
          v7 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kCGImageSourceTypeIdentifierHint, &kUTTypeJPEG2000, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (CPPDFCreateImageFromStream_predicate != -1)
          {
            dispatch_once(&CPPDFCreateImageFromStream_predicate, &__block_literal_global_48_17204);
          }

          v8 = CPPDFCreateImageFromStream_f(v6, v7);
          CFRelease(v7);
          if (v8)
          {
            if (CPPDFCreateImageFromStream_predicate_50 != -1)
            {
              dispatch_once(&CPPDFCreateImageFromStream_predicate_50, &__block_literal_global_53_17205);
            }

            v9 = CPPDFCreateImageFromStream_f_49(v8, 0, 0);
            CFRelease(v8);
          }
        }

        else if (format == CGPDFDataFormatJPEGEncoded)
        {
          CPPDFCreateJPEGImageFromImageStream(v5, result, &v9, 0);
        }
      }

      else
      {
        v9 = CPPDFCreateImageFromRawData(v5, result, a2, a3);
      }

      CFRelease(v6);
      return v9;
    }
  }

  return result;
}

void *__CPPDFCreateImageFromStream_block_invoke_2()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageSourceCreateImageAtIndex");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageSourceCreateImageAtIndex");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageSourceCreateImageAtIndex", v0);
  }

  CPPDFCreateImageFromStream_f_49 = result;
  return result;
}

void *__CPPDFCreateImageFromStream_block_invoke()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageSourceCreateWithData");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageSourceCreateWithData");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageSourceCreateWithData", v0);
  }

  CPPDFCreateImageFromStream_f = result;
  return result;
}

CGPDFStream *CPPDFCreateMaskingImageFromStream(CGPDFStream *result)
{
  if (result)
  {
    v1 = *(result + 6);
    if (v1)
    {
      value = 0;
      if (CGPDFDictionaryGetStream(v1, "SMask", &value))
      {
        v2 = value;
        v3 = 0;
        return CPPDFCreateImageFromStream(v2, 1, v3);
      }

      if (CGPDFDictionaryGetStream(v1, "Mask", &value))
      {
        v2 = value;
        v3 = 1;
        return CPPDFCreateImageFromStream(v2, 1, v3);
      }
    }

    return 0;
  }

  return result;
}

void *CPPDFCreateMaskingColorsFromStream(uint64_t a1, uint64_t *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 48);
  if (!v2)
  {
    return 0;
  }

  value = 0;
  v4 = 0;
  if (CGPDFDictionaryGetArray(v2, "Mask", &value))
  {
    if (value)
    {
      v5 = (*(value + 3) - *(value + 2)) >> 3;
      if (!a2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v5 = 0;
      if (!a2)
      {
LABEL_7:
        v4 = malloc_type_malloc(8 * v5, 0x100004000313F17uLL);
        if (v5)
        {
          for (i = 0; i != v5; ++i)
          {
            v8 = 0;
            CGPDFArrayGetNumber(value, i, &v8);
            v4[i] = v8;
          }
        }

        return v4;
      }
    }

    *a2 = v5;
    goto LABEL_7;
  }

  return v4;
}

uint64_t __get_cache_block_invoke_17226()
{
  v4 = *MEMORY[0x1E69E9840];
  get_cache_colorspace_cache = malloc_type_calloc(1uLL, 0x48uLL, 0x1020040C6685353uLL);
  if (!get_cache_colorspace_cache)
  {
    _CGHandleAssert("get_cache_block_invoke", 111, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpaceFromICCDataCache.c", "colorspace_cache != NULL", "colorspace cache missing");
  }

  v3.__sig = 0;
  *v3.__opaque = 0;
  pthread_mutexattr_init(&v3);
  pthread_mutexattr_settype(&v3, 2);
  pthread_mutex_init(get_cache_colorspace_cache, &v3);
  pthread_mutexattr_destroy(&v3);
  attrs = *byte_1EF240618;
  v0 = cache_create("com.apple.CoreGraphics.colorspace_from_ICC_data_cache", &attrs, (get_cache_colorspace_cache + 64));
  if (v0)
  {
    _CGHandleAssert("get_cache_block_invoke", 133, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpaceFromICCDataCache.c", "cache_error == 0", "cache creation failed %d", v0);
  }

  return cache_set_count_hint();
}

void colorspace_from_ICC_data_data_key_release(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

const void *__CGPDFContextDelegateCreate(CGDataConsumerRef a1, __int128 *a2, const __CFDictionary *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = malloc_type_calloc(1uLL, 0x2A0uLL, 0x10E0040234E15DAuLL);
  __CFSetLastAllocationEventName();
  if (v5)
  {
    *v5 = 0x100000001;
    v5[2] = 3;
    *(v5 + 72) = 0;
    v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x1020040E72D6CFBuLL);
    __CFSetLastAllocationEventName();
    if (v6)
    {
      *v6 = 1;
      v6[1] = v5;
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      v6[2] = Mutable;
      if (Mutable)
      {
        v8 = *(MEMORY[0x1E695E9D8] + 16);
        *&keyCallBacks.version = *MEMORY[0x1E695E9D8];
        *&keyCallBacks.release = v8;
        keyCallBacks.equal = 0;
        keyCallBacks.hash = 0;
        v9 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &keyCallBacks, 0);
        v6[3] = v9;
        if (v9)
        {
          *(v5 + 5) = v6;
          *(v5 + 256) = 0;
          v5[90] = 1;
          if (a2)
          {
            v10 = *a2;
            v11 = a2[1];
          }

          else if (CGCFDictionaryGetRect(a3, @"MediaBox", &keyCallBacks))
          {
            v10 = *&keyCallBacks.version;
            v11 = *&keyCallBacks.release;
          }

          else
          {
            v10 = defaultMediaBox;
            v11 = unk_1844DEEE8;
          }

          *(v5 + 6) = v10;
          *(v5 + 7) = v11;
          *(v5 + 4) = CGRectNull;
          if (CGCFDictionaryGetRect(a3, @"CropBox", &keyCallBacks))
          {
            v13 = *&keyCallBacks.release;
            *(v5 + 8) = *&keyCallBacks.version;
            *(v5 + 9) = v13;
          }

          *(v5 + 5) = CGRectNull;
          if (CGCFDictionaryGetRect(a3, @"BleedBox", &keyCallBacks))
          {
            v14 = *&keyCallBacks.release;
            *(v5 + 10) = *&keyCallBacks.version;
            *(v5 + 11) = v14;
          }

          *(v5 + 6) = CGRectNull;
          if (CGCFDictionaryGetRect(a3, @"TrimBox", &keyCallBacks))
          {
            v15 = *&keyCallBacks.release;
            *(v5 + 12) = *&keyCallBacks.version;
            *(v5 + 13) = v15;
          }

          *(v5 + 7) = CGRectNull;
          if (CGCFDictionaryGetRect(a3, @"ArtBox", &keyCallBacks))
          {
            v16 = *&keyCallBacks.release;
            *(v5 + 14) = *&keyCallBacks.version;
            *(v5 + 15) = v16;
          }

          if (a3)
          {
            Value = CFDictionaryGetValue(a3, @"CGPDFContextCreateLinearizedPDF");
            if (Value)
            {
              v18 = Value;
              v19 = CFGetTypeID(Value);
              if (v19 == CFBooleanGetTypeID())
              {
                *(v5 + 90) = CFBooleanGetValue(v18) != 0;
              }
            }

            v20 = CFDictionaryGetValue(a3, @"CGPDFContextCreatePDFA");
            if (v20)
            {
              v21 = v20;
              v22 = CFGetTypeID(v20);
              if (v22 == CFBooleanGetTypeID())
              {
                *(v5 + 91) = CFBooleanGetValue(v21) != 0;
              }
            }
          }

          operator new();
        }
      }

      PDFMetaSetRelease(v6);
    }

    *(v5 + 5) = 0;
    PDFDocumentRelease(v5);
  }

  return 0;
}

void sub_18428F0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  if (*(v15 - 137) < 0)
  {
    operator delete(*(v15 - 160));
    if ((v14 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (!v14)
  {
LABEL_7:
    std::__tree<unsigned long>::destroy(*(v12 + 240));
    std::__tree<unsigned long>::destroy(*(v12 + 216));
    v18 = *(v12 + 184);
    if (v18)
    {
      *(v12 + 192) = v18;
      operator delete(v18);
    }

    v19 = *(v12 + 160);
    if (v19)
    {
      *(v12 + 168) = v19;
      operator delete(v19);
    }

    v20 = *(v12 + 136);
    if (v20)
    {
      *(v12 + 144) = v20;
      operator delete(v20);
    }

    *(v15 - 160) = v12 + 112;
    std::vector<PDFIndirectObject>::__destroy_vector::operator()[abi:fe200100]((v15 - 160));
    *(v15 - 160) = v12 + 48;
    std::vector<PDFLinearizerPageInfo>::__destroy_vector::operator()[abi:fe200100]((v15 - 160));
    if (*(v12 + 47) < 0)
    {
      operator delete(*v13);
    }

    MEMORY[0x1865EE610](v12, 0x1072C405A727712);
    v21 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      (*(*v21 + 16))(v21);
      pdf_error("%s caught exception: %s");
    }

    else
    {
      pdf_error("%s caught an unknown exception");
    }

    __cxa_end_catch();
    *(v10 + 560) = 0;
    JUMPOUT(0x18428DC70);
  }

  __cxa_free_exception(v11);
  goto LABEL_7;
}

uint64_t pdf_DrawImage(uint64_t a1, uint64_t a2, uint64_t a3, CGImageRef image, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v14 = a2;
  v15 = a1;
  v89 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v16 = *(a1 + 288);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v16 + 520);
  if (v17)
  {
    v18 = *(v17 + 72);
    if (v18)
    {
      CGRenderingStateCreateCopy(a2);
      v20 = v19;
      *(v19 + 81) = 1;
      *(v19 + 72) = 0x300000003;
      copyGState(v17, a3);
      v22 = v21;
      if (*(v18 + 16) == 1129601108)
      {
        v23 = *(v18 + 40);
        if (v23)
        {
          v24 = *(v23 + 80);
          if (v24)
          {
            v24(a5, a6, a7, a8);
          }
        }
      }

      else
      {
        handle_invalid_context("CGContextGetDelegate", v18);
      }

      if (atomic_fetch_add_explicit(v20, 0xFFFFFFFF, memory_order_relaxed) == 1)
      {
        free(v20);
      }

      CGGStateRelease(v22);
    }
  }

  UTType = CGImageGetUTType(image);
  if (UTType)
  {
    v26 = UTType;
    if (CFEqual(UTType, @"public.jpeg"))
    {
      v27 = 0;
    }

    else
    {
      v27 = CFEqual(v26, @"public.jpeg-2000") == 0;
    }
  }

  else
  {
    v27 = 1;
  }

  if (*(v16 + 88) == 1)
  {
    if (!image)
    {
      goto LABEL_36;
    }

    v28 = *(a3 + 24);
    v29 = *(a3 + 40);
    v30 = *(a3 + 56);
    if (a7 < 0.0 || a8 < 0.0)
    {
      v90.origin.x = a5;
      v90.origin.y = a6;
      v90.size.width = a7;
      v90.size.height = a8;
      v79 = *(a3 + 56);
      v81 = *(a3 + 24);
      v77 = *(a3 + 40);
      *&v31 = CGRectStandardize(v90);
      v29 = v77;
      v30 = v79;
      v28 = v81;
    }

    else
    {
      v31 = a5;
      v32 = a6;
      v33 = a7;
      v34 = a8;
    }

    *&v88.a = vmlaq_n_f64(vmulq_f64(v29, 0), v28, v33);
    *&v88.c = vmlaq_f64(vmulq_n_f64(v29, v34), 0, v28);
    *&v88.tx = vaddq_f64(v30, vmlaq_n_f64(vmulq_n_f64(v29, v32), v28, v31));
    v91.origin.x = 0.0;
    v91.origin.y = 0.0;
    v91.size.width = 1.0;
    v91.size.height = 1.0;
    v92 = CGRectApplyAffineTransform(v91, &v88);
    v36 = *(image + 5);
    v37 = v92.size.width * 144.0 / (v36 * 72.0);
    if (v37 > 1.0)
    {
      v37 = 1.0;
    }

    if (v37 < 0.95)
    {
      v85 = llround(v37 * *(image + 6));
      valuePtr = llround(v37 * v36);
      v84 = 3;
      v38 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
      v39 = CFNumberCreate(0, kCFNumberCFIndexType, &v85);
      v40 = CFNumberCreate(0, kCFNumberSInt32Type, &v84);
      *&v88.a = @"kCGColorTransformConvertImageWidth";
      *&v88.b = @"kCGColorTransformConvertImageHeight";
      *&v88.c = @"kCGColorTransformConvertImageQuality";
      values[0] = v38;
      values[1] = v39;
      values[2] = v40;
      v41 = CFDictionaryCreate(0, &v88, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v38)
      {
        CFRelease(v38);
      }

      if (v39)
      {
        CFRelease(v39);
      }

      if (v40)
      {
        CFRelease(v40);
      }

      RenderingIntent = CGImageGetRenderingIntent(image);
      v35 = CGColorTransformConvertImage(image, RenderingIntent, v41);
    }

    else
    {
LABEL_36:
      v35 = 0;
    }

    if (v35)
    {
      image = v35;
    }
  }

  else
  {
    v35 = 0;
  }

  if ((*(v16 + 74) & 1) != 0 || v35 != 0 && !v27)
  {
    jpeg_copy = create_jpeg_copy(image, *(v16 + 80));
    v43 = jpeg_copy;
    if (jpeg_copy)
    {
      image = jpeg_copy;
    }
  }

  else
  {
    v43 = 0;
  }

  v83 = v16;
  if (image && (v45 = *(image + 27)) != 0 && CGPropertiesGetProperty(v45, @"com.apple.CoreGraphics.Is1Bit1ChannelImage"))
  {
    v78 = v14;
    v80 = v15;
    v82 = a3;
    v46 = *(image + 27);
    if (v46)
    {
      CGPropertiesGetProperty(v46, @"com.apple.CoreGraphics.Is1Bit1ChannelImageColorSpace");
    }

    v47 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericGrayGamma2_2");
    v48 = *(image + 5);
    v49 = *(image + 6);
    v50 = malloc_type_calloc(v48, v49, 0x100004077774924uLL);
    space = v47;
    v51 = CGBitmapContextCreateWithData(v50, v48, v49, 8uLL, v48, v47, 0, 0, 0);
    v93.origin.x = 0.0;
    v93.origin.y = 0.0;
    v93.size.width = v48;
    v93.size.height = v49;
    CGContextClearRect(v51, v93);
    CGContextConcatCTM(v51, &CGAffineTransformIdentity);
    v94.origin.x = 0.0;
    v94.origin.y = 0.0;
    v94.size.width = v48;
    v94.size.height = v49;
    CGContextDrawImage(v51, v94, image);
    v52 = (v48 + 7) >> 3;
    v53 = malloc_type_calloc(v52, v49, 0x7B9A7EB3uLL);
    __CFSetLastAllocationEventName();
    if (v49)
    {
      for (i = 0; i != v49; ++i)
      {
        if (v48)
        {
          v55 = 0;
          v56 = &v50[i * v48];
          v57 = 0x80;
          v58 = v48;
          v59 = &v53[i * v52];
          do
          {
            if (v55 == 8)
            {
              ++v59;
              v57 = 0x80;
            }

            v60 = *v56++;
            if (v60 < 0)
            {
              *v59 |= v57;
            }

            v57 >>= 1;
            if (v55 == 8)
            {
              v55 = 1;
            }

            else
            {
              ++v55;
            }

            --v58;
          }

          while (v58);
        }
      }
    }

    check_clients_buffer("CGDataProviderCreateWithData", v53, v52 * v49);
    v61 = CGDataProviderCreateWithDataInternal(v53, v53, v52 * v49, _CGDataProviderReleaseDataCallback, 0);
    v62 = CGImageCreate(v48, v49, 1uLL, 1uLL, (v48 + 7) >> 3, space, 0, v61, 0, 0, kCGRenderingIntentDefault);
    CGDataProviderRelease(v61);
    if (v51)
    {
      CFRelease(v51);
    }

    CGColorSpaceRelease(space);
    a3 = v82;
    v14 = v78;
    if (v50)
    {
      free(v50);
    }

    if (v62)
    {
      image = v62;
    }

    v15 = v80;
  }

  else
  {
    v62 = 0;
  }

  v63 = CGImageGetUTType(image);
  if (!v63 || !CFEqual(v63, @"public.jpeg-2000"))
  {
LABEL_77:
    if (!image || (*(image + 39) & 4) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_79;
  }

  if (!image || (*(image + 39) & 4) == 0)
  {
    if (!*(*(v15 + 288) + 91))
    {
      goto LABEL_77;
    }

    goto LABEL_75;
  }

  if (*(image + 22) || (*(*(v15 + 288) + 91) & 1) != 0)
  {
LABEL_75:
    v64 = create_jpeg_copy(image, *(v83 + 80));
    v43 = v64;
    if (v64)
    {
      image = v64;
    }

    goto LABEL_77;
  }

LABEL_79:
  if (is_image_alpha_opaque(image))
  {
    Copy = CGImageCreateCopy(image);
    v66 = Copy;
    if (Copy)
    {
      v67 = (*(Copy + 8) & 0x1F) - 1;
      if (v67 <= 3)
      {
        v68 = *(Copy + 8) & 0xFFFFFFE0 | dword_18439D0B0[v67];
        v69 = *(Copy + 9) & 0xFBFFFFFF;
        *(Copy + 8) = v68;
        *(Copy + 9) = v69;
      }

      image = Copy;
    }

    if (v15)
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

LABEL_86:
  v66 = 0;
  if (v15)
  {
LABEL_85:
    v70 = *(v15 + 288);
    goto LABEL_88;
  }

LABEL_87:
  v70 = 0;
LABEL_88:
  ContentStream = PDFDocumentGetContentStream(v70);
  if (!ContentStream)
  {
    return 1000;
  }

  v72 = ContentStream;
  v73 = *(v14 + 24);
  v74 = *(v14 + 40);
  *(ContentStream + 152) = *(v14 + 56);
  *(ContentStream + 136) = v74;
  *(ContentStream + 120) = v73;
  PDFContentStreamSetRedactionPath(ContentStream, *(*(v15 + 288) + 528));
  PDFContentStreamDrawImage(v72, a3, image, a5, a6, a7, a8);
  if (v66)
  {
    CFRelease(v66);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  return 0;
}

float64x2_t copyGState(uint64_t a1, uint64_t a2)
{
  Copy = CGGStateCreateCopy(a2);
  v4 = *(a1 + 80);
  v5 = *(Copy + 24);
  v6 = *(Copy + 40);
  v7 = vmulq_f64(v6, 0);
  v8 = vmlaq_n_f64(v7, v5, v4);
  result = vmlaq_f64(vmulq_n_f64(v6, v4), 0, v5);
  v10 = vaddq_f64(*(Copy + 56), vmlaq_f64(v7, 0, v5));
  *(Copy + 24) = v8;
  *(Copy + 40) = result;
  *(Copy + 56) = v10;
  return result;
}

double pdf_GetBounds(uint64_t a1)
{
  if (a1)
  {
    a1 = *(a1 + 288);
  }

  ContentStream = PDFDocumentGetContentStream(a1);
  if (ContentStream)
  {
    return ContentStream[9];
  }

  else
  {
    return 0.0;
  }
}

uint64_t pdf_Operation(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef cf1, const __CFDictionary *a5)
{
  v73 = 0uLL;
  if (a1)
  {
    v10 = *(a1 + 288);
  }

  else
  {
    v10 = 0;
  }

  if (!CFEqual(cf1, @"kCGContextStyle"))
  {
    if (CFEqual(cf1, @"BeginTag"))
    {
      LODWORD(value) = 0;
      if (CGCFDictionaryGetInteger(a5, @"TagType", &value))
      {
        v25 = value;
        v26 = CFDictionaryGetValue(a5, @"TagProperties");
        ContentStream = PDFDocumentGetContentStream(v10);
        if (ContentStream)
        {
          v28 = ContentStream;
          v29 = *ContentStream;
          if (*(*ContentStream + 584) == 2)
          {
            v30 = -1;
          }

          else
          {
            *(v29 + 584) = 1;
            if (!*(v29 + 600))
            {
              *(v29 + 600) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
              PDFDocumentPushTag(v29, 100, 0);
            }

            v30 = PDFDocumentPushTag(v29, v25, v26);
          }

          CGCFArrayAppendInt64(*(v28 + 22), v30);
          PDFWriterPrintf(*(v28 + 8), "/P << /MCID %d >> BDC");
          return 0;
        }
      }

      return 1000;
    }

    if (CFEqual(cf1, @"EndTag"))
    {
      v31 = PDFDocumentGetContentStream(v10);
      if (!v31)
      {
        return 1000;
      }

      PDFContentStreamEndTag(v31);
      return 0;
    }

    if (CFEqual(cf1, @"BeginTagWithMCID"))
    {
      v32 = CFDictionaryGetValue(a5, @"PageProperties");
      if (!v32)
      {
        return 1000;
      }

      v33 = v32;
      value = 0;
      if (!CGCFDictionaryGetNumber(a5, @"MCID", kCFNumberSInt64Type, &value))
      {
        return 1000;
      }

      v34 = PDFDocumentGetContentStream(v10);
      if (!v34)
      {
        return 1000;
      }

      PDFContentStreamBeginTagWithMCID(v34, v33, value);
      return 0;
    }

    if (CFEqual(cf1, @"BeginAccessibilitySpan"))
    {
      v40 = PDFDocumentGetContentStream(v10);
      if (v40)
      {
        PDFContentStreamBeginAccessibilitySpan(v40, a5);
        return 0;
      }

      return 1000;
    }

    if (CFEqual(cf1, @"EndAccessibilitySpan"))
    {
      v41 = PDFDocumentGetContentStream(v10);
      if (v41)
      {
        PDFWriterPrintf(v41[8], "EMC");
        return 0;
      }

      return 1000;
    }

    if (CFEqual(cf1, @"AddDestinationAtPoint"))
    {
      if (a5)
      {
        v42 = CFDictionaryGetValue(a5, @"Label");
        if (v42)
        {
          v43 = v42;
          if (CGCFDictionaryGetPoint(a5, @"Point", &v73))
          {
            DestinationSet = PDFDocumentGetDestinationSet(v10);
            Destination = PDFDestinationSetGetDestination(DestinationSet, v43);
            if (Destination)
            {
              v46 = *(v10 + 520);
              if (v46)
              {
                v47 = Destination;
                result = 0;
                v47[2] = *(v46 + 16);
                *(v47 + 3) = v73;
                return result;
              }
            }
          }
        }
      }

      return 1000;
    }

    if (CFEqual(cf1, @"AddAnnotation"))
    {
      result = 1000;
      if (a5)
      {
        v48 = *(v10 + 520);
        if (v48)
        {
          PDFDocumentAddAnnotationToPage(v10, v48, a5);
          return 0;
        }
      }

      return result;
    }

    if (CFEqual(cf1, @"AddCatalogEntry"))
    {
      if (a5)
      {
        v49 = CFDictionaryGetValue(a5, @"Key");
        v50 = CFDictionaryGetValue(a5, @"Value");
        PDFDocumentAddCatalogEntry(v10, v49, v50);
        return 0;
      }

      return 1000;
    }

    if (CFEqual(cf1, @"SetImageTag"))
    {
      if (a5)
      {
        v51 = CFDictionaryGetValue(a5, @"Image");
        v52 = CFDictionaryGetValue(a5, @"Tag");
        PDFDocumentAddImageTag(v10, v51, v52);
        return 0;
      }

      return 1000;
    }

    if (CFEqual(cf1, @"AddPDFXInfo"))
    {
      if (a5)
      {
        PDFDocumentAddPDFXInfo(v10, a5);
        return 0;
      }

      return 1000;
    }

    if (CFEqual(cf1, @"SetOutputIntent"))
    {
      if (a5)
      {
        if (*(v10 + 91) == 1)
        {
          pdf_error("SetOutputIntent cannot be used when generating PDF/A output");
        }

        else
        {
          PDFDocumentSetOutputIntent(v10, a5);
        }

        return 0;
      }

      return 1000;
    }

    if (CFEqual(cf1, @"ShouldDeflate"))
    {
      if (a5)
      {
        result = CFDictionaryGetValue(a5, @"ShouldDeflate");
        if (result)
        {
          v53 = CFBooleanGetValue(result);
          result = 0;
          *(v10 + 73) = v53 == 0;
        }

        return result;
      }

      return 1000;
    }

    if (CFEqual(cf1, @"BeginDrawingHiddenText"))
    {
      if (*(v10 + 520))
      {
        v54 = a1 ? *(a1 + 288) : 0;
        v56 = PDFDocumentGetContentStream(v54);
        if (v56)
        {
          v57 = v56;
          result = 0;
          v57[169] = 1;
          return result;
        }
      }

      return 1000;
    }

    if (CFEqual(cf1, @"EndDrawingHiddenText"))
    {
      if (*(v10 + 520))
      {
        v55 = a1 ? *(a1 + 288) : 0;
        v59 = PDFDocumentGetContentStream(v55);
        if (v59)
        {
          v60 = v59;
          result = 0;
          v60[169] = 0;
          return result;
        }
      }

      return 1000;
    }

    if (CFEqual(cf1, @"SetRedactionPath"))
    {
      if (a5)
      {
        v58 = CFDictionaryGetValue(a5, @"RedactionPath");
        PDFDocumentSetPageRedactionPath(v10, v58);
        return 0;
      }

      return 1000;
    }

    if (CFEqual(cf1, @"SetParentTree"))
    {
      if (a5)
      {
        v61 = CFDictionaryGetValue(a5, @"ParentTree");
        PDFDocumentSetParentTree(v10, v61);
        return 0;
      }

      return 1000;
    }

    if (CFEqual(cf1, @"SetIDTree"))
    {
      if (a5)
      {
        v62 = CFDictionaryGetValue(a5, @"IDTree");
        PDFDocumentSetIDTree(v10, v62);
        return 0;
      }

      return 1000;
    }

    if (CFEqual(cf1, @"SetPageTagStructureTree"))
    {
      if (a5)
      {
        PDFDocumentSetPageTagStructureTree(v10, a5);
        return 0;
      }

      return 1000;
    }

    if (CFEqual(cf1, @"BeginMarkedContentSequence"))
    {
      LODWORD(value) = 0;
      if (CGCFDictionaryGetInteger(a5, @"TagType", &value))
      {
        PDFDocumentBeginMarkedContentSequence(v10, value);
        return 0;
      }

      return 1000;
    }

    if (CFEqual(cf1, @"BeginStructuralMarkedContentSequence"))
    {
      LODWORD(value) = 0;
      if (!CGCFDictionaryGetInteger(a5, @"TagType", &value))
      {
        return 1000;
      }

      v63 = [(__CFDictionary *)a5 valueForKey:@"MarkedContentItem"];
      if (!v63)
      {
        return 1000;
      }

      v64 = [v63 pointerValue];
      if (!v64)
      {
        return 1000;
      }

      v65 = v64;
      v66 = PDFDocumentBeginStructuralMarkedContentSequence(v10, value);
    }

    else
    {
      if (CFEqual(cf1, @"EndMarkedContentSequence"))
      {
        PDFDocumentEndMarkedContentSequence(v10);
        return 0;
      }

      if (!CFEqual(cf1, @"BeginObjectReference"))
      {
        if (CFEqual(cf1, @"EndObjectReference"))
        {
          PDFDocumentEndObjectReference(v10);
          return 0;
        }

        if (!CFEqual(cf1, @"AddStructureTreeRootChild"))
        {
          return 1006;
        }

        v70 = [(__CFDictionary *)a5 valueForKey:@"StructureElement"];
        if (v70)
        {
          v71 = [v70 pointerValue];
          if (v71)
          {

            return PDFDocumentAddStructureTreeRootChild(v10, v71);
          }
        }

        return 1000;
      }

      v67 = [(__CFDictionary *)a5 valueForKey:@"MarkedContentItem"];
      if (!v67)
      {
        return 1000;
      }

      v68 = [v67 pointerValue];
      if (!v68)
      {
        return 1000;
      }

      v65 = v68;
      v66 = PDFDocumentBeginObjectReference(v10);
    }

    v69 = v66;
    result = 0;
    *v65 = v69;
    return result;
  }

  v11 = PDFDocumentGetContentStream(v10);
  if (!v11)
  {
    return 1000;
  }

  v12 = v11;
  v13 = *(a2 + 24);
  v14 = *(a2 + 40);
  *(v11 + 152) = *(a2 + 56);
  *(v11 + 136) = v14;
  *(v11 + 120) = v13;
  result = CFDictionaryGetValue(a5, @"kCGContextStyleType");
  if (result)
  {
    v16 = result;
    PDFWriterAnnotate(*(v12 + 8), "%s: BEGIN: Draw style.", "PDFContentStreamDrawStyle");
    PDFWriterAnnotate(*(v12 + 8), "  Forcing gstate reset:");
    PDFGStateReset(*(v12 + 13));
    PDFGStateEmit(*(v12 + 13));
    PDFGStateSetClipStack(*(v12 + 13), *(a3 + 112));
    PDFWriterAnnotate(*(v12 + 8), "  BEGIN: Drawing style:");
    if (CFEqual(v16, @"kCGContextStyleBegin"))
    {
      PDFWriterPrintf(*(v12 + 8), "/AAPL:Style");
      v17 = CFDictionaryGetValue(a5, @"kCGContextStyle");
      v18 = *v12;
      v19 = *(*v12 + 448);
      if (!v19)
      {
        v19 = malloc_type_calloc(1uLL, 0x20uLL, 0x102004055CCDE27uLL);
        __CFSetLastAllocationEventName();
        if (!v19)
        {
          *(v18 + 448) = 0;
          v39 = *(v12 + 136);
          v74 = *(v12 + 120);
          v75 = v39;
          v76 = *(v12 + 152);
LABEL_45:
          v37 = *(v12 + 14);
          v38 = *(v37 + 80);
          if (!v38)
          {
            v38 = CGOrderedSetCreate();
            *(v37 + 80) = v38;
          }

          CGOrderedSetAddValue(v38, v19);
          PDFWriterPrintf(*(v12 + 8), "/%s BDC");
          goto LABEL_48;
        }

        *v19 = v18;
        *(v18 + 448) = v19;
      }

      v20 = *(v12 + 136);
      v74 = *(v12 + 120);
      v75 = v20;
      v76 = *(v12 + 152);
      if (!v19[1])
      {
        v19[1] = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &callbacks_1448);
      }

      value = 0;
      v21 = *v19;
      v22 = malloc_type_calloc(1uLL, 0x70uLL, 0x107004096ED8F47uLL);
      __CFSetLastAllocationEventName();
      if (v22)
      {
        *v22 = 1;
        *(v22 + 1) = v21;
        *(v22 + 2) = 0;
        *(v22 + 24) = 0;
        *(v22 + 40) = 0;
        v22[11] = 0;
        v23 = malloc_type_malloc(6uLL, 0x988CEA4BuLL);
        __CFSetLastAllocationEventName();
        *(v22 + 13) = v23;
        if (v23)
        {
          strcpy(v23, "Style");
          v22[11] = 1;
          if (v17)
          {
            CFRetain(v17);
          }

          *(v22 + 6) = v17;
          v24 = v75;
          *(v22 + 14) = v74;
          *(v22 + 18) = v24;
          *(v22 + 22) = v76;
        }

        else
        {
          PDFPropertyListRelease(v22);
          v22 = 0;
        }
      }

      if (!CFSetGetValueIfPresent(v19[1], v22, &value))
      {
        v35 = *(v19 + 6) + 1;
        *(v19 + 6) = v35;
        snprintf_l(v22 + 24, 0x10uLL, 0, "Pl%u", v35);
        CFSetAddValue(v19[1], v22);
        value = v22;
      }

      PDFPropertyListRelease(v22);
      v36 = v19[2];
      if (!v36)
      {
        v36 = CGOrderedSetCreate();
        v19[2] = v36;
      }

      CGOrderedSetAddValue(v36, value);
      v19 = value;
      goto LABEL_45;
    }

    if (!CFEqual(v16, @"kCGContextStyleEnd"))
    {
      if (CFEqual(v16, @"kCGContextStyleContentBegin"))
      {
        PDFWriterPrintf(*(v12 + 8), "/AAPL:StyleContent BMC");
        goto LABEL_48;
      }

      if (!CFEqual(v16, @"kCGContextStyleContentEnd"))
      {
        goto LABEL_48;
      }
    }

    PDFWriterPrintf(*(v12 + 8), "EMC", v72);
LABEL_48:
    PDFWriterAnnotate(*(v12 + 8), "  END: Drawing style:");
    PDFWriterAnnotate(*(v12 + 8), "%s: END: Draw style.", "PDFContentStreamDrawStyle");
    return 0;
  }

  return result;
}