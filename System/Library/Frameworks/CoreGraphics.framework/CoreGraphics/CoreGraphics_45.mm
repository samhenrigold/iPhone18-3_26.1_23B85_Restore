void CGPDFSourceRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t CGPDFSourceGetLength(uint64_t result)
{
  if (result)
  {
    result = *(result + 16);
    if (result == -1)
    {
      _CGHandleAssert("CGPDFSourceGetLength", 179, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Reader/CGPDFSource.c", "source->length != (pdf_off_t)-1", "source length would overflow", v1, v2);
    }
  }

  return result;
}

uint64_t CGPDFSourceRewind(uint64_t result)
{
  if (result)
  {
    v1 = result;
    *(result + 208) = 0;
    if (*(result + 112) > 0 || *(result + 104))
    {
      if (*(result + 40))
      {
        *(result + 32) = 0;
      }

      else
      {
        v2 = *(result + 48);
        if (!v2)
        {
          _CGHandleAssert("CGPDFSourceRewind", 333, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Reader/CGPDFSource.c", "source->filter_callbacks.rewind != NULL", "filter rewind callback is missing");
        }

        result = v2(*(result + 80));
      }

      v1[13] = 0;
      v1[14] = 0;
    }

    v3 = v1[11];
    v1[15] = 0;
    v1[16] = v3;
  }

  return result;
}

uint64_t CGPDFSourceGetPosition(void *a1)
{
  if (!a1)
  {
    return -1;
  }

  v1 = a1[11];
  if (a1[18])
  {
    v2 = a1[24];
    v1 += a1[15];
  }

  else
  {
    v2 = a1[16];
  }

  return v2 - v1 + a1[14];
}

uint64_t CGPDFSourceIsAtEOF(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 208);
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

__CFString *CGPDFPageCopyPageLabel(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(*(a1 + 40) + 8);
  if (!v1)
  {
    return 0;
  }

  value = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    CGAnalyticsSendPDFDocumentGetCatalogEvent();
    catalog = pdf_document_get_catalog(**(*(v2 + 16) + 16));
  }

  else
  {
    catalog = 0;
  }

  Dictionary = CGPDFDictionaryGetDictionary(catalog, "PageLabels", &value);
  v6 = MEMORY[0x1E695E480];
  if (Dictionary)
  {
    v7 = v1 - 1;
    nums_for_number = get_nums_for_number(value, v1 - 1);
    if (nums_for_number)
    {
      v9 = nums_for_number;
      v11 = *(nums_for_number + 2);
      v10 = *(nums_for_number + 3);
      if (((v10 - v11) & 8) != 0)
      {
LABEL_32:
        pdf_error("invalid page label dictionary: invalid /Nums entry.");
      }

      else
      {
        dict = 0;
        if (v10 != v11)
        {
          v12 = 0;
          v13 = 0;
          string = 0;
          v31 = 0;
          v14 = (v10 - v11) >> 3;
          v29 = 0;
          v33 = 0;
          do
          {
            if (!CGPDFArrayGetInteger(v9, v13, &v33))
            {
              goto LABEL_32;
            }

            v15 = v33;
            if (v33 > v7)
            {
              break;
            }

            v16 = v13 + 1;
            if (!CGPDFArrayGetDictionary(v9, v16, &dict))
            {
              goto LABEL_32;
            }

            v13 = v16 + 1;
            v12 = v15;
          }

          while (v13 < v14);
          v17 = dict;
          if (!dict)
          {
            goto LABEL_33;
          }

          if (!CGPDFDictionaryGetName(dict, "S", &v31))
          {
            v31 = 0;
          }

          if (!CGPDFDictionaryGetString(v17, "P", &string))
          {
            string = 0;
          }

          if (!CGPDFDictionaryGetInteger(v17, "St", &v29))
          {
            v29 = 1;
          }

          Mutable = CFStringCreateMutable(*v6, 0);
          if (string)
          {
            v18 = CGPDFStringCopyTextString(string);
            if (v18)
            {
              v19 = v18;
              CFStringAppend(Mutable, v18);
              CFRelease(v19);
            }
          }

          if (!v31)
          {
LABEL_45:
            if (Mutable)
            {
              return Mutable;
            }

            goto LABEL_33;
          }

          v20 = v29 + v7 - v12;
          v21 = *v31;
          if (v21 <= 0x51)
          {
            if (v21 != 65)
            {
              if (v21 == 68)
              {
                CFStringAppendFormat(Mutable, 0, @"%ld", v29 + v7 - v12);
                goto LABEL_45;
              }

LABEL_44:
              goto LABEL_45;
            }

            v26 = Mutable;
            v27 = 1;
          }

          else
          {
            if (v21 == 82)
            {
              v22 = Mutable;
              v23 = 1;
              goto LABEL_40;
            }

            if (v21 != 97)
            {
              if (v21 == 114)
              {
                v22 = Mutable;
                v23 = 0;
LABEL_40:
                append_roman(v22, v23, v20);
                goto LABEL_45;
              }

              goto LABEL_44;
            }

            v26 = Mutable;
            v27 = 0;
          }

          append_alpha(v26, v27, v20);
          goto LABEL_45;
        }
      }
    }
  }

LABEL_33:
  v24 = CFLocaleCopyCurrent();
  Mutable = CFStringCreateWithFormat(*v6, v24, @"%lu", v1);
  if (v24)
  {
    CFRelease(v24);
  }

  return Mutable;
}

CGPDFArrayRef get_nums_for_number(CGPDFDictionary *a1, CGPDFInteger a2)
{
  value = 0;
  dict = a1;
  v10 = 0;
  if (CGPDFDictionaryGetArray(a1, "Kids", &value))
  {
    if (value)
    {
      v4 = *(value + 3) - *(value + 2);
      if (v4)
      {
        v5 = 0;
        v6 = v4 >> 3;
        while (1)
        {
          if (!CGPDFArrayGetDictionary(value, v5, &dict))
          {
            pdf_error("missing or invalid number table dictionary.", v10);
            return 0;
          }

          v14 = 0;
          array = 0;
          v13 = 0;
          v7 = CGPDFDictionaryGetArray(dict, "Limits", &array);
          v8 = "invalid number table: missing /Limits entry.";
          if (!v7)
          {
            goto LABEL_15;
          }

          if (!array || *(array + 3) - *(array + 2) != 16 || !CGPDFArrayGetInteger(array, 0, &v14) || !CGPDFArrayGetInteger(array, 1uLL, &v13))
          {
            break;
          }

          if (v14 <= a2 && v13 >= a2)
          {
            return get_nums_for_number(dict, a2);
          }

LABEL_16:
          if (v6 == ++v5)
          {
            return 0;
          }
        }

        v8 = "invalid number table: invalid /Limits entry.";
LABEL_15:
        pdf_error(v8, v10);
        goto LABEL_16;
      }
    }

    return 0;
  }

  else
  {
    if (!CGPDFDictionaryGetArray(a1, "Nums", &v10))
    {
      pdf_error("invalid number table: no /Kids or /Nums entry.", v10);
      return 0;
    }

    return v10;
  }
}

void append_roman(CFMutableStringRef theString, char a2, unint64_t a3)
{
  v3 = a3;
  v7 = *MEMORY[0x1E69E9840];
  if (a3 - 5000 > 0xFFFFFFFFFFFFEC78)
  {
    cStr[0] = 0;
    if (a3 >= 0x3E8)
    {
      v5 = a3 / 0x3E8u;
      __strcat_chk();
      v3 = (v3 - 1000 * v5);
    }

    if (v3 >= 0x64)
    {
      __strcat_chk();
      v3 = v3 % 0x64u;
    }

    if (v3 >= 0xA)
    {
      __strcat_chk();
      v3 = v3 % 0xAu;
    }

    if (v3)
    {
      __strcat_chk();
    }

    CFStringAppendCString(theString, cStr, 0x600u);
  }

  else
  {
    pdf_error("Cannot convert %ld to Roman numerals.", a3);
  }
}

void append_alpha(__CFString *a1, int a2, uint64_t a3)
{
  v4 = (a3 - 1) / 26;
  v5 = append_alpha_alphabet[(a3 - 1) % 26];
  if (!a2)
  {
    v5 = *(MEMORY[0x1E69E9830] + 4 * v5 + 1084);
  }

  v6 = malloc_type_malloc(2 * (v4 + 1), 0x1000040BDFB0063uLL);
  v7 = v6;
  if (v4 != -1)
  {
    v8 = vdupq_n_s64(v4);
    v9 = (v4 & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = xmmword_18439C740;
    v11 = xmmword_18439C750;
    v12 = xmmword_18439C760;
    v13 = xmmword_18439C670;
    v14 = v6 + 4;
    v15 = vdupq_n_s64(8uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v8, v13));
      if (vuzp1_s8(vuzp1_s16(v16, *v8.i8), *v8.i8).u8[0])
      {
        *(v14 - 4) = v5;
      }

      if (vuzp1_s8(vuzp1_s16(v16, *&v8), *&v8).i8[1])
      {
        *(v14 - 3) = v5;
      }

      if (vuzp1_s8(vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v12))), *&v8).i8[2])
      {
        *(v14 - 2) = v5;
        *(v14 - 1) = v5;
      }

      v17 = vmovn_s64(vcgeq_u64(v8, v11));
      if (vuzp1_s8(*&v8, vuzp1_s16(v17, *&v8)).i32[1])
      {
        *v14 = v5;
      }

      if (vuzp1_s8(*&v8, vuzp1_s16(v17, *&v8)).i8[5])
      {
        v14[1] = v5;
      }

      if (vuzp1_s8(*&v8, vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v10)))).i8[6])
      {
        v14[2] = v5;
        v14[3] = v5;
      }

      v11 = vaddq_s64(v11, v15);
      v12 = vaddq_s64(v12, v15);
      v13 = vaddq_s64(v13, v15);
      v14 += 8;
      v10 = vaddq_s64(v10, v15);
      v9 -= 8;
    }

    while (v9);
  }

  CFStringAppendCharacters(a1, v6, v4 + 1);

  free(v7);
}

int *resample_byte_h_3cpp_armv7(int *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, void *a6, int *a7, unsigned int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = 2 * a2 + 8;
    v10 = a8;
    do
    {
      if (a4)
      {
        v11 = *a6 + *a7 * v8;
        v12 = *(a5 + 8 * v8);
        v13 = a4;
        v14 = result;
        do
        {
          v15 = v14[1];
          v16 = (v14 + 2);
          v17 = v11 + 3 * *v14;
          if (v15 < 8)
          {
            v32.i64[0] = 0x200000002000;
            v32.i64[1] = 0x200000002000;
            v24.i64[0] = 0;
          }

          else
          {
            v18 = v14[1];
            v19 = xmmword_18439C9E0;
            v20 = xmmword_18439C9E0;
            v21 = xmmword_18439C9E0;
            do
            {
              v36 = vld3_s8(v17);
              v17 += 24;
              v22 = *v16;
              v16 += 8;
              v23 = v18;
              v24 = vmovl_u8(v36.val[0]);
              v25 = vmovl_u8(v36.val[1]);
              *v36.val[0].i8 = vmovl_u8(v36.val[2]);
              v19 = vmlal_high_s16(vmlal_s16(v19, *v24.i8, *v22.i8), v24, v22);
              v20 = vmlal_high_s16(vmlal_s16(v20, *v25.i8, *v22.i8), v25, v22);
              v21 = vmlal_high_s16(vmlal_s16(v21, v36.val[0], *v22.i8), *v36.val[0].i8, v22);
              v18 -= 8;
            }

            while (v23 > 0xF);
            if (v15 - ((v15 & 0x7FFFFFF8u) - 8) >= 0xC)
            {
              v26 = vextq_s8(v24, v24, 8uLL).u64[0];
              do
              {
                v27 = *v16;
                v16 += 4;
                v28 = *v24.i8;
                v29 = v26;
                v30 = *v25.i8;
                v28.i8[0] = *v17;
                v29.i8[0] = *(v17 + 1);
                v30.i8[0] = *(v17 + 2);
                v28.i8[2] = *(v17 + 3);
                v29.i8[2] = *(v17 + 4);
                v30.i8[2] = *(v17 + 5);
                v28.i8[4] = *(v17 + 6);
                v29.i8[4] = *(v17 + 7);
                v30.i8[4] = *(v17 + 8);
                v31 = v18;
                v28.i8[6] = *(v17 + 9);
                v29.i8[6] = *(v17 + 10);
                v30.i8[6] = *(v17 + 11);
                v17 += 12;
                v19 = vmlal_s16(v19, v28, v27);
                v20 = vmlal_s16(v20, v29, v27);
                v21 = vmlal_s16(v21, v30, v27);
                v18 -= 4;
              }

              while (v31 > 7);
            }

            *v32.i8 = vpadd_s32(vadd_s32(*v19.i8, *&vextq_s8(v19, v19, 8uLL)), vadd_s32(*v20.i8, *&vextq_s8(v20, v20, 8uLL)));
            v32.i64[1] = vpaddl_s32(*&vpaddq_s32(v21, v21));
            v15 = v18;
          }

          if (v15 >= 1)
          {
            v33 = v15 + 1;
            do
            {
              v24.i8[0] = *v17;
              v24.i8[2] = *(v17 + 1);
              v24.i8[4] = *(v17 + 2);
              v34 = vld1_dup_s16(v16++);
              v32 = vmlal_s16(v32, *v24.i8, v34);
              --v33;
              v17 += 3;
            }

            while (v33 > 1);
          }

          v35 = vmovl_u16(*&vmovl_u8(vqmovn_u16(vqshrun_high_n_s32(vqshrun_n_s32(v32, 0xEuLL), v32, 0xEuLL))));
          *v12 = v35.i64[0];
          *(v12 + 8) = v35.i32[2];
          v12 += 12;
          v14 = (v14 + v9);
          --v13;
        }

        while (v13);
      }

      ++v8;
    }

    while (v8 != v10);
  }

  return result;
}

int *resample_byte_h_4cpp_armv7(int *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, void *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = 2 * a2 + 8;
    do
    {
      if (a4)
      {
        v10 = *a6 + *a7 * v8;
        v11 = *(a5 + 8 * v8);
        v12 = a4;
        v13 = result;
        do
        {
          v14 = v13[1];
          v15 = (v13 + 2);
          v16 = (v10 + 4 * *v13);
          v17.i64[0] = 0x200000002000;
          v17.i64[1] = 0x200000002000;
          if (v14 >= 8)
          {
            v18 = xmmword_18439C9E0;
            v19 = xmmword_18439C9E0;
            v20 = xmmword_18439C9E0;
            v21 = xmmword_18439C9E0;
            do
            {
              v35 = vld4_s8(v16);
              v16 += 32;
              v22 = v14;
              v23 = *v15;
              v15 += 8;
              v24 = vmovl_u8(v35.val[0]);
              v25 = vmovl_u8(v35.val[1]);
              v26 = vmovl_u8(v35.val[2]);
              *v35.val[0].i8 = vmovl_u8(v35.val[3]);
              v21 = vmlal_high_s16(vmlal_s16(v21, *v24.i8, *v23.i8), v24, v23);
              v20 = vmlal_high_s16(vmlal_s16(v20, *v25.i8, *v23.i8), v25, v23);
              v19 = vmlal_high_s16(vmlal_s16(v19, *v26.i8, *v23.i8), v26, v23);
              v18 = vmlal_high_s16(vmlal_s16(v18, v35.val[0], *v23.i8), *v35.val[0].i8, v23);
              v14 -= 8;
            }

            while (v22 > 0xF);
            v27 = vadd_s32(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
            *v17.i8 = vpadd_s32(vadd_s32(*v21.i8, *&vextq_s8(v21, v21, 8uLL)), vadd_s32(*v20.i8, *&vextq_s8(v20, v20, 8uLL)));
            v17.u64[1] = vpadd_s32(vadd_s32(*v19.i8, *&vextq_s8(v19, v19, 8uLL)), v27);
          }

          if (v14 < 2)
          {
            v30 = v14;
          }

          else
          {
            do
            {
              v28 = *v16;
              v16 += 8;
              v34 = vld2_dup_s16(v15);
              v15 += 2;
              v29 = vmovl_u8(v28);
              v17 = vmlal_s16(vmlal_s16(v17, *v29.i8, v34.val[0]), *&vextq_s8(v29, v29, 8uLL), v34.val[1]);
              v30 = v14 - 2;
              v31 = v14 > 3;
              v14 -= 2;
            }

            while (v31);
          }

          if (v30 == 1)
          {
            v32 = vld1_dup_f32(v16);
            v33 = vld1_dup_s16(v15);
            v17 = vmlal_s16(v17, *&vmovl_u8(v32), v33);
          }

          *v11++ = vmovl_u16(*&vmovl_u8(vqmovn_u16(vqshrun_high_n_s32(vqshrun_n_s32(v17, 0xEuLL), v17, 0xEuLL))));
          v13 = (v13 + v9);
          --v12;
        }

        while (v12);
      }

      ++v8;
    }

    while (v8 != a8);
  }

  return result;
}

uint64_t resample_byte_v_3cpp_af_armv7(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, int8x16_t **a5, uint64_t *a6)
{
  v6 = *a5;
  v7 = *(result + 4);
  v8 = a3 * a4;
  if (v8 >= 16 && (v8 & 0x7FFFFFF0) != 0)
  {
    v9 = 0;
    do
    {
      if (v7)
      {
        v10.i64[0] = 0x200000002000;
        v10.i64[1] = 0x200000002000;
        v11 = a6;
        v12 = v7;
        v13 = (result + 8);
        v14.i64[0] = 0x200000002000;
        v14.i64[1] = 0x200000002000;
        v15.i64[0] = 0x200000002000;
        v15.i64[1] = 0x200000002000;
        v16.i64[0] = 0x200000002000;
        v16.i64[1] = 0x200000002000;
        do
        {
          v17 = vld1_dup_s16(v13++);
          v18 = *v11++;
          v19 = (v18 + 4 * v9);
          v10 = vmlal_s16(v10, vmovn_s32(*v19), v17);
          v14 = vmlal_s16(v14, vmovn_s32(v19[1]), v17);
          v15 = vmlal_s16(v15, vmovn_s32(v19[2]), v17);
          v16 = vmlal_s16(v16, vmovn_s32(v19[3]), v17);
          --v12;
        }

        while (v12);
      }

      else
      {
        v16.i64[0] = 0x200000002000;
        v16.i64[1] = 0x200000002000;
        v15.i64[0] = 0x200000002000;
        v15.i64[1] = 0x200000002000;
        v14.i64[0] = 0x200000002000;
        v14.i64[1] = 0x200000002000;
        v10.i64[0] = 0x200000002000;
        v10.i64[1] = 0x200000002000;
      }

      v20 = vqmovn_u16(vqshrun_high_n_s32(vqshrun_n_s32(v10, 0xEuLL), v14, 0xEuLL));
      v21 = vqshrun_high_n_s32(vqshrun_n_s32(v15, 0xEuLL), v16, 0xEuLL);
      v22 = vpmax_u8(v20, vqmovn_u16(v21));
      *v6++ = vorrq_s8(vmovl_u8(*&vmovl_u8(vpmax_u8(v22, v22))), (*&vqmovn_high_u16(v20, v21) & __PAIR128__(0xFFFFFF00FFFFFF00, 0xFFFFFF00FFFFFF00)));
      v9 += 16;
    }

    while (v9 < (v8 & 0x7FFFFFF0u));
  }

  else
  {
    LODWORD(v9) = 0;
  }

  v23 = v8 & 0xFFFFFFFC;
  if (v9 < v23)
  {
    v9 = v9;
    do
    {
      v24.i64[0] = 0x200000002000;
      v24.i64[1] = 0x200000002000;
      if (v7)
      {
        v25 = a6;
        v26 = v7;
        v27 = (result + 8);
        do
        {
          v28 = *v25++;
          v29 = vld1_dup_s16(v27++);
          v24 = vmlal_s16(v24, vmovn_s32(*(v28 + 4 * v9)), v29);
          --v26;
        }

        while (v26);
      }

      v30 = vqmovn_u16(vqshrun_high_n_s32(vqshrun_n_s32(v24, 0xEuLL), v24, 0xEuLL));
      v31 = vpmax_u8(v30, v30);
      v32 = vand_s8(vzip1_s32(vpmax_u8(v31, v31), v30), 0xFFFFFF00000000FFLL);
      v6->i32[0] = vorr_s8(v32, vdup_lane_s32(v32, 1)).u32[0];
      v6 = (v6 + 4);
      v9 += 4;
    }

    while (v9 < v23);
  }

  return result;
}

uint64_t resample_byte_v_Ncpp_armv7(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, uint8x16_t **a5, uint64_t *a6)
{
  v6 = *a5;
  v7 = *(result + 4);
  v8 = (result + 8);
  v9 = a3 * a4;
  if (v9 >= 16 && (v9 & 0x7FFFFFF0) != 0)
  {
    v10 = 0;
    do
    {
      if (v7)
      {
        v11.i64[0] = 0x200000002000;
        v11.i64[1] = 0x200000002000;
        v12 = a6;
        v13 = v7;
        v14 = (result + 8);
        v15.i64[0] = 0x200000002000;
        v15.i64[1] = 0x200000002000;
        v16.i64[0] = 0x200000002000;
        v16.i64[1] = 0x200000002000;
        v17.i64[0] = 0x200000002000;
        v17.i64[1] = 0x200000002000;
        do
        {
          v18 = vld1_dup_s16(v14++);
          v19 = *v12++;
          v20 = (v19 + 4 * v10);
          v11 = vmlal_s16(v11, vmovn_s32(*v20), v18);
          v15 = vmlal_s16(v15, vmovn_s32(v20[1]), v18);
          v16 = vmlal_s16(v16, vmovn_s32(v20[2]), v18);
          v17 = vmlal_s16(v17, vmovn_s32(v20[3]), v18);
          --v13;
        }

        while (v13);
      }

      else
      {
        v17.i64[0] = 0x200000002000;
        v17.i64[1] = 0x200000002000;
        v16.i64[0] = 0x200000002000;
        v16.i64[1] = 0x200000002000;
        v15.i64[0] = 0x200000002000;
        v15.i64[1] = 0x200000002000;
        v11.i64[0] = 0x200000002000;
        v11.i64[1] = 0x200000002000;
      }

      *v6++ = vqmovn_high_u16(vqmovn_u16(vqshrun_high_n_s32(vqshrun_n_s32(v11, 0xEuLL), v15, 0xEuLL)), vqshrun_high_n_s32(vqshrun_n_s32(v16, 0xEuLL), v17, 0xEuLL));
      v10 += 16;
    }

    while (v10 < (v9 & 0x7FFFFFF0));
  }

  else
  {
    LODWORD(v10) = 0;
  }

  if (v10 < (v9 & 0xFFFFFFFC))
  {
    v10 = v10;
    do
    {
      v21.i64[0] = 0x200000002000;
      v21.i64[1] = 0x200000002000;
      if (v7)
      {
        v22 = a6;
        v23 = v7;
        v24 = v8;
        do
        {
          v25 = *v22++;
          result = v25;
          v26 = vld1_dup_s16(v24++);
          v21 = vmlal_s16(v21, vmovn_s32(*(v25 + 4 * v10)), v26);
          --v23;
        }

        while (v23);
      }

      *v21.i8 = vqshrun_n_s32(v21, 0xEuLL);
      v6->i32[0] = vqmovn_u16(v21).u32[0];
      v6 = (v6 + 4);
      v10 += 4;
    }

    while (v10 < (v9 & 0xFFFFFFFC));
  }

  if (v10 < v9)
  {
    v10 = v10;
    do
    {
      if (v7)
      {
        v27 = 0x2000;
        v28 = a6;
        v29 = v7;
        v30 = v8;
        do
        {
          v31 = *v30++;
          result = v31;
          v32 = *v28++;
          v27 += *(v32 + 4 * v10) * result;
          --v29;
        }

        while (v29);
        v33 = v27 >> 14;
      }

      else
      {
        v33 = 0;
      }

      if (v33 >= 255)
      {
        v33 = 255;
      }

      v6->i8[0] = v33 & ~(v33 >> 31);
      v6 = (v6 + 1);
      ++v10;
    }

    while (v10 != v9);
  }

  return result;
}

uint64_t type4_lexer_scan(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
LABEL_2:
  while (2)
  {
    v4 = CGPDFSourceGetc(*a1);
    v5 = v4;
    if (v4 > 90)
    {
      if (v4 <= 122)
      {
        if (v4 != 91 && v4 != 93)
        {
          goto LABEL_59;
        }

LABEL_18:
        return 0xFFFFFFFFLL;
      }

      if (v4 == 123 || v4 == 125)
      {
        return v5;
      }

LABEL_59:
      while (1)
      {
        v24 = v5 + 1;
        if ((v5 + 1) <= 0x3F)
        {
          if (((1 << v24) & 0x200006C03) != 0)
          {
            goto LABEL_70;
          }

          if (((1 << v24) & 0xA001064000000000) != 0)
          {
            break;
          }
        }

        if ((v5 - 91) <= 0x22 && ((1 << (v5 - 91)) & 0x500000005) != 0)
        {
          break;
        }

        v25 = *(a1 + 16);
        v26 = *(a1 + 24);
        if (v25 >= v26)
        {
          *(a1 + 24) = 2 * v26 + 64;
          v27 = malloc_type_realloc(*(a1 + 8), 2 * v26 + 68, 0xD748C850uLL);
          *(a1 + 8) = v27;
          v25 = *(a1 + 16);
        }

        else
        {
          v27 = *(a1 + 8);
        }

        *(a1 + 16) = v25 + 1;
        v27[v25] = v5;
        LODWORD(v5) = CGPDFSourceGetc(*a1);
      }

      CGPDFSourceUngetc(*a1, v5);
LABEL_70:
      *(*(a1 + 8) + *(a1 + 16)) = 0;
      v30 = a1 + 8;
      v28 = *(a1 + 8);
      v29 = *(v30 + 8);
      if (v29)
      {
        v31 = a2;
        if (v29 == 5)
        {
          if (!strcmp(v28, "false"))
          {
            v5 = 256;
            *a2 = 256;
            *(a2 + 8) = 0;
            return v5;
          }

          goto LABEL_82;
        }

        if (v29 == 4)
        {
          if (!strcmp(v28, "true"))
          {
            v5 = 256;
            *a2 = 256;
            *(a2 + 8) = 1;
            return v5;
          }

          goto LABEL_82;
        }
      }

      else
      {
        v29 = strlen(v28);
        v31 = a2;
      }

      if (v29 > 0xFFFFFFFE || (v29 - 2) > 6)
      {
LABEL_86:
        return 0xFFFFFFFFLL;
      }

      if (v29 == 2)
      {
        v32 = 2;
LABEL_83:
        v33 = *v28;
        v34 = v32 + hash_asso_values[*(v28 + 1)] + hash_asso_values[v33];
        if (v34 <= 0x2F)
        {
          v35 = (&wordlist + 16 * v34);
          if (v33 == **v35 && !strcmp(v28 + 1, *v35 + 1))
          {
            v36 = v35[1];
            if (v36)
            {
              v5 = 260;
              *v31 = 260;
              *(v31 + 8) = v36;
              return v5;
            }
          }
        }

        goto LABEL_86;
      }

LABEL_82:
      v32 = v29 + hash_asso_values[*(v28 + 2)];
      goto LABEL_83;
    }

    switch(v4)
    {
      case -1:
        return v5;
      case 0:
      case 9:
      case 10:
      case 12:
      case 13:
      case 32:
        continue;
      case 37:
        while (1)
        {
          v6 = CGPDFSourceGetc(*a1);
          if (v6 == -1 || v6 == 10)
          {
            goto LABEL_2;
          }

          if (v6 == 13)
          {
            v8 = CGPDFSourceGetc(*a1);
            if (v8 != 10)
            {
              CGPDFSourceUngetc(*a1, v8);
            }

            goto LABEL_2;
          }
        }

      case 40:
      case 41:
      case 47:
      case 60:
      case 62:
        goto LABEL_18;
      case 43:
      case 45:
      case 46:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
        v38 = 0;
        if (v4 == 45 || v4 == 43)
        {
          v9 = *(a1 + 16);
          v10 = *(a1 + 24);
          if (v9 >= v10)
          {
            *(a1 + 24) = 2 * v10 + 64;
            v11 = malloc_type_realloc(*(a1 + 8), 2 * v10 + 68, 0xD748C850uLL);
            *(a1 + 8) = v11;
            v9 = *(a1 + 16);
          }

          else
          {
            v11 = *(a1 + 8);
          }

          *(a1 + 16) = v9 + 1;
          v11[v9] = v5;
          v37 = v5 == 45;
          LODWORD(v5) = CGPDFSourceGetc(*a1);
        }

        else
        {
          v37 = 0;
        }

        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 1;
        while (2)
        {
          if ((v5 - 48) < 0xA)
          {
            v13 = v5 + 10 * v13 - 48;
            ++v12;
LABEL_25:
            v16 = *(a1 + 16);
            v17 = *(a1 + 24);
            if (v16 >= v17)
            {
              *(a1 + 24) = 2 * v17 + 64;
              v18 = malloc_type_realloc(*(a1 + 8), 2 * v17 + 68, 0xD748C850uLL);
              *(a1 + 8) = v18;
              v16 = *(a1 + 16);
            }

            else
            {
              v18 = *(a1 + 8);
            }

            *(a1 + 16) = v16 + 1;
            v18[v16] = v5;
            LODWORD(v5) = CGPDFSourceGetc(*a1);
            continue;
          }

          break;
        }

        v19 = (v5 + 1);
        if (v19 > 0x3F)
        {
          goto LABEL_34;
        }

        if (v19 == 47)
        {
          v14 = v15;
LABEL_37:
          v15 = 0;
          goto LABEL_25;
        }

        if (((1 << (v5 + 1)) & 0x200006C03) == 0)
        {
          if (((1 << (v5 + 1)) & 0xA001064000000000) == 0)
          {
LABEL_34:
            if ((v5 - 91) > 0x22 || ((1 << (v5 - 91)) & 0x500000005) == 0)
            {
              v14 = 0;
              goto LABEL_37;
            }
          }

          CGPDFSourceUngetc(*a1, v5);
        }

        *(*(a1 + 8) + *(a1 + 16)) = 0;
        if ((v15 & (v12 > 0)) != 1)
        {
          goto LABEL_50;
        }

        if (v12 > 9)
        {
          *__error() = 0;
          v21 = strtol_l(*(a1 + 8), &v38, 10, 0);
          if (v38 == *(a1 + 8) || *v38)
          {
            goto LABEL_54;
          }

          v14 = 1;
          if (*__error() != 34 && !((v21 + 0x80000000) >> 32))
          {
            v5 = 257;
            *a2 = 257;
            *(a2 + 8) = v21;
            return v5;
          }

LABEL_50:
          if ((v14 & 1) == 0 || v12 < 1 || (v22 = strtod_l(*(a1 + 8), &v38, 0), v38 == *(a1 + 8)) || *v38)
          {
LABEL_54:
            return 0xFFFFFFFFLL;
          }

          v5 = 258;
          *a2 = 258;
          *(a2 + 8) = v22;
        }

        else
        {
          if (v37)
          {
            v20 = -v13;
          }

          else
          {
            v20 = v13;
          }

          v5 = 257;
          *a2 = 257;
          *(a2 + 8) = v20;
        }

        break;
      default:
        goto LABEL_59;
    }

    return v5;
  }
}

uint64_t dlRecorder_DrawImageApplyingToneMapping(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned int a5, void *a6, double a7, double a8, double a9, double a10)
{
  v18 = CGCreatePayloadForToneMapping(a5, a6);
  if (!v18)
  {
    return 1000;
  }

  v19 = v18;
  if (a4)
  {
    CFRetain(a4);
  }

  Copy = CGImageCreateCopy(a4);
  if (CGImageSetColorConversionInfoPayload(Copy, v19))
  {
    if (a4)
    {
      CFRelease(a4);
    }

    v21 = dlRecorder_DrawImage(a1, a2, a3, Copy, a7, a8, a9, a10);
    if (!Copy)
    {
      return v21;
    }

LABEL_13:
    CFRelease(Copy);
    return v21;
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  v21 = 1000;
  Copy = a4;
  if (a4)
  {
    goto LABEL_13;
  }

  return v21;
}

const void **applesauce::CF::ObjectRef<CGImage *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<CGDataProvider *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

CGFloat dlRecorder_GetTransform@<D0>(uint64_t a1@<X0>, CGAffineTransform *a2@<X8>)
{
  if (!a1 || !*(a1 + 288))
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", "dlRecorder_GetTransform");
  }

  *a2 = CGAffineTransformIdentity;
  return CGAffineTransformIdentity.tx;
}

CGImageRef dlRecorder_CreateImage(uint64_t a1)
{
  if (!a1 || (v1 = *(a1 + 288)) == 0)
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL");
    return 0;
  }

  v2 = CG::DisplayListRecorder::currentDisplayList(v1);
  if (!v2)
  {
    CGPostError("%s: recorder->currentDisplayList() returned NULL");
    return 0;
  }

  v3 = (v2 + 16);

  return CG::DisplayList::createImage(v3);
}

uint64_t dlRecorder_GetLayer(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, const __CFDictionary *a8)
{
  if (a1 && (v8 = *(a1 + 288)) != 0)
  {
    v14 = CG::DisplayListRecorder::currentDisplayList(v8);
    if (v14)
    {
      v15 = CG::DisplayListRecorder::initializeGroupInfoDictionary(v14, a8);
      *v19 = a2;
      *&v19[1] = a3;
      *&v19[2] = a4;
      *&v19[3] = a5;
      CGDisplayList = CG::DisplayList::createCGDisplayList(v15, v19, v16);
      if (v15)
      {
        CFRelease(v15);
      }

      if (CGDisplayList)
      {
        CG::DisplayList::createContextDelegate(CGDisplayList);
      }
    }
  }

  else
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", "dlRecorder_GetLayer");
  }

  return 0;
}

uint64_t dlRecorder_EndPage(uint64_t a1)
{
  if (a1 && (v2 = *(a1 + 288)) != 0)
  {
    v3 = *(*v2 + 32);

    return v3();
  }

  else
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", "dlRecorder_EndPage");
    return 1000;
  }
}

uint64_t dlRecorder_BeginPage(uint64_t a1)
{
  if (a1 && (v2 = *(a1 + 288)) != 0)
  {
    v3 = *(*v2 + 24);

    return v3();
  }

  else
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", "dlRecorder_BeginPage");
    return 1000;
  }
}

uint64_t dlRecorder_DrawDisplayList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && (v5 = *(a1 + 288)) != 0)
  {

    return CG::DisplayListRecorder::DrawDisplayList(v5, a2, a3, a4);
  }

  else
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", "dlRecorder_DrawDisplayList");
    return 1000;
  }
}

uint64_t dlRecorder_DrawConicGradient(uint64_t a1, uint64_t a2, uint64_t a3, CGGradient *a4, double a5, double a6, double a7)
{
  if (a1 && (v7 = *(a1 + 288)) != 0)
  {
    v9 = 2;
    v10 = a5;
    v11 = a6;
    v12 = a7;
    return CG::DisplayListRecorder::DrawGradient(v7, a2, a3, a4, 0, &v9);
  }

  else
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", "dlRecorder_DrawConicGradient");
    return 1000;
  }
}

uint64_t CG::DisplayListRecorder::DrawGradient(CFArrayRef *a1, uint64_t a2, uint64_t a3, CGGradient *a4, unsigned int a5, int *a6)
{
  v10 = CG::DisplayListRecorder::currentDisplayList(a1);
  if (!v10)
  {
    return 1000;
  }

  v11 = v10;
  if (v10[5] == INFINITY || v10[6] == INFINITY)
  {
    return 0;
  }

  result = 0;
  if (v11[7] != 0.0 && v11[8] != 0.0)
  {
    v14 = *(a3 + 40);
    *&v31.a = *(a3 + 24);
    *&v31.c = v14;
    *&v31.tx = *(a3 + 56);
    if (*(v11 + 73) != 1)
    {
      goto LABEL_17;
    }

    v30 = CGRectInfinite;
    v30.origin.x = CG::DisplayListRecorder::intersectRectWithClipConsideringStyle(&v30.origin.x, a2, *(a3 + 112), *(*(a3 + 120) + 16), CGRectInfinite.origin);
    v30.origin.y = v15;
    v30.size.width = v16;
    v30.size.height = v17;
    if (v30.origin.x == INFINITY || v15 == INFINITY)
    {
      return 0;
    }

    result = 0;
    if (v16 != 0.0 && v17 != 0.0)
    {
LABEL_17:
      v19 = CG::DisplayList::gradientResourceForGradient((v11 + 2), a4);
      if (v19)
      {
        v20 = v19;
        EntryDrawingState = CG::DisplayList::getEntryDrawingState(v11 + 2, a3, a2);
        v22 = EntryDrawingState[1];
        if (v22)
        {
          v23 = *(v22 + 8);
          v24 = EntryDrawingState[2];
          if (v24)
          {
            v23 |= *(v24 + 8);
          }

          v25 = v23 & 0x1000;
          v26 = EntryDrawingState[3];
          if (v26)
          {
            v25 |= *(v26 + 8) & 0x3400;
          }

          v27 = *(a3 + 120);
          if (*(v27 + 8) >= 1.0)
          {
            v28 = *(v20 + 8) & 0x1000 | v25;
          }

          else
          {
            LOWORD(v28) = v25 | 0x1000;
          }

          if ((v28 & 0x1000) == 0 && (((*(v27 + 4) << 16) >> 24) - 3) < 0xFFFFFFFE)
          {
            LOWORD(v28) = v28 | 0x1000;
          }

          if ((v28 & 0x3000) != 0)
          {
            *(v11 + 20) |= v28 & 0x3000;
          }

          if (*(v11 + 74) == 1)
          {
            if ((v28 & 0x400) != 0)
            {
              CG::DisplayList::getEntryPatternState((v11 + 2), a3, a2);
            }

            v29 = *a6;
            if (*a6 == 2)
            {
              operator new();
            }

            if (v29 == 1)
            {
              operator new();
            }

            if (!v29)
            {
              operator new();
            }

            CGPostError("Invalid GradientType argument");
            return 1000;
          }

          return 0;
        }
      }

      return 1000;
    }
  }

  return result;
}

__n128 CG::DisplayListEntryGradient::DisplayListEntryGradient(CG::DisplayListEntryGradient *this, int a2, const CGRect *a3, const CG::DisplayListEntryStateDrawing *a4, const CG::DisplayListEntryStatePattern *a5, const CG::DisplayListResourceGradient *a6, const CGAffineTransform *a7, CGPoint a8, CGPoint a9, int a10)
{
  *this = &unk_1EF23ABE8;
  *(this + 2) = (a2 << 8) | 6;
  size = a3->size;
  *(this + 1) = a3->origin;
  *(this + 2) = size;
  *(this + 6) = a4;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = a5;
  *this = &unk_1EF23AD38;
  *(this + 10) = a6;
  v11 = *&a7->a;
  v12 = *&a7->c;
  *(this + 120) = *&a7->tx;
  *(this + 104) = v12;
  *(this + 88) = v11;
  *(this + 34) = 1;
  *(this + 35) = a10;
  *(this + 9) = a8;
  *(this + 10) = a9;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 13) = result;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 28) = 0;
  return result;
}

uint64_t dlRecorder_DrawRadialGradient(uint64_t a1, uint64_t a2, uint64_t a3, CGGradient *a4, unsigned int a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  if (a1 && (v11 = *(a1 + 288)) != 0)
  {
    v13 = 1;
    v14 = a6;
    v15 = a7;
    v16 = a8;
    v17 = a9;
    v18 = a10;
    v19 = a11;
    return CG::DisplayListRecorder::DrawGradient(v11, a2, a3, a4, a5, &v13);
  }

  else
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", "dlRecorder_DrawRadialGradient");
    return 1000;
  }
}

uint64_t dlRecorder_DrawLinearGradient(uint64_t a1, uint64_t a2, uint64_t a3, CGGradient *a4, unsigned int a5, double a6, double a7, double a8, double a9)
{
  if (a1 && (v9 = *(a1 + 288)) != 0)
  {
    v11 = 0;
    v12 = a6;
    v13 = a7;
    v14 = a8;
    v15 = a9;
    return CG::DisplayListRecorder::DrawGradient(v9, a2, a3, a4, a5, &v11);
  }

  else
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", "dlRecorder_DrawLinearGradient");
    return 1000;
  }
}

void dlRecorder_DrawLines(uint64_t a1, uint64_t a2, uint64_t a3, const CGPoint *a4, unint64_t a5)
{
  if (a1 && (v5 = *(a1 + 288)) != 0)
  {
    v10 = CG::DisplayListRecorder::currentDisplayList(v5);
    if (v10)
    {
      v11 = v10;
      v12 = v10[5] == INFINITY || v10[6] == INFINITY;
      if (!v12 && v10[7] != 0.0 && v10[8] != 0.0)
      {
        if (*(v10 + 73) != 1)
        {
          goto LABEL_37;
        }

        v13 = 0.0;
        v14 = 0.0;
        v15 = 0.0;
        v16 = 0.0;
        if (a4 && a5)
        {
          x = a4->x;
          y = a4->y;
          if (a5 >= 2)
          {
            v19 = a5 - 1;
            p_y = &a4[1].y;
            v13 = a4->x;
            v14 = a4->y;
            while (1)
            {
              v22 = *(p_y - 1);
              v21 = *p_y;
              v23 = v22 > x ? *(p_y - 1) : x;
              if (v22 >= v13)
              {
                x = v23;
              }

              else
              {
                v13 = *(p_y - 1);
              }

              if (v21 < v14)
              {
                break;
              }

              if (v21 <= y)
              {
                goto LABEL_24;
              }

LABEL_25:
              p_y += 2;
              y = v21;
              if (!--v19)
              {
                goto LABEL_30;
              }
            }

            v14 = *p_y;
LABEL_24:
            v21 = y;
            goto LABEL_25;
          }

          v14 = a4->y;
          v13 = a4->x;
          v21 = v14;
LABEL_30:
          v15 = x - v13;
          v16 = v21 - v14;
        }

        v24 = *(a3 + 40);
        *&v47.a = *(a3 + 24);
        *&v47.c = v24;
        *&v47.tx = *(a3 + 56);
        v48 = CGRectApplyAffineTransform(*&v13, &v47);
        v25.n128_f64[0] = CG::DisplayListRecorder::adjustBoundingBoxToIncludeStroke(&v48, a3);
        *&v48.origin.x = v25.n128_u64[0];
        v48.origin.y = v26;
        v48.size.width = v27;
        v48.size.height = v28;
        v48.origin.x = CG::DisplayListRecorder::intersectRectWithClipConsideringStyle(&v48.origin.x, a2, *(a3 + 112), *(*(a3 + 120) + 16), v25);
        v48.origin.y = v29;
        v48.size.width = v30;
        v48.size.height = v31;
        v32 = v48.origin.x == INFINITY || v29 == INFINITY;
        if (!v32 && v30 != 0.0 && v31 != 0.0)
        {
LABEL_37:
          EntryDrawingState = CG::DisplayList::getEntryDrawingState(v11 + 2, a3, a2);
          v34 = EntryDrawingState[1];
          if (v34)
          {
            v35 = *(v34 + 8);
            v36 = EntryDrawingState[2];
            if (v36)
            {
              v35 |= *(v36 + 8);
            }

            v37 = v35 & 0x1000;
            v38 = EntryDrawingState[3];
            if (v38)
            {
              v37 |= *(v38 + 8) & 0x3400;
            }

            StrokeColor = CGGStateGetStrokeColor(a3);
            v40 = (*(*(v11 + 2) + 8))(v11 + 2, StrokeColor);
            v41 = v40;
            if (v40)
            {
              v42 = *(v40 + 8) & 0x3400 | 0x200;
            }

            else
            {
              LOWORD(v42) = 512;
            }

            v43 = v42 | v37;
            v44 = *(a3 + 120);
            v45 = v42 | v37 | 0x1000;
            if (*(v44 + 8) >= 1.0)
            {
              v46 = v43;
            }

            else
            {
              v46 = v45;
            }

            if ((v46 & 0x1000) == 0 && (((*(v44 + 4) << 16) >> 24) - 3) < 0xFFFFFFFE)
            {
              v46 = v45;
            }

            if ((v46 & 0x3000) != 0)
            {
              *(v11 + 20) |= v46 & 0x3000;
            }

            if (*(v11 + 74) == 1)
            {
              if ((v46 & 0x400) != 0)
              {
                CG::DisplayList::getEntryPatternState((v11 + 2), a3, a2);
              }

              if ((v46 & 0x100) != 0)
              {
                CG::DisplayList::getEntryFillState((v11 + 2), 0);
              }

              if ((v46 & 0x200) != 0)
              {
                CG::DisplayList::getEntryStrokeState((v11 + 2), a3, v41);
              }

              operator new();
            }
          }
        }
      }
    }
  }

  else
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", "dlRecorder_DrawLines");
  }
}

__CFString *image_copy_format_description(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = *(a1 + 208);
  if (!v4)
  {
    goto LABEL_5;
  }

  Property = *(v4 + 120);
  if (Property)
  {
    Property = CGPropertiesGetProperty(Property, @"kCGImageWrappingIOSurface");
  }

  if (Property == *MEMORY[0x1E695E4D0])
  {
    v6 = "(IP-S)";
  }

  else
  {
LABEL_5:
    v6 = "(IP)";
  }

  if (!*(a1 + 208))
  {
    v6 = "(DP)";
  }

  CFStringAppendFormat(Mutable, 0, @"<CGImage %p> %s", a1, v6);
  v7 = *(a1 + 216);
  if (v7)
  {
    v8 = CGPropertiesGetProperty(v7, @"kCGImageFileFormat");
    if (v8)
    {
      v9 = v8;
      v10 = CFGetTypeID(v8);
      if (v10 == CFStringGetTypeID())
      {
        CFStringAppendFormat(Mutable, 0, @" <%@>", v9);
      }
    }

    v11 = *(a1 + 216);
    if (v11)
    {
      v12 = CGPropertiesGetProperty(v11, @"kCGImageHDRFileFormat");
      if (v12)
      {
        v13 = v12;
        v14 = CFGetTypeID(v12);
        if (v14 == CFStringGetTypeID())
        {
          CFStringAppendFormat(Mutable, 0, @" <%@>", v13);
        }
      }
    }
  }

  ColorSpace = CGImageGetColorSpace(a1);
  v16 = CFCopyDescription(ColorSpace);
  CFStringAppendFormat(Mutable, 0, @"\n\t<%@>", v16);
  if (v16)
  {
    CFRelease(v16);
  }

  v39 = 0;
  HeadroomInfo = CGImageGetHeadroomInfo(a1, &v39);
  if (v39 && HeadroomInfo != 0.0)
  {
    if (v39 == 2)
    {
      v18 = " (estimated)";
    }

    else
    {
      v18 = " ";
    }

    CFStringAppendFormat(Mutable, 0, @"\n\t\theadroom = %f %s", HeadroomInfo, v18);
  }

  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  v22 = *(a1 + 64);
  v23 = *(a1 + 72);
  BitmapInfo = CGImageGetBitmapInfo(a1);
  if ((BitmapInfo & 0x1F) <= 7)
  {
    __sprintf_chk(__s, 0, 0x100uLL, "%s | ", off_1E6E31C78[BitmapInfo & 0x1F]);
  }

  v25 = strlen(__s);
  v26 = (BitmapInfo >> 12) & 7;
  if (v26 > 4)
  {
    v27 = "? (unknown byte order)";
  }

  else
  {
    v27 = off_1E6E31D18[v26];
  }

  sprintf(&__s[v25], "%s ", v27);
  v28 = strlen(__s);
  v29 = HIWORD(BitmapInfo) & 0xF;
  if (v29 > 4)
  {
    v30 = " | ? (unknown pixel format)";
  }

  else
  {
    v30 = off_1E6E18D08[v29];
  }

  sprintf(&__s[v28], "%s ", v30);
  if ((BitmapInfo & 0x100) != 0)
  {
    v31 = strlen(__s);
    sprintf(&__s[v31], "%s ", "| kCGBitmapFloatComponents");
  }

  CFStringAppendFormat(Mutable, 0, @"\n\t\twidth = %ld, height = %ld, bpc = %ld, bpp = %ld, row bytes = %ld, \n\t\t%s", v19, v20, v21, v22, v23, __s);
  v32 = *(a1 + 36);
  if ((v32 & 0x2000000) != 0)
  {
    v33 = "Yes";
  }

  else
  {
    v33 = "No";
  }

  if (*(a1 + 168))
  {
    v34 = "Yes";
  }

  else
  {
    v34 = "No";
  }

  if (*(a1 + 176))
  {
    v35 = "Yes";
  }

  else
  {
    v35 = "No";
  }

  if (*(a1 + 184))
  {
    v36 = "Yes";
  }

  else
  {
    v36 = "No";
  }

  if ((v32 & 0x1000000) != 0)
  {
    v37 = "Yes";
  }

  else
  {
    v37 = "No";
  }

  CFStringAppendFormat(Mutable, 0, @"\n\t\tis mask? %s, has masking color? %s, has soft mask? %s, has matte? %s, should interpolate? %s", v33, v34, v35, v36, v37);
  return Mutable;
}

uint64_t linked_on_sydro_or_later()
{
  if (linked_on_sydro_or_later_predicate != -1)
  {
    dispatch_once(&linked_on_sydro_or_later_predicate, &__block_literal_global_307);
  }

  if (linked_on_sydro_or_later_linked_on_rome_or_later & 1) != 0 || (linked_on_sydro_or_later_linked_on_sydney_or_later & 1) != 0 || (linked_on_sydro_or_later_linked_on_paris_or_later & 1) != 0 || (linked_on_sydro_or_later_linked_on_kincaid_or_later)
  {
    v0 = 1;
  }

  else
  {
    v0 = linked_on_sydro_or_later_linked_on_borealis_or_later;
  }

  return v0 & 1;
}

uint64_t __linked_on_dawnburst_or_later_block_invoke()
{
  linked_on_dawnburst_or_later_linked_on_macOS14_or_later = dyld_program_sdk_at_least();
  linked_on_dawnburst_or_later_linked_on_iOS17_or_later = dyld_program_sdk_at_least();
  linked_on_dawnburst_or_later_linked_on_tvOS17_or_later = dyld_program_sdk_at_least();
  linked_on_dawnburst_or_later_linked_on_watchOS10_or_later = dyld_program_sdk_at_least();
  result = dyld_program_sdk_at_least();
  linked_on_dawnburst_or_later_linked_on_borealis_or_later = result;
  return result;
}

uint64_t __linked_on_sydro_or_later_block_invoke()
{
  linked_on_sydro_or_later_linked_on_rome_or_later = dyld_program_sdk_at_least();
  linked_on_sydro_or_later_linked_on_sydney_or_later = dyld_program_sdk_at_least();
  linked_on_sydro_or_later_linked_on_paris_or_later = dyld_program_sdk_at_least();
  linked_on_sydro_or_later_linked_on_kincaid_or_later = dyld_program_sdk_at_least();
  result = dyld_program_sdk_at_least();
  linked_on_sydro_or_later_linked_on_borealis_or_later = result;
  return result;
}

__CFData *compress_data(char *a1, vImagePixelCount a2, vImagePixelCount a3, uint64_t a4, uint64_t a5, size_t a6, int a7)
{
  Mutable = CFDataCreateMutable(0, 0);
  v15 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, ((a4 * a2 + 7) >> 3) * a3);
    MutableBytePtr = CFDataGetMutableBytePtr(v15);
    if (a4 <= 3)
    {
      if (a4 == 1)
      {
        v17 = a1;
        v18 = a2;
        v19 = a3;
        v20 = 1;
        v21 = a6;
        v22 = (a2 + 7) >> 3;
        v23 = 7;
        goto LABEL_17;
      }

      if (a4 == 2)
      {
        v17 = a1;
        v18 = a2;
        v19 = a3;
        v20 = 2;
        v21 = a6;
        v22 = (2 * a2 + 7) >> 3;
        v23 = 6;
LABEL_17:
        compress_data_with_shift(MutableBytePtr, v17, v18, v19, v20, v21, v22, v23);
        return v15;
      }

LABEL_24:
      _CGHandleAssert("compress_data", 943, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImage.c", "", "Unimplemented");
    }

    if (a4 == 4)
    {
      v17 = a1;
      v18 = a2;
      v19 = a3;
      v20 = 4;
      v21 = a6;
      v22 = (4 * a2 + 7) >> 3;
      v23 = 4;
      goto LABEL_17;
    }

    if (a4 != 8)
    {
      goto LABEL_24;
    }

    if (a5 == 32)
    {
      src.data = a1;
      src.height = a3;
      src.width = a2;
      src.rowBytes = a6;
      dest.data = MutableBytePtr;
      dest.height = a3;
      if ((a7 & 0xFFFFFFFD) == 1)
      {
        v29 = 3;
      }

      else
      {
        v29 = 0;
      }

      dest.width = a2;
      dest.rowBytes = a2;
      v30 = vImageExtractChannel_ARGB8888(&src, &dest, v29, 0);
      if (v30)
      {
        _CGHandleAssert("compress_data_to_8_bit", 903, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImage.c", "err == kvImageNoError", "Unhandled vImage error %ld", v30);
      }
    }

    else
    {
      if (a5 != 16)
      {
        _CGHandleAssert("compress_data_to_8_bit", 905, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImage.c", "", "Unimplemented");
      }

      v24 = 0;
      do
      {
        v25 = &a1[v24 * a6];
        v26 = a2;
        do
        {
          v27 = *v25;
          v25 += 2;
          *MutableBytePtr++ = v27;
          --v26;
        }

        while (v26);
        ++v24;
      }

      while (v24 != a3);
    }
  }

  return v15;
}

uint64_t compress_data_with_shift(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, char a8)
{
  v8 = 0;
  do
  {
    v9 = 0;
    LODWORD(i) = 0;
    v11 = 0;
    v12 = (result + v8 * a7);
    v13 = (a2 + v8 * a6);
    do
    {
      v15 = *v13++;
      v14 = v15;
      if (i >= 8)
      {
        for (i = i; i > 7; *v12++ = v11 >> i)
        {
          i -= 8;
        }
      }

      v11 = (v11 << a5) | (v14 >> a8) & ~(-1 << a5);
      LODWORD(i) = i + a5;
      ++v9;
    }

    while (v9 != a3);
    if (v12 && i)
    {
      do
      {
        if (i < 8)
        {
          LODWORD(j) = i;
        }

        else
        {
          for (j = i; j > 7; *v12++ = v11 >> j)
          {
            j -= 8;
          }
        }

        v17 = -i & 7;
        v11 <<= v17;
        LODWORD(i) = j + v17;
      }

      while (i);
    }

    ++v8;
  }

  while (v8 != a4);
  return result;
}

uint64_t calculate_image_stats(uint64_t a1, uint64_t a2)
{
  DataProviderInternal = CGImageGetDataProviderInternal(a1, 0);
  v5 = CGDataProviderCopyData(DataProviderInternal);
  if (!v5 || (v6 = v5, (BytePtr = CFDataGetBytePtr(v5)) == 0))
  {
    CGLog(2, "%s failed: could not copy image data", "calculate_image_stats");
    return 0;
  }

  v8 = BytePtr;
  ColorSpace = CGImageGetColorSpace(a1);
  if (creator_for_ID_predicate != -1)
  {
    dispatch_once(&creator_for_ID_predicate, &__block_literal_global_297_6626);
  }

  if (off_1ED4E1728)
  {
    v10 = off_1ED4E1728();
    if (a1)
    {
LABEL_7:
      v12 = *(a1 + 40);
      v11 = *(a1 + 48);
      v13 = *(a1 + 72);
      goto LABEL_11;
    }
  }

  else
  {
    v10 = 0;
    if (a1)
    {
      goto LABEL_7;
    }
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
LABEL_11:
  if (CGColorSpaceEqualToColorSpace(ColorSpace, v10) && (v15 = CGImageGetBitmapInfo(a1), a1) && v15 == 8448 && *(a1 + 64) == 96 && v13 == 12 * v12)
  {
    calculate_buffer_stats(v8, v12, v11, v13, a2);
    v14 = 1;
  }

  else
  {
    v16 = CGColorConversionInfoCreateFromList(0, ColorSpace, kCGColorConversionTransformFromSpace, kCGRenderingIntentDefault, v10, 1, 0, 0);
    if (v16)
    {
      v17 = v16;
      v24 = a2;
      BitmapInfo = CGImageGetBitmapInfo(a1);
      if (a1)
      {
        v18 = *(a1 + 56);
        v19 = *(a1 + 64);
        v20 = *(a1 + 72);
      }

      else
      {
        v19 = 0;
        v18 = 0;
        v20 = 0;
      }

      v21 = malloc_type_malloc(12 * v12 * v11, 0x499CD54AuLL);
      if (v21)
      {
        v22 = v21;
        v29 = 0x210000000000;
        v30 = xmmword_18439C9F0;
        v31 = 12 * v12;
        LODWORD(v26) = 0;
        DWORD1(v26) = BitmapInfo;
        *(&v26 + 1) = v18;
        v27 = v19;
        v28 = v20;
        v14 = CGColorConversionInfoConvertData(v17, v12, v11, v21, &v29, v8, &v26);
        if (v14)
        {
          calculate_buffer_stats(v22, v12, v11, 12 * v12, v24);
        }

        free(v22);
      }

      else
      {
        CGLog(2, "%s failed: could not allocate destination buffer", "calculate_image_stats");
        v14 = 0;
      }

      CFRelease(v17);
    }

    else
    {
      CGLog(2, "%s failed: could not create convewrsion info", "calculate_image_stats");
      v14 = 0;
    }
  }

  CFRelease(v6);
  return v14;
}

void calculate_buffer_stats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v8 = 0;
    v9 = 0.0;
    do
    {
      if (a2)
      {
        v10 = (a1 + v8 * a4);
        v11 = *(a5 + 4);
        v12 = a2;
        do
        {
          v13 = *v10;
          v14 = v10[1];
          if (v14 <= v10[2])
          {
            v14 = v10[2];
          }

          if (v13 <= v14)
          {
            v13 = v14;
          }

          if (v11 <= v13)
          {
            v11 = v13;
          }

          *(a5 + 4) = v11;
          v9 = v9 + v13;
          v10 += 3;
          --v12;
        }

        while (v12);
      }

      ++v8;
    }

    while (v8 != a3);
  }

  else
  {
    v9 = 0.0;
  }

  if (CGImageDefaultReferenceWhite_once != -1)
  {
    dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
  }

  v15 = a3 * a2;
  v16 = CGImageDefaultReferenceWhite_media_white;
  v17 = 0.0;
  if (CGImageDefaultReferenceWhite_media_white)
  {
    v18 = CFGetTypeID(CGImageDefaultReferenceWhite_media_white);
    if (v18 == CFNumberGetTypeID())
    {
      valuePtr = 0.0;
      CFNumberGetValue(v16, kCFNumberFloatType, &valuePtr);
      v17 = valuePtr;
    }
  }

  v19 = v9 * v17;
  v20 = v15;
  *&v19 = v19 / v20;
  v21 = CGImageDefaultReferenceWhite_once;
  if (roundf(*&v19) <= 65535.0)
  {
    if (CGImageDefaultReferenceWhite_once != -1)
    {
      dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
    }

    v22 = CGImageDefaultReferenceWhite_media_white;
    v23 = 0.0;
    if (CGImageDefaultReferenceWhite_media_white)
    {
      v24 = CFGetTypeID(CGImageDefaultReferenceWhite_media_white);
      if (v24 == CFNumberGetTypeID())
      {
        valuePtr = 0.0;
        CFNumberGetValue(v22, kCFNumberFloatType, &valuePtr);
        v23 = valuePtr;
      }
    }

    v25 = v9 * v23 / v20;
    if (roundf(v25) < 1.0)
    {
      v26 = 1;
      goto LABEL_42;
    }

    v21 = CGImageDefaultReferenceWhite_once;
  }

  if (v21 != -1)
  {
    dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
  }

  v27 = CGImageDefaultReferenceWhite_media_white;
  v28 = 0.0;
  if (CGImageDefaultReferenceWhite_media_white)
  {
    v29 = CFGetTypeID(CGImageDefaultReferenceWhite_media_white);
    if (v29 == CFNumberGetTypeID())
    {
      valuePtr = 0.0;
      CFNumberGetValue(v27, kCFNumberFloatType, &valuePtr);
      v28 = valuePtr;
    }
  }

  v30 = v9 * v28 / v20;
  if (roundf(v30) <= 65535.0)
  {
    if (CGImageDefaultReferenceWhite_once != -1)
    {
      dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
    }

    v31 = CGImageDefaultReferenceWhite_media_white;
    v32 = 0.0;
    if (CGImageDefaultReferenceWhite_media_white)
    {
      v33 = CFGetTypeID(CGImageDefaultReferenceWhite_media_white);
      if (v33 == CFNumberGetTypeID())
      {
        valuePtr = 0.0;
        CFNumberGetValue(v31, kCFNumberFloatType, &valuePtr);
        v32 = valuePtr;
      }
    }

    v34 = v9 * v32 / v20;
    v26 = llroundf(v34);
  }

  else
  {
    v26 = -1;
  }

LABEL_42:
  *a5 = v26;
}

CFNumberRef __CGImageDefaultReferenceWhite_block_invoke()
{
  valuePtr = 1128988672;
  result = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  CGImageDefaultReferenceWhite_media_white = result;
  return result;
}

void *__calculate_headroom_block_invoke()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageComputeImageStatistics");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageComputeImageStatistics");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageComputeImageStatistics", v0);
  }

  calculate_headroom_f = result;
  return result;
}

size_t CGImageGetBytesPerRow(size_t image)
{
  if (image)
  {
    return *(image + 72);
  }

  return image;
}

size_t CGImageGetBitsPerPixel(size_t image)
{
  if (image)
  {
    return *(image + 64);
  }

  return image;
}

char *CGImageCreateWithCGPDFStream(uint64_t a1, uint64_t a2)
{
  v3 = CGPDFImageCreate(a1);
  ImageForRenderingSize = CGPDFImageCreateImageForRenderingSize(v3, a2, 0.0, 0.0);
  if (v3)
  {
    CFRelease(v3);
  }

  return ImageForRenderingSize;
}

BOOL CGImageIsSubimage(uint64_t a1, void *a2, _OWORD *a3)
{
  v3 = *(a1 + 240);
  if (v3)
  {
    if (a2)
    {
      *a2 = v3;
    }

    if (a3)
    {
      *a3 = *(a1 + 248);
    }
  }

  return v3 != 0;
}

uint64_t CGImageIsOptimizedForSharing(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
  {
    dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
  }

  if (v2 != CGImageGetTypeID_image_type_id)
  {
    return 0;
  }

  if (CGImageIsOptimizedForSharing_predicate != -1)
  {
    dispatch_once(&CGImageIsOptimizedForSharing_predicate, &__block_literal_global_5193);
  }

  ColorSpace = CGImageGetColorSpace(a1);
  if (CGColorSpaceEqualToColorSpace(ColorSpace, CGImageIsOptimizedForSharing_sRGB))
  {
    return 1;
  }

  v6 = CGColorSpaceCopyICCData(ColorSpace);
  if (CGImageIsOptimizedForSharing_cglibrarypredicate != -1)
  {
    dispatch_once(&CGImageIsOptimizedForSharing_cglibrarypredicate, &__block_literal_global_48_5194);
  }

  IsOptimizedForSharing_f = CGImageIsOptimizedForSharing_f(v6, 0);
  if (CGImageIsOptimizedForSharing_cglibrarypredicate_51 != -1)
  {
    dispatch_once(&CGImageIsOptimizedForSharing_cglibrarypredicate_51, &__block_literal_global_54_5195);
  }

  IsOptimizedForSharing_f_50 = CGImageIsOptimizedForSharing_f_50(IsOptimizedForSharing_f, @"aapy");
  if (v6)
  {
    CFRelease(v6);
  }

  if (IsOptimizedForSharing_f)
  {
    CFRelease(IsOptimizedForSharing_f);
  }

  return IsOptimizedForSharing_f_50;
}

CGColorSpaceRef __CGImageIsOptimizedForSharing_block_invoke()
{
  result = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
  CGImageIsOptimizedForSharing_sRGB = result;
  return result;
}

CGImage *CGImageCreateWithContentHeadroom(size_t a1, size_t a2, size_t a3, size_t a4, size_t a5, CGColorSpace *a6, CGBitmapInfo a7, CGDataProvider *a8, float a9, CGFloat *decode, BOOL shouldInterpolate, CGColorRenderingIntent intent)
{
  if (!verify_headroom_and_colorspace(a6, a9))
  {
    return 0;
  }

  v21 = CGImageCreate(a1, a2, a3, a4, a5, a6, a7, a8, decode, shouldInterpolate, intent);
  v22 = v21;
  if (v21)
  {
    CGImageSetHeadroom(v21, a9 != 0.0, a9);
  }

  return v22;
}

CGImage *CGImageCreateCopyWithContentHeadroom(uint64_t a1, float a2)
{
  v4 = *(a1 + 208);
  if (v4)
  {
    v5 = CGDataProviderCreateWithImageProvider(v4);
  }

  else
  {
    v5 = *(a1 + 152);
    CGDataProviderRetain(v5);
  }

  v6 = CGImageCreateWithContentHeadroom(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 144), *(a1 + 32), v5, a2, *(a1 + 160), *(a1 + 36) & 0x1000000, (*(a1 + 36) >> 8));
  average_light_level_nits = get_average_light_level_nits(a1, 0);
  CGImageSetContentAverageLightLevelNits(v6, average_light_level_nits);
  CGDataProviderRelease(v5);
  return v6;
}

BOOL CGImageSetContentAverageLightLevelNits(uint64_t a1, int a2)
{
  ColorSpace = CGImageGetColorSpace(a1);
  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model == kCGColorSpaceModelRGB)
  {
    v6 = *(a1 + 208);
    if (v6)
    {
      *(v6 + 136) = a2;
    }

    else
    {
      pthread_mutex_lock((a1 + 80));
      if (!*(a1 + 224))
      {
        v7 = CGPropertiesCreate();
        v8 = 0;
        atomic_compare_exchange_strong_explicit((a1 + 224), &v8, v7, memory_order_relaxed, memory_order_relaxed);
        if (v8)
        {
          CGPropertiesRelease(v7);
        }
      }

      pthread_mutex_unlock((a1 + 80));
      valuePtr = a2;
      v9 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CGPropertiesSetProperty(*(a1 + 224), @"kCGImageContentAverageLightLevelNits", v9);
      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

  return Model == kCGColorSpaceModelRGB;
}

void *__evaluate_average_nits_block_invoke()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageComputeImageStatistics");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageComputeImageStatistics");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageComputeImageStatistics", v0);
  }

  evaluate_average_nits_f = result;
  return result;
}

CGImage *CGImageCreateCopyWithContentAverageLightLevelNits(uint64_t a1, int a2)
{
  ColorSpace = CGImageGetColorSpace(a1);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
  {
    return 0;
  }

  v5 = *(a1 + 208);
  if (v5)
  {
    v6 = CGDataProviderCreateWithImageProvider(v5);
  }

  else
  {
    v6 = *(a1 + 152);
    CGDataProviderRetain(v6);
  }

  v7 = CGImageCreate(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 144), *(a1 + 32), v6, *(a1 + 160), *(a1 + 36) & 0x1000000, (*(a1 + 36) >> 8));
  CGImageSetContentAverageLightLevelNits(v7, a2);
  v10 = 0;
  HeadroomInfo = CGImageGetHeadroomInfo(a1, &v10);
  CGImageSetHeadroom(v7, v10, HeadroomInfo);
  CGDataProviderRelease(v6);
  return v7;
}

CGImage *CGImageCreateCopyWithContentAverageLightLevel(uint64_t a1, float a2)
{
  if (CGImageDefaultReferenceWhite_once != -1)
  {
    dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
  }

  v4 = CGImageDefaultReferenceWhite_media_white;
  v5 = 0.0;
  if (CGImageDefaultReferenceWhite_media_white)
  {
    v6 = CFGetTypeID(CGImageDefaultReferenceWhite_media_white);
    if (v6 == CFNumberGetTypeID())
    {
      valuePtr = 0.0;
      CFNumberGetValue(v4, kCFNumberFloatType, &valuePtr);
      v5 = valuePtr;
    }
  }

  if (roundf(v5 * a2) <= 65535.0)
  {
    if (CGImageDefaultReferenceWhite_once != -1)
    {
      dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
    }

    v8 = CGImageDefaultReferenceWhite_media_white;
    v9 = 0.0;
    if (CGImageDefaultReferenceWhite_media_white)
    {
      v10 = CFGetTypeID(CGImageDefaultReferenceWhite_media_white);
      if (v10 == CFNumberGetTypeID())
      {
        v13 = 0.0;
        CFNumberGetValue(v8, kCFNumberFloatType, &v13);
        v9 = v13;
      }
    }

    v7 = llroundf(v9 * a2);
  }

  else
  {
    v7 = 0xFFFF;
  }

  return CGImageCreateCopyWithContentAverageLightLevelNits(a1, v7);
}

uint64_t CGImageDefaultReferenceWhite()
{
  if (CGImageDefaultReferenceWhite_once != -1)
  {
    dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
  }

  return CGImageDefaultReferenceWhite_media_white;
}

CGImage *CGImageCreateCopyWithCalculatedHDRStats(uint64_t a1)
{
  ColorSpace = CGImageGetColorSpace(a1);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
  {
    return 0;
  }

  v3 = *(a1 + 208);
  if (v3)
  {
    v4 = CGDataProviderCreateWithImageProvider(v3);
  }

  else
  {
    v4 = *(a1 + 152);
    CGDataProviderRetain(v4);
  }

  v5 = CGImageCreate(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 144), *(a1 + 32), v4, *(a1 + 160), *(a1 + 36) & 0x1000000, (*(a1 + 36) >> 8));
  average_light_level_nits = get_average_light_level_nits(a1, 1);
  CGImageSetContentAverageLightLevelNits(v5, average_light_level_nits);
  v7 = calculate_headroom(a1, &v9);
  CGImageSetHeadroom(v5, 2 * (v7 != 0.0), v7);
  return v5;
}

uint64_t CGImageCreateCopyWithImageProvider(char *image, uint64_t a2)
{
  if (!image || (image[39] & 2) != 0)
  {
    return 0;
  }

  ColorSpace = CGImageGetColorSpace(image);
  if (a2)
  {
    v5 = *(a2 + 120);
    if (!v5 || (Property = CGPropertiesGetProperty(v5, @"kCGImageProviderColorSpaceChangedOnImageCopy")) == 0)
    {
      Property = *(a2 + 40);
    }
  }

  else
  {
    Property = 0;
  }

  if (!CGColorSpaceEqualToColorSpace(ColorSpace, Property))
  {
    return 0;
  }

  v7 = CGImageCreateWithImageProvider(a2, *(image + 20), HIBYTE(*(image + 9)) & 1, (*(image + 9) >> 8));
  if (!v7)
  {
    return v7;
  }

  BitmapInfo = CGImageGetBitmapInfo(image);
  if (BitmapInfo != CGImageGetBitmapInfo(v7))
  {
    goto LABEL_38;
  }

  if (!*(image + 21))
  {
    goto LABEL_19;
  }

  v9 = *(v7 + 144);
  v10 = v9 ? *(*(v9 + 24) + 48) : 0;
  v11 = malloc_type_malloc(16 * v10, 0x100004000313F17uLL);
  *(v7 + 168) = v11;
  if (!v11)
  {
LABEL_38:
    CFRelease(v7);
    return 0;
  }

  v12 = 2 * v10;
  if (2 * v10)
  {
    v13 = *(image + 21);
    do
    {
      v14 = *v13++;
      *v11++ = v14;
      --v12;
    }

    while (v12);
  }

LABEL_19:
  *(v7 + 36) = *(v7 + 36) & 0xF7FFFFFF | (((*(image + 9) >> 27) & 1) << 27);
  v15 = *(image + 22);
  if (v15)
  {
    CFRetain(*(image + 22));
  }

  *(v7 + 176) = v15;
  if (!*(image + 23))
  {
    goto LABEL_29;
  }

  v16 = *(v7 + 144);
  if (v16)
  {
    v17 = *(*(v16 + 24) + 48);
  }

  else
  {
    v17 = 0;
  }

  v18 = malloc_type_malloc(8 * v17, 0x100004000313F17uLL);
  *(v7 + 184) = v18;
  if (!v18)
  {
    goto LABEL_38;
  }

  if (v17)
  {
    v19 = *(image + 23);
    do
    {
      v20 = *v19++;
      *v18++ = v20;
      --v17;
    }

    while (v17);
  }

LABEL_29:
  v21 = *(image + 24);
  if (v21)
  {
    CFRetain(*(image + 24));
  }

  *(v7 + 192) = v21;
  v22 = *(image + 25);
  if (v22)
  {
    CFRetain(*(image + 25));
  }

  *(v7 + 200) = v22;
  v23 = *(image + 30);
  if (v23)
  {
    CFRetain(*(image + 30));
  }

  *(v7 + 240) = v23;
  *(v7 + 248) = *(image + 248);
  v24 = *(image + 27);
  if (v24)
  {
    atomic_fetch_add_explicit(v24, 1u, memory_order_relaxed);
  }

  *(v7 + 216) = v24;
  return v7;
}

CGImageRef CGImageCreateCopyWithClipPath(CGImageRef image, CFTypeRef cf)
{
  Copy = 0;
  if (image && cf)
  {
    if ((CGPathDisableTypeValidation & 1) != 0 || (v5 = CFGetTypeID(cf), v5 == CGPathGetTypeID()))
    {
      Copy = CGImageCreateCopy(image);
      if (Copy)
      {
        v6 = *(image + 25);
        if (v6)
        {
          CFRelease(v6);
        }

        CFRetain(cf);
        *(image + 25) = cf;
      }
    }

    else
    {
      return 0;
    }
  }

  return Copy;
}

CGImageRef CGImageCreateCopyWithRenderingIntent(CGImageRef cf, unsigned int a2)
{
  if (cf)
  {
    v3 = cf;
    cf = 0;
    if (a2 <= 4)
    {
      v4 = *(v3 + 9);
      if ((v4 & 0x2000000) == 0)
      {
        if (a2 == v4 >> 8)
        {
          CFRetain(v3);
          return v3;
        }

        else
        {
          cf = CGImageCreateCopy(v3);
          if (cf)
          {
            *(cf + 9) = *(cf + 9) & 0xFFFF00FF | (a2 << 8);
          }
        }
      }
    }
  }

  return cf;
}

unsigned __int8 *CGImageCreateCopyWithOrientation(unsigned __int8 *cf, int a2)
{
  v2 = cf;
  if (cf)
  {
    if (cf[38] == a2)
    {
      CFRetain(cf);
    }

    else if ((a2 - 9) > 0xFFFFFFF7)
    {
      Copy = CGImageCreateCopy(cf);
      v2 = Copy;
      if (Copy)
      {
        *(Copy + 9) = *(Copy + 9) & 0xFF00FFFF | (a2 << 16);
      }
    }

    else
    {
      CGLog(1, "%s %s", "CGImageCreateCopyWithOrientation", "Invalid orientation value");
      return 0;
    }
  }

  return v2;
}

CGImageRef CGImageCreateCopyByApplyingxtendedRangeToneMapping(void *a1, CGColorSpace *a2, const void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = CFGetTypeID(a1);
  if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
  {
    dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
  }

  v7 = 0;
  if (a3 && v6 == CGImageGetTypeID_image_type_id)
  {
    v8 = CFGetTypeID(a3);
    if (v8 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    Value = CFDictionaryGetValue(a3, @"kCGImageExtendedRangeToneMappingInfo");
    ColorSpace = CGImageGetColorSpace(a1);
    v11 = CGImageGetBitmapInfo(a1);
    v7 = 0;
    if (CGColorSpaceUsesExtendedRange(ColorSpace) && (v11 & 0xF00) == 0x100)
    {
      if (CGColorSpaceGetModel(ColorSpace) && CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
      {
        return 0;
      }

      LODWORD(v42[0]) = 0;
      if (CGColorSpaceGetCICPInfo(ColorSpace, v42))
      {
        if (BYTE1(v42[0]) != 8)
        {
          return 0;
        }
      }

      else
      {
        Linearized = CGColorSpaceCreateLinearized(ColorSpace);
        if (!Linearized || !CGColorConversionInfoIterateColorSpaceFunctionsWithCallbacks(ColorSpace, Linearized, 0, &__block_literal_global_28_23464, 0, 0, 0, 5u, 0))
        {
          return 0;
        }
      }

      ResolveExtendedRangeToneMappingOptions = CGColorTransformCreateResolveExtendedRangeToneMappingOptions(Value);
      if (!ResolveExtendedRangeToneMappingOptions)
      {
        return 0;
      }

      CFRelease(ResolveExtendedRangeToneMappingOptions);
      DataProviderInternal = CGImageGetDataProviderInternal(a1, 0);
      if (!DataProviderInternal)
      {
        return 0;
      }

      v15 = CGDataProviderCopyData(DataProviderInternal);
      if (!v15)
      {
        return 0;
      }

      v16 = v15;
      v18 = a1[5];
      v17 = a1[6];
      v19 = a1[9];
      v20 = a1[7];
      v33 = a1[8];
      NumberOfComponents = CGImageGetNumberOfComponents(a1);
      bitmapInfo = CGImageGetBitmapInfo(a1);
      v22 = CGImageGetColorSpace(a1);
      v34 = v18;
      v23 = (v20 >> 3) * v18 * NumberOfComponents;
      v24 = v23 * v17;
      v25 = malloc_type_calloc(1uLL, v23 * v17, 0x2255EFAuLL);
      if (v25)
      {
        v26 = v25;
        v32 = v23;
        if (a2)
        {
          CopyWithStandardRange = 0;
        }

        else
        {
          CopyWithStandardRange = CGColorSpaceCreateCopyWithStandardRange(v22);
        }

        if (CopyWithStandardRange)
        {
          a2 = CopyWithStandardRange;
        }

        BytePtr = CFDataGetBytePtr(v16);
        v47 = 0u;
        v41 = 0u;
        v42[0] = 0;
        v42[1] = a2;
        v43 = bitmapInfo;
        v44 = 0;
        v45 = v20;
        v46 = v19;
        v36[0] = 0;
        v36[1] = v22;
        v37 = bitmapInfo;
        v38 = 0;
        v39 = v20;
        v40 = v19;
        if (convert_color_data_with_format(0, v34, v17, v26, v42, BytePtr, v36, a3) && (v30 = CGDataProviderCreateWithData(0, v26, v24, free_data)) != 0)
        {
          v31 = v30;
          v7 = CGImageCreate(v34, v17, v20, v33, v32, a2, bitmapInfo, v30, 0, 0, kCGRenderingIntentDefault);
          CFRelease(v31);
        }

        else
        {
          v7 = 0;
        }

        CGColorSpaceRelease(CopyWithStandardRange);
      }

      else
      {
        v7 = 0;
      }

      CFRelease(v16);
    }
  }

  return v7;
}

size_t CGImageGetHeight(size_t image)
{
  if (image)
  {
    return *(image + 48);
  }

  return image;
}

CGImageRef CGImageCreateCopyByApplyingSoftMask(uint64_t a1)
{
  v1 = a1;
  if (!a1)
  {
    return v1;
  }

  v2 = *(a1 + 32) & 0x1F;
  if ((v2 - 7) <= 0xFFFFFFFD)
  {
    v3 = "Invalid image alpha";
LABEL_26:
    CGLog(1, "%s %s", "CGImageCreateCopyByApplyingSoftMask", v3);
    return 0;
  }

  if (*(a1 + 56) != 8 || *(a1 + 64) != 32)
  {
    v3 = "Invalid image pixel size";
    goto LABEL_26;
  }

  v4 = *(a1 + 176);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 64);
  if (v5 != 1 && v5 != 8)
  {
    v3 = "Invalid mask pixel size";
    goto LABEL_26;
  }

  v7 = *(a1 + 48) * *(a1 + 72);
  v8 = malloc_type_calloc(v7, 1uLL, 0x100004077774924uLL);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  DataProviderInternal = CGImageGetDataProviderInternal(v1, 0);
  v11 = CGAccessSessionCreate(DataProviderInternal);
  v12 = (*(v1 + 6) - 1) * *(v1 + 9) + ((*(v1 + 8) * *(v1 + 5) + 7) >> 3);
  Bytes = CGAccessSessionGetBytes(v11, v9, v12);
  CGAccessSessionRelease(v11);
  if (Bytes != v12)
  {
    goto LABEL_29;
  }

  if (v2 == 6)
  {
    LODWORD(permuteMap.data) = 66051;
    dest.data = v9;
    *&dest.height = vextq_s8(*(v1 + 40), *(v1 + 40), 8uLL);
    dest.rowBytes = *(v1 + 9);
    vImagePermuteChannels_ARGB8888(&dest, &dest, &permuteMap, 0x10u);
  }

  v14 = *(v4 + 72);
  v15 = *(v4 + 48) * v14;
  v16 = malloc_type_calloc(v15, 1uLL, 0x100004077774924uLL);
  if (!v16)
  {
LABEL_29:
    v25 = v9;
LABEL_30:
    free(v25);
    return 0;
  }

  v17 = v16;
  v52 = v14;
  v18 = CGImageGetDataProviderInternal(v4, 0);
  v19 = CGAccessSessionCreate(v18);
  v20 = (*(v4 + 48) - 1) * *(v4 + 72) + ((*(v4 + 64) * *(v4 + 40) + 7) >> 3);
  v21 = CGAccessSessionGetBytes(v19, v17, v20);
  CGAccessSessionRelease(v19);
  if (v21 != v20)
  {
    free(v9);
    v25 = v17;
    goto LABEL_30;
  }

  v22 = *(v4 + 56);
  if (v22 == 1)
  {
    if (CGImageGetDecodeType(v4) == 1 && v15)
    {
      v26 = v17;
      do
      {
        *v26 = ~*v26;
        ++v26;
        --v15;
      }

      while (v15);
    }

    v27 = *(v4 + 40);
    v28 = malloc_type_calloc(*(v4 + 48) * v27, 1uLL, 0x100004077774924uLL);
    v30 = *(v4 + 40);
    v29 = *(v4 + 48);
    dest.data = v17;
    dest.height = v29;
    v31 = *(v4 + 72);
    dest.width = v30;
    dest.rowBytes = v31;
    permuteMap.data = v28;
    permuteMap.height = v29;
    permuteMap.width = v30;
    permuteMap.rowBytes = v27;
    v52 = v27;
    vImageConvert_Planar1toPlanar8(&dest, &permuteMap, 0x10u);
    free(v17);
    v17 = v28;
  }

  else if (v22 == 8 && CGImageGetDecodeType(v4) == 1 && v15)
  {
    for (i = 0; i != v15; ++i)
    {
      v17[i] = ~v17[i];
    }
  }

  v32 = *(v4 + 40);
  v34 = *(v1 + 5);
  v33 = *(v1 + 6);
  if (v32 == v34 && *(v4 + 48) == v33)
  {
    v35 = v52;
  }

  else
  {
    v36 = malloc_type_calloc(v33 * v34, 1uLL, 0x100004077774924uLL);
    dest.data = v17;
    *&dest.height = vextq_s8(*(v4 + 40), *(v4 + 40), 8uLL);
    dest.rowBytes = v52;
    permuteMap.data = v36;
    v37 = *(v1 + 40);
    *&permuteMap.height = vextq_s8(v37, v37, 8uLL);
    permuteMap.rowBytes = v37.i64[0];
    v35 = v37.i64[0];
    vImageScale_Planar8(&dest, &permuteMap, 0, 0x10u);
    free(v17);
    v32 = *(v1 + 5);
    v33 = *(v1 + 6);
    v17 = v36;
  }

  dest.data = v9;
  dest.height = v33;
  v38 = *(v1 + 9);
  dest.width = v32;
  dest.rowBytes = v38;
  permuteMap.data = v17;
  permuteMap.height = v33;
  permuteMap.width = v32;
  permuteMap.rowBytes = v35;
  if (vImageOverwriteChannels_ARGB8888(&permuteMap, &dest, &dest, 1u, 0x10u))
  {
    CGPostError("%s: vImageOverwriteChannels_ARGB8888 failed", "CGImageCreateCopyByApplyingSoftMask");
    v1 = 0;
  }

  else
  {
    vImagePremultiplyData_RGBA8888(&dest, &dest, 0x10u);
    BitmapInfo = CGImageGetBitmapInfo(v1);
    if (v2 == 6)
    {
      v40 = 2;
    }

    else
    {
      v40 = 1;
    }

    v51 = BitmapInfo & 0xFFFFFFE0;
    v53 = v40;
    v41 = CGDataProviderCreateWithDataNoCopy(BitmapInfo, v9, v7, release_provider_data);
    v42 = *(v1 + 6);
    width = *(v1 + 5);
    v43 = *(v1 + 7);
    v44 = *(v1 + 8);
    v45 = *(v1 + 9);
    ColorSpace = CGImageGetColorSpace(v1);
    decode = CGImageGetDecode(v1);
    shouldInterpolate = CGImageGetShouldInterpolate(v1);
    RenderingIntent = CGImageGetRenderingIntent(v1);
    v1 = CGImageCreate(width, v42, v43, v44, v45, ColorSpace, v51 | v53, v41, decode, shouldInterpolate, RenderingIntent);
    CGDataProviderRelease(v41);
  }

  free(v17);
  return v1;
}

uint64_t CGImageGetDecodeType(CGImage *a1)
{
  ColorSpace = CGImageGetColorSpace(a1);
  v3 = ColorSpace;
  if (ColorSpace)
  {
    v4 = *(*(ColorSpace + 3) + 48);
  }

  else
  {
    v4 = 0;
  }

  result = CGImageGetDecode(a1);
  if (!result)
  {
    return result;
  }

  v6 = result;
  if ((v4 - 3) >= 2)
  {
    if (v4 == 1)
    {
      if (CGColorSpaceGetType(v3) == 7)
      {
        if (v3 && (v10 = v3[3], *(v10 + 28) == 5))
        {
          v11 = *(*(v10 + 96) + 8);
        }

        else
        {
          v11 = 1.84467441e19;
        }

        if (*v6 == 0.0 && v6[1] == v11)
        {
          return 0;
        }

        if (*v6 == v11)
        {
LABEL_31:
          if (v6[1] == 0.0)
          {
            return 1;
          }
        }
      }

      else
      {
        if (*v6 == 0.0 && v6[1] == 1.0)
        {
          return 0;
        }

        if (*v6 == 1.0)
        {
          goto LABEL_31;
        }
      }
    }

    return 2;
  }

  v7 = 0;
  result = 2;
  do
  {
    v8 = v6[v7];
    v9 = &v6[v7];
    if (v8 == 0.0 && v9[1] == 1.0)
    {
      if (result == 1)
      {
        return 2;
      }

      result = 0;
    }

    else if (v8 == 1.0 && v9[1] == 0.0)
    {
      if (!result)
      {
        return 2;
      }

      result = 1;
    }

    v7 += 2;
  }

  while (v7 < 2 * v4 - 1);
  return result;
}

CGImageRef CGImageCreateWithJPEGDataProvider2(uint64_t a1, CGColorSpace *a2, double *a3, int a4, unsigned __int8 a5)
{
  if (CGImageCreateWithJPEGDataProvider2_predicate != -1)
  {
    dispatch_once(&CGImageCreateWithJPEGDataProvider2_predicate, &__block_literal_global_100);
  }

  v10 = CGImageCreateWithJPEGDataProvider2_f(a1, 0);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  if (CGImageCreateWithJPEGDataProvider2_predicate_103 != -1)
  {
    dispatch_once(&CGImageCreateWithJPEGDataProvider2_predicate_103, &__block_literal_global_106);
  }

  v12 = CGImageCreateWithJPEGDataProvider2_f_102(v11);
  if (!v12 || !CFEqual(v12, @"public.jpeg"))
  {
    CFRelease(v11);
    return 0;
  }

  v20 = *MEMORY[0x1E695E4C0];
  keys = @"kCGImageSourceShouldCache";
  v13 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &v20, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (CGImageCreateWithJPEGDataProvider2_predicate_112 != -1)
  {
    dispatch_once(&CGImageCreateWithJPEGDataProvider2_predicate_112, &__block_literal_global_115);
  }

  v14 = CGImageCreateWithJPEGDataProvider2_f_111(v11, 0, v13);
  CFRelease(v13);
  CFRelease(v11);
  if (v14)
  {
    if (a4)
    {
      v15 = 0x1000000;
    }

    else
    {
      v15 = 0;
    }

    *(v14 + 36) = v15 & 0xFFFF00FF | (a5 << 8) | *(v14 + 36) & 0xFEFF00FF;
    if (a2)
    {
      cgimage_set_decode_array(v14, a3, *(*(a2 + 3) + 48));
      CopyWithColorSpace = CGImageCreateCopyWithColorSpace(v14, a2);
      CFRelease(v14);
      return CopyWithColorSpace;
    }

    if (a3 || !*(v14 + 160))
    {
      ColorSpace = CGImageGetColorSpace(v14);
      if (ColorSpace)
      {
        v19 = *(*(ColorSpace + 3) + 48);
      }

      else
      {
        v19 = 0;
      }

      cgimage_set_decode_array(v14, a3, v19);
    }
  }

  return v14;
}

BOOL is_jpg_image(uint64_t a1)
{
  result = 0;
  if (a1)
  {
    v1 = *(a1 + 216);
    if (v1)
    {
      Property = CGPropertiesGetProperty(v1, @"com.apple.ImageIO.imageSourceTypeIdentifier");
      if (Property)
      {
        if (CFEqual(Property, @"public.jpeg"))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

void *copy_image_mask_and_matte(uint64_t a1, uint64_t **image)
{
  result = CGImageGetColorSpace(image);
  if (result)
  {
    v5 = *(result[3] + 48);
  }

  else
  {
    v5 = 0;
  }

  if (image[21])
  {
    result = malloc_type_malloc(16 * v5, 0x100004000313F17uLL);
    *(a1 + 168) = result;
    if (result)
    {
      v6 = 2 * v5;
      if (2 * v5)
      {
        v7 = image[21];
        do
        {
          v8 = *v7++;
          *result++ = v8;
          --v6;
        }

        while (v6);
      }
    }
  }

  if (image[23])
  {
    result = malloc_type_malloc(8 * v5, 0x100004000313F17uLL);
    *(a1 + 184) = result;
    if (result)
    {
      if (v5)
      {
        v9 = image[23];
        do
        {
          v10 = *v9++;
          *result++ = v10;
          --v5;
        }

        while (v5);
      }
    }
  }

  *(a1 + 36) = *(a1 + 36) & 0xF7FFFFFF | (((*(image + 9) >> 27) & 1) << 27);
  v11 = image[22];
  if (v11)
  {
    result = CFRetain(v11);
  }

  *(a1 + 176) = v11;
  return result;
}

uint64_t CGImageSetColorConversionInfoOptions(uint64_t result, const __CFDictionary *a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v4 == CGImageGetTypeID_image_type_id)
    {
      pthread_mutex_lock((v3 + 80));
      if (!*(v3 + 224))
      {
        v5 = CGPropertiesCreate();
        v6 = 0;
        atomic_compare_exchange_strong_explicit((v3 + 224), &v6, v5, memory_order_relaxed, memory_order_relaxed);
        if (v6)
        {
          CGPropertiesRelease(v5);
        }
      }

      pthread_mutex_unlock((v3 + 80));
      ColorSpace = CGImageGetColorSpace(v3);
      BitmapInfo = CGImageGetBitmapInfo(v3);
      ResolvedOptions = CGColorConversionInfoCreateResolvedOptions(ColorSpace, BitmapInfo, a2);
      v10 = *(v3 + 224);
      if (ResolvedOptions)
      {
        CGPropertiesSetProperty(v10, @"kCGColorConversionInfoOptions", ResolvedOptions);
        CFRelease(ResolvedOptions);
        return 1;
      }

      CGPropertiesRemoveProperty(v10, @"kCGColorConversionInfoOptions");
    }

    return 0;
  }

  return result;
}

uint64_t CGImageSetColorConversionInfoPayload(uint64_t result, const void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v4 == CGImageGetTypeID_image_type_id)
    {
      pthread_mutex_lock((v3 + 80));
      if (!*(v3 + 224))
      {
        v5 = CGPropertiesCreate();
        v6 = 0;
        atomic_compare_exchange_strong_explicit((v3 + 224), &v6, v5, memory_order_relaxed, memory_order_relaxed);
        if (v6)
        {
          CGPropertiesRelease(v5);
        }
      }

      pthread_mutex_unlock((v3 + 80));
      v7 = *(v3 + 224);
      if (a2)
      {
        CGPropertiesSetProperty(v7, @"kCGColorConversionInfoPayload", a2);
        return 1;
      }

      CGPropertiesRemoveProperty(v7, @"kCGColorConversionInfoPayload");
    }

    return 0;
  }

  return result;
}

void *__CGImageCreateWithJPEGDataProvider2_block_invoke_3()
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

  CGImageCreateWithJPEGDataProvider2_f_111 = result;
  return result;
}

void *__CGImageCreateWithJPEGDataProvider2_block_invoke()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageSourceCreateWithDataProvider");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageSourceCreateWithDataProvider");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageSourceCreateWithDataProvider", v0);
  }

  CGImageCreateWithJPEGDataProvider2_f = result;
  return result;
}

void *__CGImageCreateCopyWithResolvedOptions_block_invoke_2()
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

  CGImageCreateCopyWithResolvedOptions_f_80 = result;
  return result;
}

void *__CGImageCreateCopyWithResolvedOptions_block_invoke()
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

  CGImageCreateCopyWithResolvedOptions_f = result;
  return result;
}

CGImageRef CGImageCreateWithMaskAndMatte(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = 0;
  decode[2] = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    return v3;
  }

  if ((*(a1 + 39) & 0xA) != 0 || *(a1 + 192))
  {
    return 0;
  }

  v8 = *(a2 + 36);
  if ((v8 & 0x2000000) != 0)
  {
    v11 = *(a2 + 160);
    if (v11)
    {
      decode[0] = v11[1];
      v12 = *v11;
    }

    else
    {
      decode[0] = 1.0;
      v12 = 0.0;
    }

    decode[1] = v12;
    DeviceGray = CGColorSpaceCreateDeviceGray();
    CopyWithColorSpace = CGImageCreate(*(a2 + 40), *(a2 + 48), *(a2 + 56), *(a2 + 64), *(a2 + 72), DeviceGray, 0, *(a2 + 152), decode, *(a2 + 36) & 0x1000000, kCGRenderingIntentDefault);
    goto LABEL_16;
  }

  if ((v8 & 0xC000000) != 0 || CGColorSpaceGetModel(*(a2 + 144)))
  {
    return 0;
  }

  DeviceGray = CGColorSpaceCreateDeviceGray();
  if (!CGColorSpaceEqualToColorSpace(*(a2 + 144), DeviceGray))
  {
    CopyWithColorSpace = CGImageCreateCopyWithColorSpace(a2, DeviceGray);
LABEL_16:
    v10 = CopyWithColorSpace;
    goto LABEL_17;
  }

  CFRetain(a2);
  v10 = a2;
LABEL_17:
  CGColorSpaceRelease(DeviceGray);
  if (a3 && (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) || (Copy = CGImageCreateCopy(a1)) == 0)
  {
    if (v10)
    {
      CFRelease(v10);
    }

    return 0;
  }

  v3 = Copy;
  *(Copy + 22) = v10;
  *(Copy + 9) |= 0x8000000u;
  if (a3)
  {
    v15 = *(Copy + 18);
    if (v15)
    {
      v16 = *(*(v15 + 24) + 48);
    }

    else
    {
      v16 = 0;
    }

    v17 = malloc_type_malloc(8 * v16, 0x100004000313F17uLL);
    for (*(v3 + 23) = v17; v16; --v16)
    {
      v18 = *a3++;
      *v17++ = v18;
    }
  }

  return v3;
}

CGImageRef CGImageCreateWithMaskingColor(CGImage *a1, uint64_t a2)
{
  v2 = 0;
  v15[1] = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    return v2;
  }

  if (*(a1 + 24))
  {
    return 0;
  }

  v5 = *(a1 + 18);
  if (v5)
  {
    v6 = *(*(v5 + 24) + 48);
    if (v6 >> 61)
    {
      MEMORY[0x1EEE9AC00](a1);
      v7 = &v14;
      v8 = 0;
      goto LABEL_17;
    }

    v9 = 8 * v6;
  }

  else
  {
    v6 = 0;
    v9 = 0;
  }

  v10 = MEMORY[0x1EEE9AC00](v9);
  v7 = (v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v6 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v8 = (v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  }

  else
  {
    v8 = 0;
  }

  if (v6 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000022)
  {
    v8 = malloc_type_malloc(v10, 0x5359ECA0uLL);
  }

  else if (!v6)
  {
    goto LABEL_19;
  }

LABEL_17:
  v12 = 0;
  do
  {
    v8[v12] = *(a2 + 4 * v12);
    ++v12;
  }

  while (v6 != v12);
LABEL_19:
  v2 = CGImageCreateWithMaskingColors(a1, v8);
  if (v8 != v7)
  {
    free(v8);
  }

  return v2;
}

CGImageRef CGImageCreateWithMaskingColors(CGImageRef image, const CGFloat *components)
{
  v2 = 0;
  if (image)
  {
    v3 = components;
    if (components)
    {
      if ((*(image + 39) & 0xE) != 0 || *(image + 24))
      {
        return 0;
      }

      Copy = CGImageCreateCopy(image);
      v2 = Copy;
      if (!Copy)
      {
        return v2;
      }

      v6 = *(Copy + 18);
      if (v6)
      {
        v7 = *(*(v6 + 24) + 48);
      }

      else
      {
        v7 = 0;
      }

      v8 = malloc_type_malloc(16 * v7, 0x100004000313F17uLL);
      if (!v8)
      {
        CFRelease(v2);
        return 0;
      }

      v9 = 2 * v7;
      if (2 * v7)
      {
        v10 = v8;
        do
        {
          v11 = *v3++;
          *v10++ = v11;
          --v9;
        }

        while (v9);
      }

      *(v2 + 21) = v8;
      *(v2 + 9) |= 0x8000000u;
    }
  }

  return v2;
}

void *__CGImageCreateWithJPEGDataProvider3_block_invoke_5()
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

  CGImageCreateWithJPEGDataProvider3_f_164 = result;
  return result;
}

void *__CGImageCreateWithJPEGDataProvider3_block_invoke()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageSourceCreateWithDataProvider");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageSourceCreateWithDataProvider");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageSourceCreateWithDataProvider", v0);
  }

  CGImageCreateWithJPEGDataProvider3_f = result;
  return result;
}

void *__CGImageCreateWithJPEG2000DataProvider_block_invoke_3()
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

  CGImageCreateWithJPEG2000DataProvider_f_183 = result;
  return result;
}

void *__CGImageCreateWithJPEG2000DataProvider_block_invoke()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageSourceCreateWithDataProvider");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageSourceCreateWithDataProvider");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageSourceCreateWithDataProvider", v0);
  }

  CGImageCreateWithJPEG2000DataProvider_f = result;
  return result;
}

uint64_t CGImageCreateWithEPSDataProvider(CGDataProvider *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if ((*(a2 + 39) & 2) != 0)
  {
    return 0;
  }

  if (*(a2 + 192))
  {
    return 0;
  }

  v4 = CGImageEPSRepCreate(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  image_base = create_image_base();
  if (image_base)
  {
    v6 = v5[6];
    v7 = v5[7];
    if (v6 < 0.0 || v7 < 0.0)
    {
      v8 = *(v5 + 4);
      v9 = *(v5 + 5);
      *(&v6 - 2) = CGRectStandardize(*(&v6 - 2));
    }

    *(image_base + 40) = v6;
    *(image_base + 48) = v7;
    *(image_base + 32) = 0;
    *(image_base + 192) = v5;
    *(image_base + 36) = 1;
    *(image_base + 232) = 0u;
    *(image_base + 248) = 0u;
  }

  else
  {
    CFRelease(v5);
  }

  return image_base;
}

uint64_t create_subsampled_image_provider(const CGSize *a1, int a2, CGColorSpace *a3, uint64_t a4)
{
  keys[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v8 = *(a4 + 120);
    if (v8 && ((v9 = @"kCGImageProviderAlphaIsNotPremultiplied", (values = CGPropertiesGetProperty(v8, @"kCGImageProviderAlphaIsNotPremultiplied")) != 0) || (v11 = *(a4 + 120)) != 0 && ((v9 = @"kCGImageProviderAlphaIsPremultiplied", (values = CGPropertiesGetProperty(v11, @"kCGImageProviderAlphaIsPremultiplied")) != 0) || (v12 = *(a4 + 120)) != 0 && (v9 = @"kCGImageProviderAlphaIsOne", (values = CGPropertiesGetProperty(v12, @"kCGImageProviderAlphaIsOne")) != 0))))
    {
      keys[0] = v9;
      v10 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    else
    {
      v10 = 0;
    }

    v13 = *(a4 + 36);
    valuePtr = v13;
    if (!v10)
    {
      if (v13)
      {
        v14 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
        values = v14;
        keys[0] = @"kCGImageProviderBitmapInfo";
        v10 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v14)
        {
          CFRelease(v14);
        }
      }
    }
  }

  else
  {
    v10 = 0;
    valuePtr = 0;
  }

  v15 = a1 + 1;
  if (!a1)
  {
    v15 = &CGSizeZero;
  }

  v16 = fabs(round(v15->width));
  p_height = &a1[1].height;
  if (!a1)
  {
    p_height = &CGSizeZero.height;
  }

  v18 = CGImageProviderCreate(a2, a3, a1, &subsampled_image_callbacks, v10, v16, fabs(round(*p_height)));
  if (v10)
  {
    Count = CFDictionaryGetCount(v10);
    if (Count)
    {
      v20 = Count;
      v21 = 8 * Count;
      MEMORY[0x1EEE9AC00](Count);
      v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
      v23 = &v31[-v22];
      if (v21 >= 0x200)
      {
        v24 = 512;
      }

      else
      {
        v24 = v21;
      }

      bzero(&v31[-v22], v24);
      MEMORY[0x1EEE9AC00](v25);
      v26 = &v31[-v22];
      bzero(&v31[-v22], v24);
      CFDictionaryGetKeysAndValues(v10, &v31[-v22], &v31[-v22]);
      do
      {
        v28 = *v23++;
        v27 = v28;
        v29 = *v26++;
        CGImageProviderSetProperty(v18, v27, v29);
        --v20;
      }

      while (v20);
    }

    CFRelease(v10);
  }

  return v18;
}

atomic_uint *subsampled_image_copy_image_block_set(atomic_uint *a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a2 && !a3)
  {
    if (a1)
    {
      atomic_fetch_add_explicit(a1, 1u, memory_order_relaxed);
      return a1;
    }
  }

  return result;
}

CFDictionaryRef __block_set_options_block_invoke()
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = @"kCGImageBlockSingletonRequest";
  values = *MEMORY[0x1E695E4D0];
  result = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  block_set_options_options_singleton = result;
  return result;
}

BOOL CGImageIsMask(CGImageRef image)
{
  if (image)
  {
    LODWORD(image) = (*(image + 39) >> 1) & 1;
  }

  return image;
}

CFStringRef CGImageGetUTType(CGImageRef image)
{
  if (!image)
  {
    return 0;
  }

  v2 = CFGetTypeID(image);
  if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
  {
    dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
  }

  if (v2 != CGImageGetTypeID_image_type_id)
  {
    return 0;
  }

  v3 = *(image + 27);
  if (!v3)
  {
    return 0;
  }

  return CGPropertiesGetProperty(v3, @"com.apple.ImageIO.imageSourceTypeIdentifier");
}

char *CGImageGetData(char *result, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v77[249] = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v10 = result;
  v11 = CFGetTypeID(result);
  if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
  {
    dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
  }

  if (v11 != CGImageGetTypeID_image_type_id)
  {
    return 0;
  }

  result = 0;
  v12 = *(v10 + 7);
  if (v12 > a4 || v12 - 9 < 0xFFFFFFFFFFFFFFF8)
  {
    return result;
  }

  if (*(v10 + 6) <= a3)
  {
    return 0;
  }

  v13 = *(v10 + 19);
  if (!v13)
  {
    result = CGImageGetDataProviderInternal(v10, 0);
    if (!result)
    {
      return result;
    }

    v13 = *(v10 + 19);
  }

  if ((*(v10 + 8) & 0x7000) == 0x2000)
  {
    v14 = v13;
    v15 = 4;
  }

  else
  {
    if ((*(v10 + 8) & 0x7000) != 0x1000)
    {
      CGDataProviderRetain(v13);
      goto LABEL_19;
    }

    v14 = v13;
    v15 = 2;
  }

  v13 = CGDataProviderCreateWithSwappedProvider(v14, v15);
LABEL_19:
  for (i = CGAccessSessionCreate(v13); a3; --a3)
  {
    CGAccessSessionSkipForward(i, *(v10 + 9));
  }

  v71 = a5;
  if ((v10[39] & 2) != 0)
  {
    v22 = 1;
  }

  else
  {
    v17 = *(v10 + 18);
    if (v17)
    {
      v17 = *(*(v17 + 24) + 48);
    }

    v18 = *(v10 + 8) & 0x1F;
    v19 = v18 > 6;
    v20 = (1 << v18) & 0x61;
    if (v19 || v20 == 0)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = v17;
    }
  }

  v73 = malloc_type_malloc(*(v10 + 9), 0xB48B7DECuLL);
  if (a2)
  {
    v23 = 0;
    v24 = 0xFFFFFFFF >> -a4;
    v72 = vdupq_n_s64(0x10uLL);
    while (1)
    {
      v75 = v23;
      CGAccessSessionGetBytes(i, v73, *(v10 + 9));
      v25 = xmmword_18439C670;
      v26 = 0;
      v27 = *(v10 + 7);
      v28 = 0xFFFFFFFF >> -v27;
      v29 = (v28 + 16) & 0x1FFFFFFF0;
      v30 = v77;
      v31 = vdupq_n_s64(v28);
      v32 = xmmword_18439C760;
      v33 = xmmword_18439C750;
      v34 = xmmword_18439C740;
      v35 = xmmword_18439C730;
      v36 = xmmword_18439C720;
      v37 = xmmword_18439C710;
      v38 = xmmword_18439C700;
      do
      {
        v39 = vmovn_s64(vcgeq_u64(v31, v25));
        if (vuzp1_s8(vuzp1_s16(v39, *v31.i8), *v31.i8).u8[0])
        {
          *(v30 - 7) = v26 / v28;
        }

        if (vuzp1_s8(vuzp1_s16(v39, *&v31), *&v31).i8[1])
        {
          *(v30 - 6) = (v24 + v26) / v28;
        }

        if (vuzp1_s8(vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v31, *&v32))), *&v31).i8[2])
        {
          *(v30 - 5) = (2 * (0xFFFFFFFF >> -a4) + v26) / v28;
          *(v30 - 4) = (3 * (0xFFFFFFFF >> -a4) + v26) / v28;
        }

        v40 = vmovn_s64(vcgeq_u64(v31, v33));
        if (vuzp1_s8(*&v31, vuzp1_s16(v40, *&v31)).i32[1])
        {
          *(v30 - 3) = (4 * (0xFFFFFFFF >> -a4) + v26) / v28;
        }

        if (vuzp1_s8(*&v31, vuzp1_s16(v40, *&v31)).i8[5])
        {
          *(v30 - 2) = (5 * (0xFFFFFFFF >> -a4) + v26) / v28;
        }

        if (vuzp1_s8(*&v31, vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v31, *&v34)))).i8[6])
        {
          *(v30 - 1) = (6 * (0xFFFFFFFF >> -a4) + v26) / v28;
          *v30 = (7 * v24 + v26) / v28;
        }

        v41 = vmovn_s64(vcgeq_u64(v31, v35));
        if (vuzp1_s8(vuzp1_s16(v41, *v31.i8), *v31.i8).u8[0])
        {
          v30[1] = (8 * v24 + v26) / v28;
        }

        if (vuzp1_s8(vuzp1_s16(v41, *&v31), *&v31).i8[1])
        {
          v30[2] = (9 * (0xFFFFFFFF >> -a4) + v26) / v28;
        }

        if (vuzp1_s8(vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v31, *&v36))), *&v31).i8[2])
        {
          v30[3] = (10 * (0xFFFFFFFF >> -a4) + v26) / v28;
          v30[4] = (11 * v24 + v26) / v28;
        }

        v42 = vmovn_s64(vcgeq_u64(v31, v37));
        if (vuzp1_s8(*&v31, vuzp1_s16(v42, *&v31)).i32[1])
        {
          v30[5] = (12 * (0xFFFFFFFF >> -a4) + v26) / v28;
        }

        if (vuzp1_s8(*&v31, vuzp1_s16(v42, *&v31)).i8[5])
        {
          v30[6] = (13 * v24 + v26) / v28;
        }

        if (vuzp1_s8(*&v31, vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v31, *&v38)))).i8[6])
        {
          v30[7] = (16 * v24 - 2 * v24 + v26) / v28;
          v30[8] = (15 * v24 + v26) / v28;
        }

        v33 = vaddq_s64(v33, v72);
        v32 = vaddq_s64(v32, v72);
        v25 = vaddq_s64(v25, v72);
        v34 = vaddq_s64(v34, v72);
        v35 = vaddq_s64(v35, v72);
        v36 = vaddq_s64(v36, v72);
        v26 += 16 * (0xFFFFFFFF >> -a4);
        v37 = vaddq_s64(v37, v72);
        v30 += 16;
        v38 = vaddq_s64(v38, v72);
        v29 -= 16;
      }

      while (v29);
      if (*(v10 + 5))
      {
        break;
      }

LABEL_109:
      v23 = v75 + 1;
      if (v75 + 1 == a2)
      {
        goto LABEL_110;
      }
    }

    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = v27 * v22;
    v49 = *(v10 + 8);
    v50 = v49 - v27 * v22;
    v51 = v73;
    v52 = &v73[*(v10 + 9)];
    v53 = (a6 + v75 * v71);
    while (1)
    {
      if (v22)
      {
        v54 = 0;
        while (1)
        {
          v55 = *(v10 + 7);
          if (v55 < 0x19)
          {
            break;
          }

          if (v46 > 0x17)
          {
            v57 = v46;
          }

          else
          {
            do
            {
              v47 <<= 8;
              if (v51 < v52)
              {
                v56 = *v51++;
                v47 |= v56;
              }

              v57 = v46 + 8;
              v58 = v46 >= 0x10;
              v46 += 8;
            }

            while (!v58);
          }

          v55 -= 24;
          v46 = v57 - 24;
          v59 = ((v47 >> (v57 - 24)) & 0xFFFFFF) << v55;
          if (v55)
          {
            goto LABEL_74;
          }

LABEL_79:
          v61 = v76[v55 | v59];
          if (a4 >= 0x19)
          {
            if (v43 >= 8)
            {
              do
              {
                v43 -= 8;
                *v53++ = v45 >> v43;
              }

              while (v43 > 7);
            }

            v45 = (v61 >> (a4 - 24)) | (v45 << 24);
            v43 |= 0x18uLL;
            v62 = a4 - 24;
            do
            {
LABEL_84:
              v43 -= 8;
              *v53++ = v45 >> v43;
            }

            while (v43 > 7);
            v63 = 0xFFFFFFFF >> -v62;
            v64 = v62;
            goto LABEL_86;
          }

          v62 = a4;
          v63 = 0xFFFFFFFF >> -a4;
          v64 = a4;
          if (v43 >= 8)
          {
            goto LABEL_84;
          }

LABEL_86:
          v45 = (v45 << v64) | v63 & v61;
          v43 += v62;
          if (++v54 == v22)
          {
            goto LABEL_87;
          }
        }

        v59 = 0;
        if (!v55)
        {
          goto LABEL_79;
        }

LABEL_74:
        while (v46 < v55)
        {
          v47 <<= 8;
          if (v51 < v52)
          {
            v60 = *v51++;
            v47 |= v60;
          }

          v46 += 8;
        }

        v46 -= v55;
        LODWORD(v55) = (v47 >> v46) & (0xFFFFFFFF >> -v55);
        goto LABEL_79;
      }

LABEL_87:
      if (v49 != v48)
      {
        if (v50 >= 0x19)
        {
          if (v46 > 0x17)
          {
            v66 = v46;
          }

          else
          {
            do
            {
              v47 <<= 8;
              if (v51 < v52)
              {
                v65 = *v51++;
                v47 |= v65;
              }

              v66 = v46 + 8;
              v58 = v46 >= 0x10;
              v46 += 8;
            }

            while (!v58);
          }

          v46 = v66 - 24;
          v67 = v49 - v48 - 24;
          if (v49 - v48 == 24)
          {
            goto LABEL_104;
          }

LABEL_99:
          while (v46 < v67)
          {
            v47 <<= 8;
            if (v51 < v52)
            {
              v68 = *v51++;
              v47 |= v68;
            }

            v46 += 8;
          }

          v46 -= v67;
          goto LABEL_104;
        }

        v67 = v50;
        if (v50)
        {
          goto LABEL_99;
        }
      }

LABEL_104:
      if (++v44 >= *(v10 + 5))
      {
        for (; v43; v43 = v69 + v70)
        {
          v69 = v43;
          if (v43 >= 8)
          {
            do
            {
              v69 -= 8;
              *v53++ = v45 >> v69;
            }

            while (v69 > 7);
          }

          v70 = -v43 & 7;
          v45 <<= v70;
        }

        goto LABEL_109;
      }
    }
  }

LABEL_110:
  free(v73);
  CGAccessSessionRelease(i);
  CGDataProviderRelease(v13);
  return a2;
}

uint64_t CGImageGetCachingFlags(uint64_t result)
{
  if (result)
  {
    return *(result + 36);
  }

  return result;
}

uint64_t CGImageGetOrientation(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 38);
  }

  else
  {
    return 1;
  }
}

CGFloat CGImageGetTransformForOrientation@<D0>(uint64_t a1@<X0>, CGAffineTransform *a2@<X8>)
{
  if (a1)
  {
    return CGImageGetTransformForOrientationAndSize(*(a1 + 38), a2, *(a1 + 40), *(a1 + 48));
  }

  *a2 = CGAffineTransformIdentity;
  return CGAffineTransformIdentity.tx;
}

double CGImageGetTransformForOrientationAndSize@<D0>(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v39 = *MEMORY[0x1E69E9840];
  if ((a1 - 9) <= 0xFFFFFFF7)
  {
    v5 = "Invalid orientation parameter";
LABEL_7:
    CGLog(1, "%s %s", "CGImageGetTransformForOrientationAndSize", v5);
    *a2 = CGAffineTransformIdentity;
    *&v7 = CGAffineTransformIdentity.tx;
    return *&v7;
  }

  if (a3 == 0.0 || a4 == 0.0)
  {
    v5 = "Invalid size parameter";
    goto LABEL_7;
  }

  v10[0] = 0x3FF0000000000000;
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = 0x3FF0000000000000;
  v10[4] = 0;
  v10[5] = 0;
  v10[6] = 0xBFF0000000000000;
  v10[7] = 0;
  v10[8] = 0;
  v10[9] = 0x3FF0000000000000;
  *&v10[10] = a3;
  v11 = xmmword_18439CA00;
  v12 = 0;
  v13 = 0;
  v14 = 0xBFF0000000000000;
  v15 = a3;
  v16 = a4;
  v18 = 0;
  v19 = 0;
  v17 = 0x3FF0000000000000;
  v20 = xmmword_18439CA10;
  v21 = a4;
  v22 = xmmword_18439CA00;
  v23 = xmmword_18439CA10;
  v24 = a4;
  v25 = a3;
  v26 = xmmword_18439CA00;
  v28 = 0;
  v29 = 0;
  v27 = 0x3FF0000000000000;
  v30 = a3;
  v31 = xmmword_18439C780;
  v33 = 0u;
  v34 = 0u;
  v32 = 0x3FF0000000000000;
  v35 = 0x3FF0000000000000;
  v36 = xmmword_18439CA10;
  v37 = a4;
  v38 = 0;
  v6 = &v10[6 * (a1 - 1)];
  v7 = v6[1];
  v8 = v6[2];
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  *a2 = *v6;
  return *&v7;
}

double CGImageGetSizeAfterOrientation(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  result = *(a1 + 40);
  if (*(a1 + 38) << 16 > 0x40000u)
  {
    return *(a1 + 48);
  }

  return result;
}

uint64_t CGClassifyRectilinearTransform(_OWORD *a1)
{
  v1 = a1[1];
  *&v6.a = *a1;
  *&v6.c = v1;
  *&v6.tx = a1[2];
  memset(&v7, 0, sizeof(v7));
  CGAffineTransformDecompose(&v7, &v6);
  v2 = (v7.rotation + v7.rotation) / 3.14159265;
  v3 = v2;
  v4 = rintf(v3);
  if (vabdd_f64(v2, v4) <= 1.42108547e-14 && fabs(v7.horizontalShear) <= 1.42108547e-14)
  {
    return CGClassifyRectilinearTransform_rotations[2 * (v4 & 3) + (v7.scale.width < 0.0)];
  }

  else
  {
    return 0;
  }
}

const void *CGImageGetColorConversionInfoOptions(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 224)) != 0)
  {
    return CGPropertiesGetProperty(v1, @"kCGColorConversionInfoOptions");
  }

  else
  {
    return 0;
  }
}

const void *CGImageGetColorConversionInfoPayload(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 224)) != 0)
  {
    return CGPropertiesGetProperty(v1, @"kCGColorConversionInfoPayload");
  }

  else
  {
    return 0;
  }
}

CFStringRef CGImageCreateFileNameForBufferReader(CGImage *a1, char *__s)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    return 0;
  }

  v4 = strlen(__s);
  __strlcpy_chk();
  v5 = filename_ends_with_br2_extension(__s);
  if (v5)
  {
    v23[v4 - 4] = 0;
  }

  ColorSpace = CGImageGetColorSpace(a1);
  ID = CGColorSpaceGetID(ColorSpace);
  Model = CGColorSpaceGetModel(ColorSpace);
  BitmapInfo = CGImageGetBitmapInfo(a1);
  if (CGImageGetPixelFormatInfo(a1) == kCGImagePixelFormatRGBCIF10 && CGImageGetMask(a1))
  {
    v10 = BitmapInfo & 0xFFFFFFE0;
    Matte = CGImageGetMatte(a1);
    if (!Matte)
    {
      BitmapInfo = v10 | 9;
      if (a1)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

    v12 = Matte[1];
    v13 = Matte[2];
    if (*Matte != 0.0 || v12 != 0.0 || v13 != 0.0)
    {
      _CGHandleAssert("CGImageCreateFileNameForBufferReader", 4362, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImage.c", "matte[0] == 0.0 && matte[1] == 0.0 && matte[2] == 0.0", "matte: {%f, %f, %f}", *Matte, v12, v13);
    }

    BitmapInfo = v10 | 8;
  }

  if (a1)
  {
LABEL_12:
    v15 = *(a1 + 6);
    v14 = *(a1 + 7);
    if (ID)
    {
      Model = ID;
      v16 = "ID";
    }

    else
    {
      v16 = "";
    }

    v17 = *(a1 + 9);
    v18 = *(a1 + 5);
    HeadroomInfo = CGImageGetHeadroomInfo(a1, 0);
    goto LABEL_21;
  }

LABEL_17:
  if (ID)
  {
    Model = ID;
    v16 = "ID";
  }

  else
  {
    v16 = "";
  }

  HeadroomInfo = CGImageGetHeadroomInfo(0, 0);
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v14 = 0;
LABEL_21:
  v20 = snprintf(__str, 0x400uLL, "%s_w=%ld,h=%ld,rb=%ld,cs%s=%ld,bpc=%ld,hr=%.4g,bmi=0x%08X", v23, v18, v15, v17, v16, Model, v14, HeadroomInfo, BitmapInfo);
  if (v20 >= 1025)
  {
    CGPostError("Failed to format string because name is too long");
    return 0;
  }

  if (v20 < 0)
  {
    CGPostError("snprintf failed");
    return 0;
  }

  if (v5)
  {
    __strlcat_chk();
  }

  return CFStringCreateWithCString(*MEMORY[0x1E695E480], __str, 0x8000100u);
}

const char *filename_ends_with_br2_extension(const char *result)
{
  if (result)
  {
    v1 = result;
    v2 = strlen(result);
    if (v2 < 4)
    {
      return 0;
    }

    else
    {
      return (strcmp(&v1[v2 - 4], ".br2") == 0);
    }
  }

  return result;
}

void CGImageDumpToFile(unint64_t result, char *a2)
{
  v74 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return;
  }

  v2 = a2;
  if (!a2 || strlen(a2) < 3)
  {
    return;
  }

  bzero(__str, 0x401uLL);
  v4 = CFGetTypeID(result);
  if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
  {
    dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
  }

  if (v4 != CGImageGetTypeID_image_type_id)
  {
    CGLog(1, "%s %s %s", "CGImageDumpToFile", "failed to save", v2);
    return;
  }

  v5 = *v2;
  if ((v5 & 0xFE) == 0x2A && v2[1] == 47)
  {
    if (CGGetTempDirPath_predicate != -1)
    {
      dispatch_once(&CGGetTempDirPath_predicate, &__block_literal_global_119);
    }

    v65 = v2 + 2;
    v2 = __str;
    snprintf(__str, 0x400uLL, "%s%s", &CGGetTempDirPath_tempDirPath, v65);
  }

  bzero(__s, 0x400uLL);
  bzero(&__to, 0x400uLL);
  if (strlen(v2) >= 5 && filename_ends_with_br2_extension(v2) && !strstr(v2, "w=") && (FileNameForBufferReader = CGImageCreateFileNameForBufferReader(result, v2)) != 0)
  {
    v31 = FileNameForBufferReader;
    p_to = __s;
    CFStringGetCString(FileNameForBufferReader, __s, 1024, 0x8000100u);
    CFRelease(v31);
  }

  else
  {
    p_to = 0;
  }

  if (*(result + 208))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"kCGImageBlockSingletonRequest", *MEMORY[0x1E695E4D0]);
    v8 = CGImageProviderCopyImageBlockSetWithOptions(*(result + 208), Mutable);
    if (!v8)
    {
      v8 = CGImageProviderCopyImageBlockSetWithOptions(*(result + 208), 0);
      if (!v8)
      {
        v32 = CGImageProviderCopyIOSurface(*(result + 208));
        if (v32)
        {
          v33 = v32;
          if (IOSurfaceGetPixelFormat(v32) == 1279340600)
          {
            BytesPerRow = IOSurfaceGetBytesPerRow(v33);
            Height = IOSurfaceGetHeight(v33);
            if (!IOSurfaceLock(v33, 1u, 0))
            {
              BaseAddress = IOSurfaceGetBaseAddress(v33);
              if (p_to)
              {
                v38 = p_to;
              }

              else
              {
                v38 = v2;
              }

              v39 = open(v38, 1538, 511);
              if (v39 != -1)
              {
                v40 = v39;
                v41 = Height * BytesPerRow;
                v42 = write(v39, BaseAddress, v41);
                close(v40);
                IOSurfaceUnlock(v33, 1u, 0);
                CFRelease(v33);
                CFRelease(Mutable);
                if (v42 > -1 && v42 == v41)
                {
                  goto LABEL_51;
                }

                goto LABEL_61;
              }

              IOSurfaceUnlock(v33, 1u, 0);
            }
          }

          CFRelease(v33);
        }

        CFRelease(Mutable);
        goto LABEL_61;
      }
    }

    v9 = v8;
    if (*(v8 + 120) == 1)
    {
      v10 = *(v8 + 128);
      if (v10)
      {
        v11 = p_to ? p_to : v2;
        v12 = fopen(v11, "w");
        if (v12)
        {
          v13 = v12;
          v14 = *v10;
          if (*v10)
          {
            __s1 = v11;
            v15 = *(v10 + 40);
            v16 = ((*(v10 + 24) * *(result + 64) + 7.0) * 0.125 + (*(v10 + 32) + -1.0) * v15);
            v17 = fwrite(v14, 1uLL, v16, v13);
            fclose(v13);
            if (v17 == v16)
            {
              v18 = *(result + 72);
              if (v15 == v18 || (v69 = 0u, v70 = 0u, *__s2 = 0u, v68 = 0u, snprintf(__s2, 0x3FuLL, "rb=%zu", v18), !strstr(__s1, __s2)))
              {
                v20 = 1;
              }

              else
              {
                strlen(__s2);
                __to.__pn_.__r_.__value_.__s.__data_[0] = 0;
                __strncat_chk();
                snprintf(__s2, 0x3FuLL, "rb=%zu", v15);
                strlen(&__to);
                __strncat_chk();
                strlen(&__to);
                __strncat_chk();
                rename(__s1, &__to, v19);
                v20 = 0;
                if (!v21)
                {
                  snprintf(__s, 0x400uLL, "%s", &__to);
                  v20 = 1;
                  p_to = &__to;
                }
              }

LABEL_50:
              CGImageBlockSetRelease(v9);
              CFRelease(Mutable);
              if (v20)
              {
                goto LABEL_51;
              }

              goto LABEL_61;
            }
          }

          else
          {
            fclose(v13);
          }
        }
      }
    }

    v20 = 0;
    goto LABEL_50;
  }

  if (*(result + 152))
  {
    v22 = malloc_type_calloc(*(result + 72), *(result + 48), 0x5513CC8EuLL);
    if (v22)
    {
      v23 = v22;
      v24 = CGAccessSessionCreate(*(result + 152));
      CGAccessSessionGetBytes(v24, v23, *(result + 48) * *(result + 72));
      CGAccessSessionRelease(v24);
      if (p_to)
      {
        v25 = p_to;
      }

      else
      {
        v25 = v2;
      }

      v26 = fopen(v25, "w");
      if (v26)
      {
        v27 = v26;
        v28 = fwrite(v23, *(result + 48), *(result + 72), v26);
        v29 = *(result + 72);
        fclose(v27);
        free(v23);
        if (v28 == v29)
        {
LABEL_51:
          v36 = "saved";
          goto LABEL_62;
        }
      }

      else
      {
        free(v23);
      }
    }
  }

LABEL_61:
  v36 = "failed to save";
LABEL_62:
  if (p_to)
  {
    v44 = p_to;
  }

  else
  {
    v44 = v2;
  }

  CGLog(1, "%s %s %s", "CGImageDumpToFile", v36, v44);
  ColorSpace = CGImageGetColorSpace(result);
  v46 = ColorSpace;
  if (v5 == 43)
  {
    v47 = strstr(__s, ".br2");
    if (v47)
    {
      snprintf(v47, __s - v47 + 1024, ".cs");
      v48 = CGColorSpaceCopyPropertyList(v46);
      if (!v48)
      {
        p_to = __s;
        goto LABEL_80;
      }

      v49 = v48;
      Data = CFPropertyListCreateData(*MEMORY[0x1E695E480], v48, kCFPropertyListXMLFormat_v1_0, 0, 0);
      p_to = __s;
      v51 = fopen(__s, "w");
      if (!v51)
      {
        goto LABEL_78;
      }

      v52 = v51;
      BytePtr = CFDataGetBytePtr(Data);
      Length = CFDataGetLength(Data);
      v55 = BytePtr;
      v56 = 1;
      goto LABEL_76;
    }
  }

  else if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelIndexed)
  {
    v57 = CGColorSpaceCopyColorTable(v46);
    if (v57)
    {
      v49 = v57;
      v58 = strstr(__s, ".br2");
      if (!v58)
      {
        v58 = strstr(__s, ".cs");
        if (!v58)
        {
          goto LABEL_78;
        }
      }

      snprintf(v58, __s - v58 + 1024, ".pal");
      v59 = fopen(__s, "w");
      if (!v59)
      {
LABEL_77:
        p_to = __s;
LABEL_78:
        CFRelease(v49);
        goto LABEL_80;
      }

      v52 = v59;
      v60 = CFDataGetLength(v49);
      v55 = CFDataGetBytePtr(v49);
      Length = 1;
      v56 = v60;
LABEL_76:
      fwrite(v55, Length, v56, v52);
      fclose(v52);
      goto LABEL_77;
    }
  }

LABEL_80:
  if (CGImageGetMask(result))
  {
    Mask = CGImageGetMask(result);
    v62 = strstr(p_to, "w=");
    if (v62)
    {
      snprintf(v62, __s - v62 + 1024, "(alpha).br2");
      v63 = CGImageCreateFileNameForBufferReader(Mask, p_to);
      if (v63)
      {
        v64 = v63;
        CFStringGetCString(v63, __s, 1024, 0x8000100u);
        CFRelease(v64);
        CGImageDumpToFile(Mask, __s);
      }
    }
  }
}

uint64_t CGImageWriteToFile(const void *a1, char *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  memset(__dst, 0, 7);
  bzero(__str, 0x401uLL);
  v4 = 0;
  if (a1 && a2)
  {
    v5 = CFGetTypeID(a1);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v5 == CGImageGetTypeID_image_type_id)
    {
      if (*a2 == 42 && a2[1] == 47)
      {
        if (CGGetTempDirPath_predicate != -1)
        {
          dispatch_once(&CGGetTempDirPath_predicate, &__block_literal_global_119);
        }

        v23 = a2 + 2;
        a2 = __str;
        snprintf(__str, 0x400uLL, "%s%s", &CGGetTempDirPath_tempDirPath, v23);
      }

      v6 = strrchr(a2, 46);
      if (v6)
      {
        v7 = v6;
        v8 = strlen(v6);
        if (v8 <= 5)
        {
          v9 = v8;
          strncpy(__dst, v7, 6uLL);
          if (v9 >= 2)
          {
            v10 = v9 - 1;
            v11 = &__dst[1];
            do
            {
              *v11 = __tolower(*v11);
              ++v11;
              --v10;
            }

            while (v10);
          }
        }
      }

      if (!(*__dst ^ 0x6669742E | __dst[4]) || (*__dst == 1718187054 ? (v12 = *&__dst[4] == 102) : (v12 = 0), v12))
      {
        v16 = @"public.tiff";
      }

      else if (!(*__dst ^ 0x67706A2E | __dst[4]) || (*__dst == 1701866030 ? (v13 = *&__dst[4] == 103) : (v13 = 0), v13))
      {
        v16 = @"public.jpeg";
      }

      else
      {
        if (*__dst ^ 0x676E702E | __dst[4])
        {
          if (*__dst ^ 0x6664702E | __dst[4])
          {
            v27 = 0;
            v26 = 0;
            strncpy(__s, a2, 0x3FCuLL);
            strcat(__s, ".pdf");
            v14 = __s;
            v15 = a1;
          }

          else
          {
            v15 = a1;
            v14 = a2;
          }

          if (write_to_pdf_context(v15, v14))
          {
LABEL_48:
            v21 = "saved";
            v4 = 1;
            goto LABEL_49;
          }

          goto LABEL_43;
        }

        v16 = @"public.png";
      }

      v17 = strlen(a2);
      v4 = CFURLCreateFromFileSystemRepresentation(0, a2, v17, 0);
      if (!v4)
      {
LABEL_44:
        v21 = "failed to save";
LABEL_49:
        CGLog(1, "%s %s %s", "CGImageWriteToFile", v21, a2);
        return v4;
      }

      if (CGImageWriteToFile_predicate != -1)
      {
        dispatch_once(&CGImageWriteToFile_predicate, &__block_literal_global_246);
      }

      v18 = CGImageWriteToFile_f(v4, v16, 1, 0);
      if (v18)
      {
        v19 = v18;
        if (CGImageWriteToFile_predicate_249 != -1)
        {
          dispatch_once(&CGImageWriteToFile_predicate_249, &__block_literal_global_252);
        }

        CGImageWriteToFile_f_248(v19, a1, 0);
        if (CGImageWriteToFile_predicate_254 != -1)
        {
          dispatch_once(&CGImageWriteToFile_predicate_254, &__block_literal_global_257_5414);
        }

        v20 = CGImageWriteToFile_f_253(v19);
        CFRelease(v19);
        CFRelease(v4);
        if (v20)
        {
          goto LABEL_48;
        }
      }

      else
      {
        CFRelease(v4);
      }

LABEL_43:
      v4 = 0;
      goto LABEL_44;
    }

    return 0;
  }

  return v4;
}

BOOL write_to_pdf_context(uint64_t a1, char *cStr)
{
  v3 = vcvtq_f64_u64(*(a1 + 40));
  v7.origin.x = 0.0;
  v7.origin.y = 0.0;
  v7.size = v3;
  v4 = CGPDFContextCreateWithFilename(cStr, &v7, 0);
  v5 = v4;
  if (v4)
  {
    CGContextBeginPage(v4, 0);
    CGContextDrawImage(v5, v7, a1);
    CGContextEndPage(v5);
    CFRelease(v5);
  }

  return v5 != 0;
}

void *__CGImageWriteToFile_block_invoke_2()
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

  CGImageWriteToFile_f_248 = result;
  return result;
}

void *__CGImageWriteToFile_block_invoke()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageDestinationCreateWithURL");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageDestinationCreateWithURL");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageDestinationCreateWithURL", v0);
  }

  CGImageWriteToFile_f = result;
  return result;
}

uint64_t CGImageCreateMaskFromAlpha(uint64_t a1)
{
  v1 = a1;
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((*(a1 + 39) & 4) != 0)
    {
      v2 = *(a1 + 64);
      if (*(a1 + 56) == 8 && v2 == 32)
      {
        v3 = *(a1 + 152);
        if (v3)
        {
          goto LABEL_8;
        }

        if (CGImageGetDataProviderInternal(a1, 0))
        {
          v3 = *(v1 + 152);
LABEL_8:
          if ((*(v1 + 32) & 0x7000) == 0x2000)
          {
            v4 = v3;
            v5 = 4;
          }

          else
          {
            if ((*(v1 + 32) & 0x7000) != 0x1000)
            {
              CGDataProviderRetain(v3);
              goto LABEL_16;
            }

            v4 = v3;
            v5 = 2;
          }

          v3 = CGDataProviderCreateWithSwappedProvider(v4, v5);
LABEL_16:
          v7 = xmmword_184562A30;
          v1 = mask_create(*(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), v3, &v7, 0, *(v1 + 32) & 0x1F);
          CGDataProviderRelease(v3);
          return v1;
        }
      }

      else
      {
        CGPostError("%s: Unsupported bitsPerComponent (%zu, must be 8) or bitsPerPixel (%zu, must be 32)", "CGImageCreateMaskFromAlpha", *(a1 + 56), v2);
      }
    }

    return 0;
  }

  return v1;
}

void CGImageGetContentAverageLightLevel(CGImage *a1)
{
  if (get_average_light_level_nits(a1, 0))
  {
    if (CGImageDefaultReferenceWhite_once != -1)
    {
      dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
    }

    v1 = CGImageDefaultReferenceWhite_media_white;
    if (CGImageDefaultReferenceWhite_media_white)
    {
      v2 = CFGetTypeID(CGImageDefaultReferenceWhite_media_white);
      if (v2 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        CFNumberGetValue(v1, kCFNumberFloatType, &valuePtr);
      }
    }
  }
}

void CGImageCalculateContentAverageLightLevel(CGImage *a1)
{
  if (get_average_light_level_nits(a1, 1))
  {
    if (CGImageDefaultReferenceWhite_once != -1)
    {
      dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
    }

    v1 = CGImageDefaultReferenceWhite_media_white;
    if (CGImageDefaultReferenceWhite_media_white)
    {
      v2 = CFGetTypeID(CGImageDefaultReferenceWhite_media_white);
      if (v2 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        CFNumberGetValue(v1, kCFNumberFloatType, &valuePtr);
      }
    }
  }
}

BOOL CGImageContainsImageSpecificToneMappingMetadata(CGImage *a1)
{
  ColorSpace = CGImageGetColorSpace(a1);

  return CGColorSpaceContainsFlexGTCInfo(ColorSpace);
}

uint64_t CGImageGetEDRHeadroomDefault()
{
  if (CGImageGetEDRHeadroomDefault_predicate != -1)
  {
    dispatch_once(&CGImageGetEDRHeadroomDefault_predicate, &__block_literal_global_267);
  }

  return CGImageGetEDRHeadroomDefault_default_headroom;
}

CFNumberRef __CGImageGetEDRHeadroomDefault_block_invoke()
{
  valuePtr = 1084072622;
  result = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  CGImageGetEDRHeadroomDefault_default_headroom = result;
  return result;
}

uint64_t CGImageDefaultMasterPeak()
{
  if (CGImageDefaultMasterPeak_once != -1)
  {
    dispatch_once(&CGImageDefaultMasterPeak_once, &__block_literal_global_273);
  }

  return CGImageDefaultMasterPeak_media_white;
}

CFNumberRef __CGImageDefaultMasterPeak_block_invoke()
{
  valuePtr = 1148846080;
  result = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  CGImageDefaultMasterPeak_media_white = result;
  return result;
}

uint64_t Wf_sample_W8(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v86 = *(result + 80);
  v88 = *(result + 88);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v11 = *(result + 152) - 8;
  v12 = *(result + 144) - 1;
  if (v5)
  {
    v13 = 0;
  }

  else
  {
    v13 = -16777216;
  }

  v14 = *(result + 260) - 1;
  v15 = *(result + 256);
  v16 = (v5 + (v15 - 1) + (v14 * v7));
  v17 = v4 + v15 + (v14 * v6) - 1;
  v87 = *(result + 64);
  v85 = *(result + 188);
  v89 = *(result + 72);
  while (1)
  {
LABEL_5:
    if (a3 >= v89)
    {
      if (a3 <= v88)
      {
        v26 = (a3 >> 22) & 0x3C0;
        v27 = 0x3FFFFFFF;
        v28 = a3;
        v29 = v87;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v88;
        v24 = v23 - a3 + (v22 >> 1);
        if (v24 < 1)
        {
          goto LABEL_43;
        }

        if (v24 >= v22)
        {
          LODWORD(v25) = 0x3FFFFFFF;
        }

        else
        {
          v25 = (*(result + 232) * v24) >> 32;
        }

        v29 = v87;
        v27 = v25 | v85;
        v28 = v23 - 0x1000000;
        v26 = 448;
      }
    }

    else
    {
      v18 = *(result + 216);
      v19 = v89 - *(result + 224);
      v20 = a3 - v19 + (v18 >> 1);
      if (v20 < 1)
      {
        goto LABEL_43;
      }

      if (v20 >= v18)
      {
        LODWORD(v21) = 0x3FFFFFFF;
      }

      else
      {
        v21 = (*(result + 232) * v20) >> 32;
      }

      v29 = v87;
      v27 = v21 | v85;
      v28 = v19 + 0x1000000;
      v26 = 512;
    }

    if (a2 >= v29)
    {
      break;
    }

    v30 = *(result + 192);
    v31 = v29 - *(result + 200);
    v32 = a2 - v31 + (v30 >> 1);
    if (v32 >= 1)
    {
      if (v32 < v30)
      {
        v27 = ((v27 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v85;
      }

      v33 = v31 + 0x1000000;
      v34 = 32;
      goto LABEL_29;
    }

LABEL_43:
    --a4;
    a2 += v10;
    a3 += v9;
    v11 += 8;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v86)
  {
    v34 = (a2 >> 26) & 0x3C;
    v33 = a2;
    goto LABEL_29;
  }

  v35 = *(result + 192);
  v36 = *(result + 200) + v86;
  v37 = v36 - a2 + (v35 >> 1);
  if (v37 < 1)
  {
    goto LABEL_43;
  }

  if (v37 < v35)
  {
    v27 = ((v27 >> 15) * (((*(result + 208) * v37) >> 32) >> 15)) | v85;
  }

  v33 = v36 - 0x1000000;
  v34 = 28;
LABEL_29:
  if (v27 < 0x400000)
  {
    goto LABEL_43;
  }

  v38 = v28 >> 32;
  v39 = v4 + v38 * v6 + (v33 >> 32);
  v40 = *(result + 32);
  if (v17 >= v39)
  {
    v41 = (v4 + v38 * v6 + (v33 >> 32));
  }

  else
  {
    v41 = v17;
  }

  if (v41 < v40)
  {
    v41 = *(result + 32);
  }

  v42 = *v41;
  if (v5)
  {
    v43 = v5 + v38 * v7 + (v33 >> 32);
    v44 = *(result + 40);
    if (v16 >= v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = v16;
    }

    if (v45 >= v44)
    {
      v44 = v45;
    }

    v42 |= *v44 << 24;
    if (!v8)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v43 = 0;
    if (!v8)
    {
      goto LABEL_47;
    }
  }

  v46 = *(v8 + (v34 | v26));
LABEL_69:
  v55 = v46 & 0xF;
  if (v55 == 1)
  {
    v79 = (v39 + SBYTE1(v46) * v6);
    if (v17 < v79)
    {
      v79 = v17;
    }

    if (v79 < v40)
    {
      v79 = v40;
    }

    v80 = *v79;
    if (v5)
    {
      v81 = (v43 + SBYTE1(v46) * v7);
      if (v16 < v81)
      {
        v81 = v16;
      }

      if (v81 < *(result + 40))
      {
        v81 = *(result + 40);
      }

      v80 |= *v81 << 24;
    }

    v42 = v42 - ((interpolate_8888_21865[HIBYTE(v46) & 3] & v42) >> ((HIBYTE(v46) & 3) + 1)) + ((interpolate_8888_21865[HIBYTE(v46) & 3] & v80) >> ((HIBYTE(v46) & 3) + 1));
  }

  else
  {
    if (v55 == 2)
    {
      v74 = (v39 + SBYTE2(v46));
      if (v17 < v74)
      {
        v74 = v17;
      }

      if (v74 < v40)
      {
        v74 = v40;
      }

      v75 = *v74;
      if (v5)
      {
        v76 = (v43 + SBYTE2(v46));
        if (v16 < v76)
        {
          v76 = v16;
        }

        if (v76 < *(result + 40))
        {
          v76 = *(result + 40);
        }

        v75 |= *v76 << 24;
      }

      v77 = (v46 >> 28) & 3;
      v78 = interpolate_8888_21865[v77];
      v71 = v77 + 1;
      v72 = v42 - ((v78 & v42) >> v71);
      v73 = v78 & v75;
    }

    else
    {
      if (v55 != 3)
      {
        goto LABEL_47;
      }

      v82 = HIBYTE(v46) & 3;
      v56 = (v39 + SBYTE2(v46));
      if (v17 < v56)
      {
        v56 = v17;
      }

      if (v56 < v40)
      {
        v56 = v40;
      }

      v57 = *v56;
      v58 = (v39 + SBYTE1(v46) * v6);
      if (v17 >= v58)
      {
        v59 = v58;
      }

      else
      {
        v59 = v17;
      }

      if (v59 < v40)
      {
        v59 = v40;
      }

      v84 = *v59;
      v60 = &v58[SBYTE2(v46)];
      if (v17 < v60)
      {
        v60 = v17;
      }

      if (v60 < v40)
      {
        v60 = v40;
      }

      v83 = *v60;
      if (v5)
      {
        v61 = (v43 + SBYTE2(v46));
        v62 = *(result + 40);
        if (v16 < v61)
        {
          v61 = v16;
        }

        if (v61 < v62)
        {
          v61 = *(result + 40);
        }

        v57 |= *v61 << 24;
        v63 = v43 + SBYTE1(v46) * v7;
        if (v16 >= v63)
        {
          v64 = (v43 + SBYTE1(v46) * v7);
        }

        else
        {
          v64 = v16;
        }

        if (v64 < v62)
        {
          v64 = *(result + 40);
        }

        v84 |= *v64 << 24;
        v65 = (v63 + SBYTE2(v46));
        if (v16 < v65)
        {
          v65 = v16;
        }

        if (v65 < v62)
        {
          v65 = *(result + 40);
        }

        v83 |= *v65 << 24;
      }

      v66 = interpolate_8888_21865[v82];
      v67 = v42 - ((v66 & v42) >> (v82 + 1)) + ((v66 & v84) >> (v82 + 1));
      v68 = v57 - ((v66 & v57) >> (v82 + 1)) + ((v66 & v83) >> (v82 + 1));
      v69 = (v46 >> 28) & 3;
      v70 = interpolate_8888_21865[v69];
      v71 = v69 + 1;
      v72 = v67 - ((v67 & v70) >> v71);
      v73 = v68 & v70;
    }

    v42 = v72 + (v73 >> v71);
  }

LABEL_47:
  *(v11 + 8) = _blt_float[v42];
  *(v11 + 12) = _blt_float[(v42 | v13) >> 24];
  *(v12 + 1) = v27 >> 22;
  if (a4 != 1)
  {
    v47 = 0;
    v48 = (v11 + 20);
    a2 += v10;
    v49 = v86 - a2;
    a3 += v9;
    v50 = v88 - a3;
    while ((((a2 - v87) | v49 | (a3 - v89) | v50) & 0x8000000000000000) == 0)
    {
      v39 = v4 + SHIDWORD(a3) * v6 + (a2 >> 32);
      v40 = *(result + 32);
      if (v17 >= v39)
      {
        v51 = (v4 + SHIDWORD(a3) * v6 + (a2 >> 32));
      }

      else
      {
        v51 = v17;
      }

      if (v51 < v40)
      {
        v51 = *(result + 32);
      }

      v42 = *v51;
      if (v5)
      {
        v43 = v5 + SHIDWORD(a3) * v7 + (a2 >> 32);
        v52 = *(result + 40);
        if (v16 >= v43)
        {
          v53 = v5 + SHIDWORD(a3) * v7 + (a2 >> 32);
        }

        else
        {
          v53 = v16;
        }

        if (v53 >= v52)
        {
          v52 = v53;
        }

        v42 |= *v52 << 24;
      }

      if (v8)
      {
        v46 = *(v8 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
        if ((v46 & 0xF) != 0)
        {
          v12 += v47 + 1;
          v11 = (v48 - 3);
          a4 += ~v47;
          v27 = -1;
          goto LABEL_69;
        }
      }

      *(v48 - 1) = _blt_float[v42];
      *v48 = _blt_float[(v42 | v13) >> 24];
      v48 += 2;
      v54 = v12 + v47++;
      a2 += v10;
      *(v54 + 2) = -1;
      v49 -= v10;
      a3 += v9;
      v50 -= v9;
      if (a4 - 1 == v47)
      {
        return result;
      }
    }

    v12 += v47 + 1;
    v11 = (v48 - 3);
    a4 += ~v47;
    if (a4)
    {
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t Wf_sample_W16(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v90 = *(result + 80);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v11 = *(result + 152) - 8;
  v92 = *(result + 88);
  v93 = *(result + 144) - 1;
  if (v5)
  {
    v12 = 0;
  }

  else
  {
    v12 = -65536;
  }

  v13 = *(result + 260) - 1;
  v14 = *(result + 256);
  v15 = v5 + (v13 * v7) + 2 * (v14 - 1);
  v16 = v4 + (v13 * v6) + 2 * v14 - 2;
  v88 = *(result + 188);
  v91 = *(result + 72);
  v89 = *(result + 64);
  while (1)
  {
LABEL_5:
    if (a3 >= v91)
    {
      if (a3 <= v92)
      {
        v25 = (a3 >> 22) & 0x3C0;
        v26 = 0x3FFFFFFF;
        v27 = a3;
        v28 = v89;
      }

      else
      {
        v21 = *(result + 216);
        v22 = *(result + 224) + v92;
        v23 = v22 - a3 + (v21 >> 1);
        if (v23 < 1)
        {
          goto LABEL_43;
        }

        if (v23 >= v21)
        {
          LODWORD(v24) = 0x3FFFFFFF;
        }

        else
        {
          v24 = (*(result + 232) * v23) >> 32;
        }

        v28 = v89;
        v26 = v24 | v88;
        v27 = v22 - 0x1000000;
        v25 = 448;
      }
    }

    else
    {
      v17 = *(result + 216);
      v18 = v91 - *(result + 224);
      v19 = a3 - v18 + (v17 >> 1);
      if (v19 < 1)
      {
        goto LABEL_43;
      }

      if (v19 >= v17)
      {
        LODWORD(v20) = 0x3FFFFFFF;
      }

      else
      {
        v20 = (*(result + 232) * v19) >> 32;
      }

      v28 = v89;
      v26 = v20 | v88;
      v27 = v18 + 0x1000000;
      v25 = 512;
    }

    if (a2 >= v28)
    {
      break;
    }

    v29 = *(result + 192);
    v30 = v28 - *(result + 200);
    v31 = a2 - v30 + (v29 >> 1);
    if (v31 >= 1)
    {
      if (v31 < v29)
      {
        v26 = ((v26 >> 15) * (((*(result + 208) * v31) >> 32) >> 15)) | v88;
      }

      v32 = v30 + 0x1000000;
      v33 = 32;
      goto LABEL_29;
    }

LABEL_43:
    --a4;
    a2 += v10;
    a3 += v9;
    v11 += 8;
    *++v93 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v90)
  {
    v33 = (a2 >> 26) & 0x3C;
    v32 = a2;
    goto LABEL_29;
  }

  v34 = *(result + 192);
  v35 = *(result + 200) + v90;
  v36 = v35 - a2 + (v34 >> 1);
  if (v36 < 1)
  {
    goto LABEL_43;
  }

  if (v36 < v34)
  {
    v26 = ((v26 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v88;
  }

  v32 = v35 - 0x1000000;
  v33 = 28;
LABEL_29:
  if (v26 < 0x400000)
  {
    goto LABEL_43;
  }

  v37 = v27 >> 32;
  v38 = v4 + v37 * v6;
  v39 = (v32 >> 31) & 0xFFFFFFFFFFFFFFFELL;
  v40 = v38 + v39;
  v41 = *(result + 32);
  if (v16 >= v38 + v39)
  {
    v42 = (v38 + v39);
  }

  else
  {
    v42 = v16;
  }

  if (v42 < v41)
  {
    v42 = *(result + 32);
  }

  v43 = bswap32(*v42) >> 16;
  if (!v5)
  {
    v44 = 0;
    if (!v8)
    {
      goto LABEL_47;
    }

LABEL_46:
    v47 = *(v8 + (v33 | v25));
LABEL_68:
    v57 = v47 & 0xF;
    v58 = HIBYTE(v47) & 3;
    switch(v57)
    {
      case 1:
        v82 = (v40 + SBYTE1(v47) * v6);
        if (v16 < v82)
        {
          v82 = v16;
        }

        if (v82 < v41)
        {
          v82 = v41;
        }

        v83 = bswap32(*v82) >> 16;
        if (v5)
        {
          v84 = (v44 + SBYTE1(v47) * v7);
          if (v15 < v84)
          {
            v84 = v15;
          }

          if (v84 < *(result + 40))
          {
            v84 = *(result + 40);
          }

          v83 |= bswap32(*v84) & 0xFFFF0000;
        }

        v85 = interpolate_1616[v58];
        v86 = v58 + 1;
        v77 = v43 - ((v85 & v43) >> v86);
        v78 = (v85 & v83) >> v86;
        break;
      case 2:
        v79 = (v40 + 2 * SBYTE2(v47));
        if (v16 < v79)
        {
          v79 = v16;
        }

        if (v79 < v41)
        {
          v79 = v41;
        }

        v80 = bswap32(*v79) >> 16;
        if (v5)
        {
          v81 = (v44 + 2 * SBYTE2(v47));
          if (v15 < v81)
          {
            v81 = v15;
          }

          if (v81 < *(result + 40))
          {
            v81 = *(result + 40);
          }

          v80 |= bswap32(*v81) & 0xFFFF0000;
        }

        v43 = v43 - ((interpolate_1616[(v47 >> 28) & 3] & v43) >> (((v47 >> 28) & 3) + 1)) + ((interpolate_1616[(v47 >> 28) & 3] & v80) >> (((v47 >> 28) & 3) + 1));
        goto LABEL_47;
      case 3:
        v87 = HIBYTE(v47) & 3;
        v59 = (v40 + 2 * SBYTE2(v47));
        if (v16 < v59)
        {
          v59 = v16;
        }

        if (v59 < v41)
        {
          v59 = v41;
        }

        v60 = bswap32(*v59) >> 16;
        v61 = v40 + SBYTE1(v47) * v6;
        if (v16 >= v61)
        {
          v62 = (v40 + SBYTE1(v47) * v6);
        }

        else
        {
          v62 = v16;
        }

        if (v62 < v41)
        {
          v62 = v41;
        }

        v63 = bswap32(*v62) >> 16;
        v64 = (v61 + 2 * SBYTE2(v47));
        if (v16 < v64)
        {
          v64 = v16;
        }

        if (v64 < v41)
        {
          v64 = v41;
        }

        v65 = bswap32(*v64) >> 16;
        if (v5)
        {
          v66 = 2 * SBYTE2(v47);
          v67 = (v44 + v66);
          v68 = *(result + 40);
          if (v15 < v44 + v66)
          {
            v67 = v15;
          }

          if (v67 < v68)
          {
            v67 = *(result + 40);
          }

          v60 |= bswap32(*v67) & 0xFFFF0000;
          v69 = v44 + SBYTE1(v47) * v7;
          if (v15 >= v69)
          {
            v70 = (v44 + SBYTE1(v47) * v7);
          }

          else
          {
            v70 = v15;
          }

          if (v70 < v68)
          {
            v70 = *(result + 40);
          }

          v63 |= bswap32(*v70) & 0xFFFF0000;
          v71 = (v69 + v66);
          if (v15 < v71)
          {
            v71 = v15;
          }

          if (v71 < v68)
          {
            v71 = *(result + 40);
          }

          v65 |= bswap32(*v71) & 0xFFFF0000;
        }

        v72 = interpolate_1616[v87];
        v73 = v43 - ((v72 & v43) >> (v87 + 1)) + ((v72 & v63) >> (v87 + 1));
        v74 = v60 - ((v72 & v60) >> (v87 + 1)) + ((v72 & v65) >> (v87 + 1));
        v75 = (v47 >> 28) & 3;
        v76 = interpolate_1616[v75];
        LOBYTE(v75) = v75 + 1;
        v77 = v73 - ((v73 & v76) >> v75);
        v78 = (v74 & v76) >> v75;
        break;
      default:
        goto LABEL_47;
    }

    v43 = v77 + v78;
    goto LABEL_47;
  }

  v44 = v5 + v37 * v7 + v39;
  v45 = *(result + 40);
  if (v15 >= v44)
  {
    v46 = v44;
  }

  else
  {
    v46 = v15;
  }

  if (v46 >= v45)
  {
    v45 = v46;
  }

  v43 |= bswap32(*v45) & 0xFFFF0000;
  if (v8)
  {
    goto LABEL_46;
  }

LABEL_47:
  v48 = 0;
  v49 = v26 >> 22;
  a2 += v10;
  v50 = v90 - a2;
  v51 = (v11 + 12);
  a3 += v9;
  v52 = v92 - a3;
  while (1)
  {
    *(v51 - 1) = *&_blt_float[v43 | 0x100] + *&_blt_float[BYTE1(v43) | 0x200];
    *v51 = *&_blt_float[((v43 | v12) >> 16) | 0x100] + *&_blt_float[((v43 | v12) >> 24) | 0x200];
    *(v93 + 1 + v48) = v49;
    if (a4 - 1 == v48)
    {
      return result;
    }

    if (((v52 | v50 | (a3 - v91) | (a2 - v89)) & 0x8000000000000000) != 0)
    {
      v93 += v48 + 1;
      v11 = (v51 - 1);
      a4 += ~v48;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v53 = (a2 >> 31) & 0xFFFFFFFFFFFFFFFELL;
    v40 = v4 + SHIDWORD(a3) * v6 + v53;
    v41 = *(result + 32);
    if (v16 >= v40)
    {
      v54 = (v4 + SHIDWORD(a3) * v6 + v53);
    }

    else
    {
      v54 = v16;
    }

    if (v54 < v41)
    {
      v54 = *(result + 32);
    }

    v43 = bswap32(*v54) >> 16;
    if (v5)
    {
      v44 = v5 + SHIDWORD(a3) * v7 + v53;
      v55 = *(result + 40);
      if (v15 >= v44)
      {
        v56 = v44;
      }

      else
      {
        v56 = v15;
      }

      if (v56 >= v55)
      {
        v55 = v56;
      }

      v43 |= bswap32(*v55) & 0xFFFF0000;
    }

    if (v8)
    {
      v47 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v47 & 0xF) != 0)
      {
        v93 += v48 + 1;
        v11 = (v51 - 1);
        a4 += ~v48;
        v26 = -1;
        goto LABEL_68;
      }
    }

    ++v48;
    v50 -= v10;
    v51 += 2;
    a3 += v9;
    v52 -= v9;
    a2 += v10;
    LOBYTE(v49) = -1;
  }
}

uint64_t Wf_sample_w16(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v90 = *(result + 80);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v11 = *(result + 152) - 8;
  v92 = *(result + 88);
  v93 = *(result + 144) - 1;
  if (v5)
  {
    v12 = 0;
  }

  else
  {
    v12 = -65536;
  }

  v13 = *(result + 260) - 1;
  v14 = *(result + 256);
  v15 = v5 + (v13 * v7) + 2 * (v14 - 1);
  v16 = v4 + (v13 * v6) + 2 * v14 - 2;
  v88 = *(result + 188);
  v91 = *(result + 72);
  v89 = *(result + 64);
  while (1)
  {
LABEL_5:
    if (a3 >= v91)
    {
      if (a3 <= v92)
      {
        v25 = (a3 >> 22) & 0x3C0;
        v26 = 0x3FFFFFFF;
        v27 = a3;
        v28 = v89;
      }

      else
      {
        v21 = *(result + 216);
        v22 = *(result + 224) + v92;
        v23 = v22 - a3 + (v21 >> 1);
        if (v23 < 1)
        {
          goto LABEL_43;
        }

        if (v23 >= v21)
        {
          LODWORD(v24) = 0x3FFFFFFF;
        }

        else
        {
          v24 = (*(result + 232) * v23) >> 32;
        }

        v28 = v89;
        v26 = v24 | v88;
        v27 = v22 - 0x1000000;
        v25 = 448;
      }
    }

    else
    {
      v17 = *(result + 216);
      v18 = v91 - *(result + 224);
      v19 = a3 - v18 + (v17 >> 1);
      if (v19 < 1)
      {
        goto LABEL_43;
      }

      if (v19 >= v17)
      {
        LODWORD(v20) = 0x3FFFFFFF;
      }

      else
      {
        v20 = (*(result + 232) * v19) >> 32;
      }

      v28 = v89;
      v26 = v20 | v88;
      v27 = v18 + 0x1000000;
      v25 = 512;
    }

    if (a2 >= v28)
    {
      break;
    }

    v29 = *(result + 192);
    v30 = v28 - *(result + 200);
    v31 = a2 - v30 + (v29 >> 1);
    if (v31 >= 1)
    {
      if (v31 < v29)
      {
        v26 = ((v26 >> 15) * (((*(result + 208) * v31) >> 32) >> 15)) | v88;
      }

      v32 = v30 + 0x1000000;
      v33 = 32;
      goto LABEL_29;
    }

LABEL_43:
    --a4;
    a2 += v10;
    a3 += v9;
    v11 += 8;
    *++v93 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v90)
  {
    v33 = (a2 >> 26) & 0x3C;
    v32 = a2;
    goto LABEL_29;
  }

  v34 = *(result + 192);
  v35 = *(result + 200) + v90;
  v36 = v35 - a2 + (v34 >> 1);
  if (v36 < 1)
  {
    goto LABEL_43;
  }

  if (v36 < v34)
  {
    v26 = ((v26 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v88;
  }

  v32 = v35 - 0x1000000;
  v33 = 28;
LABEL_29:
  if (v26 < 0x400000)
  {
    goto LABEL_43;
  }

  v37 = v27 >> 32;
  v38 = v4 + v37 * v6;
  v39 = (v32 >> 31) & 0xFFFFFFFFFFFFFFFELL;
  v40 = v38 + v39;
  v41 = *(result + 32);
  if (v16 >= v38 + v39)
  {
    v42 = (v38 + v39);
  }

  else
  {
    v42 = v16;
  }

  if (v42 < v41)
  {
    v42 = *(result + 32);
  }

  v43 = *v42;
  if (!v5)
  {
    v44 = 0;
    if (!v8)
    {
      goto LABEL_47;
    }

LABEL_46:
    v47 = *(v8 + (v33 | v25));
LABEL_68:
    v57 = v47 & 0xF;
    v58 = HIBYTE(v47) & 3;
    switch(v57)
    {
      case 1:
        v82 = (v40 + SBYTE1(v47) * v6);
        if (v16 < v82)
        {
          v82 = v16;
        }

        if (v82 < v41)
        {
          v82 = v41;
        }

        v83 = *v82;
        if (v5)
        {
          v84 = (v44 + SBYTE1(v47) * v7);
          if (v15 < v84)
          {
            v84 = v15;
          }

          if (v84 < *(result + 40))
          {
            v84 = *(result + 40);
          }

          v83 |= *v84 << 16;
        }

        v85 = interpolate_1616[v58];
        v86 = v58 + 1;
        v77 = v43 - ((v85 & v43) >> v86);
        v78 = (v85 & v83) >> v86;
        break;
      case 2:
        v79 = (v40 + 2 * SBYTE2(v47));
        if (v16 < v79)
        {
          v79 = v16;
        }

        if (v79 < v41)
        {
          v79 = v41;
        }

        v80 = *v79;
        if (v5)
        {
          v81 = (v44 + 2 * SBYTE2(v47));
          if (v15 < v81)
          {
            v81 = v15;
          }

          if (v81 < *(result + 40))
          {
            v81 = *(result + 40);
          }

          v80 |= *v81 << 16;
        }

        v43 = v43 - ((interpolate_1616[(v47 >> 28) & 3] & v43) >> (((v47 >> 28) & 3) + 1)) + ((interpolate_1616[(v47 >> 28) & 3] & v80) >> (((v47 >> 28) & 3) + 1));
        goto LABEL_47;
      case 3:
        v87 = HIBYTE(v47) & 3;
        v59 = (v40 + 2 * SBYTE2(v47));
        if (v16 < v59)
        {
          v59 = v16;
        }

        if (v59 < v41)
        {
          v59 = v41;
        }

        v60 = *v59;
        v61 = v40 + SBYTE1(v47) * v6;
        if (v16 >= v61)
        {
          v62 = (v40 + SBYTE1(v47) * v6);
        }

        else
        {
          v62 = v16;
        }

        if (v62 < v41)
        {
          v62 = v41;
        }

        v63 = *v62;
        v64 = (v61 + 2 * SBYTE2(v47));
        if (v16 < v64)
        {
          v64 = v16;
        }

        if (v64 < v41)
        {
          v64 = v41;
        }

        v65 = *v64;
        if (v5)
        {
          v66 = 2 * SBYTE2(v47);
          v67 = (v44 + v66);
          v68 = *(result + 40);
          if (v15 < v44 + v66)
          {
            v67 = v15;
          }

          if (v67 < v68)
          {
            v67 = *(result + 40);
          }

          v60 |= *v67 << 16;
          v69 = v44 + SBYTE1(v47) * v7;
          if (v15 >= v69)
          {
            v70 = (v44 + SBYTE1(v47) * v7);
          }

          else
          {
            v70 = v15;
          }

          if (v70 < v68)
          {
            v70 = *(result + 40);
          }

          v63 |= *v70 << 16;
          v71 = (v69 + v66);
          if (v15 < v71)
          {
            v71 = v15;
          }

          if (v71 < v68)
          {
            v71 = *(result + 40);
          }

          v65 |= *v71 << 16;
        }

        v72 = interpolate_1616[v87];
        v73 = v43 - ((v72 & v43) >> (v87 + 1)) + ((v72 & v63) >> (v87 + 1));
        v74 = v60 - ((v72 & v60) >> (v87 + 1)) + ((v72 & v65) >> (v87 + 1));
        v75 = (v47 >> 28) & 3;
        v76 = interpolate_1616[v75];
        LOBYTE(v75) = v75 + 1;
        v77 = v73 - ((v73 & v76) >> v75);
        v78 = (v74 & v76) >> v75;
        break;
      default:
        goto LABEL_47;
    }

    v43 = v77 + v78;
    goto LABEL_47;
  }

  v44 = v5 + v37 * v7 + v39;
  v45 = *(result + 40);
  if (v15 >= v44)
  {
    v46 = v44;
  }

  else
  {
    v46 = v15;
  }

  if (v46 >= v45)
  {
    v45 = v46;
  }

  v43 |= *v45 << 16;
  if (v8)
  {
    goto LABEL_46;
  }

LABEL_47:
  v48 = 0;
  v49 = v26 >> 22;
  a2 += v10;
  v50 = v90 - a2;
  v51 = (v11 + 12);
  a3 += v9;
  v52 = v92 - a3;
  while (1)
  {
    *(v51 - 1) = *&_blt_float[v43 | 0x100] + *&_blt_float[BYTE1(v43) | 0x200];
    *v51 = *&_blt_float[((v43 | v12) >> 16) | 0x100] + *&_blt_float[((v43 | v12) >> 24) | 0x200];
    *(v93 + 1 + v48) = v49;
    if (a4 - 1 == v48)
    {
      return result;
    }

    if (((v52 | v50 | (a3 - v91) | (a2 - v89)) & 0x8000000000000000) != 0)
    {
      v93 += v48 + 1;
      v11 = (v51 - 1);
      a4 += ~v48;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v53 = (a2 >> 31) & 0xFFFFFFFFFFFFFFFELL;
    v40 = v4 + SHIDWORD(a3) * v6 + v53;
    v41 = *(result + 32);
    if (v16 >= v40)
    {
      v54 = (v4 + SHIDWORD(a3) * v6 + v53);
    }

    else
    {
      v54 = v16;
    }

    if (v54 < v41)
    {
      v54 = *(result + 32);
    }

    v43 = *v54;
    if (v5)
    {
      v44 = v5 + SHIDWORD(a3) * v7 + v53;
      v55 = *(result + 40);
      if (v15 >= v44)
      {
        v56 = v44;
      }

      else
      {
        v56 = v15;
      }

      if (v56 >= v55)
      {
        v55 = v56;
      }

      v43 |= *v55 << 16;
    }

    if (v8)
    {
      v47 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v47 & 0xF) != 0)
      {
        v93 += v48 + 1;
        v11 = (v51 - 1);
        a4 += ~v48;
        v26 = -1;
        goto LABEL_68;
      }
    }

    ++v48;
    v50 -= v10;
    v51 += 2;
    a3 += v9;
    v52 -= v9;
    a2 += v10;
    LOBYTE(v49) = -1;
  }
}

uint64_t Wf_sample_WF_inner(uint64_t result, unint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v124 = *(result + 28);
  v5 = *(result + 112);
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6)
  {
    v123 = *(result + 112);
    if (v5 > v6)
    {
      v123 = v5 % v6;
    }
  }

  else
  {
    v123 = 0;
  }

  v8 = *(result + 176);
  v9 = *(result + 40);
  v125 = *(result + 32);
  v10 = *(result + 120);
  if (v7)
  {
    v11 = v10 % v7;
    if (v10 <= v7)
    {
      v11 = *(result + 120);
    }

    v122 = v11;
  }

  else
  {
    v122 = 0;
  }

  v118 = *(result + 80);
  v119 = *(result + 64);
  v120 = *(result + 88);
  v12 = *(result + 152) - 8;
  v13 = *(result + 144) - 1;
  v14 = *(result + 260) - 1;
  v15 = *(result + 256);
  v16 = v9 + (v14 * v124) + 4 * (v15 - 1);
  v117 = *(result + 188);
  v17 = v125 + (v14 * v4) + 4 * v15 - 4;
  v121 = *(result + 72);
  while (1)
  {
LABEL_11:
    if (a3 >= v121)
    {
      if (a3 <= v120)
      {
        v26 = 0;
        v27 = (a3 >> 22) & 0x3C0;
        v28 = 0x3FFFFFFF;
        v29 = a3;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v120;
        v24 = v23 - a3 + (v22 >> 1);
        if (v24 < 1)
        {
          goto LABEL_56;
        }

        if (v24 >= v22)
        {
          LODWORD(v25) = 0x3FFFFFFF;
        }

        else
        {
          v25 = (*(result + 232) * v24) >> 32;
        }

        v28 = v117 | v25;
        v29 = v23 - 0x1000000;
        v26 = a3 - (v23 - 0x1000000);
        v27 = 448;
      }
    }

    else
    {
      v18 = *(result + 216);
      v19 = v121 - *(result + 224);
      v20 = a3 - v19 + (v18 >> 1);
      if (v20 < 1)
      {
        goto LABEL_56;
      }

      if (v20 >= v18)
      {
        LODWORD(v21) = 0x3FFFFFFF;
      }

      else
      {
        v21 = (*(result + 232) * v20) >> 32;
      }

      v28 = v117 | v21;
      v29 = v19 + 0x1000000;
      v26 = a3 - (v19 + 0x1000000);
      v27 = 512;
    }

    if (a2 >= v119)
    {
      break;
    }

    v30 = *(result + 192);
    v31 = v119 - *(result + 200);
    v32 = a2 - v31 + (v30 >> 1);
    if (v32 >= 1)
    {
      if (v32 < v30)
      {
        v28 = ((v28 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v117;
      }

      v33 = v31 + 0x1000000;
      v34 = a2 - (v31 + 0x1000000);
      v35 = 32;
      goto LABEL_35;
    }

LABEL_56:
    --a4;
    a2 += v5;
    a3 += v10;
    v12 += 8;
    *++v13 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v118)
  {
    v34 = 0;
    v35 = (a2 >> 26) & 0x3C;
    v33 = a2;
    goto LABEL_35;
  }

  v36 = *(result + 192);
  v37 = *(result + 200) + v118;
  v38 = v37 - a2 + (v36 >> 1);
  if (v38 < 1)
  {
    goto LABEL_56;
  }

  if (v38 < v36)
  {
    v28 = ((v28 >> 15) * (((*(result + 208) * v38) >> 32) >> 15)) | v117;
  }

  v33 = v37 - 0x1000000;
  v34 = a2 - (v37 - 0x1000000);
  v35 = 28;
LABEL_35:
  if (v28 < 0x400000)
  {
    goto LABEL_56;
  }

  if (v6)
  {
    v39 = (v7 & ((v29 % v7) >> 63)) + v29 % v7;
    v40 = (v6 & ((v33 % v6) >> 63)) + v33 % v6;
    if (v39 >= v7)
    {
      v41 = v7;
    }

    else
    {
      v41 = 0;
    }

    v29 = v39 - v41;
    if (v40 >= v6)
    {
      v42 = v6;
    }

    else
    {
      v42 = 0;
    }

    v33 = v40 - v42;
    v26 += v29;
    v34 += v33;
  }

  v43 = v29 >> 32;
  v44 = v125 + SHIDWORD(v29) * v4;
  v45 = (v33 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
  v46 = (v44 + v45);
  v47 = *(result + 32);
  if (v17 >= v44 + v45)
  {
    v48 = (v44 + v45);
  }

  else
  {
    v48 = v17;
  }

  if (v48 < v47)
  {
    v48 = *(result + 32);
  }

  if (v9)
  {
    v49 = v9 + v43 * v124 + v45;
    v50 = *(result + 40);
    if (v16 >= v49)
    {
      v51 = v49;
    }

    else
    {
      v51 = v16;
    }

    if (v51 >= v50)
    {
      v50 = v51;
    }

    v52 = COERCE_FLOAT(bswap32(*v50));
  }

  else
  {
    v49 = 0;
    v52 = 1.0;
  }

  v53 = COERCE_FLOAT(bswap32(*v48));
  if (v8)
  {
    v54 = *(v8 + (v35 | v27));
LABEL_93:
    v74 = v54 & 0xF;
    v75 = v54 >> 8;
    v76 = HIBYTE(v54) & 3;
    if (v74 == 1)
    {
      LODWORD(v110) = SBYTE1(v54);
      if (v6)
      {
        v111 = v26 + (SBYTE1(v54) << 32);
        v112 = v7 & (v111 >> 63);
        if (v112 + v111 >= v7)
        {
          v113 = v7;
        }

        else
        {
          v113 = 0;
        }

        v110 = (v112 + (v75 << 32) - v113) >> 32;
      }

      v114 = (v46 + v110 * v4);
      if (v17 < v114)
      {
        v114 = v17;
      }

      if (v114 < v47)
      {
        v114 = v47;
      }

      v106 = COERCE_FLOAT(bswap32(*v114));
      v107 = 1.0;
      if (v9)
      {
        v115 = (v49 + v110 * v124);
        if (v16 < v115)
        {
          v115 = v16;
        }

        if (v115 < *(result + 40))
        {
          v115 = *(result + 40);
        }

        v107 = COERCE_FLOAT(bswap32(*v115));
      }

      v109 = &interpolate_waf[2 * v76];
    }

    else
    {
      if (v74 != 2)
      {
        if (v74 == 3)
        {
          LODWORD(v77) = SBYTE1(v54);
          v78 = SBYTE2(v54);
          if (v6)
          {
            v79 = v75 << 56;
            v80 = HIWORD(v54) << 56;
            v81 = v26 + (SBYTE1(v54) << 32);
            v82 = v34 + (v80 >> 24);
            v83 = v7 & (v81 >> 63);
            v84 = v6 & (v82 >> 63);
            v85 = v84 + v82;
            if (v83 + v81 >= v7)
            {
              v86 = v7;
            }

            else
            {
              v86 = 0;
            }

            if (v85 >= v6)
            {
              v87 = v6;
            }

            else
            {
              v87 = 0;
            }

            v77 = (v83 + (v79 >> 24) - v86) >> 32;
            v78 = (v84 + (v80 >> 24) - v87) >> 32;
          }

          v88 = &v46[v78];
          if (v17 >= v88)
          {
            v89 = &v46[v78];
          }

          else
          {
            v89 = v17;
          }

          if (v89 < v47)
          {
            v89 = v47;
          }

          v90 = COERCE_FLOAT(bswap32(*v89));
          v91 = (v88 + v77 * v4);
          if (v17 < v91)
          {
            v91 = v17;
          }

          if (v91 < v47)
          {
            v91 = v47;
          }

          v92 = COERCE_FLOAT(bswap32(*v91));
          v93 = 1.0;
          v94 = 1.0;
          if (v9)
          {
            v95 = v49 + 4 * v78;
            v96 = *(result + 40);
            if (v16 >= v95)
            {
              v97 = (v49 + 4 * v78);
            }

            else
            {
              v97 = v16;
            }

            if (v97 < v96)
            {
              v97 = *(result + 40);
            }

            v94 = COERCE_FLOAT(bswap32(*v97));
            v98 = (v95 + v77 * v124);
            if (v16 < v98)
            {
              v98 = v16;
            }

            if (v98 < v96)
            {
              v98 = *(result + 40);
            }

            v93 = COERCE_FLOAT(bswap32(*v98));
          }

          v99 = interpolate_waf[2 * v76 + 1];
          v100 = interpolate_waf[2 * ((v54 >> 28) & 3) + 1];
          v53 = (((v53 - (v53 * v99)) + (v90 * v99)) - (((v53 - (v53 * v99)) + (v90 * v99)) * v100)) + (((v90 - (v90 * v99)) + (v92 * v99)) * v100);
          v52 = (((v52 - (v52 * v99)) + (v94 * v99)) - (((v52 - (v52 * v99)) + (v94 * v99)) * v100)) + (((v94 - (v94 * v99)) + (v93 * v99)) * v100);
        }

        goto LABEL_61;
      }

      v101 = SBYTE2(v54);
      if (v6)
      {
        v102 = v34 + (SBYTE2(v54) << 32);
        v103 = v6 & (v102 >> 63);
        if (v103 + v102 >= v6)
        {
          v104 = v6;
        }

        else
        {
          v104 = 0;
        }

        v101 = (v103 + ((HIWORD(v54) << 56) >> 24) - v104) >> 32;
      }

      v105 = &v46[v101];
      if (v17 < v105)
      {
        v105 = v17;
      }

      if (v105 < v47)
      {
        v105 = v47;
      }

      v106 = COERCE_FLOAT(bswap32(*v105));
      v107 = 1.0;
      if (v9)
      {
        v108 = (v49 + 4 * v101);
        if (v16 < v108)
        {
          v108 = v16;
        }

        if (v108 < *(result + 40))
        {
          v108 = *(result + 40);
        }

        v107 = COERCE_FLOAT(bswap32(*v108));
      }

      v109 = &interpolate_waf[2 * ((v54 >> 28) & 3)];
    }

    v116 = v109[1];
    v53 = (v53 - (v53 * v116)) + (v106 * v116);
    v52 = (v52 - (v52 * v116)) + (v107 * v116);
  }

LABEL_61:
  *(v12 + 8) = v53;
  *(v12 + 12) = v52;
  *(v13 + 1) = v28 >> 22;
  if (a4 != 1)
  {
    v55 = 0;
    v56 = (v12 + 20);
    a2 += v5;
    v57 = v118 - a2;
    a3 += v10;
    v58 = v120 - a3;
    v59 = --a4;
    while (1)
    {
      v60 = v13 + v55 + 1;
      v12 = (v56 - 3);
      if (((v58 | v57 | (a3 - v121) | (a2 - v119)) & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v6)
      {
        v61 = (v7 & ((v26 + v122) >> 63)) + v26 + v122;
        v62 = (v6 & ((v34 + v123) >> 63)) + v34 + v123;
        if (v61 >= v7)
        {
          v63 = v7;
        }

        else
        {
          v63 = 0;
        }

        v26 = v61 - v63;
        if (v62 >= v6)
        {
          v64 = v6;
        }

        else
        {
          v64 = 0;
        }

        v34 = v62 - v64;
        v65 = v26;
        v66 = v34;
      }

      else
      {
        v65 = a3;
        v66 = a2;
      }

      v67 = v65 >> 32;
      v68 = (v66 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
      v46 = (v125 + SHIDWORD(v65) * v4 + v68);
      v47 = *(result + 32);
      if (v17 >= v46)
      {
        v69 = v46;
      }

      else
      {
        v69 = v17;
      }

      if (v69 < v47)
      {
        v69 = *(result + 32);
      }

      if (v9)
      {
        v49 = v9 + v67 * v124 + v68;
        v70 = *(result + 40);
        if (v16 >= v49)
        {
          v71 = v49;
        }

        else
        {
          v71 = v16;
        }

        if (v71 >= v70)
        {
          v70 = v71;
        }

        v52 = COERCE_FLOAT(bswap32(*v70));
      }

      else
      {
        v52 = 1.0;
      }

      v72 = bswap32(*v69);
      if (v8)
      {
        v54 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v54 & 0xF) != 0)
        {
          v53 = *&v72;
          v28 = -1;
          v13 = v60;
          goto LABEL_93;
        }
      }

      --a4;
      *(v56 - 1) = v72;
      *v56 = v52;
      v56 += 2;
      v73 = v13 + v55++;
      a2 += v5;
      *(v73 + 2) = -1;
      v57 -= v5;
      a3 += v10;
      v58 -= v10;
      if (v59 == v55)
      {
        return result;
      }
    }

    v13 += v55 + 1;
    if (a4)
    {
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t Wf_sample_Wf_inner(uint64_t result, unint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v130 = *(result + 28);
  v5 = *(result + 112);
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6)
  {
    v129 = *(result + 112);
    if (v5 > v6)
    {
      v129 = v5 % v6;
    }
  }

  else
  {
    v129 = 0;
  }

  v8 = *(result + 176);
  v10 = *(result + 32);
  v9 = *(result + 40);
  v11 = *(result + 120);
  if (v7)
  {
    v12 = v11 % v7;
    if (v11 <= v7)
    {
      v12 = *(result + 120);
    }

    v128 = v12;
  }

  else
  {
    v128 = 0;
  }

  v124 = *(result + 80);
  v125 = *(result + 64);
  v126 = *(result + 88);
  v13 = *(result + 152) - 8;
  v14 = *(result + 144) - 1;
  v15 = *(result + 260) - 1;
  v16 = *(result + 256);
  v17 = v9 + (v15 * v130) + 4 * (v16 - 1);
  v123 = *(result + 188);
  v18 = v10 + (v15 * v4) + 4 * v16 - 4;
  v127 = *(result + 72);
  do
  {
    if (a3 >= v127)
    {
      v22 = a4;
      if (a3 <= v126)
      {
        v28 = 0;
        v29 = (a3 >> 22) & 0x3C0;
        v30 = 0x3FFFFFFF;
        v31 = a3;
      }

      else
      {
        v24 = *(result + 216);
        v25 = *(result + 224) + v126;
        v26 = v25 - a3 + (v24 >> 1);
        if (v26 < 1)
        {
          goto LABEL_56;
        }

        if (v26 >= v24)
        {
          LODWORD(v27) = 0x3FFFFFFF;
        }

        else
        {
          v27 = (*(result + 232) * v26) >> 32;
        }

        v30 = v123 | v27;
        v31 = v25 - 0x1000000;
        v28 = a3 - (v25 - 0x1000000);
        v29 = 448;
      }
    }

    else
    {
      v19 = *(result + 216);
      v20 = v127 - *(result + 224);
      v21 = a3 - v20 + (v19 >> 1);
      v22 = a4;
      if (v21 < 1)
      {
        goto LABEL_56;
      }

      if (v21 >= v19)
      {
        LODWORD(v23) = 0x3FFFFFFF;
      }

      else
      {
        v23 = (*(result + 232) * v21) >> 32;
      }

      v30 = v123 | v23;
      v31 = v20 + 0x1000000;
      v28 = a3 - (v20 + 0x1000000);
      v29 = 512;
    }

    if (a2 >= v125)
    {
      if (a2 <= v124)
      {
        v36 = 0;
        v37 = (a2 >> 26) & 0x3C;
        v35 = a2;
      }

      else
      {
        v38 = *(result + 192);
        v39 = *(result + 200) + v124;
        v40 = v39 - a2 + (v38 >> 1);
        if (v40 < 1)
        {
          goto LABEL_56;
        }

        if (v40 < v38)
        {
          v30 = ((v30 >> 15) * (((*(result + 208) * v40) >> 32) >> 15)) | v123;
        }

        v35 = v39 - 0x1000000;
        v36 = a2 - (v39 - 0x1000000);
        v37 = 28;
      }
    }

    else
    {
      v32 = *(result + 192);
      v33 = v125 - *(result + 200);
      v34 = a2 - v33 + (v32 >> 1);
      if (v34 < 1)
      {
        goto LABEL_56;
      }

      if (v34 < v32)
      {
        v30 = ((v30 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v123;
      }

      v35 = v33 + 0x1000000;
      v36 = a2 - (v33 + 0x1000000);
      v37 = 32;
    }

    if (v30 >= 0x400000)
    {
      if (v6)
      {
        v41 = (v7 & ((v31 % v7) >> 63)) + v31 % v7;
        v42 = (v6 & ((v35 % v6) >> 63)) + v35 % v6;
        if (v41 >= v7)
        {
          v43 = v7;
        }

        else
        {
          v43 = 0;
        }

        v31 = v41 - v43;
        if (v42 >= v6)
        {
          v44 = v6;
        }

        else
        {
          v44 = 0;
        }

        v35 = v42 - v44;
        v28 += v31;
        v36 += v35;
      }

      v45 = v31 >> 32;
      v46 = (v35 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
      v47 = (v10 + SHIDWORD(v31) * v4 + v46);
      v48 = *(result + 32);
      if (v18 >= v47)
      {
        v49 = v47;
      }

      else
      {
        v49 = v18;
      }

      if (v49 < v48)
      {
        v49 = *(result + 32);
      }

      if (v9)
      {
        v50 = v9 + v45 * v130 + v46;
        v51 = *(result + 40);
        if (v17 >= v50)
        {
          v52 = v50;
        }

        else
        {
          v52 = v17;
        }

        if (v52 >= v51)
        {
          v51 = v52;
        }

        v53 = *v51;
      }

      else
      {
        v50 = 0;
        v53 = 1.0;
      }

      v55 = *v49;
      if (!v8)
      {
        goto LABEL_62;
      }

      v56 = *(v8 + (v37 | v29));
      while (1)
      {
        v75 = v56 & 0xF;
        v76 = v56 >> 8;
        v77 = HIBYTE(v56) & 3;
        if (v75 == 1)
        {
          break;
        }

        if (v75 == 2)
        {
          v105 = SBYTE2(v56);
          if (v6)
          {
            v106 = HIWORD(v56) << 56;
            v107 = v36 + (v106 >> 24);
            v108 = v6 & (v107 >> 63);
            if (v108 + v107 >= v6)
            {
              v109 = v6;
            }

            else
            {
              v109 = 0;
            }

            v105 = (v108 + (v106 >> 24) - v109) >> 32;
          }

          v110 = &v47[v105];
          if (v18 < v110)
          {
            v110 = v18;
          }

          if (v110 < v48)
          {
            v110 = v48;
          }

          v111 = *v110;
          v112 = 1.0;
          if (v9)
          {
            v113 = (v50 + 4 * v105);
            if (v17 < v113)
            {
              v113 = v17;
            }

            if (v113 < *(result + 40))
            {
              v113 = *(result + 40);
            }

            v112 = *v113;
          }

          v114 = &interpolate_waf[2 * ((v56 >> 28) & 3)];
LABEL_157:
          v121 = v114[1];
          v55 = (v55 - (v55 * v121)) + (v111 * v121);
          v53 = (v53 - (v53 * v121)) + (v112 * v121);
          goto LABEL_62;
        }

        if (v75 == 3)
        {
          LODWORD(v78) = SBYTE1(v56);
          v79 = SBYTE2(v56);
          if (v6)
          {
            v80 = v76 << 56;
            v81 = HIWORD(v56) << 56;
            v82 = v28 + (SBYTE1(v56) << 32);
            v122 = v30;
            v83 = v36 + (v81 >> 24);
            v84 = v7 & (v82 >> 63);
            v85 = v22;
            v86 = v6 & (v83 >> 63);
            v87 = v86 + v83;
            if (v84 + v82 >= v7)
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

            v78 = (v84 + (v80 >> 24) - v88) >> 32;
            v90 = v86 + (v81 >> 24);
            v22 = v85;
            v91 = v90 - v89;
            v77 = HIBYTE(v56) & 3;
            v30 = v122;
            v79 = v91 >> 32;
          }

          v92 = &v47[v79];
          if (v18 >= v92)
          {
            v93 = &v47[v79];
          }

          else
          {
            v93 = v18;
          }

          if (v93 < v48)
          {
            v93 = v48;
          }

          v94 = *v93;
          v95 = (v92 + v78 * v4);
          if (v18 < v95)
          {
            v95 = v18;
          }

          if (v95 < v48)
          {
            v95 = v48;
          }

          v96 = *v95;
          v97 = 1.0;
          v98 = 1.0;
          if (v9)
          {
            v99 = (v50 + 4 * v79);
            v100 = *(result + 40);
            if (v17 >= v99)
            {
              v101 = v99;
            }

            else
            {
              v101 = v17;
            }

            if (v101 < v100)
            {
              v101 = *(result + 40);
            }

            v98 = *v101;
            v102 = (v99 + v78 * v130);
            if (v17 < v102)
            {
              v102 = v17;
            }

            if (v102 < v100)
            {
              v102 = *(result + 40);
            }

            v97 = *v102;
          }

          v103 = interpolate_waf[2 * v77 + 1];
          v104 = interpolate_waf[2 * ((v56 >> 28) & 3) + 1];
          v55 = (((v55 - (v55 * v103)) + (v94 * v103)) - (((v55 - (v55 * v103)) + (v94 * v103)) * v104)) + (((v94 - (v94 * v103)) + (v96 * v103)) * v104);
          v53 = (((v53 - (v53 * v103)) + (v98 * v103)) - (((v53 - (v53 * v103)) + (v98 * v103)) * v104)) + (((v98 - (v98 * v103)) + (v97 * v103)) * v104);
        }

LABEL_62:
        *(v13 + 8) = v55;
        *(v13 + 12) = v53;
        *(v14 + 1) = v30 >> 22;
        if (v22 == 1)
        {
          return result;
        }

        v57 = v22;
        v58 = 0;
        v59 = (v13 + 20);
        a2 += v5;
        v60 = v124 - a2;
        a3 += v11;
        v61 = v126 - a3;
        while (1)
        {
          if (((v61 | v60 | (a3 - v127) | (a2 - v125)) & 0x8000000000000000) != 0)
          {
            v14 += v58 + 1;
            v13 = (v59 - 3);
            v54 = ~v58 + v57;
            goto LABEL_57;
          }

          if (v6)
          {
            v62 = (v7 & ((v28 + v128) >> 63)) + v28 + v128;
            v63 = (v6 & ((v36 + v129) >> 63)) + v36 + v129;
            if (v62 >= v7)
            {
              v64 = v7;
            }

            else
            {
              v64 = 0;
            }

            v28 = v62 - v64;
            if (v63 >= v6)
            {
              v65 = v6;
            }

            else
            {
              v65 = 0;
            }

            v36 = v63 - v65;
            v66 = v28;
            v67 = v36;
          }

          else
          {
            v66 = a3;
            v67 = a2;
          }

          v68 = v66 >> 32;
          v69 = v10 + v68 * v4;
          v70 = (v67 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
          v47 = (v69 + v70);
          v48 = *(result + 32);
          if (v18 >= v69 + v70)
          {
            v71 = (v69 + v70);
          }

          else
          {
            v71 = v18;
          }

          if (v71 < v48)
          {
            v71 = *(result + 32);
          }

          if (v9)
          {
            v50 = v9 + v68 * v130 + v70;
            v72 = *(result + 40);
            v73 = (v17 >= v50 ? v50 : v17);
            if (v73 >= v72)
            {
              v72 = v73;
            }

            v53 = *v72;
          }

          else
          {
            v53 = 1.0;
          }

          v55 = *v71;
          if (v8)
          {
            v56 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
            if ((v56 & 0xF) != 0)
            {
              break;
            }
          }

          *(v59 - 1) = v55;
          *v59 = v53;
          v74 = v14 + v58++;
          v59 += 2;
          a2 += v5;
          *(v74 + 2) = -1;
          v60 -= v5;
          a3 += v11;
          v61 -= v11;
          if (v57 - 1 == v58)
          {
            return result;
          }
        }

        v14 += v58 + 1;
        v13 = (v59 - 3);
        v22 = ~v58 + v57;
        v30 = -1;
      }

      LODWORD(v115) = SBYTE1(v56);
      if (v6)
      {
        v116 = v28 + (SBYTE1(v56) << 32);
        v117 = v7 & (v116 >> 63);
        if (v117 + v116 >= v7)
        {
          v118 = v7;
        }

        else
        {
          v118 = 0;
        }

        v115 = (v117 + (v76 << 32) - v118) >> 32;
      }

      v119 = (v47 + v115 * v4);
      if (v18 < v119)
      {
        v119 = v18;
      }

      if (v119 < v48)
      {
        v119 = v48;
      }

      v111 = *v119;
      v112 = 1.0;
      if (v9)
      {
        v120 = (v50 + v115 * v130);
        if (v17 < v120)
        {
          v120 = v17;
        }

        if (v120 < *(result + 40))
        {
          v120 = *(result + 40);
        }

        v112 = *v120;
      }

      v114 = &interpolate_waf[2 * v77];
      goto LABEL_157;
    }

LABEL_56:
    v54 = v22 - 1;
    a2 += v5;
    a3 += v11;
    v13 += 8;
    *++v14 = 0;
LABEL_57:
    a4 = v54;
  }

  while (v54);
  return result;
}

uint64_t Wf_sample_RGBF(uint64_t result, unint64_t a2, int64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v14 = *(result + 32);
  v15 = *(result + 24);
  v16 = *(result + 176);
  v17 = *(result + 64);
  v18 = *(result + 72);
  v19 = *(result + 80);
  v20 = *(result + 88);
  v21 = *(result + 112);
  v22 = *(result + 120);
  v72 = *(result + 188);
  v23 = *(result + 152) - 8;
  v24 = *(result + 144) - 1;
  v25 = v14 + ((*(result + 260) - 1) * v15) + 4 * (3 * *(result + 256)) - 12;
  while (1)
  {
LABEL_2:
    if (a3 >= v18)
    {
      if (a3 <= v20)
      {
        v34 = (a3 >> 22) & 0x3C0;
        v35 = 0x3FFFFFFF;
        HIDWORD(v36) = HIDWORD(a3);
      }

      else
      {
        v30 = *(result + 216);
        v31 = *(result + 224) + v20;
        v32 = v31 - a3 + (v30 >> 1);
        if (v32 < 1)
        {
          goto LABEL_34;
        }

        if (v32 >= v30)
        {
          LODWORD(v33) = 0x3FFFFFFF;
        }

        else
        {
          v33 = (*(result + 232) * v32) >> 32;
        }

        v35 = v33 | v72;
        v36 = v31 - 0x1000000;
        v34 = 448;
      }
    }

    else
    {
      v26 = *(result + 216);
      v27 = v18 - *(result + 224);
      v28 = a3 - v27 + (v26 >> 1);
      if (v28 < 1)
      {
        goto LABEL_34;
      }

      if (v28 >= v26)
      {
        LODWORD(v29) = 0x3FFFFFFF;
      }

      else
      {
        v29 = (*(result + 232) * v28) >> 32;
      }

      v35 = v29 | v72;
      v36 = v27 + 0x1000000;
      v34 = 512;
    }

    if (a2 >= v17)
    {
      break;
    }

    v37 = *(result + 192);
    v38 = v17 - *(result + 200);
    v39 = a2 - v38 + (v37 >> 1);
    if (v39 >= 1)
    {
      if (v39 < v37)
      {
        v35 = ((v35 >> 15) * (((*(result + 208) * v39) >> 32) >> 15)) | v72;
      }

      v40 = v38 + 0x1000000;
      v41 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v21;
    a3 += v22;
    v23 += 8;
    *++v24 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v19)
  {
    v41 = (a2 >> 26) & 0x3C;
    v40 = a2;
    goto LABEL_26;
  }

  v42 = *(result + 192);
  v43 = *(result + 200) + v19;
  v44 = v43 - a2 + (v42 >> 1);
  if (v44 < 1)
  {
    goto LABEL_34;
  }

  if (v44 < v42)
  {
    v35 = ((v35 >> 15) * (((*(result + 208) * v44) >> 32) >> 15)) | v72;
  }

  v40 = v43 - 0x1000000;
  v41 = 28;
LABEL_26:
  if (v35 < 0x400000)
  {
    goto LABEL_34;
  }

  v45 = v40 >> 32;
  v46 = v14 + SHIDWORD(v36) * v15;
  v47 = v46 + 12 * v45;
  v48 = *(result + 32);
  if (v25 >= v47)
  {
    v49 = (v46 + 12 * v45);
  }

  else
  {
    v49 = v25;
  }

  if (v49 < v48)
  {
    v49 = *(result + 32);
  }

  v50 = vrev32_s8(*v49);
  v51 = COERCE_FLOAT(bswap32(v49[1].u32[0]));
  if (!v16)
  {
    goto LABEL_36;
  }

  v52 = *(v16 + (v41 | v34));
LABEL_52:
  v62 = v52 & 0xF;
  v63 = HIBYTE(v52) & 3;
  if (v62 == 1)
  {
    v70 = (v47 + SBYTE1(v52) * v15);
    if (v25 < v70)
    {
      v70 = v25;
    }

    if (v70 < v48)
    {
      v70 = v48;
    }

    v71 = COERCE_FLOAT(bswap32(v70[1].u32[0]));
    goto LABEL_75;
  }

  if (v62 == 2)
  {
    v70 = (v47 + 12 * SBYTE2(v52));
    if (v25 < v70)
    {
      v70 = v25;
    }

    if (v70 < v48)
    {
      v70 = v48;
    }

    v71 = COERCE_FLOAT(bswap32(v70[1].u32[0]));
    v63 = (v52 >> 28) & 3;
LABEL_75:
    LODWORD(a12) = interpolate_rgbaf_21860[4 * v63 + 3];
    v12 = vrev32_s8(*v70);
    v50 = vmla_n_f32(vmls_lane_f32(v50, v50, *&a12, 0), v12, *&a12);
    v51 = (v51 - (v51 * *&a12)) + (v71 * *&a12);
    v53 = *&a12 + (1.0 - *&a12);
    goto LABEL_37;
  }

  if (v62 != 3)
  {
LABEL_36:
    v53 = 1.0;
    goto LABEL_37;
  }

  v64 = v47 + 12 * SBYTE2(v52);
  if (v25 >= v64)
  {
    v65 = (v47 + 12 * SBYTE2(v52));
  }

  else
  {
    v65 = v25;
  }

  if (v65 < v48)
  {
    v65 = v48;
  }

  v66 = COERCE_FLOAT(bswap32(v65[1].u32[0]));
  v67 = (v64 + SBYTE1(v52) * v15);
  if (v25 < v67)
  {
    v67 = v25;
  }

  if (v67 < v48)
  {
    v67 = v48;
  }

  v12.i32[0] = interpolate_rgbaf_21860[4 * v63 + 3];
  v13.i32[0] = interpolate_rgbaf_21860[4 * ((v52 >> 28) & 3) + 3];
  v51 = (((v51 - (v51 * v12.f32[0])) + (v66 * v12.f32[0])) - (((v51 - (v51 * v12.f32[0])) + (v66 * v12.f32[0])) * v13.f32[0])) + (((v66 - (v66 * v12.f32[0])) + (COERCE_FLOAT(bswap32(v67[1].u32[0])) * v12.f32[0])) * v13.f32[0]);
  v68 = vrev32_s8(*v65);
  v69 = vmla_n_f32(vmls_lane_f32(v50, v50, v12, 0), v68, v12.f32[0]);
  a12 = COERCE_DOUBLE(vmla_n_f32(vmls_lane_f32(v68, v68, v12, 0), vrev32_s8(*v67), v12.f32[0]));
  v50 = vmla_n_f32(vmls_lane_f32(v69, v69, v13, 0), *&a12, v13.f32[0]);
  v53 = ((v12.f32[0] + (1.0 - v12.f32[0])) - ((v12.f32[0] + (1.0 - v12.f32[0])) * v13.f32[0])) + ((v12.f32[0] + (1.0 - v12.f32[0])) * v13.f32[0]);
LABEL_37:
  *(v23 + 8) = (vmuls_lane_f32(0.59, v50, 1) + (v50.f32[0] * 0.3)) + (v51 * 0.11);
  *(v23 + 12) = v53;
  *(v24 + 1) = v35 >> 22;
  if (a4 != 1)
  {
    v54 = 0;
    v55 = (v23 + 20);
    a2 += v21;
    v56 = v19 - a2;
    a3 += v22;
    v57 = v20 - a3;
    while ((((a2 - v17) | v56 | (a3 - v18) | v57) & 0x8000000000000000) == 0)
    {
      v58 = v14 + SHIDWORD(a3) * v15;
      v47 = v58 + 12 * SHIDWORD(a2);
      v48 = *(result + 32);
      if (v25 >= v47)
      {
        v59 = (v58 + 12 * SHIDWORD(a2));
      }

      else
      {
        v59 = v25;
      }

      if (v59 < v48)
      {
        v59 = *(result + 32);
      }

      v50 = vrev32_s8(*v59);
      v60 = COERCE_FLOAT(bswap32(v59[1].u32[0]));
      v51 = v60;
      if (v16)
      {
        v52 = *(v16 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
        if ((v52 & 0xF) != 0)
        {
          v24 += v54 + 1;
          v23 = (v55 - 3);
          a4 += ~v54;
          v35 = -1;
          goto LABEL_52;
        }
      }

      *(v55 - 1) = (vmuls_lane_f32(0.59, v50, 1) + (v50.f32[0] * 0.3)) + (v60 * 0.11);
      *v55 = 1.0;
      v55 += 2;
      v61 = v24 + v54++;
      a2 += v21;
      *(v61 + 2) = -1;
      v56 -= v21;
      a3 += v22;
      v57 -= v22;
      if (a4 - 1 == v54)
      {
        return result;
      }
    }

    v24 += v54 + 1;
    v23 = (v55 - 3);
    a4 += ~v54;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t Wf_sample_RGBf(uint64_t result, unint64_t a2, int64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v14 = *(result + 32);
  v15 = *(result + 24);
  v16 = *(result + 176);
  v17 = *(result + 64);
  v18 = *(result + 72);
  v19 = *(result + 80);
  v20 = *(result + 88);
  v21 = *(result + 112);
  v22 = *(result + 120);
  v69 = *(result + 188);
  v23 = *(result + 152) - 8;
  v24 = *(result + 144) - 1;
  v25 = v14 + ((*(result + 260) - 1) * v15) + 4 * (3 * *(result + 256)) - 12;
  while (1)
  {
LABEL_2:
    if (a3 >= v18)
    {
      if (a3 <= v20)
      {
        v34 = (a3 >> 22) & 0x3C0;
        v35 = 0x3FFFFFFF;
        HIDWORD(v36) = HIDWORD(a3);
      }

      else
      {
        v30 = *(result + 216);
        v31 = *(result + 224) + v20;
        v32 = v31 - a3 + (v30 >> 1);
        if (v32 < 1)
        {
          goto LABEL_34;
        }

        if (v32 >= v30)
        {
          LODWORD(v33) = 0x3FFFFFFF;
        }

        else
        {
          v33 = (*(result + 232) * v32) >> 32;
        }

        v35 = v33 | v69;
        v36 = v31 - 0x1000000;
        v34 = 448;
      }
    }

    else
    {
      v26 = *(result + 216);
      v27 = v18 - *(result + 224);
      v28 = a3 - v27 + (v26 >> 1);
      if (v28 < 1)
      {
        goto LABEL_34;
      }

      if (v28 >= v26)
      {
        LODWORD(v29) = 0x3FFFFFFF;
      }

      else
      {
        v29 = (*(result + 232) * v28) >> 32;
      }

      v35 = v29 | v69;
      v36 = v27 + 0x1000000;
      v34 = 512;
    }

    if (a2 >= v17)
    {
      break;
    }

    v37 = *(result + 192);
    v38 = v17 - *(result + 200);
    v39 = a2 - v38 + (v37 >> 1);
    if (v39 >= 1)
    {
      if (v39 < v37)
      {
        v35 = ((v35 >> 15) * (((*(result + 208) * v39) >> 32) >> 15)) | v69;
      }

      v40 = v38 + 0x1000000;
      v41 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v21;
    a3 += v22;
    v23 += 8;
    *++v24 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v19)
  {
    v41 = (a2 >> 26) & 0x3C;
    v40 = a2;
    goto LABEL_26;
  }

  v42 = *(result + 192);
  v43 = *(result + 200) + v19;
  v44 = v43 - a2 + (v42 >> 1);
  if (v44 < 1)
  {
    goto LABEL_34;
  }

  if (v44 < v42)
  {
    v35 = ((v35 >> 15) * (((*(result + 208) * v44) >> 32) >> 15)) | v69;
  }

  v40 = v43 - 0x1000000;
  v41 = 28;
LABEL_26:
  if (v35 < 0x400000)
  {
    goto LABEL_34;
  }

  v45 = v40 >> 32;
  v46 = v14 + SHIDWORD(v36) * v15;
  v47 = v46 + 12 * v45;
  v48 = *(result + 32);
  if (v25 >= v47)
  {
    v49 = (v46 + 12 * v45);
  }

  else
  {
    v49 = v25;
  }

  if (v49 < v48)
  {
    v49 = *(result + 32);
  }

  v50 = *v49;
  v51 = v49[1].f32[0];
  if (!v16)
  {
    goto LABEL_36;
  }

  v52 = *(v16 + (v41 | v34));
LABEL_52:
  v60 = v52 & 0xF;
  v61 = HIBYTE(v52) & 3;
  if (v60 == 1)
  {
    v68 = (v47 + SBYTE1(v52) * v15);
    if (v25 < v68)
    {
      v68 = v25;
    }

    if (v68 < v48)
    {
      v68 = v48;
    }

    v67 = v68[1].f32[0];
    LODWORD(a12) = interpolate_rgbaf_21860[4 * v61 + 3];
    v12 = *v68;
    goto LABEL_75;
  }

  if (v60 == 2)
  {
    v66 = (v47 + 12 * SBYTE2(v52));
    if (v25 < v66)
    {
      v66 = v25;
    }

    if (v66 < v48)
    {
      v66 = v48;
    }

    v67 = v66[1].f32[0];
    LODWORD(a12) = interpolate_rgbaf_21860[4 * ((v52 >> 28) & 3) + 3];
    v12 = *v66;
LABEL_75:
    v50 = vmla_n_f32(vmls_lane_f32(v50, v50, *&a12, 0), v12, *&a12);
    v51 = (v51 - (v51 * *&a12)) + (v67 * *&a12);
    v53 = *&a12 + (1.0 - *&a12);
    goto LABEL_37;
  }

  if (v60 != 3)
  {
LABEL_36:
    v53 = 1.0;
    goto LABEL_37;
  }

  v62 = v47 + 12 * SBYTE2(v52);
  if (v25 >= v62)
  {
    v63 = (v47 + 12 * SBYTE2(v52));
  }

  else
  {
    v63 = v25;
  }

  if (v63 < v48)
  {
    v63 = v48;
  }

  v64 = (v62 + SBYTE1(v52) * v15);
  if (v25 < v64)
  {
    v64 = v25;
  }

  if (v64 < v48)
  {
    v64 = v48;
  }

  v12.i32[0] = interpolate_rgbaf_21860[4 * v61 + 3];
  v13.i32[0] = interpolate_rgbaf_21860[4 * ((v52 >> 28) & 3) + 3];
  v51 = (((v51 - (v51 * v12.f32[0])) + (v63[1].f32[0] * v12.f32[0])) - (((v51 - (v51 * v12.f32[0])) + (v63[1].f32[0] * v12.f32[0])) * v13.f32[0])) + (((v63[1].f32[0] - (v63[1].f32[0] * v12.f32[0])) + (v64[1].f32[0] * v12.f32[0])) * v13.f32[0]);
  v65 = vmla_n_f32(vmls_lane_f32(v50, v50, v12, 0), *v63, v12.f32[0]);
  a12 = COERCE_DOUBLE(vmla_n_f32(vmls_lane_f32(*v63, *v63, v12, 0), *v64, v12.f32[0]));
  v50 = vmla_n_f32(vmls_lane_f32(v65, v65, v13, 0), *&a12, v13.f32[0]);
  v53 = ((v12.f32[0] + (1.0 - v12.f32[0])) - ((v12.f32[0] + (1.0 - v12.f32[0])) * v13.f32[0])) + ((v12.f32[0] + (1.0 - v12.f32[0])) * v13.f32[0]);
LABEL_37:
  *(v23 + 8) = (vmuls_lane_f32(0.59, v50, 1) + (v50.f32[0] * 0.3)) + (v51 * 0.11);
  *(v23 + 12) = v53;
  *(v24 + 1) = v35 >> 22;
  if (a4 != 1)
  {
    v54 = 0;
    v55 = (v23 + 20);
    a2 += v21;
    v56 = v19 - a2;
    a3 += v22;
    v57 = v20 - a3;
    while ((((a2 - v17) | v56 | (a3 - v18) | v57) & 0x8000000000000000) == 0)
    {
      v47 = v14 + SHIDWORD(a3) * v15 + 12 * SHIDWORD(a2);
      v48 = *(result + 32);
      if (v25 >= v47)
      {
        v58 = v14 + SHIDWORD(a3) * v15 + 12 * SHIDWORD(a2);
      }

      else
      {
        v58 = v25;
      }

      if (v58 < v48)
      {
        v58 = *(result + 32);
      }

      v50 = *v58;
      v51 = *(v58 + 8);
      if (v16)
      {
        v52 = *(v16 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
        if ((v52 & 0xF) != 0)
        {
          v24 += v54 + 1;
          v23 = (v55 - 3);
          a4 += ~v54;
          v35 = -1;
          goto LABEL_52;
        }
      }

      *(v55 - 1) = (vmuls_lane_f32(0.59, v50, 1) + (v50.f32[0] * 0.3)) + (v51 * 0.11);
      *v55 = 1.0;
      v55 += 2;
      v59 = v24 + v54++;
      a2 += v21;
      *(v59 + 2) = -1;
      v56 -= v21;
      a3 += v22;
      v57 -= v22;
      if (a4 - 1 == v54)
      {
        return result;
      }
    }

    v24 += v54 + 1;
    v23 = (v55 - 3);
    a4 += ~v54;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t Wf_sample_RGBAF(uint64_t result, uint64_t a2, int64_t a3, int a4)
{
  v7 = *(result + 24);
  v8 = *(result + 176);
  v9 = *(result + 64);
  v10 = *(result + 72);
  v11 = *(result + 80);
  v12 = *(result + 88);
  v13 = *(result + 112);
  v14 = *(result + 120);
  v79 = *(result + 188);
  v15 = *(result + 152) - 8;
  v16 = *(result + 144) - 1;
  v18 = *(result + 32);
  v17 = *(result + 40);
  v19 = v18 + ((*(result + 260) - 1) * v7) + 4 * (4 * *(result + 256)) - 16;
  while (1)
  {
LABEL_2:
    if (a3 >= v10)
    {
      if (a3 <= v12)
      {
        v28 = (a3 >> 22) & 0x3C0;
        v29 = 0x3FFFFFFF;
        HIDWORD(v30) = HIDWORD(a3);
      }

      else
      {
        v24 = *(result + 216);
        v25 = *(result + 224) + v12;
        v26 = v25 - a3 + (v24 >> 1);
        if (v26 < 1)
        {
          goto LABEL_35;
        }

        if (v26 >= v24)
        {
          LODWORD(v27) = 0x3FFFFFFF;
        }

        else
        {
          v27 = (*(result + 232) * v26) >> 32;
        }

        v29 = v27 | v79;
        v30 = v25 - 0x1000000;
        v28 = 448;
      }
    }

    else
    {
      v20 = *(result + 216);
      v21 = v10 - *(result + 224);
      v22 = a3 - v21 + (v20 >> 1);
      if (v22 < 1)
      {
        goto LABEL_35;
      }

      if (v22 >= v20)
      {
        LODWORD(v23) = 0x3FFFFFFF;
      }

      else
      {
        v23 = (*(result + 232) * v22) >> 32;
      }

      v29 = v23 | v79;
      v30 = v21 + 0x1000000;
      v28 = 512;
    }

    if (a2 >= v9)
    {
      break;
    }

    v31 = *(result + 192);
    v32 = v9 - *(result + 200);
    v33 = a2 - v32 + (v31 >> 1);
    if (v33 >= 1)
    {
      if (v33 < v31)
      {
        v29 = ((v29 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v79;
      }

      v34 = v32 + 0x1000000;
      v35 = 32;
      goto LABEL_26;
    }

LABEL_35:
    --a4;
    a2 += v13;
    a3 += v14;
    v15 += 8;
    *++v16 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v11)
  {
    v35 = (a2 >> 26) & 0x3C;
    v34 = a2;
    goto LABEL_26;
  }

  v36 = *(result + 192);
  v37 = *(result + 200) + v11;
  v38 = v37 - a2 + (v36 >> 1);
  if (v38 < 1)
  {
    goto LABEL_35;
  }

  if (v38 < v36)
  {
    v29 = ((v29 >> 15) * (((*(result + 208) * v38) >> 32) >> 15)) | v79;
  }

  v34 = v37 - 0x1000000;
  v35 = 28;
LABEL_26:
  if (v29 < 0x400000)
  {
    goto LABEL_35;
  }

  v39 = v18 + SHIDWORD(v30) * v7;
  v40 = v34 >> 32;
  v41 = v39 + 16 * v40;
  v42 = *(result + 32);
  if (v19 >= v41)
  {
    v43 = (v39 + 16 * v40);
  }

  else
  {
    v43 = v19;
  }

  if (v43 >= v42)
  {
    v44 = v43;
  }

  else
  {
    v44 = *(result + 32);
  }

  if (v17)
  {
    v45 = COERCE_FLOAT(bswap32(v44[1].u32[1]));
  }

  else
  {
    v45 = 1.0;
  }

  v46 = vrev32_s8(*v44);
  v47 = COERCE_FLOAT(bswap32(v44[1].u32[0]));
  if (!v8)
  {
    goto LABEL_40;
  }

  v48 = *(v8 + (v35 | v28));
LABEL_59:
  v58 = v48 & 0xF;
  v59 = HIBYTE(v48) & 3;
  switch(v58)
  {
    case 1:
      v77 = (v41 + SBYTE1(v48) * v7);
      if (v19 < v77)
      {
        v77 = v19;
      }

      if (v77 >= v42)
      {
        v78 = v77;
      }

      else
      {
        v78 = v42;
      }

      v73 = vrev32_s8(*v78);
      v74 = COERCE_FLOAT(bswap32(v78[1].u32[0]));
      v75 = 1.0;
      if (v17)
      {
        v75 = COERCE_FLOAT(bswap32(v78[1].u32[1]));
      }

      v76 = &interpolate_rgbaf_21860[4 * v59];
      goto LABEL_93;
    case 2:
      v71 = (v41 + ((HIWORD(v48) << 56) >> 52));
      if (v19 < v71)
      {
        v71 = v19;
      }

      if (v71 >= v42)
      {
        v72 = v71;
      }

      else
      {
        v72 = v42;
      }

      v73 = vrev32_s8(*v72);
      v74 = COERCE_FLOAT(bswap32(v72[1].u32[0]));
      v75 = 1.0;
      if (v17)
      {
        v75 = COERCE_FLOAT(bswap32(v72[1].u32[1]));
      }

      v76 = &interpolate_rgbaf_21860[4 * ((v48 >> 28) & 3)];
LABEL_93:
      v4.i32[0] = v76[3];
      v46 = vmla_n_f32(vmls_lane_f32(v46, v46, v4, 0), v73, v4.f32[0]);
      v47 = (v47 - (v47 * v4.f32[0])) + (v74 * v4.f32[0]);
      v45 = (v45 - (v45 * v4.f32[0])) + (v75 * v4.f32[0]);
      break;
    case 3:
      v60 = (v41 + ((HIWORD(v48) << 56) >> 52));
      if (v19 < v60)
      {
        v60 = v19;
      }

      if (v60 >= v42)
      {
        v61 = v60;
      }

      else
      {
        v61 = v42;
      }

      v62 = vrev32_s8(*v61);
      v63 = COERCE_FLOAT(bswap32(v61[1].u32[0]));
      v64 = 1.0;
      v65 = 1.0;
      if (v17)
      {
        v65 = COERCE_FLOAT(bswap32(v61[1].u32[1]));
      }

      v66 = v41 + SBYTE1(v48) * v7 + 16 * SBYTE2(v48);
      if (v19 < v66)
      {
        v66 = v19;
      }

      if (v66 >= v42)
      {
        v67 = v66;
      }

      else
      {
        v67 = v42;
      }

      v68 = vrev32_s8(*v67);
      v69 = COERCE_FLOAT(bswap32(v67[1].u32[0]));
      if (v17)
      {
        v64 = COERCE_FLOAT(bswap32(v67[1].u32[1]));
      }

      v5.i32[0] = interpolate_rgbaf_21860[4 * v59 + 3];
      v6.i32[0] = interpolate_rgbaf_21860[4 * ((v48 >> 28) & 3) + 3];
      v47 = (((v47 - (v47 * v5.f32[0])) + (v63 * v5.f32[0])) - (((v47 - (v47 * v5.f32[0])) + (v63 * v5.f32[0])) * v6.f32[0])) + (((v63 - (v63 * v5.f32[0])) + (v69 * v5.f32[0])) * v6.f32[0]);
      v70 = vmla_n_f32(vmls_lane_f32(v46, v46, v5, 0), v62, v5.f32[0]);
      v46 = vmla_n_f32(vmls_lane_f32(v70, v70, v6, 0), vmla_n_f32(vmls_lane_f32(v62, v62, v5, 0), v68, v5.f32[0]), v6.f32[0]);
      v45 = (((v45 - (v45 * v5.f32[0])) + (v65 * v5.f32[0])) - (((v45 - (v45 * v5.f32[0])) + (v65 * v5.f32[0])) * v6.f32[0])) + (((v65 - (v65 * v5.f32[0])) + (v64 * v5.f32[0])) * v6.f32[0]);
      break;
  }

LABEL_40:
  *(v15 + 8) = (vmuls_lane_f32(0.59, v46, 1) + (v46.f32[0] * 0.3)) + (v47 * 0.11);
  *(v15 + 12) = v45;
  *(v16 + 1) = v29 >> 22;
  if (a4 != 1)
  {
    v49 = 0;
    v50 = (v15 + 20);
    a2 += v13;
    v51 = v11 - a2;
    a3 += v14;
    v52 = v12 - a3;
    while ((((a2 - v9) | v51 | (a3 - v10) | v52) & 0x8000000000000000) == 0)
    {
      v53 = v18 + SHIDWORD(a3) * v7;
      v41 = v53 + 16 * (a2 >> 32);
      v42 = *(result + 32);
      if (v19 >= v41)
      {
        v54 = (v53 + 16 * (a2 >> 32));
      }

      else
      {
        v54 = v19;
      }

      if (v54 >= v42)
      {
        v55 = v54;
      }

      else
      {
        v55 = *(result + 32);
      }

      if (v17)
      {
        v45 = COERCE_FLOAT(bswap32(v55[1].u32[1]));
      }

      else
      {
        v45 = 1.0;
      }

      v46 = vrev32_s8(*v55);
      v56 = COERCE_FLOAT(bswap32(v55[1].u32[0]));
      v47 = v56;
      if (v8)
      {
        v48 = *(v8 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
        if ((v48 & 0xF) != 0)
        {
          v16 += v49 + 1;
          v15 = (v50 - 3);
          a4 += ~v49;
          v29 = -1;
          goto LABEL_59;
        }
      }

      *(v50 - 1) = (vmuls_lane_f32(0.59, v46, 1) + (v46.f32[0] * 0.3)) + (v56 * 0.11);
      *v50 = v45;
      v57 = v16 + v49++;
      v50 += 2;
      a2 += v13;
      *(v57 + 2) = -1;
      v51 -= v13;
      a3 += v14;
      v52 -= v14;
      if (a4 - 1 == v49)
      {
        return result;
      }
    }

    v16 += v49 + 1;
    v15 = (v50 - 3);
    a4 += ~v49;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t Wf_sample_RGBAf(uint64_t result, uint64_t a2, int64_t a3, int a4)
{
  v7 = *(result + 24);
  v8 = *(result + 176);
  v9 = *(result + 64);
  v10 = *(result + 72);
  v11 = *(result + 80);
  v12 = *(result + 88);
  v13 = *(result + 112);
  v14 = *(result + 120);
  v78 = *(result + 188);
  v15 = *(result + 152) - 8;
  v16 = *(result + 144) - 1;
  v18 = *(result + 32);
  v17 = *(result + 40);
  v19 = v18 + ((*(result + 260) - 1) * v7) + 4 * (4 * *(result + 256)) - 16;
  while (1)
  {
LABEL_2:
    if (a3 >= v10)
    {
      if (a3 <= v12)
      {
        v28 = (a3 >> 22) & 0x3C0;
        v29 = 0x3FFFFFFF;
        HIDWORD(v30) = HIDWORD(a3);
      }

      else
      {
        v24 = *(result + 216);
        v25 = *(result + 224) + v12;
        v26 = v25 - a3 + (v24 >> 1);
        if (v26 < 1)
        {
          goto LABEL_35;
        }

        if (v26 >= v24)
        {
          LODWORD(v27) = 0x3FFFFFFF;
        }

        else
        {
          v27 = (*(result + 232) * v26) >> 32;
        }

        v29 = v27 | v78;
        v30 = v25 - 0x1000000;
        v28 = 448;
      }
    }

    else
    {
      v20 = *(result + 216);
      v21 = v10 - *(result + 224);
      v22 = a3 - v21 + (v20 >> 1);
      if (v22 < 1)
      {
        goto LABEL_35;
      }

      if (v22 >= v20)
      {
        LODWORD(v23) = 0x3FFFFFFF;
      }

      else
      {
        v23 = (*(result + 232) * v22) >> 32;
      }

      v29 = v23 | v78;
      v30 = v21 + 0x1000000;
      v28 = 512;
    }

    if (a2 >= v9)
    {
      break;
    }

    v31 = *(result + 192);
    v32 = v9 - *(result + 200);
    v33 = a2 - v32 + (v31 >> 1);
    if (v33 >= 1)
    {
      if (v33 < v31)
      {
        v29 = ((v29 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v78;
      }

      v34 = v32 + 0x1000000;
      v35 = 32;
      goto LABEL_26;
    }

LABEL_35:
    --a4;
    a2 += v13;
    a3 += v14;
    v15 += 8;
    *++v16 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v11)
  {
    v35 = (a2 >> 26) & 0x3C;
    v34 = a2;
    goto LABEL_26;
  }

  v36 = *(result + 192);
  v37 = *(result + 200) + v11;
  v38 = v37 - a2 + (v36 >> 1);
  if (v38 < 1)
  {
    goto LABEL_35;
  }

  if (v38 < v36)
  {
    v29 = ((v29 >> 15) * (((*(result + 208) * v38) >> 32) >> 15)) | v78;
  }

  v34 = v37 - 0x1000000;
  v35 = 28;
LABEL_26:
  if (v29 < 0x400000)
  {
    goto LABEL_35;
  }

  v39 = v18 + SHIDWORD(v30) * v7;
  v40 = v34 >> 32;
  v41 = v39 + 16 * v40;
  v42 = *(result + 32);
  if (v19 >= v41)
  {
    v43 = v39 + 16 * v40;
  }

  else
  {
    v43 = v19;
  }

  if (v43 >= v42)
  {
    v44 = v43;
  }

  else
  {
    v44 = *(result + 32);
  }

  if (v17)
  {
    v45 = v44[1].f32[1];
  }

  else
  {
    v45 = 1.0;
  }

  v46 = *v44;
  v47 = v44[1].f32[0];
  if (!v8)
  {
    goto LABEL_40;
  }

  v48 = *(v8 + (v35 | v28));
LABEL_59:
  v57 = v48 & 0xF;
  v58 = HIBYTE(v48) & 3;
  switch(v57)
  {
    case 1:
      v74 = v41 + SBYTE1(v48) * v7;
      if (v19 < v74)
      {
        v74 = v19;
      }

      if (v74 >= v42)
      {
        v75 = v74;
      }

      else
      {
        v75 = v42;
      }

      v70 = *v75;
      v71 = v75[1].f32[0];
      v72 = 1.0;
      if (v17)
      {
        v72 = v75[1].f32[1];
      }

      v73 = &interpolate_rgbaf_21860[4 * v58];
      goto LABEL_90;
    case 2:
      v68 = v41 + ((HIWORD(v48) << 56) >> 52);
      if (v19 < v68)
      {
        v68 = v19;
      }

      if (v68 >= v42)
      {
        v69 = v68;
      }

      else
      {
        v69 = v42;
      }

      v70 = *v69;
      v71 = v69[1].f32[0];
      v72 = 1.0;
      if (v17)
      {
        v72 = v69[1].f32[1];
      }

      v73 = &interpolate_rgbaf_21860[4 * ((v48 >> 28) & 3)];
LABEL_90:
      v4.i32[0] = v73[3];
      v46 = vmla_n_f32(vmls_lane_f32(v46, v46, v4, 0), v70, v4.f32[0]);
      v47 = (v47 - (v47 * v4.f32[0])) + (v71 * v4.f32[0]);
      v45 = (v45 - (v45 * v4.f32[0])) + (v72 * v4.f32[0]);
      break;
    case 3:
      v59 = SBYTE1(v48) * v7;
      v60 = 16 * SBYTE2(v48);
      v61 = v41 + ((HIWORD(v48) << 56) >> 52);
      if (v19 < v61)
      {
        v61 = v19;
      }

      if (v61 >= v42)
      {
        v62 = v61;
      }

      else
      {
        v62 = v42;
      }

      v63 = *v62;
      if (v17)
      {
        v64 = v62[1].f32[1];
        v65 = (v41 + v59 + v60);
        if (v19 < v65)
        {
          v65 = v19;
        }

        if (v65 >= v42)
        {
          v66 = v65;
        }

        else
        {
          v66 = v42;
        }

        v67 = v66[1].f32[1];
      }

      else
      {
        v76 = (v41 + v59 + v60);
        if (v19 < v76)
        {
          v76 = v19;
        }

        if (v76 >= v42)
        {
          v66 = v76;
        }

        else
        {
          v66 = v42;
        }

        v64 = 1.0;
        v67 = 1.0;
      }

      v5.i32[0] = interpolate_rgbaf_21860[4 * v58 + 3];
      v6.i32[0] = interpolate_rgbaf_21860[4 * ((v48 >> 28) & 3) + 3];
      v47 = (((v47 - (v47 * v5.f32[0])) + (v62[1].f32[0] * v5.f32[0])) - (((v47 - (v47 * v5.f32[0])) + (v62[1].f32[0] * v5.f32[0])) * v6.f32[0])) + (((v62[1].f32[0] - (v62[1].f32[0] * v5.f32[0])) + (v66[1].f32[0] * v5.f32[0])) * v6.f32[0]);
      v77 = vmla_n_f32(vmls_lane_f32(v46, v46, v5, 0), v63, v5.f32[0]);
      v46 = vmla_n_f32(vmls_lane_f32(v77, v77, v6, 0), vmla_n_f32(vmls_lane_f32(v63, v63, v5, 0), *v66, v5.f32[0]), v6.f32[0]);
      v45 = (((v45 - (v45 * v5.f32[0])) + (v64 * v5.f32[0])) - (((v45 - (v45 * v5.f32[0])) + (v64 * v5.f32[0])) * v6.f32[0])) + (((v64 - (v64 * v5.f32[0])) + (v67 * v5.f32[0])) * v6.f32[0]);
      break;
  }

LABEL_40:
  *(v15 + 8) = (vmuls_lane_f32(0.59, v46, 1) + (v46.f32[0] * 0.3)) + (v47 * 0.11);
  *(v15 + 12) = v45;
  *(v16 + 1) = v29 >> 22;
  if (a4 != 1)
  {
    v49 = 0;
    v50 = (v15 + 20);
    a2 += v13;
    v51 = v11 - a2;
    a3 += v14;
    v52 = v12 - a3;
    while ((((a2 - v9) | v51 | (a3 - v10) | v52) & 0x8000000000000000) == 0)
    {
      v53 = v18 + SHIDWORD(a3) * v7;
      v41 = v53 + 16 * (a2 >> 32);
      v42 = *(result + 32);
      if (v19 >= v41)
      {
        v54 = v53 + 16 * (a2 >> 32);
      }

      else
      {
        v54 = v19;
      }

      if (v54 >= v42)
      {
        v55 = v54;
      }

      else
      {
        v55 = *(result + 32);
      }

      if (v17)
      {
        v45 = v55[1].f32[1];
      }

      else
      {
        v45 = 1.0;
      }

      v46 = *v55;
      v47 = v55[1].f32[0];
      if (v8)
      {
        v48 = *(v8 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
        if ((v48 & 0xF) != 0)
        {
          v16 += v49 + 1;
          v15 = (v50 - 3);
          a4 += ~v49;
          v29 = -1;
          goto LABEL_59;
        }
      }

      *(v50 - 1) = (vmuls_lane_f32(0.59, v46, 1) + (v46.f32[0] * 0.3)) + (v47 * 0.11);
      *v50 = v45;
      v56 = v16 + v49++;
      v50 += 2;
      a2 += v13;
      *(v56 + 2) = -1;
      v51 -= v13;
      a3 += v14;
      v52 -= v14;
      if (a4 - 1 == v49)
      {
        return result;
      }
    }

    v16 += v49 + 1;
    v15 = (v50 - 3);
    a4 += ~v49;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}