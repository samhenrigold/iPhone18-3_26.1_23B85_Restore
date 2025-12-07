void add_horizontal_advance(uint64_t a1, unint64_t a2, __n128 a3)
{
  v3 = a3.n128_u64[0];
  if (a2 > 0xFF)
  {
    if ((add_advance(*(a1 + 2056), a2, 0, a3.n128_f64[0]) & 1) == 0)
    {
      v6 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A0040BC834EA0uLL);
      __CFSetLastAllocationEventName();
      if (v6)
      {
        v6[2] = a2;
        v6[3] = v3;
        v6[4] = 0;
        v6[7] = 0;
        *v6 = *(a1 + 2056);
        v6[1] = a2;
        *(a1 + 2056) = v6;
      }
    }
  }

  else
  {
    *(a1 + 8 * a2) = a3.n128_u64[0];
  }
}

void add_vertical_advance(uint64_t a1, unint64_t a2, __n128 a3, double a4, double a5)
{
  v5 = a3.n128_u64[0];
  *&v9 = a4;
  *(&v9 + 1) = a5;
  if ((add_advance(*(a1 + 2080), a2, &v9, a3.n128_f64[0]) & 1) == 0)
  {
    v8 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A0040BC834EA0uLL);
    __CFSetLastAllocationEventName();
    if (v8)
    {
      *(v8 + 2) = a2;
      *(v8 + 3) = v5;
      *(v8 + 40) = v9;
      *(v8 + 4) = 0;
      *(v8 + 7) = 0;
      *v8 = *(a1 + 2080);
      *(v8 + 1) = a2;
      *(a1 + 2080) = v8;
    }
  }
}

void CGPDFAdvancesRelease(void *a1)
{
  if (a1)
  {
    advance_subset_release(a1[257]);
    advance_subset_release(a1[260]);

    free(a1);
  }
}

void advance_subset_release(void **a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      free(v1[4]);
      free(v1[7]);
      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t add_advance(uint64_t result, unint64_t a2, double *a3, double a4)
{
  if (result)
  {
    v7 = 0;
    do
    {
      v8 = *(result + 8);
      v9 = a2 >= v8;
      v10 = a2 - v8;
      if (!v9)
      {
        break;
      }

      v11 = *(result + 16);
      if (v11 >= a2)
      {
        v16 = *(result + 32);
        v17 = (v16 + 8 * v10);
        if (!v16)
        {
          v17 = (result + 24);
        }

        if (*v17 != a4)
        {
          pdf_error("advance for index %zu already specified.", a2);
          return 0;
        }

        return 1;
      }

      if (v11 + 1 == a2)
      {
        v7 = result;
      }

      result = *result;
    }

    while (result);
    if (!v7)
    {
      return 0;
    }

    v12 = *(v7 + 16);
    if (v12 + 1 != a2)
    {
      _CGHandleAssert("add_advance_to_subset", 418, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Text/Advances/CGPDFAdvances.c", "index == subset->last + 1", "index: %zu  last: %zu", a2, v12);
    }

    v13 = *(v7 + 32);
    if (v13)
    {
      v15 = (v7 + 8);
      v14 = *(v7 + 8);
      if ((v12 - v14 - 255) < 0xFFFFFFFFFFFFFEFFLL)
      {
        return 0;
      }
    }

    else
    {
      if (*(v7 + 24) == a4 && (!a3 || !*(v7 + 56) && *(v7 + 40) == *a3 && *(v7 + 48) == a3[1]))
      {
        *(v7 + 16) = a2;
        return 1;
      }

      v15 = (v7 + 8);
      if ((v12 - *(v7 + 8) - 255) < 0xFFFFFFFFFFFFFEFFLL)
      {
        return 0;
      }

      result = malloc_type_malloc(0x800uLL, 0x100004000313F17uLL);
      if (!result)
      {
        return result;
      }

      v13 = result;
      v18 = 0;
      v19 = (v7 + 24);
      v20 = vld1q_dup_f64(v19);
      do
      {
        *(result + v18) = v20;
        v18 += 16;
      }

      while (v18 != 2048);
      v14 = *v15;
    }

    v21 = a2 - v14;
    v13[a2 - v14] = a4;
    v22 = *(v7 + 56);
    if (a3)
    {
      if (!v22)
      {
        v22 = malloc_type_malloc(0x1000uLL, 0x1000040451B5BE8uLL);
        if (!v22)
        {
          free(v13);
          return 0;
        }

        for (i = 0; i != 256; ++i)
        {
          v22[i] = *(v7 + 40);
        }

        v21 = a2 - *v15;
      }

      v22[v21] = *a3;
    }

    *(v7 + 32) = v13;
    *(v7 + 56) = v22;
    ++*(v7 + 16);
    return 1;
  }

  return result;
}

double CGPDFAdvancesGetHorizontalAdvance(uint64_t a1, unint64_t a2)
{
  if (a2 > 0xFF)
  {
    v3 = *(a1 + 2056);
    if (v3)
    {
      while (1)
      {
        v4 = v3[1];
        v5 = a2 >= v4;
        v6 = a2 - v4;
        if (v5 && v3[2] >= a2)
        {
          break;
        }

        v3 = *v3;
        if (!v3)
        {
          goto LABEL_8;
        }
      }

      v7 = v3[4];
      v8 = (v7 + 8 * v6);
      v2 = v3 + 3;
      if (v7)
      {
        v2 = v8;
      }
    }

    else
    {
LABEL_8:
      v2 = (a1 + 2048);
    }
  }

  else
  {
    v2 = (a1 + 8 * a2);
  }

  return *v2;
}

double CGPDFAdvancesGetVerticalAdvance(void *a1, unint64_t a2, uint64_t a3)
{
  v5 = a1[260];
  if (v5)
  {
    while (1)
    {
      v6 = v5[1];
      v7 = a2 >= v6;
      v8 = a2 - v6;
      if (v7 && v5[2] >= a2)
      {
        break;
      }

      v5 = *v5;
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v13 = v5[7];
    v14 = (v13 + 16 * v8);
    if (!v13)
    {
      v14 = v5 + 5;
    }

    *a3 = *v14;
    v15 = v5[4];
    if (v15)
    {
      v11 = (v15 + 8 * (a2 - v5[1]));
    }

    else
    {
      v11 = v5 + 3;
    }
  }

  else
  {
LABEL_6:
    HorizontalAdvance = CGPDFAdvancesGetHorizontalAdvance(a1, a2);
    v10 = a1[259];
    *a3 = HorizontalAdvance * 0.5;
    *(a3 + 8) = v10;
    v11 = a1 + 258;
  }

  return *v11;
}

uint64_t CGPDFAdvancesValidate(uint64_t result)
{
  v1 = result;
  v2 = *(result + 2056);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = v2;
      result = validate_subset(72, v4++, v2, v3);
      v2 = *v5;
      v3 = v5;
    }

    while (*v5);
  }

  v6 = *(v1 + 2080);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v6;
      result = validate_subset(86, v8++, v6, v7);
      v6 = *v9;
      v7 = v9;
    }

    while (*v9);
  }

  return result;
}

uint64_t validate_subset(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *(a3 + 8);
  if (v8 <= 0xFF)
  {
    result = fprintf(*MEMORY[0x1E69E9848], "%s: subset %zu (%c): first = %zu; last = %zu\n", "CGPDFAdvancesValidate", a2, result, *(a3 + 8), *(a3 + 16));
    v8 = *(a3 + 8);
  }

  v9 = *(a3 + 16);
  if (v8 > v9)
  {
    result = fprintf(*MEMORY[0x1E69E9848], "%s: subset %zu (%c): first = %zu; last = %zu\n", "CGPDFAdvancesValidate", a2, v7, v8, v9);
  }

  if (a4)
  {
    v10 = *(a4 + 16);
    if (v10 >= *(a3 + 8))
    {
      return fprintf(*MEMORY[0x1E69E9848], "%s: subset %zu (%c): first = %zu, last = %zu; subset %zu (%c): first = %zu, last = %zu\n", "CGPDFAdvancesValidate", a2 - 1, v7, *(a4 + 8), v10, a2, v7, *(a3 + 8), *(a3 + 16));
    }
  }

  return result;
}

uint64_t CGPDFAdvancesPrint(uint64_t a1, FILE *__stream)
{
  fwrite("Subset 0:\n", 0xAuLL, 1uLL, __stream);
  for (i = 0; i != 256; ++i)
  {
    result = fprintf(__stream, "%lu: %g\n", i, *(a1 + 8 * i));
  }

  v6 = *(a1 + 2056);
  if (v6)
  {
    v7 = 1;
    do
    {
      v8 = v7 + 1;
      result = print_subset(__stream, 72, v6, v7);
      v6 = *v6;
      v7 = v8;
    }

    while (v6);
  }

  v9 = *(a1 + 2080);
  if (v9)
  {
    v10 = 0;
    do
    {
      v11 = v10 + 1;
      result = print_subset(__stream, 86, v9, v10);
      v9 = *v9;
      v10 = v11;
    }

    while (v9);
  }

  return result;
}

uint64_t print_subset(FILE *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a2;
  result = fprintf(a1, "Subset %zu (%c):\n", a4, a2);
  v8 = a3[4];
  if (v5 == 72)
  {
    v9 = a3[1];
    if (v8)
    {
      for (; v9 <= a3[2]; ++v9)
      {
        result = fprintf(a1, "%zu: %g\n", v9, *(a3[4] - 8 * a3[1] + 8 * v9));
      }
    }

    else
    {
      return fprintf(a1, "%zu - %zu: %g\n");
    }
  }

  else if (v8)
  {
    v10 = a3[1];
    if (v10 <= a3[2])
    {
      v11 = 16 * v10;
      do
      {
        v12 = a3[1];
        v13 = *(a3[4] - 8 * v12 + 8 * v10);
        v14 = (a3[7] - 16 * v12 + v11);
        result = fprintf(a1, "%zu: %g (%g %g)\n", v10++, v13, *v14, v14[1]);
        v11 += 16;
      }

      while (v10 <= a3[2]);
    }
  }

  else
  {
    if (a3[7])
    {
      _CGHandleAssert("print_subset", 233, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Text/Advances/CGPDFAdvances.c", "s->offsets == NULL", "NULL offsets");
    }

    return fprintf(a1, "%zu - %zu: %g (%g %g)\n");
  }

  return result;
}

void show_steps(void *cf, uint64_t a2)
{
  if (!cf)
  {
    goto LABEL_9;
  }

  v3 = a2;
  v4 = CFGetTypeID(cf);
  if (CGColorConversionInfoGetTypeID_predicate != -1)
  {
    dispatch_once(&CGColorConversionInfoGetTypeID_predicate, &__block_literal_global_1190);
  }

  if (v4 == kCGColorConverterRuntimeID && (color_conversion_step_info = create_color_conversion_step_info(cf, v3)) != 0)
  {
    v6 = color_conversion_step_info;
    CGLog(4, "%@", color_conversion_step_info);

    CFRelease(v6);
  }

  else
  {
LABEL_9:
    CGLog(4, "Nothing to show for <%p> CGColorConversionInfo", cf);
  }
}

uint64_t create_color_conversion_step_info(void *a1, unsigned int a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = __create_color_conversion_step_info_block_invoke;
  v11[3] = &unk_1E6E179F0;
  v11[4] = &v13;
  v11[5] = a1;
  v12 = a2;
  v9[4] = &v13;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __create_color_conversion_step_info_block_invoke_2;
  v10[3] = &unk_1E6E17A18;
  v10[4] = &v13;
  v8[4] = &v13;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __create_color_conversion_step_info_block_invoke_3;
  v9[3] = &unk_1E6E17A40;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __create_color_conversion_step_info_block_invoke_4;
  v8[3] = &unk_1E6E17A68;
  if (CGColorConversionInfoIterateFunctionsWithCallbacks(a1, a2, v11, v10, v9, v8, 2u, 0))
  {
    v2 = v14;
    v3 = v14[3];
    if (v3)
    {
      Length = CFStringGetLength(v3);
      v2 = v14;
      if (Length >= 1)
      {
        CFStringAppend(v14[3], @"*********************************************************************************\n");
        v2 = v14;
      }
    }
  }

  else
  {
    fwrite("CGColorConversionInfoIterateFunctionsWithCallbacks failed!\n", 0x3BuLL, 1uLL, *MEMORY[0x1E69E9848]);
    v2 = v14;
    v5 = v14[3];
    if (v5)
    {
      CFRelease(v5);
      v2 = v14;
    }

    v2[3] = 0;
  }

  v6 = v2[3];
  _Block_object_dispose(&v13, 8);
  return v6;
}

__CFString *__create_color_conversion_step_info_block_invoke(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v6 = CFGetAllocator(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = CFStringCreateMutable(v6, 0);
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    CFStringAppend(result, @"\n*************************************************************************\n");
    v8 = *(a1 + 48);
    if (v8 > 2)
    {
      v9 = "(?)";
    }

    else
    {
      v9 = off_1E6E17AA8[v8];
    }

    CFStringAppendFormat(*(*(*(a1 + 32) + 8) + 24), 0, @"CGColorConversionInfo show steps for %s\n", v9);
    CFStringAppend(*(*(*(a1 + 32) + 8) + 24), @"*************************************************************************\n");
    v10 = CFCopyDescription(*(a1 + 40));
    CFStringAppendFormat(*(*(*(a1 + 32) + 8) + 24), 0, @"CGColorConversionInfo info:\n %@", v10);
    CFRelease(v10);
    v11 = *(*(*(a1 + 32) + 8) + 24);
    v12 = *(a2 + 4);
    v13 = *(a2 + 12);
    v14 = *(a2 + 20);
    v15 = *(a2 + 28);
    v16 = *(a2 + 36);
    v17 = *(a2 + 44);
    CFStringAppendFormat(v11, 0, @"    %d stages\n", v12);
    CFStringAppendFormat(v11, 0, @"    %d input components\n", v13);
    CFStringAppendFormat(v11, 0, @"    %d output components\n", v14);
    CFStringAppendFormat(v11, 0, @"    %d TRCs\n", v15);
    CFStringAppendFormat(v11, 0, @"    %d Matrices\n", v16);
    CFStringAppendFormat(v11, 0, @"    %d NxM Transforms\n", v17);
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a3);
    if (MutableCopy)
    {
      v19 = MutableCopy;
      Value = CFDictionaryGetValue(MutableCopy, @"com.apple.cmm.ProfileSequence");
      if (Value)
      {
        v21 = Value;
        v22 = CFGetTypeID(Value);
        if (v22 == CFArrayGetTypeID())
        {
          v23 = CFArrayCreateMutableCopy(0, 0, v21);
          if (v23)
          {
            v24 = v23;
            Count = CFArrayGetCount(v23);
            if (Count)
            {
              v26 = Count;
              for (i = 0; i != v26; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v24, i);
                if (ValueAtIndex)
                {
                  v29 = ValueAtIndex;
                  v30 = CFGetTypeID(ValueAtIndex);
                  if (v30 == CFDictionaryGetTypeID())
                  {
                    v31 = CFDictionaryCreateMutableCopy(0, 0, v29);
                    if (v31)
                    {
                      v32 = v31;
                      v33 = CFDictionaryGetValue(v31, @"ColorSyncProfile");
                      if (v33)
                      {
                        v34 = v33;
                        if (copy_hints_description_cglibrarypredicate != -1)
                        {
                          dispatch_once(&copy_hints_description_cglibrarypredicate, &__block_literal_global_2974);
                        }

                        v35 = copy_hints_description_f(v34);
                        if (v35)
                        {
                          v36 = v35;
                          Mutable = CFStringCreateMutable(0, 0);
                          if (Mutable)
                          {
                            v38 = Mutable;
                            CFStringAppendFormat(Mutable, 0, @"<%p> %@", v34, v36);
                            CFDictionarySetValue(v32, @"ColorSyncProfile", v38);
                            CFRelease(v38);
                          }

                          CFRelease(v36);
                        }
                      }

                      CFArraySetValueAtIndex(v24, i, v32);
                      CFRelease(v32);
                    }
                  }
                }
              }
            }

            CFDictionarySetValue(v19, @"com.apple.cmm.ProfileSequence", v24);
            CFRelease(v24);
          }
        }
      }

      v39 = CFCopyDescription(v19);
      CFRelease(v19);
    }

    else
    {
      v39 = 0;
    }

    CFStringAppendFormat(*(*(*(a1 + 32) + 8) + 24), 0, @"ColorSync Profile Sequence info:\n%@\n", v39);
    CFRelease(v39);
    CFStringAppend(*(*(*(a1 + 32) + 8) + 24), @"----------------------------------------\n");
    CFStringAppend(*(*(*(a1 + 32) + 8) + 24), @"               STAGES \n");
    CFStringAppend(*(*(*(a1 + 32) + 8) + 24), @"----------------------------------------\n");
    return (*(*(*(a1 + 32) + 8) + 24) != 0);
  }

  return result;
}

uint64_t __create_color_conversion_step_info_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(*(a1 + 32) + 8) + 24);
  v8 = *(a2 + 52);
  CFStringAppendFormat(v7, 0, @"Stage = %ld, %ld TRCs\n", a3, a4);
  if (a4 >= 1)
  {
    v9 = 0;
    do
    {
      v26 = 0.0;
      v24 = 0u;
      v25 = 0u;
      CGColorTRCGetFunction(*(v8 + 8 * *(a5 + 8 * v9)), &v24);
      v10 = *(v8 + 8 * *(a5 + 8 * v9));
      if (CGColorTRCGetGammaID_cglibrarypredicate != -1)
      {
        dispatch_once(&CGColorTRCGetGammaID_cglibrarypredicate, &__block_literal_global_8);
      }

      v11 = CGColorTRCGetGammaID_f(v10);
      v12 = v24;
      if ((v24 - 6) >= 5 && v24 >= 5)
      {
        v14 = "NO";
      }

      else
      {
        v14 = "YES";
      }

      if (v24 == -1)
      {
        CFStringAppend(v7, @"kCGColorTRCParametricInv709_1886_EOTF_Type: handled\n");
      }

      if (v11 >= 0x12)
      {
        __assert_rtn("gamma_id_by_name", "CGColorConversionInfoShow.c", 228, "0");
      }

      CFStringAppendFormat(v7, 0, @"    TRC channel %d --> TRCs[%ld], parametric = %s gammaID = %s\n", v9, *(a5 + 8 * v9), v14, off_1E6E17AC0[v11]);
      Properties = CGColorFunctionGetProperties(*(v8 + 8 * *(a5 + 8 * v9)));
      if (v12 <= 4)
      {
        if (v12 <= 1)
        {
          if (v12)
          {
            if (v12 == 1)
            {
              CFStringAppendFormat(v7, 0, @"\t\tType1: Y = (%g*X+%g)^%g [X >= %g],  Y = 0 [X < %g]\n", *(&v24 + 2), *(&v24 + 3), *(&v24 + 1), (-*(&v24 + 3) / *(&v24 + 2)), (-*(&v24 + 3) / *(&v24 + 2)), v21, v22, v23);
            }
          }

          else
          {
            CFStringAppendFormat(v7, 0, @"\t\tType0: Y = X^% 3.10f \n", *(&v24 + 1), v17, v18, v19, v20, v21, v22, v23);
          }
        }

        else if (v12 == 2)
        {
          CFStringAppendFormat(v7, 0, @"\t\tType2: Y = (%g*X+%g)^%g + % 3.10f [X >= %g],  Y = %g [X < %g]\n", *(&v24 + 2), *(&v24 + 3), *(&v24 + 1), *&v25, (-*(&v24 + 3) / *(&v24 + 2)), *&v25, (-*(&v24 + 3) / *(&v24 + 2)), v23);
        }

        else if (v12 == 3)
        {
          CFStringAppendFormat(v7, 0, @"\t\tType3: Y = (%g*X+%g)^%g [X >= %g],  Y = %g*X [X < %g]\n", *(&v24 + 2), *(&v24 + 3), *(&v24 + 1), *(&v25 + 1), *&v25, *(&v25 + 1), v22, v23);
        }

        else
        {
          CFStringAppendFormat(v7, 0, @"\t\tType4: Y = (%g*X+%g)^%g + %g [X >= %g], Y = %g*X + %g [X < %g]\n", *(&v24 + 2), *(&v24 + 3), *(&v24 + 1), *(&v25 + 2), *(&v25 + 1), *&v25, *(&v25 + 3), *(&v25 + 1));
        }
      }

      else if (v12 > 7)
      {
        switch(v12)
        {
          case 8:
            CFStringAppendFormat(v7, 0, @"\t\tHLG_InvOETF_Type: Y = Reference_HLG_InvOETF(X)  [a = %g, b = %g, c = %g, d = %g, e = %g, f = %g]\n", *(&v24 + 2), *(&v24 + 3), *&v25, *(&v25 + 1), *(&v25 + 2), *(&v25 + 3), v22, v23);
            break;
          case 9:
            CFStringAppendFormat(v7, 0, @"\t\tHLG_OETF_Type: Y = Reference_HLG_OETF(X)  [a = %g, b = %g, c = %g, d = %g e = %g]\n", *(&v24 + 2), *(&v24 + 3), *&v25, *(&v25 + 1), *(&v25 + 2), v21, v22, v23);
            break;
          case 10:
            CFStringAppendFormat(v7, 0, @"\t\tEXRToneMap_Type: Y = EXR Tone Mapping Gamma(X)  [defog = %g, exposure_scale = %g, kneeLow = %g, kneeHigh = %g, intermediate_gamma = %g, intensity_scale = %g]\n", *(&v24 + 2), *(&v24 + 3), *&v25, *(&v25 + 1), *(&v25 + 2), *(&v25 + 3), v22, v23);
            break;
        }
      }

      else if (v12 == 5)
      {
        CFStringAppendFormat(v7, 0, @"\t\tTable: entries = %zu\n", *(&v24 + 4));
        CFStringAppendFormat(v7, 0, @"\t\t\tColorSyncBoundaryExtension neg: slope = %g intercept = %g\n", *(&v25 + 3), v26);
        CFStringAppendFormat(v7, 0, @"\t\t\tColorSyncBoundaryExtension pos: slope = %g intercept = %g\n", *(&v25 + 1), *(&v25 + 2), v18, v19, v20, v21, v22, v23);
      }

      else if (v12 == 6)
      {
        CFStringAppendFormat(v7, 0, @"\t\tPQ_EOTF_Type: Y = Reference_PQ_EOTF(X)  [a = %g, b = %g, c = %g, d = %g, e = %g, f = %g]\n", *(&v24 + 2), *(&v24 + 3), *&v25, *(&v25 + 1), *(&v25 + 2), *(&v25 + 3), v22, v23);
      }

      else
      {
        CFStringAppendFormat(v7, 0, @"\t\tPQ_InvEOTF_Type: Y = Reference_PQ_InvEOTF(X)  [a = %g, b = %g, c = %g, d = %g, e = %g, f = %g, g = %g]\n", *(&v24 + 2), *(&v24 + 3), *&v25, *(&v25 + 1), *(&v25 + 2), *(&v25 + 3), v26, v23);
      }

      append_properties_info(v7, Properties);
      append_range_info(v7, *(v8 + 8 * *(a5 + 8 * v9++)));
    }

    while (a4 != v9);
  }

  return 1;
}

uint64_t __create_color_conversion_step_info_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(*(a1 + 32) + 8) + 24);
  v7 = *(a2 + 60);
  memset(v13, 0, sizeof(v13));
  v8 = v13;
  CGColorMatrixGetMatrix(*(v7 + 8 * a4), v13);
  Properties = CGColorFunctionGetProperties(*(v7 + 8 * a4));
  CFStringAppendFormat(v6, 0, @"Stage = %ld, matrix index = %ld\n", a3, a4);
  for (i = 0; i != 3; ++i)
  {
    CFStringAppend(v6, @"\t");
    for (j = 0; j != 16; j += 4)
    {
      CFStringAppendFormat(v6, 0, @"% 3.10f ", *(v8 + j));
    }

    CFStringAppend(v6, @"\n");
    ++v8;
  }

  append_properties_info(v6, Properties);
  append_range_info(v6, *(v7 + 8 * a4));
  return 1;
}

uint64_t __create_color_conversion_step_info_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(*(a1 + 32) + 8) + 24);
  v7 = *(a2 + 68);
  memset(v22, 0, 36);
  CGColorNxMTransformGetTransform(*(v7 + 8 * a4), v22);
  v8 = *(v7 + 8 * a4);
  if (CGColorNxMTransformGetVersion_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorNxMTransformGetVersion_cglibrarypredicate, &__block_literal_global_32);
  }

  Version_f = CGColorNxMTransformGetVersion_f(v8);
  Properties = CGColorFunctionGetProperties(*(v7 + 8 * a4));
  v11 = v22[0];
  v12 = "?";
  if (LODWORD(v22[0]) <= 0xB)
  {
    v12 = off_1E6E17B50[LODWORD(v22[0])];
  }

  CFStringAppendFormat(v6, 0, @"Stage = %ld, %zu inputs x %zu outputs %s index = %ld\n", a3, *(v22 + 4), v12, a4);
  if (v11 > 9)
  {
    if (v11 != 10)
    {
      if (v11 == 11)
      {
        CFStringAppendFormat(v6, 0, @"\tFlex Luminance Scaling params:\n\t\tsource headroom = % 3.10f\n\t\ttarget headroom = % 3.10f\n\t\tcoefficients[0] = % 3.10f\n\t\tcoefficients[1] = % 3.10f\n\t\tcoefficients[2] = % 3.10f\n\t\tcoefficients[3] = % 3.10f\n\t\tcoefficients[4] = % 3.10f\n\t\tFlexGTCTableCount = %zu\n\t\tFlexGTCTable = %p\n", **(&v22[1] + 12), *(*(&v22[1] + 12) + 4), *(*(&v22[1] + 12) + 8), *(*(&v22[1] + 12) + 12), *(*(&v22[1] + 12) + 16), *(*(&v22[1] + 12) + 20), *(*(&v22[1] + 12) + 24), *(*(&v22[1] + 12) + 28), *(&v22[1] + 12) + 36);
        goto LABEL_27;
      }

      if (v11 == 12)
      {
        CFStringAppendFormat(v6, 0, @"\tLuminance scaling params: \n\t\tgamma = % 3.10f\n\t\tparams->luminance_coefficients[0] = % 3.10f\n\t\tparams->luminance_coefficients[1] = % 3.10f\n\t\tparams->luminance_coefficients[2] = % 3.10f\n\t\tparams->luminance_coefficients[3] = % 3.10f\n", **(&v22[1] + 12), *(*(&v22[1] + 12) + 4), *(*(&v22[1] + 12) + 8), *(*(&v22[1] + 12) + 12), *(*(&v22[1] + 12) + 16));
        goto LABEL_27;
      }

LABEL_22:
      if (v11 > 6)
      {
        CFStringAppendFormat(v6, 0, @"\t\tUnknown format\n\n", v17, v18, v19, v20, v21);
      }

      else
      {
        CFStringAppendFormat(v6, 0, @"\t\tGrid point count = %zu\n\n", *(&v22[1] + 4), v18, v19, v20, v21);
      }

      goto LABEL_27;
    }

    if (Version_f == 2)
    {
      CFStringAppendFormat(v6, 0, @"\tReference White Tone Mapping params:\n\t\tversion = % d\n\t\tluminance scale = % 3.10f\n\t\tslope = % 3.10f\n\t\tsource headroom = % 3.10f\n\t\ttarget hearoom = % 3.10f\n\t\textension offset = % 3.10f\n\t\textension weight = % 3.10f\n\t\toutput gamma = % 3.10f\n\t\tcofficient a = % 3.10f\n\t\tcofficient b = % 3.10f\n\t\tcofficient c = % 3.10f\n\t\tcofficient d = % 3.10f\n\t\tcofficient e = % 3.10f\n", **(&v22[1] + 12), *(*(&v22[1] + 12) + 4), *(*(&v22[1] + 12) + 8), *(*(&v22[1] + 12) + 12), *(*(&v22[1] + 12) + 16), *(*(&v22[1] + 12) + 20), *(*(&v22[1] + 12) + 24), *(*(&v22[1] + 12) + 28), *(*(&v22[1] + 12) + 48), *(*(&v22[1] + 12) + 52), *(*(&v22[1] + 12) + 56), *(*(&v22[1] + 12) + 60), *(*(&v22[1] + 12) + 64));
    }

    else
    {
      CFStringAppendFormat(v6, 0, @"\tReference White Tone Mapping (version 0) params:\n\t\tluminance scale = % 3.10f\n\t\tadjusted source headroom = % 3.10f\n\t\ttarget headroom = % 3.10f\n\t\ttarget reference white = % 3.10f\n\t\tcofficient a = % 3.10f\n\t\tcofficient b = % 3.10f\n\t\tcofficient c = % 3.10f\n\t\tcofficient d = % 3.10f\n\t\tcofficient e = % 3.10f\n", **(&v22[1] + 12), *(*(&v22[1] + 12) + 4), *(*(&v22[1] + 12) + 8), *(*(&v22[1] + 12) + 12), *(*(&v22[1] + 12) + 20), *(*(&v22[1] + 12) + 24), *(*(&v22[1] + 12) + 28), *(*(&v22[1] + 12) + 32), *(*(&v22[1] + 12) + 36));
    }
  }

  else
  {
    if (v11 != 7)
    {
      if (v11 == 8)
      {
        CFStringAppendFormat(v6, 0, @"\tHLG Scene Referred Mapping params: \n\t\tgamma = % 3.10f gain = % 3.10f\n\t\tparams->luminance_coefficients[0] = % 3.10f\n\t\tparams->luminance_coefficients[1] = % 3.10f\n\t\tparams->luminance_coefficients[2] = % 3.10f\n\t\tparams->luminance_coefficients[3] = % 3.10f\n", **(&v22[1] + 12), *(*(&v22[1] + 12) + 4), *(*(&v22[1] + 12) + 8), *(*(&v22[1] + 12) + 12), *(*(&v22[1] + 12) + 16), *(*(&v22[1] + 12) + 20));
        goto LABEL_27;
      }

      if (v11 == 9)
      {
        CFStringAppendFormat(v6, 0, @"\tPQ tone mapping params:\n\t\tparams->pq_eotf.m1 = % 3.10f\n\t\tparams->pq_eotf.m2 = % 3.10f\n\n\t\tparams->pq_eotf.c1 = % 3.10f\n\t\tparams->pq_eotf.c2 = % 3.10f\n\t\tparams->pq_eotf.c3 = % 3.10f\n\n\t\tparams->pq_eetf.masterPeakInv = % 3.10f\n\t\tparams->pq_eetf.masterBlackInv = % 3.10f\n\t\tparams->pq_eetf.maxLum = % 3.10f\n\t\tparams->pq_eetf.minLum = % 3.10f\n\t\tparams->pq_eetf.KneeStart = % 3.10f\n\t\tparams->pq_eetf.KneeStartScale = % 3.10f\n\t\tparams->pq_eetf.optical_scale = % 3.10f\n\t\tparams->luminance_coefficients[0] = % 3.10f\n\t\tparams->luminance_coefficients[1] = % 3.10f\n\t\tparams->luminance_coefficients[2] = % 3.10f\n\t\tparams->luminance_coefficients[3] = % 3.10f\n", **(&v22[1] + 12), *(*(&v22[1] + 12) + 4), *(*(&v22[1] + 12) + 8), *(*(&v22[1] + 12) + 12), *(*(&v22[1] + 12) + 16), *(*(&v22[1] + 12) + 20), *(*(&v22[1] + 12) + 24), *(*(&v22[1] + 12) + 28), *(*(&v22[1] + 12) + 32), *(*(&v22[1] + 12) + 36), *(*(&v22[1] + 12) + 40), *(*(&v22[1] + 12) + 44), *(*(&v22[1] + 12) + 56), *(*(&v22[1] + 12) + 60), *(*(&v22[1] + 12) + 64), *(*(&v22[1] + 12) + 68));
        goto LABEL_27;
      }

      goto LABEL_22;
    }

    v13 = *(*(&v22[1] + 12) + 24);
    v14 = "HLG Inverted OOTF";
    if (v13 != 1)
    {
      v14 = "?";
    }

    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = "HLG OOTF";
    }

    CFStringAppendFormat(v6, 0, @"\tHLG Luminance scaling (%s) params: \n\t\tgamma = % 3.10f gain = % 3.10f\n\t\tparams->luminance_coefficients[0] = % 3.10f\n\t\tparams->luminance_coefficients[1] = % 3.10f\n\t\tparams->luminance_coefficients[2] = % 3.10f\n\t\tparams->luminance_coefficients[3] = % 3.10f\n", v15, **(&v22[1] + 12), *(*(&v22[1] + 12) + 4), *(*(&v22[1] + 12) + 8), *(*(&v22[1] + 12) + 12), *(*(&v22[1] + 12) + 16), *(*(&v22[1] + 12) + 20));
  }

LABEL_27:
  append_properties_info(v6, Properties);
  append_range_info(v6, *(v7 + 8 * a4));
  return 1;
}

void append_properties_info(__CFString *a1, char a2)
{
  v2 = "Yes";
  if (a2)
  {
    v3 = "Yes";
  }

  else
  {
    v3 = "No";
  }

  if ((a2 & 2) != 0)
  {
    v4 = "Yes";
  }

  else
  {
    v4 = "No";
  }

  if ((a2 & 4) != 0)
  {
    v5 = "Yes";
  }

  else
  {
    v5 = "No";
  }

  if ((a2 & 0x10) != 0)
  {
    v6 = "Yes";
  }

  else
  {
    v6 = "No";
  }

  if ((a2 & 8) == 0)
  {
    v2 = "No";
  }

  CFStringAppendFormat(a1, 0, @"\t\tProperties:\n\t\t\t\tkCGColorFunctionSignedReflectionTRC   = %s\n\t\t\t\tkCGColorFunctionOutputClamp           = %s\n\t\t\t\tkCGColorFunctionInputClamp            = %s\n\t\t\t\tkCGColorMatrixOnlyFirstChannelOutput  = %s\n\t\t\t\tkCGColorMatrixOnlyFirstChannelInput   = %s\n\n", v3, v4, v5, v6, v2);
}

void append_range_info(__CFString *a1, const void *a2)
{
  InputRange = CGColorFunctionGetInputRange(a2);
  v6 = v5;
  OutputRange = CGColorFunctionGetOutputRange(a2);
  v9 = v8;
  CFStringAppendFormat(a1, 0, @"\t\tInput range: [");
  if (InputRange == -3.4028e38)
  {
    CFStringAppendFormat(a1, 0, @"-FLT_MAX,");
  }

  else
  {
    CFStringAppendFormat(a1, 0, @"%+g,", InputRange);
  }

  if (v6 == 3.4028e38)
  {
    CFStringAppendFormat(a1, 0, @" +FLT_MAX]", v10);
  }

  else
  {
    CFStringAppendFormat(a1, 0, @" %+g]", v6);
  }

  CFStringAppendFormat(a1, 0, @" Output range: [");
  if (OutputRange == -3.4028e38)
  {
    CFStringAppendFormat(a1, 0, @"-FLT_MAX,", v11);
  }

  else
  {
    CFStringAppendFormat(a1, 0, @"%+g,", OutputRange);
  }

  if (v9 == 3.4028e38)
  {

    CFStringAppendFormat(a1, 0, @" +FLT_MAX]\n");
  }

  else
  {
    CFStringAppendFormat(a1, 0, @" %+g]\n", v9);
  }
}

uint64_t (*__copy_hints_description_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCopyDescriptionString");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_2986;
  }

  copy_hints_description_f = v1;
  return result;
}

void dump_steps_to_file(void *cf, unsigned int a2, char *a3, const char *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    goto LABEL_15;
  }

  v8 = CFGetTypeID(cf);
  if (CGColorConversionInfoGetTypeID_predicate != -1)
  {
    dispatch_once(&CGColorConversionInfoGetTypeID_predicate, &__block_literal_global_1190);
  }

  if (v8 == kCGColorConverterRuntimeID && (color_conversion_step_info = create_color_conversion_step_info(cf, a2)) != 0)
  {
    v10 = color_conversion_step_info;
    if (a3 && strlen(a3) >= 3)
    {
      bzero(__str, 0x401uLL);
      if (*a3 == 42 && a3[1] == 47)
      {
        if (CGGetTempDirPath_predicate != -1)
        {
          dispatch_once(&CGGetTempDirPath_predicate, &__block_literal_global_119);
        }

        v21 = a3 + 2;
        a3 = __str;
        snprintf(__str, 0x400uLL, "%s%s", &CGGetTempDirPath_tempDirPath, v21);
      }

      CStringPtr = CFStringGetCStringPtr(v10, 0x8000100u);
      if (CStringPtr)
      {
        v12 = CStringPtr;
        v13 = 0;
      }

      else
      {
        Length = CFStringGetLength(v10);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        v13 = malloc_type_calloc(MaximumSizeForEncoding, 1uLL, 0x62034410uLL);
        if (v13 && CFStringGetCString(v10, v13, MaximumSizeForEncoding, 0x8000100u))
        {
          v12 = v13;
        }

        else
        {
          v12 = "";
        }
      }

      v17 = fopen(a3, "w");
      v14 = "failed to save";
      if (v17)
      {
        v18 = v17;
        v19 = strlen(v12);
        v20 = fwrite(v12, 1uLL, v19, v18);
        fclose(v18);
        if (v20 == v19)
        {
          v14 = "saved";
        }
      }

      if (v13)
      {
        free(v13);
      }
    }

    else
    {
      v14 = "failed to save";
    }

    CGLog(1, "%s %s %s", a4, v14, a3);
    CFRelease(v10);
  }

  else
  {
LABEL_15:
    CGLog(1, "Nothing to show for <%p> CGColorConversionInfo", cf);
    CGLog(1, "%s %s %s", a4, "failed to save", a3);
  }
}

BOOL has_crypt_filter(CGPDFDictionary *a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  value[5] = v2;
  value[6] = v3;
  __s1 = 0;
  value[0] = 0;
  if (!CGPDFDictionaryGetObject(a1, "Filter", value) || !value[0])
  {
    return 0;
  }

  v5 = *(value[0] + 2);
  if (v5 != 7)
  {
    if (v5 == 5)
    {
      return strcmp(*(value[0] + 4), "Crypt") == 0;
    }

    return 0;
  }

  v6 = *(value[0] + 4);
  if (!v6)
  {
    return 0;
  }

  v7 = *(v6 + 3) - *(v6 + 2);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  v9 = v7 >> 3;
  while (!CGPDFArrayGetName(v6, v8, &__s1) || strcmp(__s1, "Crypt"))
  {
    result = 0;
    if (v9 == ++v8)
    {
      return result;
    }
  }

  return 1;
}

__CFArray *pdf_filter_chain_create_description(uint64_t a1, int a2)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (a1)
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 16);
    if (v6 && (*(a1 + 41) & 1) == 0 && *(v6 + 40) && !has_crypt_filter(*(a1 + 48), a2))
    {
      CGCFArrayAppendInteger(Mutable, 10);
    }
  }

  else
  {
    v5 = 0;
  }

  filter_object = get_filter_object(v5, a2);
  if (filter_object)
  {
    value = 0;
    v8 = *(filter_object + 2);
    if (v8 == 5)
    {
      v14 = filter_kind_from_name(*(filter_object + 4));
      if (v14)
      {
        CGCFArrayAppendInteger(Mutable, v14);
      }
    }

    else if (v8 == 7)
    {
      v9 = *(filter_object + 4);
      if (v9)
      {
        v10 = *(v9 + 3) - *(v9 + 2);
        if (v10)
        {
          v11 = 0;
          v12 = v10 >> 3;
          do
          {
            if (!CGPDFArrayGetName(v9, v11, &value))
            {
              break;
            }

            v13 = filter_kind_from_name(value);
            if (v13)
            {
              CGCFArrayAppendInteger(Mutable, v13);
            }

            ++v11;
          }

          while (v12 != v11);
        }
      }
    }
  }

  return Mutable;
}

__n128 CGUpdateConvolveKernelRed(uint64_t a1)
{
  if (redConvolveKernel)
  {
    free(redConvolveKernel);
  }

  v2 = malloc_type_malloc(0x26uLL, 0x1000040BDFB0063uLL);
  redConvolveKernel = v2;
  v3 = *(a1 + 30);
  result = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = result;
  *(v2 + 30) = v3;
  return result;
}

__n128 CGUpdateConvolveKernelGreen(uint64_t a1)
{
  if (greenConvolveKernel)
  {
    free(greenConvolveKernel);
  }

  v2 = malloc_type_malloc(0x26uLL, 0x1000040BDFB0063uLL);
  greenConvolveKernel = v2;
  v3 = *(a1 + 30);
  result = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = result;
  *(v2 + 30) = v3;
  return result;
}

__n128 CGUpdateConvolveKernelBlue(uint64_t a1)
{
  if (blueConvolveKernel)
  {
    free(blueConvolveKernel);
  }

  v2 = malloc_type_malloc(0x26uLL, 0x1000040BDFB0063uLL);
  blueConvolveKernel = v2;
  v3 = *(a1 + 30);
  result = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = result;
  *(v2 + 30) = v3;
  return result;
}

__n128 CGUpdateConvolveKernelMonochrome(uint64_t a1)
{
  if (monochromeConvolveKernel)
  {
    free(monochromeConvolveKernel);
  }

  v2 = malloc_type_malloc(0x26uLL, 0x1000040BDFB0063uLL);
  monochromeConvolveKernel = v2;
  v3 = *(a1 + 30);
  result = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = result;
  *(v2 + 30) = v3;
  return result;
}

const void *__CGSScanConvolveAndIntegrateRGB_block_invoke()
{
  v5 = 0;
  if (get_BOOLean_property("CGFontUseCustomConvolveKernels", copy_application_property_value, &v5) && v5)
  {
    if (redConvolveKernel)
    {
      CGSScanConvolveAndIntegrateRGB_redKernel = redConvolveKernel;
    }

    if (greenConvolveKernel)
    {
      CGSScanConvolveAndIntegrateRGB_greenKernel = greenConvolveKernel;
    }

    if (blueConvolveKernel)
    {
      CGSScanConvolveAndIntegrateRGB_blueKernel = blueConvolveKernel;
    }
  }

  v4 = 0;
  result = get_BOOLean_property("CGFontUseMonochromeKernel", copy_local_domain_value, &v4);
  if (result && v4)
  {
    if (v5 && monochromeConvolveKernel != 0)
    {
      v1 = monochromeConvolveKernel;
    }

    else
    {
      v1 = mKernel;
    }

    if (v5 && monochromeConvolveKernel != 0)
    {
      v2 = greenConvolveKernel;
    }

    else
    {
      v2 = mKernel;
    }

    if (v5 && monochromeConvolveKernel != 0)
    {
      v3 = blueConvolveKernel;
    }

    else
    {
      v3 = mKernel;
    }

    CGSScanConvolveAndIntegrateRGB_redKernel = v1;
    CGSScanConvolveAndIntegrateRGB_greenKernel = v2;
    CGSScanConvolveAndIntegrateRGB_blueKernel = v3;
  }

  return result;
}

uint64_t get_password(const __CFString *a1, UInt8 *a2)
{
  Length = CFStringGetLength(a1);
  if (Length)
  {
    v5 = Length;
    if (Length >= 33)
    {
      pdf_error("password truncated to 32 bytes.");
      v5 = 32;
    }

    v8.location = 0;
    v8.length = v5;
    Bytes = CFStringGetBytes(a1, v8, 0x600u, 0, 0, a2, 32, 0);
    if (Bytes < v5)
    {
      pdf_error("password cannot be converted to ASCII.");
      return 0;
    }

    a2[Bytes] = 0;
  }

  else
  {
    *a2 = 0;
  }

  return 1;
}

CGDataConsumerRef PDFSecurityHandlerCreateEncryptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v6 = malloc_type_calloc(1uLL, 0x30uLL, 0x103004023086722uLL);
  __CFSetLastAllocationEventName();
  if (!v6)
  {
    return 0;
  }

  *v6 = a2;
  pdf_cryptor = get_pdf_cryptor(a1, v3);
  v6[5] = pdf_cryptor;
  if (!pdf_cryptor)
  {
    encryptor_close(v6);
    return 0;
  }

  Value = CFDictionaryGetValue(*(a1 + 16), @"kCGPDFContextEncryptionCipher");
  if (Value && ((v9 = Value, CFEqual(Value, @"kCGPDFContextEncryptionCipherAESv2")) || CFEqual(v9, @"kCGPDFContextEncryptionCipherAESv3")))
  {
    v6[3] = 16;
    *(v6 + 32) = 1;
  }

  else
  {
    v6[3] = 0;
  }

  return CGDataConsumerCreate(v6, &PDFSecurityHandlerCreateEncryptor_callbacks);
}

char *get_pdf_cryptor(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(*(a1 + 16), @"kCGPDFContextEncryptionCipher");
  if (Value)
  {
    v5 = CFEqual(Value, @"kCGPDFContextEncryptionCipherAESv2");
    v6 = v5 != 0;
    v7 = 5;
    if (v5)
    {
      v7 = 9;
    }
  }

  else
  {
    v6 = 0;
    v7 = 5;
  }

  v8 = *(a1 + 128);
  result = malloc_type_malloc(v7 + (v8 >> 3), 0x100004077774924uLL);
  if (result)
  {
    v10 = result;
    v11 = v8 >> 3;
    memcpy(result, (a1 + 92), v11);
    v12 = &v10[v11];
    *v12 = a2;
    v12[2] = BYTE2(a2);
    *(v12 + 3) = 0;
    v13 = v11 + 5;
    if (v6)
    {
      *&v10[v13] = 1416380787;
      v13 = v11 + 9;
    }

    CGGetMD5DigestOfBytes(v15, v10, v13);
    free(v10);
    if (v6)
    {
      return CGCryptorCreateAES(v15, 0x10uLL, (a1 + 108), 1);
    }

    else
    {
      if (v13 >= 0x10)
      {
        v14 = 16;
      }

      else
      {
        v14 = v13;
      }

      return CGCryptorCreateRC4(v15, v14);
    }
  }

  return result;
}

void encryptor_close(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 40);
    if (!*(v2 + 32))
    {
      v6[0] = 0;
      v6[1] = 0;
      v5 = 0;
      CGCryptorDrain(v2, v6, 0x10uLL, &v5);
      CGDataConsumerPutBytes(*a1, v6, v5);
    }

    v3 = *a1;
    if (*a1 && (*(v3 + 56) & 1) == 0)
    {
      v4 = *(v3 + 80);
      if (v4)
      {
        v4(*(v3 + 16));
      }
    }

    CGCryptorRelease(*(a1 + 40));
    free(*(a1 + 8));
    free(a1);
  }
}

uint64_t *encryptor_flush(uint64_t *result)
{
  if (result)
  {
    v1 = *result;
    if (*result)
    {
      if ((*(v1 + 56) & 1) == 0)
      {
        v2 = *(v1 + 80);
        if (v2)
        {
          return v2(*(v1 + 16));
        }
      }
    }
  }

  return result;
}

size_t encryptor_write(uint64_t a1, const void *a2, size_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a3;
  v6 = *(a1 + 24) + a3;
  v7 = *(a1 + 8);
  if (*(a1 + 16) < v6)
  {
    v8 = malloc_type_realloc(*(a1 + 8), v6, 0xC0037986uLL);
    *(a1 + 8) = v8;
    if (!v8)
    {
      v3 = 0;
      *(a1 + 16) = 0;
      return v3;
    }

    v7 = v8;
    *(a1 + 16) = v6;
  }

  v10 = 0;
  CGCryptorProcessBytes(*(a1 + 40), a2, v3, v7, v6, &v10);
  if (*(a1 + 32) == 1)
  {
    CGDataConsumerPutBytes(*a1, *(*(a1 + 40) + 40), 16);
    *(a1 + 32) = 0;
  }

  CGDataConsumerPutBytes(*a1, *(a1 + 8), v10);
  return v3;
}

void add_bf_range(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2 == a4)
  {
    v8 = !*a6 || a3 > a5;
    if (!v8 && (*a6 & 1) == 0)
    {
      v10 = 0;
      v11 = a6[1];
      v12 = *a6 >> 1;
      do
      {
        v11[v10] = bswap32(v11[v10]) >> 16;
        ++v10;
      }

      while (v12 != v10);
      v13 = *(result + 48);
      if (v13)
      {
        if ((a2 - 3) >= 0xFEu && check_dimension(a2, a3, a5))
        {
          v14 = *(v13 + 16);
          if (!v14)
          {
            operator new();
          }

          cmap_bf_set_add_range(v14, a3, a5, v12, v11);
        }
      }
    }
  }
}

uint64_t yy_stack_print(__int16 *a1, unint64_t a2)
{
  v4 = MEMORY[0x1E69E9848];
  fwrite("Stack now", 9uLL, 1uLL, *MEMORY[0x1E69E9848]);
  while (a1 <= a2)
  {
    v5 = *a1++;
    fprintf(*v4, " %d", v5);
  }

  v6 = *v4;

  return fputc(10, v6);
}

uint64_t yysyntax_error(_BYTE *a1, int a2, unsigned int a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = yypact[a2];
  if (v3 >= -30)
  {
    if (a3 > 0x126)
    {
      v5 = 2;
    }

    else
    {
      v5 = yytranslate[a3];
    }

    v7 = yytname[v5];
    v8 = yytnamerr(0, v7);
    v38 = 0u;
    v37 = 0u;
    v9 = 115 - v3;
    v36 = v7;
    strcpy(v35, "syntax error, unexpected %s");
    v10 = -v3 & (v3 >> 31);
    if (115 - v3 >= 42)
    {
      v9 = 42;
    }

    if (v10 < v9)
    {
      v11 = 0;
      v12 = v3;
      v13 = &v35[27];
      v14 = v10;
      v15 = v9;
      v16 = v8;
      v17 = ", expecting %s";
      v18 = 1;
      v34 = v8;
      while (1)
      {
        if (v14 == 1 || v14 != yycheck[v14 + v12])
        {
          v20 = v16;
        }

        else
        {
          if (v18 == 5)
          {
            v35[27] = 0;
            v18 = 1;
            v20 = v34;
            goto LABEL_21;
          }

          v19 = yytname[v14];
          (&v36)[v18] = v19;
          v20 = yytnamerr(0, v19) + v16;
          --v13;
          do
          {
            v21 = *v17++;
            *++v13 = v21;
          }

          while (v21);
          ++v18;
          v11 |= v20 < v16;
          v17 = " or %s";
        }

        ++v14;
        v16 = v20;
        if (v14 == v15)
        {
          goto LABEL_21;
        }
      }
    }

    v11 = 0;
    v18 = 1;
    v20 = v8;
LABEL_21:
    v22 = 0;
    do
    {
      v23 = v22;
    }

    while (v35[v22++]);
    v6 = v23 + v20;
    v25 = __CFADD__(v23, v20);
    if (v11 | v25)
    {
      return -1;
    }

    if (!a1)
    {
      return v6;
    }

    v27 = 0;
    for (i = v35; ; i += v32)
    {
      v29 = *i;
      *a1 = v29;
      if (v29 != 37)
      {
        break;
      }

      if (i[1] != 115 || v27 >= v18)
      {
        goto LABEL_38;
      }

      v33 = v27 + 1;
      v31 = yytnamerr(a1, (&v36)[v27]);
      v32 = 2;
      v27 = v33;
LABEL_40:
      a1 += v31;
    }

    if (!v29)
    {
      return v6;
    }

LABEL_38:
    v31 = 1;
    v32 = 1;
    goto LABEL_40;
  }

  return 0;
}

void yydestruct(const char *a1, unsigned int a2, void **a3)
{
  if (cmap_yydebug)
  {
    v5 = "Deleting";
    if (a1)
    {
      v5 = a1;
    }

    v6 = MEMORY[0x1E69E9848];
    fprintf(*MEMORY[0x1E69E9848], "%s ", v5);
    v7 = *v6;
    if (a2 >= 42)
    {
      fprintf(v7, "nterm %s (");
    }

    else
    {
      fprintf(v7, "token %s (");
    }

    fputc(41, v7);
    fputc(10, *v6);
  }

  if (a2 <= 0x27 && ((1 << a2) & 0xB000000000) != 0)
  {
    v8 = *a3;

    free(v8);
  }
}

uint64_t yytnamerr(uint64_t a1, _BYTE *a2)
{
  if (*a2 != 34)
  {
LABEL_13:
    if (a1)
    {
      v9 = a1 - 1;
      do
      {
        v10 = *a2++;
        *++v9 = v10;
      }

      while (v10);
      return v9 - a1;
    }

    else
    {
      v11 = 0;
        ;
      }

      return v11 - 1;
    }
  }

  v2 = 0;
  v3 = a2;
  for (i = a2; ; v3 = i)
  {
    v6 = *++i;
    v5 = v6;
    if (v6 > 91)
    {
      if (v5 == 92)
      {
        v8 = v3[2];
        v7 = v3 + 2;
        if (v8 != 92)
        {
          goto LABEL_13;
        }

        i = v7;
      }

      goto LABEL_10;
    }

    if (v5 == 34)
    {
      break;
    }

    if (v5 == 39 || v5 == 44)
    {
      goto LABEL_13;
    }

LABEL_10:
    if (a1)
    {
      *(a1 + v2) = v5;
    }

    ++v2;
  }

  if (a1)
  {
    *(a1 + v2) = 0;
  }

  return v2;
}

uint64_t decomposes(unsigned int a1, _DWORD *a2, _DWORD *a3)
{
  result = 0;
  __key = a1;
  if (a1 >= 0xA0 && a1 != 65292)
  {
    result = bsearch(&__key, &rows, 0xF0EuLL, 0xCuLL, compare);
    if (result)
    {
      *a2 = *(result + 8);
      *a3 = *(result + 4);
      return 1;
    }
  }

  return result;
}

uint64_t compare(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >= v3;
  v5 = v2 != v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *PDFStreamCreateWithObjectNumber(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x50uLL, 0x1030040E0CD80B6uLL);
  __CFSetLastAllocationEventName();
  if (v4)
  {
    *v4 = a1;
    v4[1] = a2;
    v4[3] = 0;
    v4[9] = 0;
    v4[6] = 0;
    v4[7] = 0;
    *(v4 + 32) = 0;
    if (*(a1 + 73) == 1)
    {
      PDFStreamSetFilter(v4, "FlateDecode");
    }
  }

  return v4;
}

void PDFStreamSetFilter(uint64_t a1, char *__s)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    free(v4);
  }

  if (__s)
  {
    v5 = strlen(__s);
    v6 = malloc_type_malloc(v5 + 1, 0x2099F3ACuLL);
    __CFSetLastAllocationEventName();
    *(a1 + 72) = v6;
    if (v6)
    {
      strcpy(v6, __s);
      *(a1 + 64) = strcmp(__s, "FlateDecode") == 0;
      return;
    }
  }

  else
  {
    *(a1 + 72) = 0;
  }

  *(a1 + 64) = 0;
}

void PDFStreamRelease(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      CFRelease(v5);
    }

    free(*(a1 + 72));

    free(a1);
  }
}

CGDataConsumerRef PDFStreamBeginData(CGDataConsumerRef result)
{
  if (result)
  {
    v1 = result;
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
    *(v1 + 4) = Mutable;
    v3 = CGDataConsumerCreateWithCFData(Mutable);
    *(v1 + 5) = v3;
    *(v1 + 3) = v3;
    *(v1 + 7) = 0;
    result = *(*v1 + 56);
    if (result && (*(v1 + 65) != 1 || *(result + 136) == 1))
    {
      result = PDFSecurityHandlerCreateEncryptor(result, v3, *(v1 + 1));
      v3 = result;
      *(v1 + 7) = result;
      *(v1 + 3) = result;
    }

    *(v1 + 6) = 0;
    if (*(v1 + 64) == 1)
    {
      result = CGDataConsumerCreateFlateEncoder(v3);
      *(v1 + 6) = result;
      *(v1 + 3) = result;
    }
  }

  return result;
}

uint64_t PDFStreamEndData(void *a1)
{
  CGDataConsumerClose(a1[6]);
  result = CGDataConsumerClose(a1[7]);
  v3 = a1[3];
  if (v3)
  {
    v3 = *(v3 + 40);
  }

  a1[2] = v3;
  return result;
}

_BYTE *PDFStreamEnd(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  Length = CFDataGetLength(a1[4]);
  PDFDocumentPrintf(v2, "/Length %O", Length);
  if (a1[9])
  {
    PDFDocumentPrintf(*a1, "/Filter /%N", a1[9]);
  }

  PDFDocumentPrintf(*a1, ">>\n");
  PDFDocumentPrintf(*a1, "stream\n");
  BytePtr = CFDataGetBytePtr(a1[4]);
  v6 = CFDataGetLength(a1[4]);
  CGDataConsumerPutBytes(v3, BytePtr, v6);
  PDFDocumentPrintf(*a1, "\n");
  PDFDocumentPrintf(*a1, "endstream\n");
  v7 = *a1;

  return PDFDocumentEndObject(v7);
}

atomic_uint *color_space_retain(uint64_t a1, atomic_uint *a2)
{
  result = a2;
  if (a2)
  {
    atomic_fetch_add_explicit(a2, 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t PDFColorSpaceSetEmitDefinitions(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    if (v2)
    {
      do
      {
        *(v1 + 16) = 0;
        v3 = *(v2 + 8);
        v4.length = CFArrayGetCount(v3);
        v4.location = 0;
        CFArrayApplyFunction(v3, v4, emit_color_space_definition, 0);
        CGOrderedSetRelease(v2);
        v2 = *(v1 + 16);
      }

      while (v2);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void emit_color_space_definition(uint64_t a1)
{
  v73 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  Type = CGColorSpaceGetType(*(a1 + 24));
  if (Type <= 7)
  {
    if (Type <= 4)
    {
      if (Type == 3)
      {
        v43 = *(a1 + 16);
        if (!v43)
        {
          _CGHandleAssert("emit_CalGray", 137, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/PDF/ColorSpaces/PDFColorSpace.c", "cs->object_number != PDFObjectNumberInvalid", "invalid PDF object number");
        }

        PDFDocumentBeginObject(*(a1 + 8), v43);
        *&v70 = 0;
        v68 = 0u;
        v69 = 0u;
        v67 = 0u;
        *&v44 = CGColorSpaceGetCalibratedGrayData(*(a1 + 24), &v67).n128_u64[0];
        PDFDocumentPrintf(*(a1 + 8), "[/CalGray <<", v44);
        emit_array(*(a1 + 8), "/WhitePoint", &v67, 3);
        if (*(&v68 + 1) != 0.0 || *&v69 != 0.0 || *(&v69 + 1) != 0.0)
        {
          emit_array(*(a1 + 8), "/BlackPoint", &v68 + 1, 3);
        }

        if (*&v70 != 1.0)
        {
          PDFDocumentPrintf(*(a1 + 8), "/Gamma %f", *&v70);
        }

        PDFDocumentPrintf(*(a1 + 8), ">>]");
        goto LABEL_69;
      }

      if (Type != 4)
      {
        return;
      }

      v19 = *(a1 + 16);
      if (!v19)
      {
        _CGHandleAssert("emit_CalRGB", 165, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/PDF/ColorSpaces/PDFColorSpace.c", "cs->object_number != PDFObjectNumberInvalid", "invalid PDF object number");
      }

      PDFDocumentBeginObject(*(a1 + 8), v19);
      memset(v72, 0, sizeof(v72));
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v67 = 0u;
      *&v20 = CGColorSpaceGetCalibratedRGBData(*(a1 + 24), &v67).n128_u64[0];
      PDFDocumentPrintf(*(a1 + 8), "[ /CalRGB <<", v20);
      emit_array(*(a1 + 8), "/WhitePoint", &v67, 3);
      if (*(&v68 + 1) != 0.0 || *&v69 != 0.0 || *(&v69 + 1) != 0.0)
      {
        emit_array(*(a1 + 8), "/BlackPoint", &v68 + 1, 3);
      }

      if (*&v70 != 1.0 || *(&v70 + 1) != 1.0 || *&v71 != 1.0)
      {
        emit_array(*(a1 + 8), "/Gamma", &v70, 3);
      }

      if (*(&v71 + 1) == 1.0)
      {
        v59 = 0;
        while (v59 != 8)
        {
          v60 = v59 + 1;
          v61 = *(v72 + v59);
          v62 = color_space_state_create_calibrated_rgb_default_matrix[++v59];
          if (v61 != v62)
          {
            if ((v60 - 1) <= 7)
            {
              goto LABEL_31;
            }

            goto LABEL_60;
          }
        }

        goto LABEL_60;
      }

LABEL_31:
      v21 = *(a1 + 8);
      v22 = "/Matrix";
      v23 = &v71 + 1;
      v24 = 9;
    }

    else
    {
      if (Type != 5)
      {
        if (Type != 6)
        {
          if (!*(a1 + 16))
          {
            _CGHandleAssert("emit_Indexed", 278, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/PDF/ColorSpaces/PDFColorSpace.c", "cs->object_number != PDFObjectNumberInvalid", "invalid PDF object number");
          }

          v3 = *(a1 + 8);
          BaseColorSpace = CGColorSpaceGetBaseColorSpace(*(a1 + 24));
          v5 = PDFDocumentResolveColorSpace(v3, BaseColorSpace);
          v6 = PDFDocumentAddColorSpace(*(a1 + 8), v5);
          PDFDocumentBeginObject(*(a1 + 8), *(a1 + 16));
          PDFDocumentPrintf(*(a1 + 8), "[ /Indexed");
          PDFColorSpaceEmitReference(v6);
          v7 = *(a1 + 24);
          if (v7 && (v8 = *(v7 + 24), *(v8 + 28) == 5))
          {
            v9 = *(*(v8 + 96) + 8);
          }

          else
          {
            v9 = -1;
          }

          PDFDocumentPrintf(*(a1 + 8), "%z", v9);
          v45 = CGColorSpaceCopyColorTable(*(a1 + 24));
          v46 = *(a1 + 8);
          Length = CFDataGetLength(v45);
          CFDataGetBytePtr(v45);
          PDFDocumentPrintf(v46, "%X", Length);
          CFRelease(v45);
          goto LABEL_81;
        }

        goto LABEL_16;
      }

      v41 = *(a1 + 16);
      if (!v41)
      {
        _CGHandleAssert("emit_Lab", 194, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/PDF/ColorSpaces/PDFColorSpace.c", "cs->object_number != PDFObjectNumberInvalid", "invalid PDF object number");
      }

      PDFDocumentBeginObject(*(a1 + 8), v41);
      v71 = 0u;
      v72[0] = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      *&v42 = CGColorSpaceGetLabData(*(a1 + 24), &v67).n128_u64[0];
      PDFDocumentPrintf(*(a1 + 8), "[ /Lab <<", v42);
      emit_array(*(a1 + 8), "/WhitePoint", &v67, 3);
      if (*(&v68 + 1) != 0.0 || *&v69 != 0.0 || *(&v69 + 1) != 0.0)
      {
        emit_array(*(a1 + 8), "/BlackPoint", &v68 + 1, 3);
      }

      if (*&v70 == -100.0)
      {
        v63 = 0;
        while (v63 != 3)
        {
          v64 = v63 + 1;
          v65 = *(&v70 + v63 + 1);
          v66 = *(&xmmword_184565920 + ++v63);
          if (v65 != v66)
          {
            if ((v64 - 1) <= 2)
            {
              goto LABEL_58;
            }

            goto LABEL_60;
          }
        }

        goto LABEL_60;
      }

LABEL_58:
      v21 = *(a1 + 8);
      v22 = "/Range";
      v23 = &v70;
      v24 = 4;
    }

    emit_array(v21, v22, v23, v24);
LABEL_60:
    PDFDocumentPrintf(*(a1 + 8), ">> ]");
LABEL_69:
    PDFDocumentEndObject(*(a1 + 8));
    return;
  }

  if ((Type - 10) >= 2)
  {
    if (Type != 8)
    {
      if (Type != 9)
      {
        return;
      }

      if (!*(a1 + 16))
      {
        _CGHandleAssert("emit_Pattern", 341, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/PDF/ColorSpaces/PDFColorSpace.c", "cs->object_number != PDFObjectNumberInvalid", "invalid PDF object number");
      }

      v10 = CGColorSpaceGetBaseColorSpace(*(a1 + 24));
      if (!v10)
      {
        return;
      }

      v11 = v10;
      PDFDocumentBeginObject(*(a1 + 8), *(a1 + 16));
      PDFDocumentPrintf(*(a1 + 8), "[ /Pattern");
      v12 = PDFDocumentResolveColorSpace(*(a1 + 8), v11);
      v13 = PDFDocumentAddColorSpace(*(a1 + 8), v12);
      PDFColorSpaceEmitReference(v13);
LABEL_81:
      v57 = *(a1 + 8);
      goto LABEL_82;
    }

    v35 = *(a1 + 16);
    if (!v35)
    {
      _CGHandleAssert("emit_DeviceN", 301, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/PDF/ColorSpaces/PDFColorSpace.c", "cs->object_number != PDFObjectNumberInvalid", "invalid PDF object number");
    }

    PDFDocumentBeginObject(*(a1 + 8), v35);
    Names = CGColorSpaceGetNames(*(a1 + 24));
    v37 = *(a1 + 24);
    if (v37)
    {
      v38 = *(*(v37 + 24) + 48);
      v39 = *(a1 + 8);
      if (v38 == 1)
      {
        PDFDocumentPrintf(v39, "[ /Separation");
        PDFDocumentPrintf(*(a1 + 8), "/%N", *Names);
        v40 = 0;
LABEL_78:
        v50 = *(a1 + 8);
        AlternateColorSpace = CGColorSpaceGetAlternateColorSpace(*(a1 + 24));
        v52 = PDFDocumentResolveColorSpace(v50, AlternateColorSpace);
        v53 = PDFDocumentAddColorSpace(*(a1 + 8), v52);
        PDFColorSpaceEmitReference(v53);
        v54 = *(a1 + 8);
        TintTransform = CGColorSpaceGetTintTransform(*(a1 + 24));
        v56 = PDFDocumentAddFunction(v54, TintTransform);
        PDFDocumentPrintReference(*(a1 + 8), "%R", v56[6]);
        v57 = *(a1 + 8);
        if (!v40 || (*(v57 + 91) & 1) == 0)
        {
LABEL_82:
          PDFDocumentPrintf(v57, "]");
          v58 = *(a1 + 8);

          PDFDocumentEndObject(v58);
          return;
        }

        PDFDocumentPrintf(v57, "<< >>");
        goto LABEL_81;
      }
    }

    else
    {
      v38 = 0;
      v39 = *(a1 + 8);
    }

    PDFDocumentPrintf(v39, "[ /DeviceN");
    PDFDocumentPrintf(*(a1 + 8), "[ ");
    if (v38)
    {
      v48 = v38;
      do
      {
        v49 = *Names++;
        PDFDocumentPrintf(*(a1 + 8), "/%N", v49);
        --v48;
      }

      while (v48);
    }

    PDFDocumentPrintf(*(a1 + 8), "]");
    v40 = v38 > 1;
    goto LABEL_78;
  }

LABEL_16:
  *&v67 = 0;
  *&v68 = 0;
  *(&v67 + 1) = 0x3FF0000000000000;
  *(&v68 + 1) = 0x3FF0000000000000;
  *&v69 = 0;
  *(&v69 + 1) = 0x3FF0000000000000;
  if (!*(a1 + 16))
  {
    _CGHandleAssert("emit_ICCBased", 225, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/PDF/ColorSpaces/PDFColorSpace.c", "cs->object_number != PDFObjectNumberInvalid", "invalid PDF object number");
  }

  v14 = *(a1 + 8);
  v15 = PDFXRefTableAddObject(*(v14 + 504));
  v16 = PDFStreamCreateWithObjectNumber(v14, v15);
  PDFDocumentBeginObject(*v16, v16[1]);
  PDFDocumentPrintf(*v16, "<<");
  v17 = *(a1 + 24);
  if (v17)
  {
    v18 = *(*(v17 + 24) + 48);
  }

  else
  {
    v18 = 0;
  }

  PDFDocumentPrintf(*(a1 + 8), "/N %z", v18);
  v25 = CGColorSpaceGetAlternateColorSpace(*(a1 + 24));
  if (v25)
  {
    v26 = PDFDocumentAddColorSpace(*(a1 + 8), v25);
    if (v26)
    {
      v27 = v26;
      PDFDocumentPrintf(*(a1 + 8), "/Alternate");
      PDFColorSpaceEmitReference(v27);
    }
  }

  v28 = CGColorSpaceICCGetRange(*(a1 + 24));
  if (v18)
  {
    v29 = v28;
    if (v18 == 3 && *v28 == -INFINITY && v28[1] == INFINITY)
    {
      v29 = &v67;
    }

    v30 = v29 + 1;
    v31 = v18;
    while (*(v30 - 1) == 0.0 && *v30 == 1.0)
    {
      v30 += 2;
      if (!--v31)
      {
        goto LABEL_47;
      }
    }

    emit_array(*(a1 + 8), "/Range", v29, 2 * v18);
  }

LABEL_47:
  PDFStreamBeginData(v16);
  v32 = CGColorSpaceCopyICCData(*(a1 + 24));
  BytePtr = CFDataGetBytePtr(v32);
  v34 = CFDataGetLength(v32);
  CGDataConsumerPutBytes(v16[3], BytePtr, v34);
  CFRelease(v32);
  PDFStreamEndData(v16);
  PDFStreamEnd(v16);
  PDFDocumentBeginObject(*(a1 + 8), *(a1 + 16));
  PDFDocumentPrintReference(*(a1 + 8), "[ /ICCBased %R ]", v16[1]);
  PDFDocumentEndObject(*(a1 + 8));
  PDFStreamRelease(v16);
}

__CFString *font_copy_format_description(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<CGFont (%p): ", a1);
  if (a1)
  {
    v4 = (*(a1[2] + 160))(a1[14]);
    if (v4)
    {
      v5 = v4;
      CFStringAppend(Mutable, v4);
      CFRelease(v5);
    }
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

CFTypeID CGFontGetTypeID(void)
{
  if (_block_invoke_once_3400 != -1)
  {
    dispatch_once(&_block_invoke_once_3400, &__block_literal_global_8_3401);
  }

  return CGFontGetTypeID_font_type_id;
}

void *CGFontCreateWithPlatformFontAndVariation(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  Default = CGFontFinderGetDefault();
  if (!Default || (FontWithPlatformFont = CGFontFinderCreateFontWithPlatformFont(Default, a1)) == 0)
  {
    FontWithPlatformFont = CGFontCreate();
    if (FontWithPlatformFont)
    {
      VTable = CGFontGetVTable();
      v7 = (*(VTable + 16))(a1, a2);
      FontWithPlatformFont[14] = v7;
      if (!v7)
      {
        CFRelease(FontWithPlatformFont);
        return 0;
      }
    }
  }

  return FontWithPlatformFont;
}

void CGFontRelease(CGFontRef font)
{
  if (font)
  {
    CFRelease(font);
  }
}

void *CGFontCreateWithParserFont(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CGFontCreate();
  if (v2)
  {
    VTable = CGFontGetVTable();
    v4 = (*(VTable + 8))(a1);
    v2[14] = v4;
    if (!v4)
    {
      CFRelease(v2);
      return 0;
    }
  }

  return v2;
}

CGFontRef CGFontCreateWithDataProvider(CGDataProviderRef provider)
{
  if (sInLockdownModeForFonts)
  {
    goto LABEL_5;
  }

  if (read_entitlements_once != -1)
  {
    dispatch_once(&read_entitlements_once, &__block_literal_global_11458);
  }

  if (sHasLockdownModeForFontsEntitlement == 1)
  {
LABEL_5:
    CGPostError("Attempt to create CGFont from data in Lockdown Mode for Fonts");
    return 0;
  }

  if (!provider)
  {
    return 0;
  }

  v4 = CGFontCreate();
  v2 = v4;
  if (v4)
  {
    v5 = (*(*(v4 + 16) + 32))(provider);
    v2[14] = v5;
    if (!v5)
    {
      CFRelease(v2);
      return 0;
    }
  }

  return v2;
}

void *CGFontCreateWithPDFFontDataAndZapfData(uint64_t a1, uint64_t a2)
{
  if (sInLockdownModeForFonts)
  {
    goto LABEL_5;
  }

  if (read_entitlements_once != -1)
  {
    dispatch_once(&read_entitlements_once, &__block_literal_global_11458);
  }

  if (sHasLockdownModeForFontsEntitlement == 1)
  {
LABEL_5:
    CGPostError("Attempt to create CGFont from data in Lockdown Mode for Fonts", a2);
    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  v6 = CGFontCreate();
  v4 = v6;
  if (v6)
  {
    v7 = (*(*(v6 + 16) + 40))(a1, a2);
    v4[14] = v7;
    if (!v7)
    {
      CFRelease(v4);
      return 0;
    }
  }

  return v4;
}

CGFontRef CGFontCreateWithFontName(CFStringRef name)
{
  initialize_font_database_once();
  if (!name)
  {
    return 0;
  }

  Default = CGFontFinderGetDefault();
  if (Default)
  {
    FontWithName = CGFontFinderCreateFontWithName(Default, name);
    if (FontWithName)
    {
      return FontWithName;
    }
  }

  FontWithName = CGFontDBCopyFontWithName(0, name);
  if (FontWithName)
  {
    return FontWithName;
  }

  v4 = CGFontCreate();
  if (!v4)
  {
    return v4;
  }

  VTable = CGFontGetVTable();
  v6 = (*(VTable + 24))(name);
  *(v4 + 14) = v6;
  if (v6)
  {
    return v4;
  }

  CFRelease(v4);
  Length = CFStringGetLength(name);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x600u);
  v9 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x8035DC8EuLL);
  if (!CFStringGetCString(name, v9, MaximumSizeForEncoding + 1, 0x600u))
  {
LABEL_12:
    free(v9);
    return 0;
  }

  v10 = substitution_fonts;
  v11 = 5;
  while (strcmp(v9, *v10))
  {
    v10 += 3;
    if (!--v11)
    {
      goto LABEL_12;
    }
  }

  free(v9);
  v13 = v10[1];

  return CGFontCreateWithName(v13);
}

CGFontRef CGFontCreateWithName(char *cStr)
{
  if (!cStr)
  {
    return 0;
  }

  v1 = CFStringCreateWithCString(0, cStr, 0x600u);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CGFontCreateWithFontName(v1);
  CFRelease(v2);
  return v3;
}

CGFontRef CGFontRetain(CGFontRef font)
{
  if (font)
  {
    CFRetain(font);
  }

  return font;
}

void *CGFontCreateMatchingFont(const char *a1, const char *a2, int a3, int a4, double a5)
{
  v5 = 0;
  if (a1 && a2 && (a3 & 0x80000000) == 0)
  {
    if (strcmp(a1, "Adobe"))
    {
      return 0;
    }

    if (strcmp(a2, "Japan1"))
    {
      goto LABEL_8;
    }

    v16 = 103.0;
    if (a4)
    {
      v16 = 102.5;
    }

    v17 = &Japanese_sans_serifed;
    if (a4)
    {
      v17 = &Japanese_serifed;
    }

    v5 = CGFontCreateWithName(v17[2 * (v16 <= a5)]);
    if (!v5)
    {
LABEL_8:
      VTable = CGFontGetVTable();
      v12 = (*(VTable + 200))(a1, a2);
      if (!v12)
      {
        return 0;
      }

      FontsWithURL = CGFontCreateFontsWithURL(v12);
      if (!FontsWithURL)
      {
        return 0;
      }

      v14 = FontsWithURL;
      if (CFArrayGetCount(FontsWithURL))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v14, 0);
        v5 = CFRetain(ValueAtIndex);
      }

      else
      {
        v5 = 0;
      }

      CFRelease(v14);
    }
  }

  return v5;
}

void *CGFontCreateCopy(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CGFontCreate();
  if (v2)
  {
    v3 = (*(a1[2] + 88))(a1[14]);
    v2[14] = v3;
    if (v3)
    {
      CGFontSetEncodingVector(v2, atomic_load_explicit(a1 + 4, memory_order_acquire));
      return v2;
    }

    CFRelease(v2);
    return 0;
  }

  return v2;
}

__CFArray *CGFontCreateFontsFromData(uint64_t a1)
{
  if (sInLockdownModeForFonts)
  {
    goto LABEL_5;
  }

  if (read_entitlements_once != -1)
  {
    dispatch_once(&read_entitlements_once, &__block_literal_global_11458);
  }

  if (sHasLockdownModeForFontsEntitlement == 1)
  {
LABEL_5:
    CGPostError("Attempt to create CGFont from data in Lockdown Mode for Fonts");
    return 0;
  }

  VTable = CGFontGetVTable();
  v4 = (*(VTable + 64))(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  fonts_with_private_data_array = create_fonts_with_private_data_array(v4, 1);
  CFRelease(v5);
  return fonts_with_private_data_array;
}

void CGFontApplyFunction(uint64_t (*result)(const void *, uint64_t), uint64_t a2)
{
  if (result)
  {
    initialize_font_database_once();
    Default = CGFontFinderGetDefault();
    if (Default)
    {

      CGFontFinderApplyFunction(Default, result, a2);
    }

    else
    {
      CGFontDBApplyFunction(0, result, a2);
      v5 = *(CGFontGetVTable() + 80);

      v5(result, a2);
    }
  }
}

uint64_t rgb555_sample_cmyk32(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v6 = *(result + 40);
  v7 = *(result + 176);
  v88 = *(result + 80);
  v89 = *(result + 88);
  v102 = *(result + 120);
  v103 = *(result + 112);
  v8 = (*(result + 152) - 4);
  v92 = *(result + 144) - 1;
  v9 = 0xFF00000000;
  if (v6)
  {
    v9 = 0;
  }

  v96 = v9;
  v10 = *(result + 260) - 1;
  v100 = *(result + 24);
  v98 = *(result + 32);
  v11 = *(result + 256);
  v87 = *(result + 188);
  v94 = *(result + 28);
  v95 = (v6 + (v11 - 1) + (v10 * v94));
  v101 = v98 + (v10 * v100) + 4 * v11 - 8;
  v90 = *(result + 72);
  v91 = *(result + 64);
  v99 = result;
  v97 = *(result + 40);
  while (1)
  {
    if (a3 >= v90)
    {
      if (a3 <= v89)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        v24 = a3;
        v15 = a4;
        v16 = v91;
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v89;
        v20 = v19 - a3 + (v18 >> 1);
        v15 = a4;
        v16 = v91;
        if (v20 < 1)
        {
          goto LABEL_40;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(result + 232) * v20) >> 32;
        }

        v23 = v87 | v21;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v12 = *(result + 216);
      v13 = v90 - *(result + 224);
      v14 = a3 - v13 + (v12 >> 1);
      v15 = a4;
      v16 = v91;
      if (v14 < 1)
      {
        goto LABEL_40;
      }

      if (v14 >= v12)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(result + 232) * v14) >> 32;
      }

      v23 = v87 | v17;
      v24 = v13 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v16)
    {
      if (a2 <= v88)
      {
        v29 = (a2 >> 26) & 0x3C;
        v28 = a2;
      }

      else
      {
        v30 = *(result + 192);
        v31 = *(result + 200) + v88;
        v32 = v31 - a2 + (v30 >> 1);
        if (v32 < 1)
        {
          goto LABEL_40;
        }

        if (v32 < v30)
        {
          v23 = ((v23 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v87;
        }

        v28 = v31 - 0x1000000;
        v29 = 28;
      }
    }

    else
    {
      v25 = *(result + 192);
      v26 = v16 - *(result + 200);
      v27 = a2 - v26 + (v25 >> 1);
      if (v27 < 1)
      {
        goto LABEL_40;
      }

      if (v27 < v25)
      {
        v23 = ((v23 >> 15) * (((*(result + 208) * v27) >> 32) >> 15)) | v87;
      }

      v28 = v26 + 0x1000000;
      v29 = 32;
    }

    if (v23 >= 0x400000)
    {
      break;
    }

LABEL_40:
    v42 = v15 - 1;
    a2 += v103;
    a3 += v102;
    ++v8;
    *++v92 = 0;
LABEL_41:
    a4 = v42;
    if (!v42)
    {
      return result;
    }
  }

  v33 = v24 >> 32;
  v34 = v28 >> 32;
  v35 = v98 + SHIDWORD(v24) * v100 + 4 * (v28 >> 32);
  v36 = *(result + 32);
  v37 = v101;
  if (v101 >= v35)
  {
    v37 = v35;
  }

  if (v37 < v36)
  {
    v37 = *(result + 32);
  }

  v38 = *v37;
  if (v6)
  {
    v39 = v6 + v33 * v94 + v34;
    v40 = *(result + 40);
    v41 = v95;
    v93 = v39;
    if (v95 >= v39)
    {
      v41 = v39;
    }

    if (v41 >= v40)
    {
      v40 = v41;
    }

    v38 |= *v40 << 32;
    if (!v7)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v93 = 0;
    if (!v7)
    {
      goto LABEL_45;
    }
  }

  v43 = *(v7 + (v29 | v22));
LABEL_63:
  v52 = v43 & 0xF;
  v53 = HIBYTE(v43) & 3;
  if (v52 == 1)
  {
    v81 = (v35 + SBYTE1(v43) * v100);
    if (v101 < v81)
    {
      v81 = v101;
    }

    if (v81 >= v36)
    {
      v36 = v81;
    }

    v82 = *v36;
    if (v6)
    {
      v83 = (v93 + SBYTE1(v43) * v94);
      if (v95 < v83)
      {
        v83 = v95;
      }

      if (v83 < *(result + 40))
      {
        v83 = *(result + 40);
      }

      v82 |= *v83 << 32;
    }

    v84 = interpolate_cif10a[v53];
    v85 = v53 + 1;
    v73 = v38 - ((v84 & v38) >> v85);
    v80 = (v84 & v82) >> v85;
  }

  else
  {
    if (v52 == 2)
    {
      v75 = (v35 + ((HIWORD(v43) << 56) >> 54));
      if (v101 < v75)
      {
        v75 = v101;
      }

      if (v75 >= v36)
      {
        v36 = v75;
      }

      v76 = *v36;
      if (v6)
      {
        v77 = (v93 + SBYTE2(v43));
        if (v95 < v77)
        {
          v77 = v95;
        }

        if (v77 < *(result + 40))
        {
          v77 = *(result + 40);
        }

        v76 |= *v77 << 32;
      }

      v78 = (v43 >> 28) & 3;
      v79 = interpolate_cif10a[v78];
      v72 = v78 + 1;
      v73 = v38 - ((v79 & v38) >> v72);
      v74 = v79 & v76;
    }

    else
    {
      if (v52 != 3)
      {
        goto LABEL_45;
      }

      v54 = HIWORD(v43) << 56;
      v55 = (v35 + (v54 >> 54));
      if (v101 < v55)
      {
        v55 = v101;
      }

      if (v55 < v36)
      {
        v55 = v36;
      }

      v56 = *v55;
      v57 = v35 + SBYTE1(v43) * v100;
      if (v101 >= v57)
      {
        v58 = (v35 + SBYTE1(v43) * v100);
      }

      else
      {
        v58 = v101;
      }

      if (v58 < v36)
      {
        v58 = v36;
      }

      v59 = *v58;
      v60 = (v57 + (v54 >> 54));
      if (v101 < v60)
      {
        v60 = v101;
      }

      if (v60 >= v36)
      {
        v36 = v60;
      }

      v61 = *v36;
      if (v6)
      {
        v62 = (v93 + SBYTE2(v43));
        v63 = *(result + 40);
        if (v95 < v62)
        {
          v62 = v95;
        }

        if (v62 < v63)
        {
          v62 = v63;
        }

        v56 |= *v62 << 32;
        v64 = v93 + SBYTE1(v43) * v94;
        if (v95 >= v64)
        {
          v65 = (v93 + SBYTE1(v43) * v94);
        }

        else
        {
          v65 = v95;
        }

        if (v65 < v63)
        {
          v65 = v63;
        }

        v59 |= *v65 << 32;
        v66 = (v64 + SBYTE2(v43));
        if (v95 < v66)
        {
          v66 = v95;
        }

        if (v66 < v63)
        {
          v66 = v63;
        }

        v61 |= *v66 << 32;
      }

      v67 = interpolate_cif10a[v53];
      v68 = v53 + 1;
      v69 = v38 - ((v67 & v38) >> v68) + ((v67 & v59) >> v68);
      v70 = (v43 >> 28) & 3;
      v71 = interpolate_cif10a[v70];
      v72 = v70 + 1;
      v73 = v69 - ((v69 & v71) >> v72);
      v74 = (v56 - ((v67 & v56) >> v68) + ((v67 & v61) >> v68)) & v71;
    }

    v80 = v74 >> v72;
  }

  v38 = v73 + v80;
LABEL_45:
  v44 = 0;
  v45 = v23 >> 22;
  ++v8;
  v86 = v15;
  v46 = v15 - 1;
  a3 += v102;
  v47 = v89 - a3;
  a2 += v103;
  v48 = v88 - a2;
  while (1)
  {
    CMYK32(v8, v38 | v96);
    *(v92 + 1 + v44) = v45;
    result = v99;
    v6 = v97;
    if (v46 == v44)
    {
      return result;
    }

    if (((v47 | v48 | (a3 - v90) | (a2 - v91)) & 0x8000000000000000) != 0)
    {
      v92 += v44 + 1;
      v42 = ~v44 + v86;
      goto LABEL_41;
    }

    v35 = v98 + SHIDWORD(a3) * v100 + 4 * (a2 >> 32);
    v36 = *(v99 + 32);
    v49 = v101;
    if (v101 >= v35)
    {
      v49 = (v98 + SHIDWORD(a3) * v100 + 4 * (a2 >> 32));
    }

    if (v49 < v36)
    {
      v49 = *(v99 + 32);
    }

    v38 = *v49;
    if (v97)
    {
      v50 = *(v99 + 40);
      v51 = v95;
      v93 = v97 + SHIDWORD(a3) * v94 + (a2 >> 32);
      if (v95 >= v93)
      {
        v51 = v97 + SHIDWORD(a3) * v94 + (a2 >> 32);
      }

      if (v51 >= v50)
      {
        v50 = v51;
      }

      v38 |= *v50 << 32;
    }

    if (v7)
    {
      v43 = *(v7 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v43 & 0xF) != 0)
      {
        v92 += v44 + 1;
        v15 = ~v44 + v86;
        v23 = -1;
        goto LABEL_63;
      }
    }

    ++v44;
    ++v8;
    a3 += v102;
    v47 -= v102;
    a2 += v103;
    v48 -= v103;
    LOBYTE(v45) = -1;
  }
}

_DWORD *CMYK32(_DWORD *result, uint64_t a2)
{
  v2 = BYTE4(a2) - (BYTE3(a2) + a2);
  v3 = BYTE4(a2) - (BYTE2(a2) + a2);
  *result = (((v2 & ~(v2 >> 31)) << 7) & 0x7C00 | (HIDWORD(a2) << 24) | (32 * (((v3 & ~(v3 >> 31)) >> 3) & 0x1F))) + (((BYTE4(a2) - (BYTE1(a2) + a2)) & ~((BYTE4(a2) - (BYTE1(a2) + a2)) >> 31)) >> 3);
  return result;
}

uint64_t rgb555_sample_CMYK32(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v6 = *(result + 40);
  v7 = *(result + 176);
  v88 = *(result + 80);
  v89 = *(result + 88);
  v102 = *(result + 120);
  v103 = *(result + 112);
  v8 = (*(result + 152) - 4);
  v92 = *(result + 144) - 1;
  v9 = 0xFF00000000;
  if (v6)
  {
    v9 = 0;
  }

  v96 = v9;
  v10 = *(result + 260) - 1;
  v100 = *(result + 24);
  v98 = *(result + 32);
  v11 = *(result + 256);
  v87 = *(result + 188);
  v94 = *(result + 28);
  v95 = (v6 + (v11 - 1) + (v10 * v94));
  v101 = v98 + (v10 * v100) + 4 * v11 - 8;
  v90 = *(result + 72);
  v91 = *(result + 64);
  v99 = result;
  v97 = *(result + 40);
  while (1)
  {
    if (a3 >= v90)
    {
      if (a3 <= v89)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        v24 = a3;
        v15 = a4;
        v16 = v91;
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v89;
        v20 = v19 - a3 + (v18 >> 1);
        v15 = a4;
        v16 = v91;
        if (v20 < 1)
        {
          goto LABEL_40;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(result + 232) * v20) >> 32;
        }

        v23 = v87 | v21;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v12 = *(result + 216);
      v13 = v90 - *(result + 224);
      v14 = a3 - v13 + (v12 >> 1);
      v15 = a4;
      v16 = v91;
      if (v14 < 1)
      {
        goto LABEL_40;
      }

      if (v14 >= v12)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(result + 232) * v14) >> 32;
      }

      v23 = v87 | v17;
      v24 = v13 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v16)
    {
      if (a2 <= v88)
      {
        v29 = (a2 >> 26) & 0x3C;
        v28 = a2;
      }

      else
      {
        v30 = *(result + 192);
        v31 = *(result + 200) + v88;
        v32 = v31 - a2 + (v30 >> 1);
        if (v32 < 1)
        {
          goto LABEL_40;
        }

        if (v32 < v30)
        {
          v23 = ((v23 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v87;
        }

        v28 = v31 - 0x1000000;
        v29 = 28;
      }
    }

    else
    {
      v25 = *(result + 192);
      v26 = v16 - *(result + 200);
      v27 = a2 - v26 + (v25 >> 1);
      if (v27 < 1)
      {
        goto LABEL_40;
      }

      if (v27 < v25)
      {
        v23 = ((v23 >> 15) * (((*(result + 208) * v27) >> 32) >> 15)) | v87;
      }

      v28 = v26 + 0x1000000;
      v29 = 32;
    }

    if (v23 >= 0x400000)
    {
      break;
    }

LABEL_40:
    v42 = v15 - 1;
    a2 += v103;
    a3 += v102;
    ++v8;
    *++v92 = 0;
LABEL_41:
    a4 = v42;
    if (!v42)
    {
      return result;
    }
  }

  v33 = v24 >> 32;
  v34 = v28 >> 32;
  v35 = v98 + SHIDWORD(v24) * v100 + 4 * (v28 >> 32);
  v36 = *(result + 32);
  v37 = v101;
  if (v101 >= v35)
  {
    v37 = v35;
  }

  if (v37 < v36)
  {
    v37 = *(result + 32);
  }

  v38 = bswap32(*v37);
  if (v6)
  {
    v39 = v6 + v33 * v94 + v34;
    v40 = *(result + 40);
    v41 = v95;
    v93 = v39;
    if (v95 >= v39)
    {
      v41 = v39;
    }

    if (v41 >= v40)
    {
      v40 = v41;
    }

    v38 |= *v40 << 32;
    if (!v7)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v93 = 0;
    if (!v7)
    {
      goto LABEL_45;
    }
  }

  v43 = *(v7 + (v29 | v22));
LABEL_63:
  v52 = v43 & 0xF;
  v53 = HIBYTE(v43) & 3;
  if (v52 == 1)
  {
    v81 = (v35 + SBYTE1(v43) * v100);
    if (v101 < v81)
    {
      v81 = v101;
    }

    if (v81 >= v36)
    {
      v36 = v81;
    }

    v82 = bswap32(*v36);
    if (v6)
    {
      v83 = (v93 + SBYTE1(v43) * v94);
      if (v95 < v83)
      {
        v83 = v95;
      }

      if (v83 < *(result + 40))
      {
        v83 = *(result + 40);
      }

      v82 |= *v83 << 32;
    }

    v84 = interpolate_cif10a[v53];
    v85 = v53 + 1;
    v73 = v38 - ((v84 & v38) >> v85);
    v80 = (v84 & v82) >> v85;
  }

  else
  {
    if (v52 == 2)
    {
      v75 = (v35 + ((HIWORD(v43) << 56) >> 54));
      if (v101 < v75)
      {
        v75 = v101;
      }

      if (v75 >= v36)
      {
        v36 = v75;
      }

      v76 = bswap32(*v36);
      if (v6)
      {
        v77 = (v93 + SBYTE2(v43));
        if (v95 < v77)
        {
          v77 = v95;
        }

        if (v77 < *(result + 40))
        {
          v77 = *(result + 40);
        }

        v76 |= *v77 << 32;
      }

      v78 = (v43 >> 28) & 3;
      v79 = interpolate_cif10a[v78];
      v72 = v78 + 1;
      v73 = v38 - ((v79 & v38) >> v72);
      v74 = v79 & v76;
    }

    else
    {
      if (v52 != 3)
      {
        goto LABEL_45;
      }

      v54 = HIWORD(v43) << 56;
      v55 = (v35 + (v54 >> 54));
      if (v101 < v55)
      {
        v55 = v101;
      }

      if (v55 < v36)
      {
        v55 = v36;
      }

      v56 = bswap32(*v55);
      v57 = v35 + SBYTE1(v43) * v100;
      if (v101 >= v57)
      {
        v58 = (v35 + SBYTE1(v43) * v100);
      }

      else
      {
        v58 = v101;
      }

      if (v58 < v36)
      {
        v58 = v36;
      }

      v59 = bswap32(*v58);
      v60 = (v57 + (v54 >> 54));
      if (v101 < v60)
      {
        v60 = v101;
      }

      if (v60 >= v36)
      {
        v36 = v60;
      }

      v61 = bswap32(*v36);
      if (v6)
      {
        v62 = (v93 + SBYTE2(v43));
        v63 = *(result + 40);
        if (v95 < v62)
        {
          v62 = v95;
        }

        if (v62 < v63)
        {
          v62 = v63;
        }

        v56 |= *v62 << 32;
        v64 = v93 + SBYTE1(v43) * v94;
        if (v95 >= v64)
        {
          v65 = (v93 + SBYTE1(v43) * v94);
        }

        else
        {
          v65 = v95;
        }

        if (v65 < v63)
        {
          v65 = v63;
        }

        v59 |= *v65 << 32;
        v66 = (v64 + SBYTE2(v43));
        if (v95 < v66)
        {
          v66 = v95;
        }

        if (v66 < v63)
        {
          v66 = v63;
        }

        v61 |= *v66 << 32;
      }

      v67 = interpolate_cif10a[v53];
      v68 = v53 + 1;
      v69 = v38 - ((v67 & v38) >> v68) + ((v67 & v59) >> v68);
      v70 = (v43 >> 28) & 3;
      v71 = interpolate_cif10a[v70];
      v72 = v70 + 1;
      v73 = v69 - ((v69 & v71) >> v72);
      v74 = (v56 - ((v67 & v56) >> v68) + ((v67 & v61) >> v68)) & v71;
    }

    v80 = v74 >> v72;
  }

  v38 = v73 + v80;
LABEL_45:
  v44 = 0;
  v45 = v23 >> 22;
  ++v8;
  v86 = v15;
  v46 = v15 - 1;
  a3 += v102;
  v47 = v89 - a3;
  a2 += v103;
  v48 = v88 - a2;
  while (1)
  {
    CMYK32(v8, v38 | v96);
    *(v92 + 1 + v44) = v45;
    result = v99;
    v6 = v97;
    if (v46 == v44)
    {
      return result;
    }

    if (((v47 | v48 | (a3 - v90) | (a2 - v91)) & 0x8000000000000000) != 0)
    {
      v92 += v44 + 1;
      v42 = ~v44 + v86;
      goto LABEL_41;
    }

    v35 = v98 + SHIDWORD(a3) * v100 + 4 * (a2 >> 32);
    v36 = *(v99 + 32);
    v49 = v101;
    if (v101 >= v35)
    {
      v49 = (v98 + SHIDWORD(a3) * v100 + 4 * (a2 >> 32));
    }

    if (v49 < v36)
    {
      v49 = *(v99 + 32);
    }

    v38 = bswap32(*v49);
    if (v97)
    {
      v50 = *(v99 + 40);
      v51 = v95;
      v93 = v97 + SHIDWORD(a3) * v94 + (a2 >> 32);
      if (v95 >= v93)
      {
        v51 = v97 + SHIDWORD(a3) * v94 + (a2 >> 32);
      }

      if (v51 >= v50)
      {
        v50 = v51;
      }

      v38 |= *v50 << 32;
    }

    if (v7)
    {
      v43 = *(v7 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v43 & 0xF) != 0)
      {
        v92 += v44 + 1;
        v15 = ~v44 + v86;
        v23 = -1;
        goto LABEL_63;
      }
    }

    ++v44;
    ++v8;
    a3 += v102;
    v47 -= v102;
    a2 += v103;
    v48 -= v103;
    LOBYTE(v45) = -1;
  }
}

uint64_t rgb555_sample_argb32(uint64_t result, uint64_t a2, int64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 64);
  v7 = *(result + 72);
  v8 = *(result + 88);
  v75 = *(result + 80);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v74 = *(result + 188);
  v11 = *(result + 152) - 4;
  v12 = *(result + 144) - 1;
  v13 = *(result + 32);
  if (*(result + 40))
  {
    v14 = 0;
  }

  else
  {
    v14 = -16777216;
  }

  v15 = v13 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  while (1)
  {
LABEL_5:
    if (a3 >= v7)
    {
      if (a3 <= v8)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        HIDWORD(v26) = HIDWORD(a3);
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v8;
        v22 = v21 - a3 + (v20 >> 1);
        if (v22 < 1)
        {
          goto LABEL_37;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v25 = v74 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v7 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_37;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v25 = v74 | v19;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v6)
    {
      break;
    }

    v27 = *(result + 192);
    v28 = v6 - *(result + 200);
    v29 = a2 - v28 + (v27 >> 1);
    if (v29 >= 1)
    {
      if (v29 < v27)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v29) >> 32) >> 15)) | v74;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
      goto LABEL_29;
    }

LABEL_37:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 4;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v75)
  {
    v31 = (a2 >> 26) & 0x3C;
    v30 = a2;
    goto LABEL_29;
  }

  v32 = *(result + 192);
  v33 = *(result + 200) + v75;
  v34 = v33 - a2 + (v32 >> 1);
  if (v34 < 1)
  {
    goto LABEL_37;
  }

  if (v34 < v32)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v74;
  }

  v30 = v33 - 0x1000000;
  v31 = 28;
LABEL_29:
  if (v25 < 0x400000)
  {
    goto LABEL_37;
  }

  v35 = v13 + SHIDWORD(v26) * v4;
  v36 = v30 >> 32;
  v37 = v35 + 4 * v36;
  v38 = *(result + 32);
  if (v15 >= v37)
  {
    v39 = (v35 + 4 * v36);
  }

  else
  {
    v39 = v15;
  }

  if (v39 < v38)
  {
    v39 = *(result + 32);
  }

  v40 = *v39;
  if (!v5)
  {
    goto LABEL_39;
  }

  v41 = *(v5 + (v31 | v24));
LABEL_53:
  v49 = v41 & 0xF;
  v50 = HIBYTE(v41) & 3;
  switch(v49)
  {
    case 1:
      v71 = (v37 + SBYTE1(v41) * v4);
      if (v15 < v71)
      {
        v71 = v15;
      }

      if (v71 < v38)
      {
        v71 = v38;
      }

      v72 = interpolate_8888_21865[v50];
      v73 = v50 + 1;
      v65 = v40 - ((v72 & v40) >> v73);
      v70 = (v72 & *v71) >> v73;
LABEL_81:
      v40 = v65 + v70;
      break;
    case 2:
      v67 = (v37 + ((HIWORD(v41) << 56) >> 54));
      if (v15 < v67)
      {
        v67 = v15;
      }

      if (v67 < v38)
      {
        v67 = v38;
      }

      v68 = (v41 >> 28) & 3;
      v69 = interpolate_8888_21865[v68];
      v64 = v68 + 1;
      v65 = v40 - ((v69 & v40) >> v64);
      v66 = v69 & *v67;
LABEL_75:
      v70 = v66 >> v64;
      goto LABEL_81;
    case 3:
      v51 = HIWORD(v41) << 56;
      v52 = (v37 + (v51 >> 54));
      if (v15 < v52)
      {
        v52 = v15;
      }

      if (v52 < v38)
      {
        v52 = v38;
      }

      v53 = *v52;
      v54 = v37 + SBYTE1(v41) * v4;
      if (v15 >= v54)
      {
        v55 = (v37 + SBYTE1(v41) * v4);
      }

      else
      {
        v55 = v15;
      }

      if (v55 < v38)
      {
        v55 = v38;
      }

      v56 = *v55;
      v57 = (v54 + (v51 >> 54));
      if (v15 < v57)
      {
        v57 = v15;
      }

      if (v57 < v38)
      {
        v57 = v38;
      }

      v58 = interpolate_8888_21865[v50];
      v59 = v50 + 1;
      v60 = v40 - ((v58 & v40) >> v59) + ((v58 & v56) >> v59);
      v61 = v53 - ((v58 & v53) >> v59) + ((v58 & *v57) >> v59);
      v62 = (v41 >> 28) & 3;
      v63 = interpolate_8888_21865[v62];
      v64 = v62 + 1;
      v65 = v60 - ((v60 & v63) >> v64);
      v66 = v61 & v63;
      goto LABEL_75;
  }

LABEL_39:
  v42 = 0;
  v43 = 0;
  v44 = v25 >> 22;
  a3 += v10;
  v45 = v8 - a3;
  a2 += v9;
  v46 = v75 - a2;
  while (1)
  {
    *(v11 + 4 + 4 * v43) = (v40 | v14) & 0xF8000000 | (v40 >> 9) & 0x7C00 | (v40 >> 6) & 0xFFE0 | (v40 >> 3) | ((v40 | v14) >> 29 << 24);
    *(v12 + 1 + v43) = v44;
    if (a4 - 1 == v43)
    {
      return result;
    }

    if ((v45 | v46 | (a3 - v7) | (a2 - v6)) < 0)
    {
      v12 += v43 + 1;
      v11 = v11 - v42 + 4;
      a4 += ~v43;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v47 = v13 + SHIDWORD(a3) * v4;
    v37 = v47 + 4 * (a2 >> 32);
    v38 = *(result + 32);
    if (v15 >= v37)
    {
      v48 = (v47 + 4 * (a2 >> 32));
    }

    else
    {
      v48 = v15;
    }

    if (v48 < v38)
    {
      v48 = *(result + 32);
    }

    v40 = *v48;
    if (v5)
    {
      v41 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v41 & 0xF) != 0)
      {
        v12 += v43 + 1;
        v11 = v11 - v42 + 4;
        a4 += ~v43;
        v25 = -1;
        goto LABEL_53;
      }
    }

    ++v43;
    v42 -= 4;
    a3 += v10;
    v45 -= v10;
    a2 += v9;
    v46 -= v9;
    LOBYTE(v44) = -1;
  }
}

uint64_t rgb555_sample_ARGB32(uint64_t result, uint64_t a2, int64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 64);
  v7 = *(result + 72);
  v8 = *(result + 88);
  v72 = *(result + 80);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v71 = *(result + 188);
  v11 = *(result + 152) - 4;
  v12 = *(result + 144) - 1;
  v13 = *(result + 32);
  if (*(result + 40))
  {
    v14 = 0;
  }

  else
  {
    v14 = -16777216;
  }

  v15 = v13 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  while (1)
  {
LABEL_5:
    if (a3 >= v7)
    {
      if (a3 <= v8)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        HIDWORD(v26) = HIDWORD(a3);
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v8;
        v22 = v21 - a3 + (v20 >> 1);
        if (v22 < 1)
        {
          goto LABEL_37;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v25 = v71 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v7 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_37;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v25 = v71 | v19;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v6)
    {
      break;
    }

    v27 = *(result + 192);
    v28 = v6 - *(result + 200);
    v29 = a2 - v28 + (v27 >> 1);
    if (v29 >= 1)
    {
      if (v29 < v27)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v29) >> 32) >> 15)) | v71;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
      goto LABEL_29;
    }

LABEL_37:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 4;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v72)
  {
    v31 = (a2 >> 26) & 0x3C;
    v30 = a2;
    goto LABEL_29;
  }

  v32 = *(result + 192);
  v33 = *(result + 200) + v72;
  v34 = v33 - a2 + (v32 >> 1);
  if (v34 < 1)
  {
    goto LABEL_37;
  }

  if (v34 < v32)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v71;
  }

  v30 = v33 - 0x1000000;
  v31 = 28;
LABEL_29:
  if (v25 < 0x400000)
  {
    goto LABEL_37;
  }

  v35 = v13 + SHIDWORD(v26) * v4;
  v36 = v30 >> 32;
  v37 = v35 + 4 * v36;
  v38 = *(result + 32);
  if (v15 >= v37)
  {
    v39 = (v35 + 4 * v36);
  }

  else
  {
    v39 = v15;
  }

  if (v39 < v38)
  {
    v39 = *(result + 32);
  }

  v40 = bswap32(*v39);
  if (!v5)
  {
    goto LABEL_39;
  }

  v41 = *(v5 + (v31 | v24));
LABEL_53:
  v49 = v41 & 0xF;
  v50 = HIBYTE(v41) & 3;
  switch(v49)
  {
    case 1:
      v68 = (v37 + SBYTE1(v41) * v4);
      if (v15 < v68)
      {
        v68 = v15;
      }

      if (v68 < v38)
      {
        v68 = v38;
      }

      v69 = interpolate_8888_21865[v50];
      v70 = v50 + 1;
      v66 = v40 - ((v69 & v40) >> v70);
      v67 = (bswap32(*v68) & v69) >> v70;
LABEL_81:
      v40 = v66 + v67;
      break;
    case 2:
      v64 = (v37 + ((HIWORD(v41) << 56) >> 54));
      if (v15 < v64)
      {
        v64 = v15;
      }

      if (v64 < v38)
      {
        v64 = v38;
      }

      v60 = bswap32(*v64);
      v61 = (v41 >> 28) & 3;
      v62 = interpolate_8888_21865[v61];
      v63 = v62 & v40;
LABEL_75:
      v65 = v61 + 1;
      v66 = v40 - (v63 >> v65);
      v67 = (v60 & v62) >> v65;
      goto LABEL_81;
    case 3:
      v51 = HIWORD(v41) << 56;
      v52 = (v37 + (v51 >> 54));
      if (v15 < v52)
      {
        v52 = v15;
      }

      if (v52 < v38)
      {
        v52 = v38;
      }

      v53 = bswap32(*v52);
      v54 = v37 + SBYTE1(v41) * v4;
      if (v15 >= v54)
      {
        v55 = (v37 + SBYTE1(v41) * v4);
      }

      else
      {
        v55 = v15;
      }

      if (v55 < v38)
      {
        v55 = v38;
      }

      v56 = bswap32(*v55);
      v57 = (v54 + (v51 >> 54));
      if (v15 < v57)
      {
        v57 = v15;
      }

      if (v57 < v38)
      {
        v57 = v38;
      }

      v58 = interpolate_8888_21865[v50];
      v59 = v50 + 1;
      v40 = v40 - ((v58 & v40) >> v59) + ((v58 & v56) >> v59);
      v60 = v53 - ((v58 & v53) >> v59) + ((bswap32(*v57) & v58) >> v59);
      v61 = (v41 >> 28) & 3;
      v62 = interpolate_8888_21865[v61];
      v63 = v40 & v62;
      goto LABEL_75;
  }

LABEL_39:
  v42 = 0;
  v43 = 0;
  v44 = v25 >> 22;
  a3 += v10;
  v45 = v8 - a3;
  a2 += v9;
  v46 = v72 - a2;
  while (1)
  {
    *(v11 + 4 + 4 * v43) = (v40 | v14) & 0xF8000000 | (v40 >> 9) & 0x7C00 | (v40 >> 6) & 0xFFE0 | (v40 >> 3) | ((v40 | v14) >> 29 << 24);
    *(v12 + 1 + v43) = v44;
    if (a4 - 1 == v43)
    {
      return result;
    }

    if ((v45 | v46 | (a3 - v7) | (a2 - v6)) < 0)
    {
      v12 += v43 + 1;
      v11 = v11 - v42 + 4;
      a4 += ~v43;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v47 = v13 + SHIDWORD(a3) * v4;
    v37 = v47 + 4 * (a2 >> 32);
    v38 = *(result + 32);
    if (v15 >= v37)
    {
      v48 = (v47 + 4 * (a2 >> 32));
    }

    else
    {
      v48 = v15;
    }

    if (v48 < v38)
    {
      v48 = *(result + 32);
    }

    v40 = bswap32(*v48);
    if (v5)
    {
      v41 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v41 & 0xF) != 0)
      {
        v12 += v43 + 1;
        v11 = v11 - v42 + 4;
        a4 += ~v43;
        v25 = -1;
        goto LABEL_53;
      }
    }

    ++v43;
    v42 -= 4;
    a3 += v10;
    v45 -= v10;
    a2 += v9;
    v46 -= v9;
    LOBYTE(v44) = -1;
  }
}

uint64_t rgb555_sample_rgba32(uint64_t result, uint64_t a2, int64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 72);
  v7 = *(result + 88);
  v75 = *(result + 80);
  v8 = *(result + 112);
  v9 = *(result + 120);
  v73 = *(result + 188);
  v10 = *(result + 152) - 4;
  v11 = *(result + 144) - 1;
  v12 = *(result + 32);
  if (*(result + 40))
  {
    v13 = 0;
  }

  else
  {
    v13 = 255;
  }

  v14 = v12 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  v74 = *(result + 64);
  while (1)
  {
LABEL_5:
    if (a3 >= v6)
    {
      if (a3 <= v7)
      {
        v23 = (a3 >> 22) & 0x3C0;
        v24 = 0x3FFFFFFF;
        HIDWORD(v25) = HIDWORD(a3);
      }

      else
      {
        v19 = *(result + 216);
        v20 = *(result + 224) + v7;
        v21 = v20 - a3 + (v19 >> 1);
        if (v21 < 1)
        {
          goto LABEL_37;
        }

        if (v21 >= v19)
        {
          LODWORD(v22) = 0x3FFFFFFF;
        }

        else
        {
          v22 = (*(result + 232) * v21) >> 32;
        }

        v24 = v73 | v22;
        v25 = v20 - 0x1000000;
        v23 = 448;
      }
    }

    else
    {
      v15 = *(result + 216);
      v16 = v6 - *(result + 224);
      v17 = a3 - v16 + (v15 >> 1);
      if (v17 < 1)
      {
        goto LABEL_37;
      }

      if (v17 >= v15)
      {
        LODWORD(v18) = 0x3FFFFFFF;
      }

      else
      {
        v18 = (*(result + 232) * v17) >> 32;
      }

      v24 = v73 | v18;
      v25 = v16 + 0x1000000;
      v23 = 512;
    }

    if (a2 >= v74)
    {
      break;
    }

    v26 = *(result + 192);
    v27 = v74 - *(result + 200);
    v28 = a2 - v27 + (v26 >> 1);
    if (v28 >= 1)
    {
      if (v28 < v26)
      {
        v24 = ((v24 >> 15) * (((*(result + 208) * v28) >> 32) >> 15)) | v73;
      }

      v29 = v27 + 0x1000000;
      v30 = 32;
      goto LABEL_29;
    }

LABEL_37:
    --a4;
    a2 += v8;
    a3 += v9;
    v10 += 4;
    *++v11 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v75)
  {
    v30 = (a2 >> 26) & 0x3C;
    v29 = a2;
    goto LABEL_29;
  }

  v31 = *(result + 192);
  v32 = *(result + 200) + v75;
  v33 = v32 - a2 + (v31 >> 1);
  if (v33 < 1)
  {
    goto LABEL_37;
  }

  if (v33 < v31)
  {
    v24 = ((v24 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v73;
  }

  v29 = v32 - 0x1000000;
  v30 = 28;
LABEL_29:
  if (v24 < 0x400000)
  {
    goto LABEL_37;
  }

  v34 = v12 + SHIDWORD(v25) * v4;
  v35 = v29 >> 32;
  v36 = v34 + 4 * v35;
  v37 = *(result + 32);
  if (v14 >= v36)
  {
    v38 = (v34 + 4 * v35);
  }

  else
  {
    v38 = v14;
  }

  if (v38 < v37)
  {
    v38 = *(result + 32);
  }

  v39 = *v38;
  if (!v5)
  {
    goto LABEL_39;
  }

  v40 = *(v5 + (v30 | v23));
LABEL_53:
  v48 = v40 & 0xF;
  v49 = HIBYTE(v40) & 3;
  switch(v48)
  {
    case 1:
      v70 = (v36 + SBYTE1(v40) * v4);
      if (v14 < v70)
      {
        v70 = v14;
      }

      if (v70 < v37)
      {
        v70 = v37;
      }

      v71 = interpolate_8888_21865[v49];
      v72 = v49 + 1;
      v64 = v39 - ((v71 & v39) >> v72);
      v69 = (v71 & *v70) >> v72;
LABEL_81:
      v39 = v64 + v69;
      break;
    case 2:
      v66 = (v36 + ((HIWORD(v40) << 56) >> 54));
      if (v14 < v66)
      {
        v66 = v14;
      }

      if (v66 < v37)
      {
        v66 = v37;
      }

      v67 = (v40 >> 28) & 3;
      v68 = interpolate_8888_21865[v67];
      v63 = v67 + 1;
      v64 = v39 - ((v68 & v39) >> v63);
      v65 = v68 & *v66;
LABEL_75:
      v69 = v65 >> v63;
      goto LABEL_81;
    case 3:
      v50 = HIWORD(v40) << 56;
      v51 = (v36 + (v50 >> 54));
      if (v14 < v51)
      {
        v51 = v14;
      }

      if (v51 < v37)
      {
        v51 = v37;
      }

      v52 = *v51;
      v53 = v36 + SBYTE1(v40) * v4;
      if (v14 >= v53)
      {
        v54 = (v36 + SBYTE1(v40) * v4);
      }

      else
      {
        v54 = v14;
      }

      if (v54 < v37)
      {
        v54 = v37;
      }

      v55 = *v54;
      v56 = (v53 + (v50 >> 54));
      if (v14 < v56)
      {
        v56 = v14;
      }

      if (v56 < v37)
      {
        v56 = v37;
      }

      v57 = interpolate_8888_21865[v49];
      v58 = v49 + 1;
      v59 = v39 - ((v57 & v39) >> v58) + ((v57 & v55) >> v58);
      v60 = v52 - ((v57 & v52) >> v58) + ((v57 & *v56) >> v58);
      v61 = (v40 >> 28) & 3;
      v62 = interpolate_8888_21865[v61];
      v63 = v61 + 1;
      v64 = v59 - ((v59 & v62) >> v63);
      v65 = v60 & v62;
      goto LABEL_75;
  }

LABEL_39:
  v41 = 0;
  v42 = 0;
  v43 = v24 >> 22;
  a3 += v9;
  v44 = v7 - a3;
  a2 += v8;
  v45 = v75 - a2;
  while (1)
  {
    *(v10 + 4 + 4 * v42) = (v39 >> 17) & 0x7C00 | (v39 >> 14) & 0x3E0 | (v39 >> 11) & 0xFFFFFF | (((v39 | v13) >> 3) << 27) | ((((v39 | v13) >> 5) & 7) << 24);
    *(v11 + 1 + v42) = v43;
    if (a4 - 1 == v42)
    {
      return result;
    }

    if ((v44 | v45 | (a3 - v6) | (a2 - v74)) < 0)
    {
      v11 += v42 + 1;
      v10 = v10 - v41 + 4;
      a4 += ~v42;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v46 = v12 + SHIDWORD(a3) * v4;
    v36 = v46 + 4 * (a2 >> 32);
    v37 = *(result + 32);
    if (v14 >= v36)
    {
      v47 = (v46 + 4 * (a2 >> 32));
    }

    else
    {
      v47 = v14;
    }

    if (v47 < v37)
    {
      v47 = *(result + 32);
    }

    v39 = *v47;
    if (v5)
    {
      v40 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v11 += v42 + 1;
        v10 = v10 - v41 + 4;
        a4 += ~v42;
        v24 = -1;
        goto LABEL_53;
      }
    }

    ++v42;
    v41 -= 4;
    a3 += v9;
    v44 -= v9;
    a2 += v8;
    v45 -= v8;
    LOBYTE(v43) = -1;
  }
}

uint64_t rgb555_sample_RGBA32(uint64_t result, uint64_t a2, int64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 72);
  v7 = *(result + 88);
  v72 = *(result + 80);
  v8 = *(result + 112);
  v9 = *(result + 120);
  v70 = *(result + 188);
  v10 = *(result + 152) - 4;
  v11 = *(result + 144) - 1;
  v12 = *(result + 32);
  if (*(result + 40))
  {
    v13 = 0;
  }

  else
  {
    v13 = 255;
  }

  v14 = v12 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  v71 = *(result + 64);
  while (1)
  {
LABEL_5:
    if (a3 >= v6)
    {
      if (a3 <= v7)
      {
        v23 = (a3 >> 22) & 0x3C0;
        v24 = 0x3FFFFFFF;
        HIDWORD(v25) = HIDWORD(a3);
      }

      else
      {
        v19 = *(result + 216);
        v20 = *(result + 224) + v7;
        v21 = v20 - a3 + (v19 >> 1);
        if (v21 < 1)
        {
          goto LABEL_37;
        }

        if (v21 >= v19)
        {
          LODWORD(v22) = 0x3FFFFFFF;
        }

        else
        {
          v22 = (*(result + 232) * v21) >> 32;
        }

        v24 = v70 | v22;
        v25 = v20 - 0x1000000;
        v23 = 448;
      }
    }

    else
    {
      v15 = *(result + 216);
      v16 = v6 - *(result + 224);
      v17 = a3 - v16 + (v15 >> 1);
      if (v17 < 1)
      {
        goto LABEL_37;
      }

      if (v17 >= v15)
      {
        LODWORD(v18) = 0x3FFFFFFF;
      }

      else
      {
        v18 = (*(result + 232) * v17) >> 32;
      }

      v24 = v70 | v18;
      v25 = v16 + 0x1000000;
      v23 = 512;
    }

    if (a2 >= v71)
    {
      break;
    }

    v26 = *(result + 192);
    v27 = v71 - *(result + 200);
    v28 = a2 - v27 + (v26 >> 1);
    if (v28 >= 1)
    {
      if (v28 < v26)
      {
        v24 = ((v24 >> 15) * (((*(result + 208) * v28) >> 32) >> 15)) | v70;
      }

      v29 = v27 + 0x1000000;
      v30 = 32;
      goto LABEL_29;
    }

LABEL_37:
    --a4;
    a2 += v8;
    a3 += v9;
    v10 += 4;
    *++v11 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v72)
  {
    v30 = (a2 >> 26) & 0x3C;
    v29 = a2;
    goto LABEL_29;
  }

  v31 = *(result + 192);
  v32 = *(result + 200) + v72;
  v33 = v32 - a2 + (v31 >> 1);
  if (v33 < 1)
  {
    goto LABEL_37;
  }

  if (v33 < v31)
  {
    v24 = ((v24 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v70;
  }

  v29 = v32 - 0x1000000;
  v30 = 28;
LABEL_29:
  if (v24 < 0x400000)
  {
    goto LABEL_37;
  }

  v34 = v12 + SHIDWORD(v25) * v4;
  v35 = v29 >> 32;
  v36 = v34 + 4 * v35;
  v37 = *(result + 32);
  if (v14 >= v36)
  {
    v38 = (v34 + 4 * v35);
  }

  else
  {
    v38 = v14;
  }

  if (v38 < v37)
  {
    v38 = *(result + 32);
  }

  v39 = bswap32(*v38);
  if (!v5)
  {
    goto LABEL_39;
  }

  v40 = *(v5 + (v30 | v23));
LABEL_53:
  v48 = v40 & 0xF;
  v49 = HIBYTE(v40) & 3;
  switch(v48)
  {
    case 1:
      v67 = (v36 + SBYTE1(v40) * v4);
      if (v14 < v67)
      {
        v67 = v14;
      }

      if (v67 < v37)
      {
        v67 = v37;
      }

      v68 = interpolate_8888_21865[v49];
      v69 = v49 + 1;
      v65 = v39 - ((v68 & v39) >> v69);
      v66 = (bswap32(*v67) & v68) >> v69;
LABEL_81:
      v39 = v65 + v66;
      break;
    case 2:
      v63 = (v36 + ((HIWORD(v40) << 56) >> 54));
      if (v14 < v63)
      {
        v63 = v14;
      }

      if (v63 < v37)
      {
        v63 = v37;
      }

      v59 = bswap32(*v63);
      v60 = (v40 >> 28) & 3;
      v61 = interpolate_8888_21865[v60];
      v62 = v61 & v39;
LABEL_75:
      v64 = v60 + 1;
      v65 = v39 - (v62 >> v64);
      v66 = (v59 & v61) >> v64;
      goto LABEL_81;
    case 3:
      v50 = HIWORD(v40) << 56;
      v51 = (v36 + (v50 >> 54));
      if (v14 < v51)
      {
        v51 = v14;
      }

      if (v51 < v37)
      {
        v51 = v37;
      }

      v52 = bswap32(*v51);
      v53 = v36 + SBYTE1(v40) * v4;
      if (v14 >= v53)
      {
        v54 = (v36 + SBYTE1(v40) * v4);
      }

      else
      {
        v54 = v14;
      }

      if (v54 < v37)
      {
        v54 = v37;
      }

      v55 = bswap32(*v54);
      v56 = (v53 + (v50 >> 54));
      if (v14 < v56)
      {
        v56 = v14;
      }

      if (v56 < v37)
      {
        v56 = v37;
      }

      v57 = interpolate_8888_21865[v49];
      v58 = v49 + 1;
      v39 = v39 - ((v57 & v39) >> v58) + ((v57 & v55) >> v58);
      v59 = v52 - ((v57 & v52) >> v58) + ((bswap32(*v56) & v57) >> v58);
      v60 = (v40 >> 28) & 3;
      v61 = interpolate_8888_21865[v60];
      v62 = v39 & v61;
      goto LABEL_75;
  }

LABEL_39:
  v41 = 0;
  v42 = 0;
  v43 = v24 >> 22;
  a3 += v9;
  v44 = v7 - a3;
  a2 += v8;
  v45 = v72 - a2;
  while (1)
  {
    *(v10 + 4 + 4 * v42) = (v39 >> 17) & 0x7C00 | (v39 >> 14) & 0x3E0 | (v39 >> 11) & 0xFFFFFF | (((v39 | v13) >> 3) << 27) | ((((v39 | v13) >> 5) & 7) << 24);
    *(v11 + 1 + v42) = v43;
    if (a4 - 1 == v42)
    {
      return result;
    }

    if ((v44 | v45 | (a3 - v6) | (a2 - v71)) < 0)
    {
      v11 += v42 + 1;
      v10 = v10 - v41 + 4;
      a4 += ~v42;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v46 = v12 + SHIDWORD(a3) * v4;
    v36 = v46 + 4 * (a2 >> 32);
    v37 = *(result + 32);
    if (v14 >= v36)
    {
      v47 = (v46 + 4 * (a2 >> 32));
    }

    else
    {
      v47 = v14;
    }

    if (v47 < v37)
    {
      v47 = *(result + 32);
    }

    v39 = bswap32(*v47);
    if (v5)
    {
      v40 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v11 += v42 + 1;
        v10 = v10 - v41 + 4;
        a4 += ~v42;
        v24 = -1;
        goto LABEL_53;
      }
    }

    ++v42;
    v41 -= 4;
    a3 += v9;
    v44 -= v9;
    a2 += v8;
    v45 -= v8;
    LOBYTE(v43) = -1;
  }
}

uint64_t rgb555_sample_RGB24(uint64_t result, uint64_t a2, int64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 24);
  v6 = *(result + 176);
  v7 = *(result + 72);
  v8 = *(result + 80);
  v9 = *(result + 88);
  v10 = *(result + 112);
  v11 = *(result + 120);
  v76 = *(result + 188);
  v12 = *(result + 152) - 4;
  v13 = *(result + 144) - 1;
  v14 = v4 + (3 * *(result + 256)) + ((*(result + 260) - 1) * v5) - 3;
  v77 = *(result + 64);
  while (1)
  {
LABEL_2:
    if (a3 >= v7)
    {
      if (a3 <= v9)
      {
        v23 = (a3 >> 22) & 0x3C0;
        v24 = 0x3FFFFFFF;
        HIDWORD(v25) = HIDWORD(a3);
        v26 = v8;
        v27 = v77;
      }

      else
      {
        v19 = *(result + 216);
        v20 = *(result + 224) + v9;
        v21 = v20 - a3 + (v19 >> 1);
        if (v21 < 1)
        {
          goto LABEL_34;
        }

        if (v21 >= v19)
        {
          LODWORD(v22) = 0x3FFFFFFF;
        }

        else
        {
          v22 = (*(result + 232) * v21) >> 32;
        }

        v26 = v8;
        v27 = v77;
        v24 = v76 | v22;
        v25 = v20 - 0x1000000;
        v23 = 448;
      }
    }

    else
    {
      v15 = *(result + 216);
      v16 = v7 - *(result + 224);
      v17 = a3 - v16 + (v15 >> 1);
      if (v17 < 1)
      {
        goto LABEL_34;
      }

      if (v17 >= v15)
      {
        LODWORD(v18) = 0x3FFFFFFF;
      }

      else
      {
        v18 = (*(result + 232) * v17) >> 32;
      }

      v26 = v8;
      v27 = v77;
      v24 = v76 | v18;
      v25 = v16 + 0x1000000;
      v23 = 512;
    }

    if (a2 >= v27)
    {
      break;
    }

    v28 = *(result + 192);
    v29 = v27 - *(result + 200);
    v30 = a2 - v29 + (v28 >> 1);
    if (v30 >= 1)
    {
      if (v30 < v28)
      {
        v24 = ((v24 >> 15) * (((*(result + 208) * v30) >> 32) >> 15)) | v76;
      }

      v31 = v29 + 0x1000000;
      v32 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v10;
    a3 += v11;
    v12 += 4;
    *++v13 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v26)
  {
    v32 = (a2 >> 26) & 0x3C;
    v31 = a2;
    goto LABEL_26;
  }

  v33 = *(result + 192);
  v34 = *(result + 200) + v26;
  v35 = v34 - a2 + (v33 >> 1);
  if (v35 < 1)
  {
    goto LABEL_34;
  }

  if (v35 < v33)
  {
    v24 = ((v24 >> 15) * (((*(result + 208) * v35) >> 32) >> 15)) | v76;
  }

  v31 = v34 - 0x1000000;
  v32 = 28;
LABEL_26:
  if (v24 < 0x400000)
  {
    goto LABEL_34;
  }

  v36 = v4 + SHIDWORD(v25) * v5;
  v37 = 3 * (v31 >> 32);
  v38 = v36 + v37;
  v39 = *(result + 32);
  if (v14 >= v36 + v37)
  {
    v40 = (v36 + v37);
  }

  else
  {
    v40 = v14;
  }

  if (v40 < v39)
  {
    v40 = *(result + 32);
  }

  v41 = (v40[1] << 16) | (*v40 << 24) | (v40[2] << 8) | 0xFF;
  if (!v6)
  {
    goto LABEL_36;
  }

  v42 = *(v6 + (v32 | v23));
LABEL_50:
  v54 = v42 & 0xF;
  v55 = HIBYTE(v42) & 3;
  switch(v54)
  {
    case 1:
      v73 = (v38 + SBYTE1(v42) * v5);
      if (v14 < v73)
      {
        v73 = v14;
      }

      if (v73 < v39)
      {
        v73 = v39;
      }

      v74 = interpolate_8888_21865[v55];
      v75 = v55 + 1;
      v71 = v41 - ((v74 & v41) >> v75);
      v72 = (((v73[1] << 16) | (*v73 << 24) | (v73[2] << 8) | 0xFF) & v74) >> v75;
LABEL_78:
      v41 = v71 + v72;
      break;
    case 2:
      v69 = (v38 + 3 * SBYTE2(v42));
      if (v14 < v69)
      {
        v69 = v14;
      }

      if (v69 < v39)
      {
        v69 = v39;
      }

      v65 = (v69[1] << 16) | (*v69 << 24) | (v69[2] << 8) | 0xFF;
      v66 = (v42 >> 28) & 3;
      v67 = interpolate_8888_21865[v66];
      v68 = v67 & v41;
LABEL_72:
      v70 = v66 + 1;
      v71 = v41 - (v68 >> v70);
      v72 = (v65 & v67) >> v70;
      goto LABEL_78;
    case 3:
      v56 = 3 * SBYTE2(v42);
      v57 = (v38 + v56);
      if (v14 < v38 + v56)
      {
        v57 = v14;
      }

      if (v57 < v39)
      {
        v57 = v39;
      }

      v58 = (v57[1] << 16) | (*v57 << 24) | (v57[2] << 8) | 0xFF;
      v59 = v38 + SBYTE1(v42) * v5;
      if (v14 >= v59)
      {
        v60 = (v38 + SBYTE1(v42) * v5);
      }

      else
      {
        v60 = v14;
      }

      if (v60 < v39)
      {
        v60 = v39;
      }

      v61 = (v60[1] << 16) | (*v60 << 24) | (v60[2] << 8) | 0xFF;
      v62 = (v59 + v56);
      if (v14 < v62)
      {
        v62 = v14;
      }

      if (v62 < v39)
      {
        v62 = v39;
      }

      v63 = interpolate_8888_21865[v55];
      v64 = v55 + 1;
      v41 = v41 - ((v63 & v41) >> v64) + ((v61 & v63) >> v64);
      v65 = v58 - ((v63 & v58) >> v64) + ((((v62[1] << 16) | (*v62 << 24) | (v62[2] << 8) | 0xFF) & v63) >> v64);
      v66 = (v42 >> 28) & 3;
      v67 = interpolate_8888_21865[v66];
      v68 = v41 & v67;
      goto LABEL_72;
  }

LABEL_36:
  v43 = 0;
  v44 = 0;
  v45 = v24 >> 22;
  a3 += v11;
  v46 = v9 - a3;
  a2 += v10;
  v47 = v8 - a2;
  while (1)
  {
    v48 = vdupq_n_s32(v41);
    v49 = vshlq_u32(v48, xmmword_18439C800);
    v49.i32[3] = vshlq_u32(v48, xmmword_18439C810).i32[3];
    v50 = vandq_s8(v49, xmmword_18439C820);
    v51 = vorr_s8(*v50.i8, *&vextq_s8(v50, v50, 8uLL));
    *(v12 + 4 + 4 * v44) = v51.i32[0] | (v41 << 19) & 0x7000000 | v51.i32[1];
    *(v13 + 1 + v44) = v45;
    if (a4 - 1 == v44)
    {
      return result;
    }

    if ((v46 | v47 | (a3 - v7) | (a2 - v77)) < 0)
    {
      v13 += v44 + 1;
      v12 = v12 - v43 + 4;
      a4 += ~v44;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v52 = v4 + SHIDWORD(a3) * v5;
    v38 = v52 + 3 * (a2 >> 32);
    v39 = *(result + 32);
    if (v14 >= v38)
    {
      v53 = (v52 + 3 * (a2 >> 32));
    }

    else
    {
      v53 = v14;
    }

    if (v53 < v39)
    {
      v53 = *(result + 32);
    }

    v41 = (v53[1] << 16) | (*v53 << 24) | (v53[2] << 8) | 0xFF;
    if (v6)
    {
      v42 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v42 & 0xF) != 0)
      {
        v13 += v44 + 1;
        v12 = v12 - v43 + 4;
        a4 += ~v44;
        v24 = -1;
        goto LABEL_50;
      }
    }

    ++v44;
    v43 -= 4;
    a3 += v11;
    v46 -= v11;
    a2 += v10;
    v47 -= v10;
    LOBYTE(v45) = -1;
  }
}

uint64_t rgb555_sample_rgb555(uint64_t result, unint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v134 = *(result + 28);
  v5 = *(result + 112);
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6)
  {
    v133 = *(result + 112);
    if (v5 > v6)
    {
      v133 = v5 % v6;
    }
  }

  else
  {
    v133 = 0;
  }

  v8 = *(result + 176);
  v9 = *(result + 40);
  v135 = *(result + 32);
  v10 = *(result + 120);
  if (v7)
  {
    v11 = v10 % v7;
    if (v10 <= v7)
    {
      v11 = *(result + 120);
    }

    v132 = v11;
  }

  else
  {
    v132 = 0;
  }

  v131 = *(result + 80);
  v129 = *(result + 88);
  v12 = *(result + 152) - 4;
  v13 = *(result + 144) - 1;
  if (v9)
  {
    v14 = 0;
  }

  else
  {
    v14 = -16777216;
  }

  v15 = *(result + 260) - 1;
  v16 = *(result + 256);
  v127 = *(result + 188);
  v17 = (v9 + (v16 - 1) + (v15 * v134));
  v18 = v135 + (v15 * v4) + 2 * v16 - 4;
  v128 = *(result + 64);
  v130 = *(result + 72);
  do
  {
    if (a3 < v130)
    {
      v19 = *(result + 216);
      v20 = v130 - *(result + 224);
      v21 = a3 - v20 + (v19 >> 1);
      v22 = a4;
      if (v21 < 1)
      {
        goto LABEL_61;
      }

      if (v21 >= v19)
      {
        LODWORD(v23) = 0x3FFFFFFF;
      }

      else
      {
        v23 = (*(result + 232) * v21) >> 32;
      }

      v33 = v131;
      v30 = v127 | v23;
      v31 = v20 + 0x1000000;
      v28 = a3 - v31;
      v29 = 512;
      goto LABEL_27;
    }

    v22 = a4;
    if (a3 > v129)
    {
      v24 = *(result + 216);
      v25 = *(result + 224) + v129;
      v26 = v25 - a3 + (v24 >> 1);
      if (v26 < 1)
      {
        goto LABEL_61;
      }

      if (v26 >= v24)
      {
        LODWORD(v27) = 0x3FFFFFFF;
      }

      else
      {
        v27 = (*(result + 232) * v26) >> 32;
      }

      v33 = v131;
      v30 = v127 | v27;
      v31 = v25 - 0x1000000;
      v28 = a3 - v31;
      v29 = 448;
LABEL_27:
      v32 = v128;
      goto LABEL_28;
    }

    v28 = 0;
    v29 = (a3 >> 22) & 0x3C0;
    v30 = 0x3FFFFFFF;
    v31 = a3;
    v32 = v128;
    v33 = v131;
LABEL_28:
    if (a2 >= v32)
    {
      if (a2 <= v33)
      {
        v38 = 0;
        v39 = (a2 >> 26) & 0x3C;
        v37 = a2;
      }

      else
      {
        v40 = *(result + 192);
        v41 = *(result + 200) + v33;
        v42 = v41 - a2 + (v40 >> 1);
        if (v42 < 1)
        {
          goto LABEL_61;
        }

        if (v42 < v40)
        {
          v30 = ((v30 >> 15) * (((*(result + 208) * v42) >> 32) >> 15)) | v127;
        }

        v37 = v41 - 0x1000000;
        v38 = a2 - (v41 - 0x1000000);
        v39 = 28;
      }
    }

    else
    {
      v34 = *(result + 192);
      v35 = v32 - *(result + 200);
      v36 = a2 - v35 + (v34 >> 1);
      if (v36 < 1)
      {
        goto LABEL_61;
      }

      if (v36 < v34)
      {
        v30 = ((v30 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v127;
      }

      v37 = v35 + 0x1000000;
      v38 = a2 - (v35 + 0x1000000);
      v39 = 32;
    }

    if (v30 >= 0x400000)
    {
      if (v6)
      {
        v43 = (v7 & ((v31 % v7) >> 63)) + v31 % v7;
        v44 = (v6 & ((v37 % v6) >> 63)) + v37 % v6;
        if (v43 >= v7)
        {
          v45 = v7;
        }

        else
        {
          v45 = 0;
        }

        v31 = v43 - v45;
        if (v44 >= v6)
        {
          v46 = v6;
        }

        else
        {
          v46 = 0;
        }

        v37 = v44 - v46;
        v28 += v31;
        v38 += v37;
      }

      v47 = v31 >> 32;
      v48 = v37 >> 32;
      v49 = v135 + v47 * v4;
      v50 = v49 + 2 * v48;
      v51 = *(result + 32);
      if (v18 >= v50)
      {
        v52 = (v49 + 2 * v48);
      }

      else
      {
        v52 = v18;
      }

      if (v52 < v51)
      {
        v52 = *(result + 32);
      }

      v53 = *v52;
      if (v9)
      {
        v54 = v9 + v47 * v134 + v48;
        v55 = *(result + 40);
        if (v17 >= v54)
        {
          v56 = v54;
        }

        else
        {
          v56 = v17;
        }

        if (v56 >= v55)
        {
          v55 = v56;
        }

        v53 |= *v55 << 24;
        if (!v8)
        {
          while (1)
          {
            while (1)
            {
LABEL_66:
              *(v12 + 4) = v14 | (v53 >> 29 << 24) | v53;
              *(v13 + 1) = v30 >> 22;
              if (v22 == 1)
              {
                return result;
              }

              v59 = v22;
              v60 = 0;
              a2 += v5;
              v61 = v131 - a2;
              a3 += v10;
              v62 = v129 - a3;
              v63 = -4;
              while (1)
              {
                if (((v62 | v61 | (a3 - v130) | (a2 - v128)) & 0x8000000000000000) != 0)
                {
                  v13 += v60 + 1;
                  v12 -= v63;
                  v57 = ~v60 + v59;
                  goto LABEL_62;
                }

                if (v6)
                {
                  v64 = (v7 & ((v28 + v132) >> 63)) + v28 + v132;
                  v65 = (v6 & ((v38 + v133) >> 63)) + v38 + v133;
                  if (v64 >= v7)
                  {
                    v66 = v7;
                  }

                  else
                  {
                    v66 = 0;
                  }

                  v28 = v64 - v66;
                  if (v65 >= v6)
                  {
                    v67 = v6;
                  }

                  else
                  {
                    v67 = 0;
                  }

                  v38 = v65 - v67;
                  v68 = v28;
                  v69 = v38;
                }

                else
                {
                  v68 = a3;
                  v69 = a2;
                }

                v70 = v69 >> 32;
                v71 = v68 >> 32;
                v50 = v135 + SHIDWORD(v68) * v4 + 2 * (v69 >> 32);
                v51 = *(result + 32);
                if (v18 >= v50)
                {
                  v72 = v50;
                }

                else
                {
                  v72 = v18;
                }

                if (v72 < v51)
                {
                  v72 = *(result + 32);
                }

                v53 = *v72;
                if (v9)
                {
                  v54 = v9 + v71 * v134 + v70;
                  v73 = *(result + 40);
                  if (v17 >= v54)
                  {
                    v74 = v54;
                  }

                  else
                  {
                    v74 = v17;
                  }

                  if (v74 >= v73)
                  {
                    v73 = v74;
                  }

                  v53 |= *v73 << 24;
                }

                if (v8)
                {
                  v58 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
                  if ((v58 & 0xF) != 0)
                  {
                    break;
                  }
                }

                *(v12 + 4 * v60 + 8) = v14 | (v53 >> 29 << 24) | v53;
                v75 = v13 + v60++;
                v63 -= 4;
                *(v75 + 2) = -1;
                a2 += v5;
                v61 -= v5;
                a3 += v10;
                v62 -= v10;
                if (v59 - 1 == v60)
                {
                  return result;
                }
              }

              v13 += v60 + 1;
              v12 -= v63;
              v22 = ~v60 + v59;
              v30 = -1;
LABEL_96:
              v76 = v58 & 0xF;
              v77 = v58 >> 8;
              v78 = HIBYTE(v58) & 3;
              if (v76 != 1)
              {
                break;
              }

              LODWORD(v116) = SBYTE1(v58);
              if (v6)
              {
                v117 = v77 << 56;
                v118 = v28 + (v117 >> 24);
                v119 = v7 & (v118 >> 63);
                if (v119 + v118 >= v7)
                {
                  v120 = v7;
                }

                else
                {
                  v120 = 0;
                }

                v116 = (v119 + (v117 >> 24) - v120) >> 32;
              }

              v121 = (v50 + v116 * v4);
              if (v18 < v121)
              {
                v121 = v18;
              }

              if (v121 < v51)
              {
                v121 = v51;
              }

              v122 = *v121;
              if (v9)
              {
                v123 = (v54 + v116 * v134);
                if (v17 < v123)
                {
                  v123 = v17;
                }

                if (v123 < *(result + 40))
                {
                  v123 = *(result + 40);
                }

                v122 |= *v123 << 24;
              }

              v124 = interpolate_8555_21866[v78];
              v114 = v53 - ((v124 & v53) >> (v78 + 1));
              v115 = (v124 & v122) >> (v78 + 1);
LABEL_168:
              v53 = v114 + v115;
            }

            if (v76 == 2)
            {
              v104 = SBYTE2(v58);
              if (v6)
              {
                v105 = HIWORD(v58) << 56;
                v106 = v38 + (v105 >> 24);
                v107 = v6 & (v106 >> 63);
                if (v107 + v106 >= v6)
                {
                  v108 = v6;
                }

                else
                {
                  v108 = 0;
                }

                v104 = (v107 + (v105 >> 24) - v108) >> 32;
              }

              v109 = (v50 + 2 * v104);
              if (v18 < v109)
              {
                v109 = v18;
              }

              if (v109 < v51)
              {
                v109 = v51;
              }

              v110 = *v109;
              if (v9)
              {
                v111 = (v54 + v104);
                if (v17 < v111)
                {
                  v111 = v17;
                }

                if (v111 < *(result + 40))
                {
                  v111 = *(result + 40);
                }

                v110 |= *v111 << 24;
              }

              v112 = (v58 >> 28) & 3;
              v113 = interpolate_8555_21866[v112];
              LOBYTE(v112) = v112 + 1;
              v114 = v53 - ((v113 & v53) >> v112);
              v115 = (v113 & v110) >> v112;
              goto LABEL_168;
            }

            if (v76 == 3)
            {
              v79 = HIBYTE(v58) & 3;
              v126 = v30;
              v125 = v22;
              LODWORD(v80) = SBYTE1(v58);
              v81 = SBYTE2(v58);
              if (v6)
              {
                v82 = v77 << 56;
                v83 = v28 + (v82 >> 24);
                v84 = v38 + (SBYTE2(v58) << 32);
                v85 = v7 & (v83 >> 63);
                v86 = v6 & (v84 >> 63);
                v87 = v86 + v84;
                if (v85 + v83 >= v7)
                {
                  v88 = v7;
                }

                else
                {
                  v88 = 0;
                }

                if (v87 >= v6)
                {
                  v89 = v6;
                }

                else
                {
                  v89 = 0;
                }

                v80 = (v85 + (v82 >> 24) - v88) >> 32;
                v81 = (v86 + ((HIWORD(v58) << 56) >> 24) - v89) >> 32;
              }

              v90 = (v50 + 2 * v81);
              if (v18 < v90)
              {
                v90 = v18;
              }

              if (v90 < v51)
              {
                v90 = v51;
              }

              v91 = *v90;
              v92 = v50 + v80 * v4;
              if (v18 >= v92)
              {
                v93 = (v50 + v80 * v4);
              }

              else
              {
                v93 = v18;
              }

              if (v93 < v51)
              {
                v93 = v51;
              }

              v94 = *v93;
              v95 = (v92 + 2 * v81);
              if (v18 < v95)
              {
                v95 = v18;
              }

              if (v95 >= v51)
              {
                v51 = v95;
              }

              v96 = *v51;
              if (v9)
              {
                v97 = (v54 + v81);
                v98 = *(result + 40);
                if (v17 < v54 + v81)
                {
                  v97 = v17;
                }

                if (v97 < v98)
                {
                  v97 = *(result + 40);
                }

                v91 |= *v97 << 24;
                v99 = (v54 + v80 * v134);
                if (v17 >= v99)
                {
                  v100 = v99;
                }

                else
                {
                  v100 = v17;
                }

                if (v100 < v98)
                {
                  v100 = *(result + 40);
                }

                v94 |= *v100 << 24;
                v101 = &v99[v81];
                if (v17 < v101)
                {
                  v101 = v17;
                }

                if (v101 < v98)
                {
                  v101 = *(result + 40);
                }

                v96 |= *v101 << 24;
              }

              v102 = interpolate_8555_21866[v79];
              v103 = v53 - ((v102 & v53) >> (v79 + 1)) + ((v102 & v94) >> (v79 + 1));
              v53 = v103 - ((v103 & interpolate_8555_21866[(v58 >> 28) & 3]) >> (((v58 >> 28) & 3) + 1)) + (((v91 - ((v102 & v91) >> (v79 + 1)) + ((v102 & v96) >> (v79 + 1))) & interpolate_8555_21866[(v58 >> 28) & 3]) >> (((v58 >> 28) & 3) + 1));
              v22 = v125;
              v30 = v126;
            }
          }
        }
      }

      else
      {
        v54 = 0;
        if (!v8)
        {
          goto LABEL_66;
        }
      }

      v58 = *(v8 + (v39 | v29));
      goto LABEL_96;
    }

LABEL_61:
    v57 = v22 - 1;
    a2 += v5;
    a3 += v10;
    v12 += 4;
    *++v13 = 0;
LABEL_62:
    a4 = v57;
  }

  while (v57);
  return result;
}

uint64_t rgb555_sample_RGB555(uint64_t result, unint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v134 = *(result + 28);
  v5 = *(result + 112);
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6)
  {
    v133 = *(result + 112);
    if (v5 > v6)
    {
      v133 = v5 % v6;
    }
  }

  else
  {
    v133 = 0;
  }

  v8 = *(result + 176);
  v9 = *(result + 40);
  v135 = *(result + 32);
  v10 = *(result + 120);
  if (v7)
  {
    v11 = v10 % v7;
    if (v10 <= v7)
    {
      v11 = *(result + 120);
    }

    v132 = v11;
  }

  else
  {
    v132 = 0;
  }

  v131 = *(result + 80);
  v129 = *(result + 88);
  v12 = *(result + 152) - 4;
  v13 = *(result + 144) - 1;
  if (v9)
  {
    v14 = 0;
  }

  else
  {
    v14 = -16777216;
  }

  v15 = *(result + 260) - 1;
  v16 = *(result + 256);
  v127 = *(result + 188);
  v17 = (v9 + (v16 - 1) + (v15 * v134));
  v18 = v135 + (v15 * v4) + 2 * v16 - 4;
  v128 = *(result + 64);
  v130 = *(result + 72);
  do
  {
    if (a3 < v130)
    {
      v19 = *(result + 216);
      v20 = v130 - *(result + 224);
      v21 = a3 - v20 + (v19 >> 1);
      v22 = a4;
      if (v21 < 1)
      {
        goto LABEL_61;
      }

      if (v21 >= v19)
      {
        LODWORD(v23) = 0x3FFFFFFF;
      }

      else
      {
        v23 = (*(result + 232) * v21) >> 32;
      }

      v33 = v131;
      v30 = v127 | v23;
      v31 = v20 + 0x1000000;
      v28 = a3 - v31;
      v29 = 512;
      goto LABEL_27;
    }

    v22 = a4;
    if (a3 > v129)
    {
      v24 = *(result + 216);
      v25 = *(result + 224) + v129;
      v26 = v25 - a3 + (v24 >> 1);
      if (v26 < 1)
      {
        goto LABEL_61;
      }

      if (v26 >= v24)
      {
        LODWORD(v27) = 0x3FFFFFFF;
      }

      else
      {
        v27 = (*(result + 232) * v26) >> 32;
      }

      v33 = v131;
      v30 = v127 | v27;
      v31 = v25 - 0x1000000;
      v28 = a3 - v31;
      v29 = 448;
LABEL_27:
      v32 = v128;
      goto LABEL_28;
    }

    v28 = 0;
    v29 = (a3 >> 22) & 0x3C0;
    v30 = 0x3FFFFFFF;
    v31 = a3;
    v32 = v128;
    v33 = v131;
LABEL_28:
    if (a2 >= v32)
    {
      if (a2 <= v33)
      {
        v38 = 0;
        v39 = (a2 >> 26) & 0x3C;
        v37 = a2;
      }

      else
      {
        v40 = *(result + 192);
        v41 = *(result + 200) + v33;
        v42 = v41 - a2 + (v40 >> 1);
        if (v42 < 1)
        {
          goto LABEL_61;
        }

        if (v42 < v40)
        {
          v30 = ((v30 >> 15) * (((*(result + 208) * v42) >> 32) >> 15)) | v127;
        }

        v37 = v41 - 0x1000000;
        v38 = a2 - (v41 - 0x1000000);
        v39 = 28;
      }
    }

    else
    {
      v34 = *(result + 192);
      v35 = v32 - *(result + 200);
      v36 = a2 - v35 + (v34 >> 1);
      if (v36 < 1)
      {
        goto LABEL_61;
      }

      if (v36 < v34)
      {
        v30 = ((v30 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v127;
      }

      v37 = v35 + 0x1000000;
      v38 = a2 - (v35 + 0x1000000);
      v39 = 32;
    }

    if (v30 >= 0x400000)
    {
      if (v6)
      {
        v43 = (v7 & ((v31 % v7) >> 63)) + v31 % v7;
        v44 = (v6 & ((v37 % v6) >> 63)) + v37 % v6;
        if (v43 >= v7)
        {
          v45 = v7;
        }

        else
        {
          v45 = 0;
        }

        v31 = v43 - v45;
        if (v44 >= v6)
        {
          v46 = v6;
        }

        else
        {
          v46 = 0;
        }

        v37 = v44 - v46;
        v28 += v31;
        v38 += v37;
      }

      v47 = v31 >> 32;
      v48 = v37 >> 32;
      v49 = v135 + v47 * v4;
      v50 = v49 + 2 * v48;
      v51 = *(result + 32);
      if (v18 >= v50)
      {
        v52 = (v49 + 2 * v48);
      }

      else
      {
        v52 = v18;
      }

      if (v52 < v51)
      {
        v52 = *(result + 32);
      }

      v53 = bswap32(*v52) >> 16;
      if (v9)
      {
        v54 = v9 + v47 * v134 + v48;
        v55 = *(result + 40);
        if (v17 >= v54)
        {
          v56 = v54;
        }

        else
        {
          v56 = v17;
        }

        if (v56 >= v55)
        {
          v55 = v56;
        }

        v53 |= *v55 << 24;
        if (!v8)
        {
          while (1)
          {
            while (1)
            {
LABEL_66:
              *(v12 + 4) = v14 | (v53 >> 29 << 24) | v53;
              *(v13 + 1) = v30 >> 22;
              if (v22 == 1)
              {
                return result;
              }

              v59 = v22;
              v60 = 0;
              a2 += v5;
              v61 = v131 - a2;
              a3 += v10;
              v62 = v129 - a3;
              v63 = -4;
              while (1)
              {
                if (((v62 | v61 | (a3 - v130) | (a2 - v128)) & 0x8000000000000000) != 0)
                {
                  v13 += v60 + 1;
                  v12 -= v63;
                  v57 = ~v60 + v59;
                  goto LABEL_62;
                }

                if (v6)
                {
                  v64 = (v7 & ((v28 + v132) >> 63)) + v28 + v132;
                  v65 = (v6 & ((v38 + v133) >> 63)) + v38 + v133;
                  if (v64 >= v7)
                  {
                    v66 = v7;
                  }

                  else
                  {
                    v66 = 0;
                  }

                  v28 = v64 - v66;
                  if (v65 >= v6)
                  {
                    v67 = v6;
                  }

                  else
                  {
                    v67 = 0;
                  }

                  v38 = v65 - v67;
                  v68 = v28;
                  v69 = v38;
                }

                else
                {
                  v68 = a3;
                  v69 = a2;
                }

                v70 = v69 >> 32;
                v71 = v68 >> 32;
                v50 = v135 + SHIDWORD(v68) * v4 + 2 * (v69 >> 32);
                v51 = *(result + 32);
                if (v18 >= v50)
                {
                  v72 = v50;
                }

                else
                {
                  v72 = v18;
                }

                if (v72 < v51)
                {
                  v72 = *(result + 32);
                }

                v53 = bswap32(*v72) >> 16;
                if (v9)
                {
                  v54 = v9 + v71 * v134 + v70;
                  v73 = *(result + 40);
                  if (v17 >= v54)
                  {
                    v74 = v54;
                  }

                  else
                  {
                    v74 = v17;
                  }

                  if (v74 >= v73)
                  {
                    v73 = v74;
                  }

                  v53 |= *v73 << 24;
                }

                if (v8)
                {
                  v58 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
                  if ((v58 & 0xF) != 0)
                  {
                    break;
                  }
                }

                *(v12 + 4 * v60 + 8) = v14 | (v53 >> 29 << 24) | v53;
                v75 = v13 + v60++;
                v63 -= 4;
                *(v75 + 2) = -1;
                a2 += v5;
                v61 -= v5;
                a3 += v10;
                v62 -= v10;
                if (v59 - 1 == v60)
                {
                  return result;
                }
              }

              v13 += v60 + 1;
              v12 -= v63;
              v22 = ~v60 + v59;
              v30 = -1;
LABEL_96:
              v76 = v58 & 0xF;
              v77 = v58 >> 8;
              v78 = HIBYTE(v58) & 3;
              if (v76 != 1)
              {
                break;
              }

              LODWORD(v116) = SBYTE1(v58);
              if (v6)
              {
                v117 = v77 << 56;
                v118 = v28 + (v117 >> 24);
                v119 = v7 & (v118 >> 63);
                if (v119 + v118 >= v7)
                {
                  v120 = v7;
                }

                else
                {
                  v120 = 0;
                }

                v116 = (v119 + (v117 >> 24) - v120) >> 32;
              }

              v121 = (v50 + v116 * v4);
              if (v18 < v121)
              {
                v121 = v18;
              }

              if (v121 < v51)
              {
                v121 = v51;
              }

              v122 = bswap32(*v121) >> 16;
              if (v9)
              {
                v123 = (v54 + v116 * v134);
                if (v17 < v123)
                {
                  v123 = v17;
                }

                if (v123 < *(result + 40))
                {
                  v123 = *(result + 40);
                }

                v122 |= *v123 << 24;
              }

              v124 = interpolate_8555_21866[v78];
              v114 = v53 - ((v124 & v53) >> (v78 + 1));
              v115 = (v124 & v122) >> (v78 + 1);
LABEL_168:
              v53 = v114 + v115;
            }

            if (v76 == 2)
            {
              v104 = SBYTE2(v58);
              if (v6)
              {
                v105 = HIWORD(v58) << 56;
                v106 = v38 + (v105 >> 24);
                v107 = v6 & (v106 >> 63);
                if (v107 + v106 >= v6)
                {
                  v108 = v6;
                }

                else
                {
                  v108 = 0;
                }

                v104 = (v107 + (v105 >> 24) - v108) >> 32;
              }

              v109 = (v50 + 2 * v104);
              if (v18 < v109)
              {
                v109 = v18;
              }

              if (v109 < v51)
              {
                v109 = v51;
              }

              v110 = bswap32(*v109) >> 16;
              if (v9)
              {
                v111 = (v54 + v104);
                if (v17 < v111)
                {
                  v111 = v17;
                }

                if (v111 < *(result + 40))
                {
                  v111 = *(result + 40);
                }

                v110 |= *v111 << 24;
              }

              v112 = (v58 >> 28) & 3;
              v113 = interpolate_8555_21866[v112];
              LOBYTE(v112) = v112 + 1;
              v114 = v53 - ((v113 & v53) >> v112);
              v115 = (v113 & v110) >> v112;
              goto LABEL_168;
            }

            if (v76 == 3)
            {
              v79 = HIBYTE(v58) & 3;
              v126 = v30;
              v125 = v22;
              LODWORD(v80) = SBYTE1(v58);
              v81 = SBYTE2(v58);
              if (v6)
              {
                v82 = v77 << 56;
                v83 = v28 + (v82 >> 24);
                v84 = v38 + (SBYTE2(v58) << 32);
                v85 = v7 & (v83 >> 63);
                v86 = v6 & (v84 >> 63);
                v87 = v86 + v84;
                if (v85 + v83 >= v7)
                {
                  v88 = v7;
                }

                else
                {
                  v88 = 0;
                }

                if (v87 >= v6)
                {
                  v89 = v6;
                }

                else
                {
                  v89 = 0;
                }

                v80 = (v85 + (v82 >> 24) - v88) >> 32;
                v81 = (v86 + ((HIWORD(v58) << 56) >> 24) - v89) >> 32;
              }

              v90 = (v50 + 2 * v81);
              if (v18 < v90)
              {
                v90 = v18;
              }

              if (v90 < v51)
              {
                v90 = v51;
              }

              v91 = bswap32(*v90) >> 16;
              v92 = v50 + v80 * v4;
              if (v18 >= v92)
              {
                v93 = (v50 + v80 * v4);
              }

              else
              {
                v93 = v18;
              }

              if (v93 < v51)
              {
                v93 = v51;
              }

              v94 = bswap32(*v93) >> 16;
              v95 = (v92 + 2 * v81);
              if (v18 < v95)
              {
                v95 = v18;
              }

              if (v95 >= v51)
              {
                v51 = v95;
              }

              v96 = bswap32(*v51) >> 16;
              if (v9)
              {
                v97 = (v54 + v81);
                v98 = *(result + 40);
                if (v17 < v54 + v81)
                {
                  v97 = v17;
                }

                if (v97 < v98)
                {
                  v97 = *(result + 40);
                }

                v91 |= *v97 << 24;
                v99 = (v54 + v80 * v134);
                if (v17 >= v99)
                {
                  v100 = v99;
                }

                else
                {
                  v100 = v17;
                }

                if (v100 < v98)
                {
                  v100 = *(result + 40);
                }

                v94 |= *v100 << 24;
                v101 = &v99[v81];
                if (v17 < v101)
                {
                  v101 = v17;
                }

                if (v101 < v98)
                {
                  v101 = *(result + 40);
                }

                v96 |= *v101 << 24;
              }

              v102 = interpolate_8555_21866[v79];
              v103 = v53 - ((v102 & v53) >> (v79 + 1)) + ((v102 & v94) >> (v79 + 1));
              v53 = v103 - ((v103 & interpolate_8555_21866[(v58 >> 28) & 3]) >> (((v58 >> 28) & 3) + 1)) + (((v91 - ((v102 & v91) >> (v79 + 1)) + ((v102 & v96) >> (v79 + 1))) & interpolate_8555_21866[(v58 >> 28) & 3]) >> (((v58 >> 28) & 3) + 1));
              v22 = v125;
              v30 = v126;
            }
          }
        }
      }

      else
      {
        v54 = 0;
        if (!v8)
        {
          goto LABEL_66;
        }
      }

      v58 = *(v8 + (v39 | v29));
      goto LABEL_96;
    }

LABEL_61:
    v57 = v22 - 1;
    a2 += v5;
    a3 += v10;
    v12 += 4;
    *++v13 = 0;
LABEL_62:
    a4 = v57;
  }

  while (v57);
  return result;
}

uint64_t rgb555_sample_W8(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 176);
  v91 = *(result + 80);
  v89 = *(result + 88);
  v9 = *(result + 112);
  v8 = *(result + 120);
  v92 = *(result + 144) - 1;
  v93 = *(result + 152) - 4;
  if (v5)
  {
    v10 = 0;
  }

  else
  {
    v10 = -16777216;
  }

  v11 = *(result + 260) - 1;
  v12 = *(result + 256);
  v94 = *(result + 28);
  v87 = *(result + 188);
  v13 = (v5 + (v12 - 1) + (v11 * v94));
  v14 = v4 + v12 + (v11 * v6) - 1;
  v90 = *(result + 72);
  v88 = *(result + 64);
  while (1)
  {
LABEL_5:
    if (a3 >= v90)
    {
      if (a3 <= v89)
      {
        v23 = (a3 >> 22) & 0x3C0;
        v24 = 0x3FFFFFFF;
        v25 = a3;
        v26 = v88;
        v27 = v91;
      }

      else
      {
        v19 = *(result + 216);
        v20 = *(result + 224) + v89;
        v21 = v20 - a3 + (v19 >> 1);
        if (v21 < 1)
        {
          goto LABEL_42;
        }

        if (v21 >= v19)
        {
          LODWORD(v22) = 0x3FFFFFFF;
        }

        else
        {
          v22 = (*(result + 232) * v21) >> 32;
        }

        v26 = v88;
        v27 = v91;
        v24 = v87 | v22;
        v25 = v20 - 0x1000000;
        v23 = 448;
      }
    }

    else
    {
      v15 = *(result + 216);
      v16 = v90 - *(result + 224);
      v17 = a3 - v16 + (v15 >> 1);
      if (v17 < 1)
      {
        goto LABEL_42;
      }

      if (v17 >= v15)
      {
        LODWORD(v18) = 0x3FFFFFFF;
      }

      else
      {
        v18 = (*(result + 232) * v17) >> 32;
      }

      v26 = v88;
      v27 = v91;
      v24 = v87 | v18;
      v25 = v16 + 0x1000000;
      v23 = 512;
    }

    if (a2 >= v26)
    {
      break;
    }

    v28 = *(result + 192);
    v29 = v26 - *(result + 200);
    v30 = a2 - v29 + (v28 >> 1);
    if (v30 >= 1)
    {
      if (v30 < v28)
      {
        v24 = ((v24 >> 15) * (((*(result + 208) * v30) >> 32) >> 15)) | v87;
      }

      v31 = v29 + 0x1000000;
      v32 = 32;
      goto LABEL_29;
    }

LABEL_42:
    --a4;
    a2 += v9;
    a3 += v8;
    v93 += 4;
    *++v92 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v27)
  {
    v32 = (a2 >> 26) & 0x3C;
    v31 = a2;
    goto LABEL_29;
  }

  v33 = *(result + 192);
  v34 = *(result + 200) + v27;
  v35 = v34 - a2 + (v33 >> 1);
  if (v35 < 1)
  {
    goto LABEL_42;
  }

  if (v35 < v33)
  {
    v24 = ((v24 >> 15) * (((*(result + 208) * v35) >> 32) >> 15)) | v87;
  }

  v31 = v34 - 0x1000000;
  v32 = 28;
LABEL_29:
  if (v24 < 0x400000)
  {
    goto LABEL_42;
  }

  v36 = v25 >> 32;
  v37 = v4 + v36 * v6;
  v38 = v37 + (v31 >> 32);
  v39 = *(result + 32);
  if (v14 >= v38)
  {
    v40 = (v37 + (v31 >> 32));
  }

  else
  {
    v40 = v14;
  }

  if (v40 < v39)
  {
    v40 = *(result + 32);
  }

  v41 = *v40;
  if (v5)
  {
    v42 = v5 + v36 * v94 + (v31 >> 32);
    v43 = *(result + 40);
    if (v13 >= v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = v13;
    }

    if (v44 >= v43)
    {
      v43 = v44;
    }

    v41 |= *v43 << 24;
  }

  else
  {
    v42 = 0;
  }

  v45 = v89;
  if (v7)
  {
    v46 = *(v7 + (v32 | v23));
LABEL_68:
    v58 = v46 & 0xF;
    v59 = HIBYTE(v46) & 3;
    if (v58 == 1)
    {
      v82 = (v38 + SBYTE1(v46) * v6);
      if (v14 < v82)
      {
        v82 = v14;
      }

      if (v82 < v39)
      {
        v82 = v39;
      }

      v83 = *v82;
      if (v5)
      {
        v84 = (v42 + SBYTE1(v46) * v94);
        v45 = v89;
        if (v13 < v84)
        {
          v84 = v13;
        }

        if (v84 < *(result + 40))
        {
          v84 = *(result + 40);
        }

        v83 |= *v84 << 24;
      }

      v85 = interpolate_8888_21865[v59];
      v86 = v59 + 1;
      v80 = v41 - ((v85 & v41) >> v86);
      v81 = (v85 & v83) >> v86;
    }

    else
    {
      if (v58 != 2)
      {
        if (v58 == 3)
        {
          v60 = (v38 + SBYTE2(v46));
          if (v14 < v60)
          {
            v60 = v14;
          }

          if (v60 < v39)
          {
            v60 = v39;
          }

          v61 = *v60;
          v62 = v38 + SBYTE1(v46) * v6;
          if (v14 >= v62)
          {
            v63 = (v38 + SBYTE1(v46) * v6);
          }

          else
          {
            v63 = v14;
          }

          if (v63 < v39)
          {
            v63 = v39;
          }

          v64 = *v63;
          v65 = (v62 + SBYTE2(v46));
          if (v14 < v65)
          {
            v65 = v14;
          }

          if (v65 < v39)
          {
            v65 = v39;
          }

          v66 = *v65;
          if (v5)
          {
            v67 = (v42 + SBYTE2(v46));
            v68 = *(result + 40);
            if (v13 < v67)
            {
              v67 = v13;
            }

            if (v67 < v68)
            {
              v67 = *(result + 40);
            }

            v61 |= *v67 << 24;
            v69 = v42 + SBYTE1(v46) * v94;
            v45 = v89;
            if (v13 >= v69)
            {
              v70 = (v42 + SBYTE1(v46) * v94);
            }

            else
            {
              v70 = v13;
            }

            if (v70 < v68)
            {
              v70 = *(result + 40);
            }

            v64 |= *v70 << 24;
            v71 = (v69 + SBYTE2(v46));
            if (v13 < v71)
            {
              v71 = v13;
            }

            if (v71 < v68)
            {
              v71 = *(result + 40);
            }

            v66 |= *v71 << 24;
          }

          v72 = interpolate_8888_21865[v59];
          v73 = v59 + 1;
          v74 = v41 - ((v72 & v41) >> v73) + ((v72 & v64) >> v73);
          v41 = v74 - ((v74 & interpolate_8888_21865[(v46 >> 28) & 3]) >> (((v46 >> 28) & 3) + 1)) + (((v61 - ((v72 & v61) >> v73) + ((v72 & v66) >> v73)) & interpolate_8888_21865[(v46 >> 28) & 3]) >> (((v46 >> 28) & 3) + 1));
        }

        goto LABEL_47;
      }

      v75 = (v38 + SBYTE2(v46));
      if (v14 < v75)
      {
        v75 = v14;
      }

      if (v75 < v39)
      {
        v75 = v39;
      }

      v76 = *v75;
      if (v5)
      {
        v77 = (v42 + SBYTE2(v46));
        if (v13 < v77)
        {
          v77 = v13;
        }

        if (v77 < *(result + 40))
        {
          v77 = *(result + 40);
        }

        v76 |= *v77 << 24;
      }

      v78 = (v46 >> 28) & 3;
      v79 = interpolate_8888_21865[v78];
      LOBYTE(v78) = v78 + 1;
      v80 = v41 - ((v79 & v41) >> v78);
      v81 = (v79 & v76) >> v78;
    }

    v41 = v80 + v81;
  }

LABEL_47:
  v47 = 0;
  v48 = 0;
  v49 = v24 >> 22;
  a3 += v8;
  v50 = v45 - a3;
  a2 += v9;
  v51 = v91 - a2;
  while (1)
  {
    HIDWORD(v52) = v41;
    LODWORD(v52) = v41 | v10;
    *(v93 + 4 + 4 * v48) = (4 * v41) & 0x3E0 | (v41 >> 3 << 10) | ((v52 >> 24) >> 11) & 0xFFFFFF | (((v52 >> 24) >> 3) << 27) | (((v41 | v10) >> 24) >> 5 << 24);
    *(v92 + 1 + v48) = v49;
    if (a4 - 1 == v48)
    {
      return result;
    }

    if (((v50 | v51 | (a3 - v90) | (a2 - v88)) & 0x8000000000000000) != 0)
    {
      v92 += v48 + 1;
      v93 = v93 - v47 + 4;
      a4 += ~v48;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v53 = v4 + SHIDWORD(a3) * v6;
    v38 = v53 + (a2 >> 32);
    v39 = *(result + 32);
    if (v14 >= v38)
    {
      v54 = (v53 + (a2 >> 32));
    }

    else
    {
      v54 = v14;
    }

    if (v54 < v39)
    {
      v54 = *(result + 32);
    }

    v41 = *v54;
    if (v5)
    {
      v55 = v5 + SHIDWORD(a3) * v94;
      v42 = v55 + (a2 >> 32);
      v56 = *(result + 40);
      if (v13 >= v42)
      {
        v57 = (v55 + (a2 >> 32));
      }

      else
      {
        v57 = v13;
      }

      if (v57 >= v56)
      {
        v56 = v57;
      }

      v41 |= *v56 << 24;
    }

    if (v7)
    {
      v46 = *(v7 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v46 & 0xF) != 0)
      {
        v92 += v48 + 1;
        v93 = v93 - v47 + 4;
        a4 += ~v48;
        v24 = -1;
        v45 = v89;
        goto LABEL_68;
      }
    }

    ++v48;
    v47 -= 4;
    a3 += v8;
    v50 -= v8;
    a2 += v9;
    v51 -= v9;
    LOBYTE(v49) = -1;
  }
}

uint64_t rgb555_shade(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v5 = v2;
  v45 = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  *v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  v7 = *(v6 + 56);
  v8 = *v2;
  v9 = !*(v2 + 12) && !*(v3 + 72) && *(v3 + 4) >= 1.0;
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  v10 = *(v7 + 16 * v8 + 8 * v9 + 4 * (*(v2 + 6) == 0));
  if (v10 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v2 + 1) < 1 || *(v2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_shade_initialize(v2, v3, v15, v40) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*v4 & 0xF000000) == 0x3000000)
  {
    if (*(v4 + 16))
    {
      v12 = rgb555_shade_radial_RGB;
    }

    else if (*(v4 + 24))
    {
      v12 = rgb555_shade_conic_RGB;
    }

    else if (*(&v17 + 1) < 2)
    {
      v12 = rgb555_shade_axial_RGB;
    }

    else
    {
      v12 = rgb555_shade_custom_RGB;
    }

    *&v15[0] = v12;
    if (v38)
    {
      *(&v37 + 1) = v44;
      _blt_shade_samples_16(v44, 1, 3, v38, *(&v38 + 1), 1uLL);
    }

    v13 = *(&v17 + 1) * v17;
    if ((*(&v17 + 1) * v17) <= 480)
    {
      v14 = v42;
      v36[1] = v42;
LABEL_27:
      _blt_shade_samples_16(v14, 1, 3, v16, *(&v16 + 1), v13);
      if (*(v4 + 1))
      {
        *&v37 = &_blt_shade_samples_noise;
      }

      goto LABEL_29;
    }

    v14 = malloc_type_malloc(8 * v13 + 32, 0x8C254358uLL);
    if (v14)
    {
      v36[1] = v14;
      v13 = *(&v17 + 1) * v17;
      goto LABEL_27;
    }

    return 0xFFFFFFFFLL;
  }

  if (!*&v15[0])
  {
    return 0xFFFFFFFFLL;
  }

LABEL_29:
  DWORD2(v15[0]) = *v6;
  HIDWORD(v15[0]) = DWORD2(v15[0]);
  rgb555_image_mark(v5, v15, v10);
  if (v36[1] && (v36[1] < v42 || &v43 < v36[1]))
  {
    free(v36[1]);
  }

  return 1;
}

void rgb555_image_mark(uint64_t a1, uint64_t a2, int a3)
{
  v344 = a3;
  v365 = *MEMORY[0x1E69E9840];
  v353 = a1;
  v363 = *(a1 + 4);
  v343 = v363;
  v3 = (v363 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v3 <= 0x1FFFFFF)
  {
    v4 = *(v353 + 40);
    v5 = *(a2 + 184);
    v6 = *(v353 + 136);
    v360 = *(v353 + 48);
    v361 = v6;
    v7 = *(a2 + 96);
    v359 = *(a2 + 104);
    v9 = *(v353 + 24);
    v8 = *(v353 + 28);
    v10 = *(v353 + 16);
    v11 = *(v353 + 20);
    v12 = *(v353 + 12);
    v358 = *(v353 + 8);
    v355 = a2;
    v13 = *(a2 + 16);
    v14 = (v13 + 6) * v3;
    if (v14 > 65439)
    {
      v17 = malloc_type_calloc(1uLL, v14 + 96, 0xF5B4F9ABuLL);
      v16 = v17;
      v19 = v17;
      v20 = v355;
      if (!v17)
      {
        return;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1);
      v16 = &v337 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v16, v15);
      v19 = 0;
      v20 = v355;
    }

    v21 = v11;
    v339 = v19;
    v357 = v7;
    v362 = ((v5 * 255.0) + 0.5);
    v22 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
    v23 = v22 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20[20] = v23;
    if (v13)
    {
      v24 = 4 * v3;
    }

    else
    {
      v24 = 0;
    }

    v25 = v23 + v24;
    v26 = v4 + (v9 - 1) * v8;
    v27 = v8 >> 1;
    v20[18] = v22;
    v20[19] = v25;
    if (v360)
    {
      v28 = v353;
      v29 = *(v353 + 32);
      v30 = (v360 + v29 * v10 + v12);
      v354 = v29 - v343;
      v31 = v343;
      v364 = 1;
    }

    else
    {
      v30 = 0;
      v354 = 0;
      v364 = 0;
      v28 = v353;
      v31 = v343;
    }

    v32 = v361;
    v33 = v26 + 2 * v21;
    v34 = (v4 + 2 * v27 * v10 + 2 * v12);
    v352 = v27 - v31;
    v35 = *(v28 + 104);
    v36 = *(v28 + 108);
    v37 = *(v28 + 2);
    v38 = v344;
    if (v37 == 6 || v37 == 1)
    {
      v39 = v355;
      v40 = v363;
      v41 = v357;
      v42 = v359;
      if (v361)
      {
        v337 = v27;
        v43 = 0;
        LODWORD(v361) = 0;
        v44 = *(v28 + 124);
        v45 = v32 + v44 * v36 + v35;
        v31 = v343;
        v351 = v44 - v343;
        goto LABEL_31;
      }

      goto LABEL_667;
    }

    v40 = v363;
    if (v361)
    {
      v338 = v33;
      shape_enum_clip_alloc(v17, v18, v361, 1, 1, 1, v35, v36, v363, v358);
      if (v46)
      {
        v43 = v46;
        v337 = v27;
        LODWORD(v361) = 0;
        v47 = ((v13 * v3 + 15) & 0xFFFFFFF0);
        if (!v13)
        {
          v47 = 4 * v3;
        }

        v48 = v343;
        v351 = -v343;
        v45 = (v25 + v47 + 16);
        v41 = v357;
        v42 = v359;
        goto LABEL_21;
      }

LABEL_667:
      if (v339)
      {
        free(v339);
      }

      return;
    }

    v337 = v27;
    v45 = 0;
    v43 = 0;
    v351 = 0;
    LODWORD(v361) = 0;
    v39 = v355;
    v41 = v357;
    v42 = v359;
LABEL_31:
    v53 = vdup_n_s32(v362);
    v341 = (v40 - 1);
    v340 = -v31;
    v338 = v33;
    v342 = v33 - 2;
    v350 = xmmword_18439C830;
    v349 = xmmword_18439C840;
    v348 = xmmword_18439C850;
    v347 = xmmword_18439C800;
    v346 = xmmword_18439C810;
    v345 = xmmword_18439C820;
    v54 = v43;
LABEL_32:
    v356 = v54;
    v357 = v41;
    v55 = *v39;
    v359 = v42;
    v55(v39, v41, v42, v40);
    v57 = *(v39 + 160);
    v58 = *(v39 + 144);
    v59 = *(v39 + 8);
    if (v59 == *(v39 + 12))
    {
      if (v362 > 0xF7)
      {
        goto LABEL_162;
      }

      v60 = v40;
      v61 = v58;
      do
      {
        if (*v61 >= 8u)
        {
          *v57 = PDAM(*v57, HIBYTE(*v57), v362);
        }

        ++v61;
        v57 += 2;
        --v60;
      }

      while (v60);
      v57 += 2 * v340;
      v58 += v341 + v340 + 1;
      goto LABEL_161;
    }

    v62 = *(v39 + 152);
    v63 = *(v353 + 12);
    v64 = *(v353 + 16) + v361;
    v65 = HIWORD(v59) & 0x3F;
    v66 = *(v39 + 168);
    if (v65 == 16)
    {
      if (v66)
      {
        if (v63 <= 0)
        {
          v83 = -(-v63 & 0xF);
        }

        else
        {
          v83 = *(v353 + 12) & 0xF;
        }

        v68 = -v64 < 0;
        v84 = -v64 & 0xF;
        v85 = v64 & 0xF;
        if (!v68)
        {
          v85 = -v84;
        }

        v86 = v66 + 16 * v85;
        if (v362 >= 0xF8)
        {
          v120 = 0;
          do
          {
            if (v58[v120] >= 8u)
            {
              *&v57[2 * v120] = DITHERRGBA32((HIBYTE(*(v62 + 8 * v120)) | (BYTE3(*(v62 + 8 * v120)) << 16)) & 0xFFFFFF | (BYTE1(*(v62 + 8 * v120)) << 24) | HIDWORD(*(v62 + 8 * v120)) & 0xFF00, *(v86 + v83));
            }

            v83 = (v83 + 1) & 0xF;
            ++v120;
          }

          while (v363 != v120);
        }

        else
        {
          v87 = 0;
          do
          {
            if (v58[v87] >= 8u)
            {
              *&v57[2 * v87] = DITHERRGBA32M((HIBYTE(*(v62 + 8 * v87)) | (BYTE3(*(v62 + 8 * v87)) << 16)) & 0xFFFFFF | (BYTE1(*(v62 + 8 * v87)) << 24) | HIDWORD(*(v62 + 8 * v87)) & 0xFF00, *(v86 + v83), v362);
            }

            v83 = (v83 + 1) & 0xF;
            ++v87;
          }

          while (v363 != v87);
        }

        goto LABEL_155;
      }

      if (v362 < 0xF8)
      {
        v104 = 0;
        do
        {
          if (v58[v104] >= 8u)
          {
            *&v57[2 * v104] = PDAM((*(v62 + 8 * v104) >> 1) & 0x7C00 | (32 * (*(v62 + 8 * v104) >> 27)) | (*(v62 + 8 * v104) >> 43) & 0x1F, HIBYTE(*(v62 + 8 * v104)), v362);
          }

          ++v104;
        }

        while (v40 != v104);
        goto LABEL_161;
      }

      v275 = 0;
      do
      {
        if (v58[v275] >= 8u)
        {
          v276 = *(v62 + 8 * v275);
          *&v57[2 * v275] = (v276 >> 1) & 0x7C00 | (32 * (v276 >> 27)) & 0xFFFFFF | (v276 >> 43) & 0x1F | (HIBYTE(v276) >> 3 << 27) | (((HIBYTE(v276) >> 5) & 7) << 24);
        }

        ++v275;
      }

      while (v40 != v275);
    }

    else if (v65 == 32)
    {
      if (v66)
      {
        if (v63 <= 0)
        {
          v67 = -(-v63 & 0xF);
        }

        else
        {
          v67 = *(v353 + 12) & 0xF;
        }

        v68 = -v64 < 0;
        v69 = -v64 & 0xF;
        v70 = v64 & 0xF;
        if (!v68)
        {
          v70 = -v69;
        }

        v71 = v66 + 16 * v70;
        if (v362 >= 0xF8)
        {
          v109 = 0;
          v110 = (v62 + 8);
          do
          {
            if (v58[v109] >= 8u)
            {
              v111 = v110[1];
              if (v111 <= 0.0)
              {
                v119 = 0;
              }

              else
              {
                v112 = *(v110 - 2);
                v113 = *(v110 - 1);
                v114 = *v110;
                v115 = ((v111 * 255.0) + 0.5);
                if (v111 > 1.0)
                {
                  v115 = 255;
                  v111 = 1.0;
                }

                v116 = ((v112 * 255.0) + 0.5);
                if (v112 < 0.0)
                {
                  v116 = 0;
                }

                if (v112 > v111)
                {
                  v116 = v115;
                }

                v117 = ((v113 * 255.0) + 0.5);
                if (v113 < 0.0)
                {
                  v117 = 0;
                }

                if (v113 > v111)
                {
                  v117 = v115;
                }

                v118 = ((v114 * 255.0) + 0.5);
                if (v114 < 0.0)
                {
                  v118 = 0;
                }

                if (v114 > v111)
                {
                  v118 = v115;
                }

                v119 = DITHERRGBA32((v116 << 24) | (v117 << 16) | (v118 << 8) | v115, *(v71 + v67));
              }

              *&v57[2 * v109] = v119;
            }

            v67 = (v67 + 1) & 0xF;
            ++v109;
            v110 += 4;
          }

          while (v363 != v109);
        }

        else
        {
          v72 = 0;
          v73 = (v62 + 8);
          do
          {
            if (v58[v72] >= 8u)
            {
              v74 = v73[1];
              if (v74 <= 0.0)
              {
                v82 = 0;
              }

              else
              {
                v75 = *(v73 - 2);
                v76 = *(v73 - 1);
                v77 = *v73;
                v78 = ((v74 * 255.0) + 0.5);
                if (v74 > 1.0)
                {
                  v78 = 255;
                  v74 = 1.0;
                }

                v79 = ((v75 * 255.0) + 0.5);
                if (v75 < 0.0)
                {
                  v79 = 0;
                }

                if (v75 > v74)
                {
                  v79 = v78;
                }

                v80 = ((v76 * 255.0) + 0.5);
                if (v76 < 0.0)
                {
                  v80 = 0;
                }

                if (v76 > v74)
                {
                  v80 = v78;
                }

                v81 = ((v77 * 255.0) + 0.5);
                if (v77 < 0.0)
                {
                  v81 = 0;
                }

                if (v77 > v74)
                {
                  v81 = v78;
                }

                v82 = DITHERRGBA32M((v79 << 24) | (v80 << 16) | (v81 << 8) | v78, *(v71 + v67), v362);
              }

              *&v57[2 * v72] = v82;
            }

            v67 = (v67 + 1) & 0xF;
            ++v72;
            v73 += 4;
          }

          while (v363 != v72);
        }

LABEL_155:
        v39 = v355;
        v40 = v363;
        goto LABEL_162;
      }

      if (v362 < 0xF8)
      {
        v93 = 0;
        v94 = (v62 + 8);
        do
        {
          if (v58[v93] >= 8u)
          {
            v95 = v94[1];
            if (v95 <= 0.0)
            {
              v103 = 0;
            }

            else
            {
              v96 = *(v94 - 2);
              v97 = *(v94 - 1);
              v98 = ((v95 * 255.0) + 0.5);
              v99 = *v94;
              if (v95 > 1.0)
              {
                v98 = 255;
                v95 = 1.0;
              }

              v100 = ((v96 * 255.0) + 0.5);
              if (v96 < 0.0)
              {
                v100 = 0;
              }

              if (v96 > v95)
              {
                v100 = v98;
              }

              v101 = ((v97 * 255.0) + 0.5);
              if (v97 < 0.0)
              {
                LOWORD(v101) = 0;
              }

              if (v97 > v95)
              {
                LOWORD(v101) = v98;
              }

              v102 = ((v99 * 255.0) + 0.5);
              if (v99 < 0.0)
              {
                LOBYTE(v102) = 0;
              }

              if (v99 > v95)
              {
                LOBYTE(v102) = v98;
              }

              v103 = PDAM((v100 << 7) & 0x7C00 | (4 * v101) & 0x3E0 | (v102 >> 3), v98, v362);
            }

            *&v57[2 * v93] = v103;
          }

          ++v93;
          v94 += 4;
        }

        while (v40 != v93);
LABEL_161:
        v39 = v355;
        goto LABEL_162;
      }

      v264 = 0;
      v265 = (v62 + 8);
      do
      {
        if (v58[v264] >= 8u)
        {
          v266 = v265[1];
          if (v266 <= 0.0)
          {
            v274 = 0;
          }

          else
          {
            v267 = *(v265 - 2);
            v268 = *(v265 - 1);
            v269 = *v265;
            v270 = ((v266 * 255.0) + 0.5);
            if (v266 > 1.0)
            {
              v270 = 255;
              v266 = 1.0;
            }

            v271 = ((v267 * 255.0) + 0.5);
            if (v267 < 0.0)
            {
              v271 = 0;
            }

            if (v267 > v266)
            {
              v271 = v270;
            }

            v272 = ((v268 * 255.0) + 0.5);
            if (v268 < 0.0)
            {
              v272 = 0;
            }

            if (v268 > v266)
            {
              v272 = v270;
            }

            v273 = ((v269 * 255.0) + 0.5);
            if (v269 < 0.0)
            {
              LOBYTE(v273) = 0;
            }

            if (v269 > v266)
            {
              LOBYTE(v273) = v270;
            }

            v274 = (v270 << 24) & 0xF8000000 | (v270 >> 5 << 24) | (v271 << 7) & 0x7C00 | (4 * v272) & 0x3E0 | (v273 >> 3);
          }

          *&v57[2 * v264] = v274;
        }

        ++v264;
        v265 += 4;
      }

      while (v40 != v264);
    }

    else
    {
      if (v66)
      {
        if (v63 <= 0)
        {
          v88 = -(-v63 & 0xF);
        }

        else
        {
          v88 = *(v353 + 12) & 0xF;
        }

        v68 = -v64 < 0;
        v89 = -v64 & 0xF;
        v90 = v64 & 0xF;
        if (!v68)
        {
          v90 = -v89;
        }

        v91 = v66 + 16 * v90;
        if (v362 >= 0xF8)
        {
          v121 = 0;
          do
          {
            if (v58[v121] >= 8u)
            {
              *&v57[2 * v121] = DITHERRGBA32(*(v62 + 4 * v121), *(v91 + v88));
            }

            v88 = (v88 + 1) & 0xF;
            ++v121;
          }

          while (v40 != v121);
        }

        else
        {
          v92 = 0;
          do
          {
            if (v58[v92] >= 8u)
            {
              *&v57[2 * v92] = DITHERRGBA32M(*(v62 + 4 * v92), *(v91 + v88), v362);
            }

            v88 = (v88 + 1) & 0xF;
            ++v92;
          }

          while (v40 != v92);
        }

        v38 = v344;
        goto LABEL_161;
      }

      if (v362 >= 0xF8)
      {
        v277 = 0;
        do
        {
          if (v58[v277] >= 8u)
          {
            v278 = *(v62 + 4 * v277);
            v279 = vdupq_n_s32(v278);
            v280 = vshlq_u32(v279, v347);
            v280.i32[3] = vshlq_u32(v279, v346).i32[3];
            v281 = vandq_s8(v280, v345);
            *v281.i8 = vorr_s8(*v281.i8, *&vextq_s8(v281, v281, 8uLL));
            *&v57[2 * v277] = v281.i32[0] | (v278 << 19) & 0x7000000 | v281.i32[1];
          }

          ++v277;
        }

        while (v40 != v277);
      }

      else
      {
        v105 = 0;
        do
        {
          if (v58[v105] >= 8u)
          {
            v56.i16[0] = *(v62 + 4 * v105);
            v56.i16[1] = BYTE2(*(v62 + 4 * v105));
            v56.i16[2] = BYTE1(*(v62 + 4 * v105));
            v56.i16[3] = (*(v62 + 4 * v105) >> 8 >> 16);
            *v56.i8 = vmul_s32(*v56.i8, v53);
            *v56.i8 = vadd_s32(vadd_s32(*v56.i8, 0x1000100010001), (*&vshr_n_u32(*v56.i8, 8uLL) & 0xFFFF00FFFFFF00FFLL));
            v106 = vshlq_u32(v56, v350).u32[0];
            v107 = (v56.i32[0] << 11) & 0x7000000;
            v108 = vshlq_u32(vzip1q_s32(v56, v56), v349);
            v108.i32[0] = v106;
            v56 = vandq_s8(v108, v348);
            *v56.i8 = vorr_s8(*v56.i8, *&vextq_s8(v56, v56, 8uLL));
            *&v57[2 * v105] = v56.i32[0] | v107 | v56.i32[1];
          }

          ++v105;
        }

        while (v40 != v105);
      }
    }

LABEL_162:
    switch(v38)
    {
      case 0:
        v122 = v45 != 0;
        if (v360)
        {
          v123 = v40;
          v124 = v45;
          while (1)
          {
            v125 = *v58;
            if (*v58)
            {
              if (v45)
              {
                v125 = (*v124 * v125 + ((*v124 * v125) >> 8) + 1) >> 8;
              }

              if (v125 >= 0xF8u)
              {
                LOBYTE(v126) = 0;
                *v34 = 0;
LABEL_172:
                *v30 = v126;
                goto LABEL_173;
              }

              if (v125 >= 8u)
              {
                v127 = PDAM(*v34, *v30, ~v125);
                *v34 = v127;
                v126 = HIBYTE(v127);
                goto LABEL_172;
              }
            }

LABEL_173:
            ++v58;
            v124 += v122;
            ++v34;
            ++v30;
            if (!--v123)
            {
              goto LABEL_580;
            }
          }
        }

        v298 = v40;
        v124 = v45;
        while (1)
        {
          v299 = *v58;
          if (*v58)
          {
            if (v45)
            {
              v299 = (*v124 * v299 + ((*v124 * v299) >> 8) + 1) >> 8;
            }

            if (v299 > 0xF7u)
            {
              v300 = 0;
LABEL_578:
              *v34 = v300;
              goto LABEL_579;
            }

            if (v299 >= 8u)
            {
              v300 = PDM(*v34, ~v299);
              goto LABEL_578;
            }
          }

LABEL_579:
          ++v58;
          v124 += v122;
          ++v34;
          if (!--v298)
          {
LABEL_580:
            v45 = &v124[v351];
            v34 += v352;
            v39 = v355;
            v30 += v354;
            goto LABEL_610;
          }
        }

      case 1:
        v198 = *v58;
        if (v360)
        {
          if (v45)
          {
            v199 = 0;
            v200 = v58 + 1;
            v201 = v34 - 1;
            v43 = v356;
            while (1)
            {
              if (v198)
              {
                v202 = v198 * v45[v199] + ((v198 * v45[v199]) >> 8) + 1;
                if (v202 >> 11 >= 0x1F)
                {
                  v203 = *&v57[2 * v199];
LABEL_337:
                  v34[v199] = v203;
                  v30[v199] = HIBYTE(v203);
                  goto LABEL_338;
                }

                if (v202 >= 0x800)
                {
                  v203 = PDAMplusDAM(*&v57[2 * v199], HIBYTE(*&v57[2 * v199]), BYTE1(v202), v34[v199], v30[v199], ~(v202 >> 8));
                  goto LABEL_337;
                }
              }

LABEL_338:
              v198 = v200[v199++];
              ++v201;
              if (v363 == v199)
              {
                v204 = &v30[v199 - 1];
                v45 += v199 + v351;
LABEL_636:
                v34 = &v201[v352 + 1];
                v30 = (v204 + v354 + 1);
                goto LABEL_663;
              }
            }
          }

          v324 = v58 + 1;
          v204 = (v30 - 1);
          v201 = v34 - 1;
          v325 = v363;
          v43 = v356;
          while (v198 < 0xF8)
          {
            if (v198 >= 8)
            {
              v326 = PDAMplusDAM(*v57, HIBYTE(*v57), v198, v201[1], *(v204 + 1), ~v198);
              goto LABEL_633;
            }

LABEL_634:
            v327 = *v324++;
            v198 = v327;
            v57 += 2;
            ++v204;
            ++v201;
            if (!--v325)
            {
              v45 = 0;
              goto LABEL_636;
            }
          }

          v326 = *v57;
LABEL_633:
          v201[1] = v326;
          *(v204 + 1) = HIBYTE(v326);
          goto LABEL_634;
        }

        if (v45)
        {
          v301 = v40;
          v302 = v58 + 1;
          v303 = v301;
          v43 = v356;
          while (1)
          {
            if (v198)
            {
              v304 = v198 * *v45 + ((v198 * *v45) >> 8) + 1;
              v305 = v342;
              if (v342 >= v34)
              {
                v305 = v34;
              }

              if (v305 >= *(v353 + 40))
              {
                v306 = v305;
              }

              else
              {
                v306 = *(v353 + 40);
              }

              if (v304 >> 11 >= 0x1F)
              {
                v307 = *v57;
LABEL_594:
                *v306 = v307;
                goto LABEL_595;
              }

              if (v304 >= 0x800)
              {
                LOWORD(v307) = PDMplusDM(*v57, BYTE1(v304), *v306, ~(v304 >> 8));
                goto LABEL_594;
              }
            }

            else
            {
              v306 = v34;
            }

LABEL_595:
            v308 = *v302++;
            v198 = v308;
            v57 += 2;
            ++v45;
            v34 = v306 + 1;
            if (!--v303)
            {
              v45 += v351;
LABEL_662:
              v34 = &v306[v352 + 1];
              v30 += v354;
LABEL_663:
              v39 = v355;
              v40 = v363;
LABEL_664:
              v313 = v357;
LABEL_611:
              if (!--v358)
              {
                if (v43)
                {
LABEL_666:
                  free(v43);
                }

                goto LABEL_667;
              }

              v54 = 0;
              LODWORD(v361) = v361 + 1;
              v41 = *(v39 + 128) + v313;
              v42 = *(v39 + 136) + v359;
              if (v43)
              {
                v48 = v343;
LABEL_21:
                v49 = v354 + v48;
                while (1)
                {
                  while (1)
                  {
                    v50 = *(v45 - 4);
                    v51 = v50 - v361;
                    if (v50 <= v361)
                    {
                      break;
                    }

                    v358 -= v51;
                    if (v358 < 1)
                    {
                      goto LABEL_666;
                    }

                    v41 += *(v355 + 128) * v51;
                    v42 += *(v355 + 136) * v51;
                    v34 += v337 * v51;
                    v52 = v49 * v51;
                    if (!v360)
                    {
                      v52 = 0;
                    }

                    v30 += v52;
                    LODWORD(v361) = v50;
                  }

                  if (v361 < *(v45 - 3) + v50)
                  {
                    break;
                  }

                  if (!shape_enum_clip_scan(v43, v45 - 4))
                  {
                    goto LABEL_666;
                  }
                }

                v39 = v355;
                v31 = v343;
                v33 = v338;
                goto LABEL_31;
              }

              goto LABEL_32;
            }
          }
        }

        v332 = *(v353 + 40);
        v333 = v58 + 1;
        v43 = v356;
        while (1)
        {
          v334 = v342;
          if (v342 >= v34)
          {
            v334 = v34;
          }

          v306 = v334 >= v332 ? v334 : v332;
          if (v198 >= 0xF8)
          {
            break;
          }

          if (v198 >= 8)
          {
            LOWORD(v335) = PDMplusDM(*v57, v198, *v306, ~v198);
            goto LABEL_659;
          }

LABEL_660:
          v336 = *v333++;
          v198 = v336;
          v57 += 2;
          v34 = v306 + 1;
          LODWORD(v40) = v40 - 1;
          if (!v40)
          {
            v45 = 0;
            goto LABEL_662;
          }
        }

        v335 = *v57;
LABEL_659:
        *v306 = v335;
        goto LABEL_660;
      case 2:
        v174 = *v58;
        if (v360)
        {
          if (v45)
          {
            v175 = 0;
            v176 = v58 + 1;
            v177 = v34 - 1;
            while (1)
            {
              if (v174)
              {
                v178 = v174 * v45[v175] + ((v174 * v45[v175]) >> 8) + 1;
                if (v178 >> 11 < 0x1F)
                {
                  if (v178 < 0x800)
                  {
                    goto LABEL_291;
                  }

                  v181 = PDAM(*&v57[2 * v175], HIBYTE(*&v57[2 * v175]), SBYTE1(v178));
                  if (!(v181 >> 27))
                  {
                    goto LABEL_291;
                  }

                  v182 = HIBYTE(v181);
                  v183 = v34[v175];
                  v184 = v30[v175];
                  v181 = v181;
LABEL_289:
                  v185 = PDAplusDAM(v181, v182, v183, v184, v182 ^ 0xFF);
                  v34[v175] = v185;
                  v180 = HIBYTE(v185);
LABEL_290:
                  v30[v175] = v180;
                  goto LABEL_291;
                }

                v179 = *&v57[2 * v175];
                if (v179 >> 27 == 31)
                {
                  v180 = HIBYTE(v179);
                  v34[v175] = v179;
                  goto LABEL_290;
                }

                if (v179 >> 27)
                {
                  v182 = HIBYTE(v179);
                  v183 = v34[v175];
                  v184 = v30[v175];
                  v181 = *&v57[2 * v175];
                  goto LABEL_289;
                }
              }

LABEL_291:
              v174 = v176[v175++];
              ++v177;
              if (v363 == v175)
              {
                v186 = &v30[v175 - 1];
                v45 += v175 + v351;
                v40 = v363;
LABEL_627:
                v34 = &v177[v352 + 1];
                v30 = (v186 + v354 + 1);
                goto LABEL_610;
              }
            }
          }

          v314 = v58 + 1;
          v186 = (v30 - 1);
          v177 = v34 - 1;
          v315 = v40;
          while (v174 >= 0xF8)
          {
            v316 = *v57;
            if (*v57 >> 27 == 31)
            {
              v317 = HIBYTE(v316);
              v177[1] = v316;
              goto LABEL_624;
            }

            if (*v57 >> 27)
            {
              v319 = HIBYTE(v316);
              v320 = v177[1];
              v321 = *(v186 + 1);
              v318 = *v57;
              goto LABEL_623;
            }

LABEL_625:
            v323 = *v314++;
            v174 = v323;
            v57 += 2;
            ++v186;
            ++v177;
            if (!--v315)
            {
              v45 = 0;
              v39 = v355;
              goto LABEL_627;
            }
          }

          if (v174 < 8)
          {
            goto LABEL_625;
          }

          v318 = PDAM(*v57, HIBYTE(*v57), v174);
          if (!(v318 >> 27))
          {
            goto LABEL_625;
          }

          v319 = HIBYTE(v318);
          v320 = v177[1];
          v321 = *(v186 + 1);
          v318 = v318;
LABEL_623:
          v322 = PDAplusDAM(v318, v319, v320, v321, v319 ^ 0xFF);
          v177[1] = v322;
          v317 = HIBYTE(v322);
LABEL_624:
          *(v186 + 1) = v317;
          goto LABEL_625;
        }

        if (v45)
        {
          v289 = v58 + 1;
          v290 = v34 - 1;
          v43 = v356;
          while (!v174)
          {
LABEL_557:
            v293 = *v289++;
            v174 = v293;
            v57 += 2;
            ++v45;
            ++v290;
            LODWORD(v40) = v40 - 1;
            if (!v40)
            {
              v45 += v351;
              v40 = v363;
LABEL_648:
              v34 = &v290[v352 + 1];
              v30 += v354;
              goto LABEL_664;
            }
          }

          v291 = v174 * *v45 + ((v174 * *v45) >> 8) + 1;
          if (v291 >> 11 < 0x1F)
          {
            if (v291 < 0x800)
            {
              goto LABEL_557;
            }

            v292 = PDAM(*v57, HIBYTE(*v57), SBYTE1(v291));
            if (!(v292 >> 27))
            {
              goto LABEL_557;
            }
          }

          else
          {
            v292 = *v57;
            if (*v57 >> 27 == 31)
            {
LABEL_556:
              v290[1] = v292;
              goto LABEL_557;
            }

            if (!(*v57 >> 27))
            {
              goto LABEL_557;
            }
          }

          LOWORD(v292) = PDplusDM(v292, v290[1], ~v292 >> 24);
          goto LABEL_556;
        }

        v328 = v58 + 1;
        v290 = v34 - 1;
        v329 = v40;
        v43 = v356;
        while (v174 >= 0xF8)
        {
          v330 = *v57;
          if (*v57 >> 27 != 31)
          {
            if (!(*v57 >> 27))
            {
              goto LABEL_646;
            }

            goto LABEL_644;
          }

LABEL_645:
          v290[1] = v330;
LABEL_646:
          v331 = *v328++;
          v174 = v331;
          v57 += 2;
          ++v290;
          if (!--v329)
          {
            v45 = 0;
            v39 = v355;
            goto LABEL_648;
          }
        }

        if (v174 < 8)
        {
          goto LABEL_646;
        }

        v330 = PDAM(*v57, HIBYTE(*v57), v174);
        if (!(v330 >> 27))
        {
          goto LABEL_646;
        }

LABEL_644:
        LOWORD(v330) = PDplusDM(v330, v290[1], ~v330 >> 24);
        goto LABEL_645;
      case 3:
        v135 = v45;
        while (1)
        {
          v191 = *v58;
          if (*v58)
          {
            if (v45)
            {
              v191 = (*v135 * v191 + ((*v135 * v191) >> 8) + 1) >> 8;
            }

            if (v191 >= 0xF8u)
            {
              v192 = PDAM(*v57, HIBYTE(*v57), *v30);
LABEL_314:
              *v34 = v192;
              *v30 = HIBYTE(v192);
              goto LABEL_315;
            }

            if (v191 >= 8u)
            {
              v192 = PDAMplusDAM(*v57, HIBYTE(*v57), ((*v30 * v191 + ((*v30 * v191) >> 8) + 1) >> 8), *v34, *v30, ~v191);
              goto LABEL_314;
            }
          }

LABEL_315:
          ++v58;
          v57 += 2;
          v135 += v45 != 0;
          ++v34;
          v30 += v364;
          LODWORD(v40) = v40 - 1;
          if (!v40)
          {
            goto LABEL_470;
          }
        }

      case 4:
        v135 = v45;
        while (1)
        {
          v150 = *v58;
          if (*v58)
          {
            if (v45)
            {
              v150 = (*v135 * v150 + ((*v135 * v150) >> 8) + 1) >> 8;
            }

            if (v150 >= 0xF8u)
            {
              v151 = PDAM(*v57, HIBYTE(*v57), ~*v30);
LABEL_231:
              *v34 = v151;
              *v30 = HIBYTE(v151);
              goto LABEL_232;
            }

            if (v150 >= 8u)
            {
              v151 = PDAMplusDAM(*v57, HIBYTE(*v57), (((*v30 ^ 0xFF) * v150 + (((*v30 ^ 0xFF) * v150) >> 8) + 1) >> 8), *v34, *v30, ~v150);
              goto LABEL_231;
            }
          }

LABEL_232:
          ++v58;
          v57 += 2;
          v135 += v45 != 0;
          ++v34;
          v30 += v364;
          LODWORD(v40) = v40 - 1;
          if (!v40)
          {
            goto LABEL_470;
          }
        }

      case 5:
        v213 = v40;
        v146 = v45;
        do
        {
          v214 = *v58;
          if (*v58)
          {
            if (v45)
            {
              v214 = (*v146 * v214 + ((*v146 * v214) >> 8) + 1) >> 8;
            }

            if (v214 >= 8u)
            {
              v215 = *v30;
              v216 = PDAM(*v57, HIBYTE(*v57), v214);
              v217 = PDAMplusDAM(v216, SHIBYTE(v216), v215, *v34, v215, HIBYTE(v216) ^ 0xFF);
              *v34 = v217;
              *v30 = HIBYTE(v217);
            }
          }

          ++v58;
          v57 += 2;
          v146 += v45 != 0;
          ++v34;
          v30 += v364;
          --v213;
        }

        while (v213);
        goto LABEL_544;
      case 6:
        v135 = v45;
        while (1)
        {
          v226 = *v58;
          if (!*v58)
          {
            goto LABEL_410;
          }

          if (v45)
          {
            v226 = (*v135 * v226 + ((*v135 * v226) >> 8) + 1) >> 8;
          }

          if (v226 < 8u)
          {
            goto LABEL_410;
          }

          v227 = *v30;
          if (v227 <= 7)
          {
            break;
          }

          if (v227 <= 0xF7)
          {
            v228 = PDAplusDAM(*v34, v227, *v57, HIBYTE(*v57), ((~v227 * v226 + ((~v227 * v226) >> 8) + 1) >> 8));
            goto LABEL_409;
          }

LABEL_410:
          ++v58;
          v57 += 2;
          v135 += v45 != 0;
          ++v34;
          v30 += v364;
          LODWORD(v40) = v40 - 1;
          if (!v40)
          {
LABEL_470:
            v45 = &v135[v351];
LABEL_608:
            v34 += v352;
            v30 += v354;
LABEL_609:
            v40 = v363;
LABEL_610:
            v43 = v356;
            v313 = v357;
            goto LABEL_611;
          }
        }

        v228 = PDAM(*v57, HIBYTE(*v57), v226);
LABEL_409:
        *v34 = v228;
        *v30 = HIBYTE(v228);
        goto LABEL_410;
      case 7:
        v193 = v45 != 0;
        if (v360)
        {
          v194 = v40;
          v129 = v45;
          while (1)
          {
            v195 = *v58;
            if (*v58)
            {
              if (v45)
              {
                v195 = (*v129 * v195 + ((*v129 * v195) >> 8) + 1) >> 8;
              }

              if (v195 >= 0xF8u)
              {
                v196 = PDAM(*v34, *v30, *(v57 + 3));
LABEL_326:
                *v34 = v196;
                *v30 = HIBYTE(v196);
                goto LABEL_327;
              }

              if (v195 >= 8u)
              {
                v197 = *(v57 + 3) * v195;
                v196 = PDAMplusDAM(*v34, *v30, ((v197 + (v197 >> 8) + 1) >> 8), *v34, *v30, ~v195);
                goto LABEL_326;
              }
            }

LABEL_327:
            ++v58;
            v57 += 2;
            v129 += v193;
            ++v34;
            ++v30;
            if (!--v194)
            {
              goto LABEL_607;
            }
          }
        }

        v294 = v40;
        v129 = v45;
        while (1)
        {
          v295 = *v58;
          if (*v58)
          {
            if (v45)
            {
              v295 = (*v129 * v295 + ((*v129 * v295) >> 8) + 1) >> 8;
            }

            if (v295 >= 0xF8u)
            {
              v296 = PDM(*v34, *(v57 + 3));
LABEL_567:
              *v34 = v296;
              goto LABEL_568;
            }

            if (v295 >= 8u)
            {
              v297 = *(v57 + 3) * v295;
              v296 = PDMplusDM(*v34, ((v297 + (v297 >> 8) + 1) >> 8), *v34, ~v295);
              goto LABEL_567;
            }
          }

LABEL_568:
          ++v58;
          v57 += 2;
          v129 += v193;
          ++v34;
          if (!--v294)
          {
            goto LABEL_607;
          }
        }

      case 8:
        v238 = v45 != 0;
        if (v360)
        {
          v239 = v40;
          v129 = v45;
          while (1)
          {
            v240 = *v58;
            if (*v58)
            {
              if (v45)
              {
                v240 = (*v129 * v240 + ((*v129 * v240) >> 8) + 1) >> 8;
              }

              if (v240 >= 0xF8u)
              {
                v241 = PDAM(*v34, *v30, ~*(v57 + 3));
LABEL_442:
                *v34 = v241;
                *v30 = HIBYTE(v241);
                goto LABEL_443;
              }

              if (v240 >= 8u)
              {
                v242 = (~*v57 >> 24) * v240;
                v241 = PDAMplusDAM(*v34, *v30, ((v242 + (v242 >> 8) + 1) >> 8), *v34, *v30, ~v240);
                goto LABEL_442;
              }
            }

LABEL_443:
            ++v58;
            v57 += 2;
            v129 += v238;
            ++v34;
            ++v30;
            if (!--v239)
            {
              goto LABEL_607;
            }
          }
        }

        v309 = v40;
        v129 = v45;
        break;
      case 9:
        v157 = v45;
        do
        {
          v158 = *v58;
          if (*v58)
          {
            if (v45)
            {
              v158 = (*v157 * v158 + ((*v157 * v158) >> 8) + 1) >> 8;
            }

            if (v158 >= 8u)
            {
              v159 = *v30;
              v160 = PDAM(*v57, HIBYTE(*v57), v158);
              v161 = PDAMplusDAM(v160, SBYTE3(v160), v159 ^ 0xFFu, *v34, v159, (~v158 + BYTE3(v160)));
              *v34 = v161;
              *v30 = HIBYTE(v161);
            }
          }

          ++v58;
          v57 += 2;
          v157 += v45 != 0;
          ++v34;
          v30 += v364;
          LODWORD(v40) = v40 - 1;
        }

        while (v40);
        v45 = &v157[v351];
        v34 += v352;
        v30 += v354;
        v38 = v344;
        goto LABEL_545;
      case 10:
        v233 = v40;
        v146 = v45;
        do
        {
          v234 = *v58;
          if (*v58)
          {
            if (v45)
            {
              v234 = (*v146 * v234 + ((*v146 * v234) >> 8) + 1) >> 8;
            }

            if (v234 >= 8u)
            {
              v235 = *v30;
              v236 = PDAM(*v57, HIBYTE(*v57), v234);
              v237 = PDAMplusDAM(v236, SHIBYTE(v236), v235 ^ 0xFFu, *v34, v235, HIBYTE(v236) ^ 0xFF);
              *v34 = v237;
              *v30 = HIBYTE(v237);
            }
          }

          ++v58;
          v57 += 2;
          v146 += v45 != 0;
          ++v34;
          v30 += v364;
          --v233;
        }

        while (v233);
        goto LABEL_544;
      case 11:
        v144 = v45 != 0;
        if (v360)
        {
          v145 = v40;
          v146 = v45;
          do
          {
            v147 = *v58;
            if (*v58)
            {
              if (v45)
              {
                v147 = (*v146 * v147 + ((*v146 * v147) >> 8) + 1) >> 8;
              }

              if (v147 >= 8u)
              {
                v148 = PDAM(*v57, HIBYTE(*v57), v147);
                v149 = PDAplusdDA(*v34, *v30, v148, HIBYTE(v148));
                *v34 = v149;
                *v30 = HIBYTE(v149);
              }
            }

            ++v58;
            v57 += 2;
            v146 += v144;
            ++v34;
            ++v30;
            --v145;
          }

          while (v145);
        }

        else
        {
          v282 = v40;
          v146 = v45;
          do
          {
            v283 = *v58;
            if (*v58)
            {
              if (v45)
              {
                v283 = (*v146 * v283 + ((*v146 * v283) >> 8) + 1) >> 8;
              }

              if (v283 >= 8u)
              {
                v284 = PDAM(*v57, HIBYTE(*v57), v283);
                *v34 = PDplusdDA(*v34, v284, HIBYTE(v284));
              }
            }

            ++v58;
            v57 += 2;
            v146 += v144;
            ++v34;
            --v282;
          }

          while (v282);
        }

        goto LABEL_544;
      case 12:
        v152 = v45 != 0;
        if (v360)
        {
          v153 = v40;
          v146 = v45;
          do
          {
            v154 = *v58;
            if (*v58)
            {
              if (v45)
              {
                v154 = (*v146 * v154 + ((*v146 * v154) >> 8) + 1) >> 8;
              }

              if (v154 >= 8u)
              {
                v155 = PDAM(*v57, HIBYTE(*v57), v154);
                v156 = PDApluslDA(*v34, *v30, v155, HIBYTE(v155));
                *v34 = v156;
                *v30 = HIBYTE(v156);
              }
            }

            ++v58;
            v57 += 2;
            v146 += v152;
            ++v34;
            ++v30;
            --v153;
          }

          while (v153);
        }

        else
        {
          v285 = v40;
          v146 = v45;
          do
          {
            v286 = *v58;
            if (*v58)
            {
              if (v45)
              {
                v286 = (*v146 * v286 + ((*v146 * v286) >> 8) + 1) >> 8;
              }

              if (v286 >= 8u)
              {
                v287 = PDM(*v57, v286);
                v288 = ((*v34 | (*v34 << 15)) & 0x1F07C1F) + ((v287 | (v287 << 15)) & 0x1F07C1F);
                *v34 = (((30 * ((v288 >> 5) & 0x100401)) | (15 * ((v288 >> 5) & 0x100401)) | v288) >> 15) & 0x3E0 | ((30 * ((v288 >> 5) & 0x401)) | (15 * ((v288 >> 5) & 0x401)) | v288) & 0x7C1F;
              }
            }

            ++v58;
            v57 += 2;
            v146 += v152;
            ++v34;
            --v285;
          }

          while (v285);
        }

LABEL_544:
        v45 = &v146[v351];
        v34 += v352;
        v30 += v354;
LABEL_545:
        v39 = v355;
        goto LABEL_609;
      case 13:
        v135 = v45;
        do
        {
          v222 = *v58;
          if (*v58)
          {
            if (v45)
            {
              v222 = (*v135 * v222 + ((*v135 * v222) >> 8) + 1) >> 8;
            }

            if (v222 >= 8u)
            {
              v223 = PDAM(*v57, HIBYTE(*v57), v222);
              if (v223 >> 27)
              {
                if (v360)
                {
                  v224 = HIBYTE(v223);
                  v225 = *v30;
                  if (v225 >= 8)
                  {
                    v223 = PDAmultiplyPDA(*v34, v225, v223, v224);
                    v224 = HIBYTE(v223);
                  }

                  *v34 = v223;
                  *v30 = v224;
                }

                else
                {
                  *v34 = PDAmultiplyPDA(*v34, 0xFFu, v223, HIBYTE(v223));
                }
              }
            }
          }

          ++v58;
          v57 += 2;
          v135 += v45 != 0;
          ++v34;
          v30 += v364;
          LODWORD(v40) = v40 - 1;
        }

        while (v40);
        goto LABEL_470;
      case 14:
        v135 = v45;
        do
        {
          v140 = *v58;
          if (*v58)
          {
            if (v45)
            {
              v140 = (*v135 * v140 + ((*v135 * v140) >> 8) + 1) >> 8;
            }

            if (v140 >= 8u)
            {
              v141 = PDAM(*v57, HIBYTE(*v57), v140);
              if (v141 >> 27)
              {
                v142 = HIBYTE(v141);
                if (v360)
                {
                  v143 = *v30;
                  if (v143 >= 8)
                  {
                    v141 = PDAscreenPDA(*v34, v143, v141, v142);
                    v142 = HIBYTE(v141);
                  }

                  *v34 = v141;
                  *v30 = v142;
                }

                else
                {
                  *v34 = PDAscreenPDA(*v34, 0xFFu, v141, v142);
                }
              }
            }
          }

          ++v58;
          v57 += 2;
          v135 += v45 != 0;
          ++v34;
          v30 += v364;
          LODWORD(v40) = v40 - 1;
        }

        while (v40);
        goto LABEL_470;
      case 15:
        v135 = v45;
        do
        {
          v187 = *v58;
          if (*v58)
          {
            if (v45)
            {
              v187 = (*v135 * v187 + ((*v135 * v187) >> 8) + 1) >> 8;
            }

            if (v187 >= 8u)
            {
              v188 = PDAM(*v57, HIBYTE(*v57), v187);
              if (v188 >> 27)
              {
                v189 = HIBYTE(v188);
                if (v360)
                {
                  v190 = *v30;
                  if (v190 >= 8)
                  {
                    v188 = PDAoverlayPDA(*v34, v190, v188, v189);
                    v189 = HIBYTE(v188);
                  }

                  *v34 = v188;
                  *v30 = v189;
                }

                else
                {
                  *v34 = PDAoverlayPDA(*v34, 0xFFu, v188, v189);
                }
              }
            }
          }

          ++v58;
          v57 += 2;
          v135 += v45 != 0;
          ++v34;
          v30 += v364;
          LODWORD(v40) = v40 - 1;
        }

        while (v40);
        goto LABEL_470;
      case 16:
        v135 = v45;
        do
        {
          v136 = *v58;
          if (*v58)
          {
            if (v45)
            {
              v136 = (*v135 * v136 + ((*v135 * v136) >> 8) + 1) >> 8;
            }

            if (v136 >= 8u)
            {
              v137 = PDAM(*v57, HIBYTE(*v57), v136);
              if (v137 >> 27)
              {
                if (v360)
                {
                  v138 = HIBYTE(v137);
                  v139 = *v30;
                  if (v139 >= 8)
                  {
                    v137 = PDAdarkenPDA(*v34, v139, v137, v138);
                    v138 = HIBYTE(v137);
                  }

                  *v34 = v137;
                  *v30 = v138;
                }

                else
                {
                  *v34 = PDAdarkenPDA(*v34, 0xFFu, v137, HIBYTE(v137));
                }
              }
            }
          }

          ++v58;
          v57 += 2;
          v135 += v45 != 0;
          ++v34;
          v30 += v364;
          LODWORD(v40) = v40 - 1;
        }

        while (v40);
        goto LABEL_470;
      case 17:
        v135 = v45;
        do
        {
          v205 = *v58;
          if (*v58)
          {
            if (v45)
            {
              v205 = (*v135 * v205 + ((*v135 * v205) >> 8) + 1) >> 8;
            }

            if (v205 >= 8u)
            {
              v206 = PDAM(*v57, HIBYTE(*v57), v205);
              if (v206 >> 27)
              {
                if (v360)
                {
                  v207 = HIBYTE(v206);
                  v208 = *v30;
                  if (v208 >= 8)
                  {
                    v206 = PDAlightenPDA(*v34, v208, v206, v207);
                    v207 = HIBYTE(v206);
                  }

                  *v34 = v206;
                  *v30 = v207;
                }

                else
                {
                  *v34 = PDAlightenPDA(*v34, 0xFFu, v206, HIBYTE(v206));
                }
              }
            }
          }

          ++v58;
          v57 += 2;
          v135 += v45 != 0;
          ++v34;
          v30 += v364;
          LODWORD(v40) = v40 - 1;
        }

        while (v40);
        goto LABEL_470;
      case 18:
        v135 = v45;
        do
        {
          v229 = *v58;
          if (*v58)
          {
            if (v45)
            {
              v229 = (*v135 * v229 + ((*v135 * v229) >> 8) + 1) >> 8;
            }

            if (v229 >= 8u)
            {
              v230 = PDAM(*v57, HIBYTE(*v57), v229);
              if (v230 >> 27)
              {
                v231 = HIBYTE(v230);
                if (v360)
                {
                  v232 = *v30;
                  if (v232 >= 8)
                  {
                    v230 = PDAcolordodgePDA(*v34, v232, v230, v231);
                    v231 = HIBYTE(v230);
                  }

                  *v34 = v230;
                  *v30 = v231;
                }

                else
                {
                  *v34 = PDAcolordodgePDA(*v34, 0xFFu, v230, v231);
                }
              }
            }
          }

          ++v58;
          v57 += 2;
          v135 += v45 != 0;
          ++v34;
          v30 += v364;
          LODWORD(v40) = v40 - 1;
        }

        while (v40);
        goto LABEL_470;
      case 19:
        v135 = v45;
        do
        {
          v248 = *v58;
          if (*v58)
          {
            if (v45)
            {
              v248 = (*v135 * v248 + ((*v135 * v248) >> 8) + 1) >> 8;
            }

            if (v248 >= 8u)
            {
              v249 = PDAM(*v57, HIBYTE(*v57), v248);
              if (v249 >> 27)
              {
                if (v360)
                {
                  v250 = HIBYTE(v249);
                  v251 = *v30;
                  if (v251 >= 8)
                  {
                    v249 = PDAcolorburnPDA(*v34, v251, v249, v250);
                    v250 = HIBYTE(v249);
                  }

                  *v34 = v249;
                  *v30 = v250;
                }

                else
                {
                  *v34 = PDAcolorburnPDA(*v34, 0xFFu, v249, HIBYTE(v249));
                }
              }
            }
          }

          ++v58;
          v57 += 2;
          v135 += v45 != 0;
          ++v34;
          v30 += v364;
          LODWORD(v40) = v40 - 1;
        }

        while (v40);
        goto LABEL_470;
      case 20:
        v135 = v45;
        do
        {
          v209 = *v58;
          if (*v58)
          {
            if (v45)
            {
              v209 = (*v135 * v209 + ((*v135 * v209) >> 8) + 1) >> 8;
            }

            if (v209 >= 8u)
            {
              v210 = PDAM(*v57, HIBYTE(*v57), v209);
              if (v210 >> 27)
              {
                if (v360)
                {
                  v211 = HIBYTE(v210);
                  v212 = *v30;
                  if (v212 >= 8)
                  {
                    v210 = PDAsoftlightPDA(*v34, v212, v210, v211);
                    v211 = HIBYTE(v210);
                  }

                  *v34 = v210;
                  *v30 = v211;
                }

                else
                {
                  *v34 = PDAsoftlightPDA(*v34, 0xFFu, v210, HIBYTE(v210));
                }
              }
            }
          }

          ++v58;
          v57 += 2;
          v135 += v45 != 0;
          ++v34;
          v30 += v364;
          LODWORD(v40) = v40 - 1;
        }

        while (v40);
        goto LABEL_470;
      case 21:
        v135 = v45;
        do
        {
          v218 = *v58;
          if (*v58)
          {
            if (v45)
            {
              v218 = (*v135 * v218 + ((*v135 * v218) >> 8) + 1) >> 8;
            }

            if (v218 >= 8u)
            {
              v219 = PDAM(*v57, HIBYTE(*v57), v218);
              if (v219 >> 27)
              {
                if (v360)
                {
                  v220 = HIBYTE(v219);
                  v221 = *v30;
                  if (v221 >= 8)
                  {
                    v219 = PDAhardlightPDA(*v34, v221, v219, v220);
                    v220 = HIBYTE(v219);
                  }

                  *v34 = v219;
                  *v30 = v220;
                }

                else
                {
                  *v34 = PDAhardlightPDA(*v34, 0xFFu, v219, HIBYTE(v219));
                }
              }
            }
          }

          ++v58;
          v57 += 2;
          v135 += v45 != 0;
          ++v34;
          v30 += v364;
          LODWORD(v40) = v40 - 1;
        }

        while (v40);
        goto LABEL_470;
      case 22:
        v243 = v40;
        v129 = v45;
        do
        {
          v244 = *v58;
          if (*v58)
          {
            if (v45)
            {
              v244 = (*v129 * v244 + ((*v129 * v244) >> 8) + 1) >> 8;
            }

            if (v244 >= 8u)
            {
              v245 = PDAM(*v57, HIBYTE(*v57), v244);
              if (v245 >> 27)
              {
                if (v360)
                {
                  v246 = HIBYTE(v245);
                  v247 = *v30;
                  if (v247 >= 8)
                  {
                    v245 = PDAdifferencePDA(*v34, v247, v245, v246);
                    v246 = HIBYTE(v245);
                  }

                  *v34 = v245;
                  *v30 = v246;
                }

                else
                {
                  *v34 = PDAdifferencePDA(*v34, 0xFFu, v245, HIBYTE(v245));
                }
              }
            }
          }

          ++v58;
          v57 += 2;
          v129 += v45 != 0;
          ++v34;
          v30 += v364;
          --v243;
        }

        while (v243);
        goto LABEL_607;
      case 23:
        v252 = v40;
        v129 = v45;
        v253 = v252;
        do
        {
          v254 = *v58;
          if (*v58)
          {
            if (v45)
            {
              v254 = (*v129 * v254 + ((*v129 * v254) >> 8) + 1) >> 8;
            }

            if (v254 >= 8u)
            {
              v255 = PDAM(*v57, HIBYTE(*v57), v254);
              if (v255 >> 27)
              {
                if (v360)
                {
                  v256 = HIBYTE(v255);
                  v257 = *v30;
                  if (v257 >= 8)
                  {
                    v255 = PDAexclusionPDA(*v34, v257, v255, v256);
                    v256 = HIBYTE(v255);
                  }

                  *v34 = v255;
                  *v30 = v256;
                }

                else
                {
                  *v34 = PDAexclusionPDA(*v34, 0xFFu, v255, HIBYTE(v255));
                }
              }
            }
          }

          ++v58;
          v57 += 2;
          v129 += v45 != 0;
          ++v34;
          v30 += v364;
          --v253;
        }

        while (v253);
        goto LABEL_607;
      case 24:
        v168 = v40;
        v129 = v45;
        v169 = v168;
        do
        {
          v170 = *v58;
          if (*v58)
          {
            if (v45)
            {
              v170 = (*v129 * v170 + ((*v129 * v170) >> 8) + 1) >> 8;
            }

            if (v170 >= 8u)
            {
              v171 = PDAM(*v57, HIBYTE(*v57), v170);
              if (v171 >> 27)
              {
                if (v360)
                {
                  v172 = HIBYTE(v171);
                  v173 = *v30;
                  if (v173 >= 8)
                  {
                    v171 = PDAhuePDA(*v34, v173, v171, v172);
                    v172 = HIBYTE(v171);
                  }

                  *v34 = v171;
                  *v30 = v172;
                }

                else
                {
                  *v34 = PDAhuePDA(*v34, 0xFFu, v171, HIBYTE(v171));
                }
              }
            }
          }

          ++v58;
          v57 += 2;
          v129 += v45 != 0;
          ++v34;
          v30 += v364;
          --v169;
        }

        while (v169);
        goto LABEL_607;
      case 25:
        v162 = v40;
        v129 = v45;
        v163 = v162;
        do
        {
          v164 = *v58;
          if (*v58)
          {
            if (v45)
            {
              v164 = (*v129 * v164 + ((*v129 * v164) >> 8) + 1) >> 8;
            }

            if (v164 >= 8u)
            {
              v165 = PDAM(*v57, HIBYTE(*v57), v164);
              if (v165 >> 27)
              {
                v166 = HIBYTE(v165);
                if (v360)
                {
                  v167 = *v30;
                  if (v167 >= 8)
                  {
                    v165 = PDAsaturationPDA(*v34, v167, v165, v166);
                    v166 = HIBYTE(v165);
                  }

                  *v34 = v165;
                  *v30 = v166;
                }

                else
                {
                  *v34 = PDAsaturationPDA(*v34, 0xFFu, v165, v166);
                }
              }
            }
          }

          ++v58;
          v57 += 2;
          v129 += v45 != 0;
          ++v34;
          v30 += v364;
          --v163;
        }

        while (v163);
        goto LABEL_607;
      case 26:
        v258 = v40;
        v129 = v45;
        v259 = v258;
        do
        {
          v260 = *v58;
          if (*v58)
          {
            if (v45)
            {
              v260 = (*v129 * v260 + ((*v129 * v260) >> 8) + 1) >> 8;
            }

            if (v260 >= 8u)
            {
              v261 = PDAM(*v57, HIBYTE(*v57), v260);
              if (v261 >> 27)
              {
                v262 = HIBYTE(v261);
                if (v360)
                {
                  v263 = *v30;
                  if (v263 >= 8)
                  {
                    v261 = PDAluminosityPDA(v261, v262, *v34, v263);
                    v262 = HIBYTE(v261);
                  }

                  *v34 = v261;
                  *v30 = v262;
                }

                else
                {
                  *v34 = PDAluminosityPDA(v261, v262, *v34, 0xFFu);
                }
              }
            }
          }

          ++v58;
          v57 += 2;
          v129 += v45 != 0;
          ++v34;
          v30 += v364;
          --v259;
        }

        while (v259);
        goto LABEL_607;
      case 27:
        v128 = v40;
        v129 = v45;
        v130 = v128;
        do
        {
          v131 = *v58;
          if (*v58)
          {
            if (v45)
            {
              v131 = (*v129 * v131 + ((*v129 * v131) >> 8) + 1) >> 8;
            }

            if (v131 >= 8u)
            {
              v132 = PDAM(*v57, HIBYTE(*v57), v131);
              if (v132 >> 27)
              {
                if (v360)
                {
                  v133 = HIBYTE(v132);
                  v134 = *v30;
                  if (v134 >= 8)
                  {
                    v132 = PDAluminosityPDA(*v34, v134, v132, v133);
                    v133 = HIBYTE(v132);
                  }

                  *v34 = v132;
                  *v30 = v133;
                }

                else
                {
                  *v34 = PDAluminosityPDA(*v34, 0xFFu, v132, HIBYTE(v132));
                }
              }
            }
          }

          ++v58;
          v57 += 2;
          v129 += v45 != 0;
          ++v34;
          v30 += v364;
          --v130;
        }

        while (v130);
        goto LABEL_607;
      default:
        goto LABEL_610;
    }

    while (1)
    {
      v310 = *v58;
      if (*v58)
      {
        if (v45)
        {
          v310 = (*v129 * v310 + ((*v129 * v310) >> 8) + 1) >> 8;
        }

        if (v310 >= 0xF8u)
        {
          v311 = PDM(*v34, ~*(v57 + 3));
LABEL_605:
          *v34 = v311;
          goto LABEL_606;
        }

        if (v310 >= 8u)
        {
          v312 = (~*v57 >> 24) * v310;
          v311 = PDMplusDM(*v34, ((v312 + (v312 >> 8) + 1) >> 8), *v34, ~v310);
          goto LABEL_605;
        }
      }

LABEL_606:
      ++v58;
      v57 += 2;
      v129 += v238;
      ++v34;
      if (!--v309)
      {
LABEL_607:
        v45 = &v129[v351];
        goto LABEL_608;
      }
    }
  }
}