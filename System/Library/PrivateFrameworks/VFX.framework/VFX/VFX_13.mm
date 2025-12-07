uint64_t sub_1AF1A56A0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 208) >> 2) & 1;
}

CFStringRef sub_1AF1A56EC(uint64_t a1, CFStringRef theString)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, theString);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return sub_1AF16CC34(a1, theString);
}

uint64_t sub_1AF1A5748(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  return sub_1AF16CBEC(a1, a2);
}

uint64_t sub_1AF1A5794(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 216);
}

uint64_t sub_1AF1A57DC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 208) & 1;
}

BOOL sub_1AF1A5828(uint64_t a1, uint64_t a2, unsigned int a3, float32x4_t a4, uint32x4_t a5, float32x4_t a6, double a7, double a8, float32x4_t a9, __n128 a10)
{
  v70 = *MEMORY[0x1E69E9840];
  v10 = a3 - a2;
  if (a3 > a2)
  {
    v11 = a1;
    v12 = *(a1 + 64);
    v13 = *(a1 + 86);
    v59 = (a1 + 144);
    v14 = a2;
    v63 = *(a1 + 87);
    v58 = *(a1 + 84);
    v62 = a3;
    a4.i64[0] = 67109120;
    v15 = 1;
    while (1)
    {
      v16 = v11[2].u8[2];
      if (v11[2].i8[2])
      {
        if (v14)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v14)
        {
          v18 = 2;
        }

        else
        {
          v18 = 1;
        }

        v19 = v16 != 5;
        v20 = 1;
        if (v16 == 1)
        {
          v19 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 != 1)
        {
          v18 = 1;
        }
      }

      else
      {
        v20 = 3;
        v19 = 3;
        v17 = 2;
        v18 = 1;
      }

      v21 = v11->i64[0];
      if (!v11->i64[0])
      {
        v35 = v14 * v19;
        v34 = v18 + v20 * v14;
        v33 = v17 + v20 * v14;
        goto LABEL_28;
      }

      v22 = v11->u64[1];
      v23 = v11[2].u8[3];
      v24 = v11[3].i64[0];
      v25 = v11[3].i64[1];
      v26 = v24 + v25 * v14 * v19;
      v27 = v20 * v14;
      v28 = v24 + (v18 + v20 * v14) * v25;
      v29 = v24 + (v17 + v27) * v25;
      v30 = v29 <= v26 ? v26 : v29;
      v31 = v28 <= v30 ? v30 : v28;
      if (v22 >= v23 + v23 * v31)
      {
        break;
      }

      v32 = sub_1AF0D5194(a1, a2);
      a1 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
      if (a1)
      {
        *buf = 136315650;
        v65 = "CFXIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex";
        v66 = 1024;
        v67 = v31;
        v68 = 2048;
        v69 = v22 / v23;
        v54 = v32;
        v55 = "Error: %s - index (%u) out of bounds (%lu)";
        v56 = 28;
LABEL_45:
        _os_log_error_impl(&dword_1AF0CE000, v54, OS_LOG_TYPE_ERROR, v55, buf, v56);
      }

LABEL_26:
      v33 = 0;
      v34 = 0;
      v35 = 0;
LABEL_28:
      a2 = v12 + (v35 * v13);
      if (v63 == 1)
      {
        a9.i64[0] = *a2;
        a9.i32[2] = *(a2 + 8);
        v36 = v12 + (v34 * v13);
        a10.n128_u64[0] = *v36;
        a10.n128_u32[2] = *(v36 + 8);
        v37 = v12 + (v33 * v13);
        a4.i64[0] = *v37;
        a4.i32[2] = *(v37 + 8);
      }

      else
      {
        *v38.i64 = sub_1AF279750(v58, a2, a4, *a5.i32, a6.f32[0]);
        v61 = v38;
        *v41.i64 = sub_1AF279750(v58, (v12 + (v34 * v13)), v38, v39, v40);
        v60 = v41;
        *a4.i64 = sub_1AF279750(v58, (v12 + (v33 * v13)), v41, v42, v43);
        a10 = v60;
        a9 = v61;
      }

      v44 = a10;
      v44.i32[3] = 0;
      v45 = a4;
      v45.i32[3] = 0;
      v46 = vminnmq_f32(v44, v45);
      v47 = a9;
      v47.i32[3] = 0;
      v46.i32[3] = 0;
      v48 = vminnmq_f32(v47, v46);
      v49 = vmaxnmq_f32(v44, v45);
      v49.i32[3] = 0;
      v50 = vmaxnmq_f32(v47, v49);
      v48.i32[3] = 1.0;
      v50.i32[3] = 1.0;
      v47.i64[0] = 0x3F0000003F000000;
      v47.i64[1] = 0x3F0000003F000000;
      a6 = vabdq_f32(v11[6], vmulq_f32(vaddq_f32(v48, v50), v47));
      a5 = vcgeq_f32(vaddq_f32(v11[7], vmulq_f32(vsubq_f32(v50, v48), v47)), a6);
      a5.i32[3] = a5.i32[2];
      a5.i32[0] = vminvq_u32(a5);
      if ((a5.i32[0] & 0x80000000) == 0 || (v51 = v11[201].u32[0], v11[201].i32[0] = v51 + 1, v52 = &v59[3 * v51], *v52 = a9, v52[1] = a10, v52[2] = a4, v11[201].i32[0] != 64) || (v11[201].i32[0] = 0, a1 = (*(v11[8].i64[0] + 16))(), (a1 & 1) == 0))
      {
        v15 = ++v14 < v62;
        if (--v10)
        {
          continue;
        }
      }

      return v15;
    }

    switch(v23)
    {
      case 4u:
        v35 = *(v21 + 4 * v26);
        v34 = *(v21 + 4 * v28);
        v33 = *(v21 + 4 * v29);
        goto LABEL_28;
      case 2u:
        v35 = *(v21 + 2 * v26);
        v34 = *(v21 + 2 * v28);
        v33 = *(v21 + 2 * v29);
        goto LABEL_28;
      case 1u:
        v35 = *(v21 + v26);
        v34 = *(v21 + v28);
        v33 = *(v21 + v29);
        goto LABEL_28;
    }

    v53 = sub_1AF0D5194(a1, a2);
    a1 = os_log_type_enabled(v53, OS_LOG_TYPE_ERROR);
    if (!a1)
    {
      goto LABEL_26;
    }

    *buf = 67109120;
    LODWORD(v65) = v23;
    v54 = v53;
    v55 = "Unreachable code: Invalid bytes per index (%d)";
    v56 = 8;
    goto LABEL_45;
  }

  return 0;
}

uint64_t sub_1AF1A5C00(uint64_t a1, uint64_t a2, float32x4_t a3, float32x4_t a4)
{
  v6 = sub_1AF1A4604(a1, 0, 0, 0);
  result = sub_1AF1AE6EC(v6, v7);
  if (result)
  {
    result = sub_1AF1A3CCC(a1, v9);
    if (result)
    {
      v11 = result;
      v46 = 0u;
      memset(v47, 0, 368);
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      result = sub_1AF1AE1A8(v6, v10, &v42);
      v44 = a3;
      v45 = a4;
      v48 = 0;
      *&v46 = a2;
      if (v11 >= 1)
      {
        for (i = 0; i != v11; ++i)
        {
          v13 = sub_1AF1A3D1C(a1, i, 0);
          sub_1AF1A767C(v13, 0, &v34);
          v38 = v34;
          v39 = v35;
          v40 = v36;
          v41 = v37;
          if (v35 < 0x101)
          {
            result = sub_1AF1A5828(&v38, 0, v35, v36, v37, v14, v15, v16, v17, v18);
            if (result)
            {
              return result;
            }
          }

          else
          {
            v33 = 0;
            v34 = v38;
            v35 = v39;
            v36 = v40;
            v37 = v41;
            v32[0] = v42;
            v32[1] = v43;
            result = sub_1AF2825F4(v13, &v34, v32, &v33);
            v22 = v33;
            if (v33)
            {
              v23 = 0;
              v24 = (result + 16);
              v25 = 32;
              do
              {
                v26 = v24[-1];
                v27 = vaddq_f32(v45, *v24);
                v28 = vcgeq_f32(v27, vabdq_f32(v44, v26));
                v28.i32[3] = v28.i32[2];
                v28.i32[0] = vminvq_u32(v28);
                if (v28.i32[0] < 0)
                {
                  if (v25 >= v39)
                  {
                    v29 = v39;
                  }

                  else
                  {
                    v29 = v25;
                  }

                  result = sub_1AF1A5828(&v38, v25 - 32, v29, v28, v27, v26, *v24->i64, v19, v20, v21);
                  if (result)
                  {
                    return result;
                  }

                  v22 = v33;
                }

                ++v23;
                v24 += 2;
                v25 += 32;
              }

              while (v23 < v22);
            }
          }
        }

        if (v48)
        {
          return (*(a2 + 16))(a2, v47);
        }
      }
    }
  }

  return result;
}

id sub_1AF1A5E08(uint64_t a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"kCFXNotificationMeshWillDie", a1, 0, 1u);
  sub_1AF1A6084(a1 + 72);
  sub_1AF1A6084(a1 + 120);
  free(*(a1 + 176));
  free(*(a1 + 184));
  v4 = *(a1 + 200);
  if (v4)
  {
    free(v4);
  }

  v5 = *(a1 + 192);
  if (v5)
  {
    free(v5);
  }

  return sub_1AF16C9A4(a1, v3);
}

__CFString *sub_1AF1A5E98(void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = sub_1AF3753A8(a1);
  v5 = sub_1AF16CBEC(a1, v4);
  CFStringAppendFormat(Mutable, 0, @"<%s %p | %@\n", v3, a1, v5);
  if (sub_1AF1A3CCC(a1, v6) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = sub_1AF1A3D1C(a1, v7, 0);
      CFStringAppendFormat(Mutable, 0, @"  element%d: %@\n", v7++, v8);
    }

    while (v7 < sub_1AF1A3CCC(a1, v9));
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 0x40000000;
  v16[2] = sub_1AF1A60D0;
  v16[3] = &unk_1E7A7B3C0;
  v16[4] = Mutable;
  sub_1AF1A2BEC(a1, 0, v16);
  if (a1[15])
  {
    if (sub_1AF1A3CCC(a1, v10) >= 1)
    {
      v11 = 0;
      do
      {
        v12 = sub_1AF1A3D1C(a1, v11, 1);
        CFStringAppendFormat(Mutable, 0, @"  renderable element%d: %@\n", v11++, v12);
      }

      while (v11 < sub_1AF1A3CCC(a1, v13));
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 0x40000000;
    v15[2] = sub_1AF1A614C;
    v15[3] = &unk_1E7A7B3E0;
    v15[4] = Mutable;
    sub_1AF1A2BEC(a1, 1, v15);
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

void sub_1AF1A6084(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 32) = 0;
  }

  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }

  free(*(a1 + 40));
  *(a1 + 40) = 0;
}

void sub_1AF1A60D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  v9 = sub_1AF1ADAF8(a3);
  if (a4 < 1)
  {
    CFStringAppendFormat(v8, 0, @"  source %@ (channel:%d) : %@\n", v9, a5, a2);
  }

  else
  {
    CFStringAppendFormat(v8, 0, @"  source %@%d (channel:%d) : %@\n", v9, a4, a5, a2);
  }
}

void sub_1AF1A614C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = sub_1AF1ADAF8(a3);
  if (a4 < 1)
  {
    CFStringAppendFormat(v6, 0, @"  renderable source %@: %@\n", v7, a2);
  }

  else
  {
    CFStringAppendFormat(v6, 0, @"  renderable source %@%d: %@\n", v7, a4, a2);
  }
}

__CFArray *sub_1AF1A61C0(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v23 = 2;
  valuePtr = 5;
  v22 = a1 + 72;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v5, @"name", @"sources");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v23 = 0;
  valuePtr = 5;
  v22 = a1 + 192;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v9, @"name", @"boundingSphere");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v23 = 0;
  valuePtr = 5;
  v22 = a1 + 200;
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v16 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v13, @"name", @"boundingBox");
  CFDictionarySetValue(v13, @"type", v14);
  CFDictionarySetValue(v13, @"address", v16);
  CFDictionarySetValue(v13, @"semantic", v15);
  CFArrayAppendValue(Mutable, v13);
  CFRelease(v15);
  CFRelease(v13);
  CFRelease(v16);
  CFRelease(v14);
  v17 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v23 = 2;
  valuePtr = 5;
  v22 = a1 + 104;
  v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v20 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v17, @"name", @"meshElements");
  CFDictionarySetValue(v17, @"type", v18);
  CFDictionarySetValue(v17, @"address", v20);
  CFDictionarySetValue(v17, @"semantic", v19);
  CFArrayAppendValue(Mutable, v17);
  CFRelease(v19);
  CFRelease(v17);
  CFRelease(v20);
  CFRelease(v18);
  return Mutable;
}

uint64_t sub_1AF1A65CC(uint64_t a1, const void *a2)
{
  v4 = sub_1AF16CCC0(a1, a2);
  if (sub_1AF1D2AE0(v4, a2))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1AF1A6638(uint64_t a1, uint64_t a2, int a3)
{
  if (*a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  if (*a1)
  {
    Count = CFArrayGetCount(*a1);
    *a2 = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], Count, *a1);
    if (Count >= 1 && a3 != 0)
    {
      v8 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a1, v8);
        v11 = sub_1AF1AEF80(ValueAtIndex, v10);
        CFArraySetValueAtIndex(*a2, v8, v11);
        CFRelease(v11);
        ++v8;
      }

      while (Count != v8);
    }

    v12 = *(a1 + 40);
    free(*(a2 + 40));
    v13 = malloc_type_calloc(Count, 1uLL, 0x100004077774924uLL);
    *(a2 + 40) = v13;
    if (v12)
    {
      memcpy(v13, v12, Count);
    }
  }

  else
  {
    free(*(a2 + 40));
    *(a2 + 40) = malloc_type_calloc(0, 1uLL, 0x100004077774924uLL);
  }

  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1AF1A6764(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_1AF1A6780(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, v4, 0xCu);
}

BOOL sub_1AF1A67A0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

uint64_t sub_1AF1A67B8(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AC28 != -1)
  {
    sub_1AFDDBB98();
  }

  return qword_1ED73AC20;
}

uint64_t sub_1AF1A67F0()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED73AC20 = result;
  qword_1ED72EB20 = sub_1AF1AB2AC;
  return result;
}

uint64_t sub_1AF1A6834(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AC28 != -1)
  {
    sub_1AFDDBB98();
  }

  v3 = sub_1AF0D160C(qword_1ED73AC20, 0xD0uLL);
  if (!v3)
  {
    v4 = sub_1AF0D5194(0, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 128) = 0x10000;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 68) = 1;
  __asm { FMOV            V0.2S, #1.0 }

  *(v3 + 144) = _D0;
  *(v3 + 152) = 1065353216;
  return v3;
}

uint64_t sub_1AF1A68D0(uint64_t a1, uint64_t a2)
{
  if (qword_1EB658600 != -1)
  {
    sub_1AFDDBC24();
  }

  return qword_1EB658608;
}

uint64_t sub_1AF1A6908(uint64_t a1, uint64_t a2)
{
  result = sub_1AF1A6834(a1, a2);
  qword_1EB658608 = result;
  return result;
}

void sub_1AF1A6928(uint64_t a1, uint64_t a2, int a3, char a4, char a5, const void *a6, char a7)
{
  sub_1AF1A699C(a1, a2);
  *(a1 + 130) = a4;
  *(a1 + 131) = a5;
  *(a1 + 104) = a3;
  sub_1AF1A72F0(a1, a6, a7);
  free(*(a1 + 120));
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
}

void sub_1AF1A699C(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 88) = v2;
}

CFTypeRef sub_1AF1A69F0(uint64_t a1, uint64_t a2, int a3, char a4, char a5, const void *a6, char a7)
{
  sub_1AF1A699C(a1, a2);
  *(a1 + 130) = a4;
  *(a1 + 131) = a5;
  *(a1 + 104) = a3;
  sub_1AF1A72F0(a1, 0, a7);
  free(*(a1 + 120));
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  result = CFRetain(a6);
  *(a1 + 136) = result;
  return result;
}

uint64_t sub_1AF1A6A84(_BOOL8 a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDB4B8(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF1A6834(a1, a2);
  sub_1AF1A6AE4(v2, v10, 0);
  return v10;
}

void sub_1AF1A6AE4(_BOOL8 a1, uint64_t a2, int a3)
{
  v5 = a1;
  if (!a1 && (v6 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDAF5C(v6, a2, v7, v8, v9, v10, v11, v12);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v13 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDAFD4(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  *(a2 + 80) = *(v5 + 80);
  *(a2 + 88) = *(v5 + 88);
  v21 = *(v5 + 96);
  if (a3 && v21)
  {
    Copy = CFDataCreateCopy(0, v21);
    v23 = *(a2 + 96);
    if (v23 != Copy)
    {
      if (v23)
      {
        CFRelease(v23);
        *(a2 + 96) = 0;
      }

      if (Copy)
      {
        v24 = CFRetain(Copy);
      }

      else
      {
        v24 = 0;
      }

      *(a2 + 96) = v24;
    }

    CFRelease(Copy);
  }

  else
  {
    v25 = *(a2 + 96);
    if (v25 != v21)
    {
      if (v25)
      {
        CFRelease(v25);
        *(a2 + 96) = 0;
        v21 = *(v5 + 96);
      }

      if (v21)
      {
        v26 = CFRetain(v21);
      }

      else
      {
        v26 = 0;
      }

      *(a2 + 96) = v26;
    }
  }

  *(a2 + 104) = *(v5 + 104);
  free(*(a2 + 112));
  *(a2 + 112) = 0;
  if (*(v5 + 112))
  {
    v27 = 4 * *(v5 + 104);
    v28 = malloc_type_malloc(v27, 0xC790216EuLL);
    *(a2 + 112) = v28;
    memcpy(v28, *(v5 + 112), v27);
  }

  free(*(a2 + 120));
  *(a2 + 120) = 0;
  if (*(v5 + 120))
  {
    v29 = 2 * *(v5 + 128);
    v30 = malloc_type_malloc(v29, 0x1F92F807uLL);
    *(a2 + 120) = v30;
    memcpy(v30, *(v5 + 120), v29);
  }

  *(a2 + 128) = *(v5 + 128);
  sub_1AF16D160(v5, a2);
}

uint64_t sub_1AF1A6C8C(_BOOL8 a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDB4B8(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF1A6834(a1, a2);
  sub_1AF1A6AE4(v2, v10, 1);
  return v10;
}

CFTypeRef sub_1AF1A6CEC(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 168);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 168) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 168) = result;
  }

  return result;
}

uint64_t sub_1AF1A6D6C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 168);
}

uint64_t sub_1AF1A6DB4(CFArrayRef theArray, uint64_t a2)
{
  if (!theArray)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBC38(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    return 0;
  }

  v13 = Count;
  if (Count < 1)
  {
    ValueAtIndex = 0;
    v17 = 1;
  }

  else
  {
    v14 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v14);
      if (sub_1AF1A7034(ValueAtIndex, v16) < 6)
      {
        break;
      }

      if (v13 == ++v14)
      {
        ValueAtIndex = 0;
        LODWORD(v14) = 0;
        break;
      }
    }

    v17 = (v14 + 1);
  }

  v18 = sub_1AF1A707C(ValueAtIndex, v12);
  v20 = sub_1AF1A70CC(ValueAtIndex, v19);
  v22 = sub_1AF1A7034(ValueAtIndex, v21);
  v24 = v22;
  v25 = ValueAtIndex[80];
  if (v22 == 1)
  {
    v26 = sub_1AF0D5194(v22, v23);
    v22 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      sub_1AFDDBCB0();
    }
  }

  while (1)
  {
    if (v13 <= v17)
    {
      v29 = sub_1AF1A6834(v22, v23);
      v31 = sub_1AF1A6D6C(ValueAtIndex, v30);
      sub_1AF1A6CEC(v29, v31);
      sub_1AF1A718C(v29, v18);
      sub_1AF1A699C(v29, v24);
      Mutable = CFDataCreateMutable(0, v20 * v25);
      CFDataSetLength(Mutable, v20 * v25);
      MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
      if (v13 >= 1)
      {
        v35 = MutableBytePtr;
        for (i = 0; i != v13; ++i)
        {
          v37 = CFArrayGetValueAtIndex(theArray, i);
          if (sub_1AF1A7034(v37, v38) <= 5)
          {
            Length = CFDataGetLength(v37[12]);
            BytePtr = CFDataGetBytePtr(v37[12]);
            memcpy(v35, BytePtr, Length);
            v35 += Length;
          }
        }
      }

      v41 = sub_1AF1A71E0(v29, v34);
      if (v41 <= 1)
      {
        v42 = 1;
      }

      else
      {
        v42 = v41;
      }

      *(v29 + 104) = v20 / v42;
      sub_1AF1A72F0(v29, Mutable, v25);
      free(*(v29 + 120));
      *(v29 + 120) = 0;
      *(v29 + 128) = 0;
      CFRelease(Mutable);
      return v29;
    }

    v27 = CFArrayGetValueAtIndex(theArray, v17);
    v22 = sub_1AF1A7034(v27, v28);
    if (v22 <= 5)
    {
      break;
    }

LABEL_18:
    ++v17;
  }

  v22 = sub_1AF1A70CC(v27, v23);
  if (v25 == v27[80])
  {
    v20 += v22;
    goto LABEL_18;
  }

  v43 = sub_1AF0D5194(v22, v23);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDDBCEC();
  }

  return 0;
}

uint64_t sub_1AF1A7034(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 88);
}

BOOL sub_1AF1A707C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 81) != 0;
}

uint64_t sub_1AF1A70CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF1A7034(a1, a2);
  v4 = *(a1 + 104);
  if (v3 == 4)
  {
    v5 = *(a1 + 80);
    Length = CFDataGetLength(*(a1 + 96));
    BytePtr = CFDataGetBytePtr(*(a1 + 96));
    if (!v4)
    {
      return 0;
    }

    v8 = BytePtr;
    v9 = 0;
    v10 = 0;
    do
    {
      v9 += sub_1AF1A781C(v8, v10, v5, Length);
      v10 = (v10 + 1);
    }

    while (v4 != v10);
    return v9;
  }

  else
  {
    v11 = *(a1 + 104);

    return sub_1AF1A7944(v3, v11);
  }
}

void sub_1AF1A718C(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 81) = v2;
}

uint64_t sub_1AF1A71E0(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 88);
  if (v2 < 4)
  {
    return qword_1AFE21BE8[v2];
  }

  v4 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "CFXMeshElementGetIndexCountPerPrimitive";
    _os_log_impl(&dword_1AF0CE000, v4, OS_LOG_TYPE_DEFAULT, "Warning: %s does not support non-renderable topologies.", &v5, 0xCu);
  }

  return 0;
}

void sub_1AF1A72A0(uint64_t a1, int a2, CFTypeRef cf, char a4)
{
  *(a1 + 104) = a2;
  sub_1AF1A72F0(a1, cf, a4);
  free(*(a1 + 120));
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
}

void sub_1AF1A72F0(uint64_t a1, CFTypeRef cf, char a3)
{
  *(a1 + 80) = a3;
  v4 = *(a1 + 96);
  if (v4 != cf)
  {
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 96) = 0;
    }

    if (cf)
    {
      v4 = CFRetain(cf);
    }

    else
    {
      v4 = 0;
    }

    *(a1 + 96) = v4;
  }

  if (*(a1 + 112))
  {
    free(*(a1 + 112));
    *(a1 + 112) = 0;
    v4 = *(a1 + 96);
  }

  if (v4)
  {
    Length = CFDataGetLength(v4);
    v7 = *(a1 + 64);
    v8 = *(a1 + 80);
    v10 = sub_1AF1A70CC(a1, v9);
    if (Length < v7 + v10 * v8)
    {
      v12 = sub_1AF0D5194(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDDBD28();
      }

      v13 = *(a1 + 96);
      if (v13)
      {
        CFRelease(v13);
        *(a1 + 96) = 0;
      }
    }
  }
}

uint64_t sub_1AF1A73C0(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 80);
  }

  return *(a1 + 96);
}

uint64_t sub_1AF1A73D4(uint64_t a1)
{
  if (*(a1 + 128) == 1)
  {
    return **(a1 + 120);
  }

  else
  {
    return -1;
  }
}

void *sub_1AF1A73F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  result = *(a1 + 120);
  if (!v6)
  {
    result = malloc_type_realloc(result, 0x10uLL, 0x1000040451B5BE8uLL);
    *(a1 + 120) = result;
  }

  *result = a2;
  result[1] = a3;
  *(a1 + 128) = 1;
  return result;
}

uint64_t sub_1AF1A745C(uint64_t a1, _WORD *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 128);
  }

  return *(a1 + 120);
}

void sub_1AF1A7470(uint64_t a1, uint64_t a2, __int16 a3)
{
  free(*(a1 + 120));
  *(a1 + 120) = a2;
  *(a1 + 128) = a3;
}

uint64_t sub_1AF1A74B0(uint64_t result, uint64_t a2)
{
  if (*(result + 120))
  {
    v2 = result;
    if (*(result + 128))
    {
      v4 = 0;
      v5 = 0;
      do
      {
        result = (*(a2 + 16))(a2, *(*(v2 + 120) + v4), *(*(v2 + 120) + v4 + 8));
        ++v5;
        v4 += 16;
      }

      while (v5 < *(v2 + 128));
    }
  }

  return result;
}

uint64_t sub_1AF1A7530(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (!v1)
  {
    return *(a1 + 104);
  }

  v2 = *(a1 + 128);
  if (!*(a1 + 128))
  {
    return 0;
  }

  result = 0;
  v4 = (v1 + 8);
  do
  {
    v5 = *v4;
    v4 += 2;
    result += v5;
    --v2;
  }

  while (v2);
  return result;
}

uint64_t sub_1AF1A756C(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 120))
  {
    v4 = *(result + 128);
    if (*(result + 128))
    {
      v5 = 0;
      do
      {
        v6 = (*(v3 + 120) + 16 * v5);
        v7 = *v6;
        v8 = *(v6 + 1);
        if (v7 < v8 + v7)
        {
          do
          {
            result = (*(a2 + 16))(a2, v7);
            v7 = (v7 + 1);
            LODWORD(v8) = v8 - 1;
          }

          while (v8);
          v4 = *(v3 + 128);
        }

        ++v5;
      }

      while (v5 < v4);
    }
  }

  else if (*(result + 104))
  {
    v9 = 0;
    do
    {
      result = (*(a2 + 16))(a2, v9);
      v9 = (v9 + 1);
    }

    while (v9 < *(v3 + 104));
  }

  return result;
}

uint64_t sub_1AF1A767C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = *(a1 + 130);
  if ((a2 & 0x8000000000000000) != 0 || v6 <= a2)
  {
    v7 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBD64(v6, v3, v7);
    }
  }

  v8 = *(a1 + 131);
  if ((v8 & 1) == 0)
  {
    v3 *= sub_1AF1A70CC(a1, a2);
  }

  v9 = *(a1 + 96);
  if (v9)
  {
    BytePtr = CFDataGetBytePtr(v9);
    v11 = *(a1 + 96);
    if (v11)
    {
      Length = CFDataGetLength(v11);
      goto LABEL_12;
    }
  }

  else
  {
    BytePtr = 0;
  }

  Length = 0;
LABEL_12:
  result = sub_1AF1A7034(a1, a2);
  if (BytePtr)
  {
    v14 = result == 4;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 104);
  v16 = *(a1 + 80);
  v17 = (v15 * v16);
  if (!v14)
  {
    v17 = 0;
  }

  *a3 = &BytePtr[v17];
  *(a3 + 8) = Length - v17;
  if (v8)
  {
    v18 = v6;
  }

  else
  {
    v18 = 1;
  }

  v19 = *(a1 + 120);
  *(a3 + 16) = 0;
  *(a3 + 24) = v19;
  *(a3 + 16) = v15;
  v20 = *(a1 + 128);
  if (result == 4)
  {
    v21 = BytePtr;
  }

  else
  {
    v21 = 0;
  }

  *(a3 + 32) = 0;
  *(a3 + 40) = v21;
  *(a3 + 32) = v20;
  *(a3 + 34) = *(a1 + 88);
  *(a3 + 35) = v16;
  *(a3 + 48) = v3;
  *(a3 + 56) = v18;
  return result;
}

uint64_t sub_1AF1A7798(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) == 4)
  {
    Length = CFDataGetLength(*(a1 + 96));
    BytePtr = CFDataGetBytePtr(*(a1 + 96));
    return sub_1AF1A781C(BytePtr, a2, *(a1 + 80), Length);
  }

  else
  {

    return sub_1AF1A71E0(a1, a2);
  }
}

uint64_t sub_1AF1A781C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = a2;
  v13 = *MEMORY[0x1E69E9840];
  if ((a2 + 1) * a3 <= a4)
  {
    switch(a3)
    {
      case 4uLL:
        return *(a1 + 4 * a2);
      case 2uLL:
        return *(a1 + 2 * a2);
      case 1uLL:
        return *(a1 + a2);
      default:
        v9 = sub_1AF0D5194(a1, a2);
        result = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
        if (result)
        {
          sub_1AFDDBE00(a3, v9);
          return 0;
        }

        break;
    }
  }

  else
  {
    v7 = sub_1AF0D5194(a1, a2);
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v10[0] = 67109376;
      v10[1] = v5;
      v11 = 2048;
      v12 = a4 / a3;
      _os_log_error_impl(&dword_1AF0CE000, v7, OS_LOG_TYPE_ERROR, "Error: __readIndexInBuffer - index (%u) out of bounds (%lu)", v10, 0x12u);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AF1A7944(uint64_t a1, uint64_t a2)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      a2 *= 3;
      return a2;
    }

    if (a1 == 1)
    {
      goto LABEL_5;
    }

LABEL_8:
    v2 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDBEA0();
    }

    return 0;
  }

  if (a1 == 2)
  {
    a2 *= 2;
    return a2;
  }

  if (a1 != 3)
  {
    if (a1 == 5)
    {
LABEL_5:
      a2 += 2;
      return a2;
    }

    goto LABEL_8;
  }

  return a2;
}

const UInt8 *sub_1AF1A79D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if (*(a1 + 88) == 4)
  {
    sub_1AF1A7ABC(a1, a2);
    *a3 = *(a1 + 112);
    *(a3 + 8) = *(a1 + 104);
    v13 = 1;
  }

  else
  {
    v14 = sub_1AF1A71E0(a1, a2);
    v13 = 0;
    *a3 = v14;
  }

  *(a3 + 37) = *(a1 + 130);
  *(a3 + 38) = v13 | (2 * *(a1 + 131));
  *(a3 + 32) = sub_1AF1A70CC(a1, v12);
  v15 = *(a1 + 96);
  if (v15)
  {
    v16 = *(a1 + 80);
    Length = CFDataGetLength(*(a1 + 96));
    result = CFDataGetBytePtr(v15);
  }

  else
  {
    v16 = 0;
    Length = 0;
    result = 0;
  }

  *(a3 + 36) = v16;
  *(a3 + 16) = result;
  *(a3 + 24) = Length;
  return result;
}

uint64_t sub_1AF1A7ABC(uint64_t result, uint64_t a2)
{
  if (!*(result + 112))
  {
    v2 = result;
    if (*(result + 88) != 4)
    {
      v3 = sub_1AF0D5194(result, a2);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDBEDC(v3, v4, v5, v6, v7, v8, v9, v10);
      }
    }

    v11 = *(v2 + 80);
    Length = CFDataGetLength(*(v2 + 96));
    result = CFDataGetBytePtr(*(v2 + 96));
    if (result)
    {
      v13 = result;
      v14 = *(v2 + 104);
      result = malloc_type_malloc(4 * v14, 0x100004052888210uLL);
      *(v2 + 112) = result;
      if (v14)
      {
        v15 = 0;
        v16 = 0;
        do
        {
          result = sub_1AF1A781C(v13, v15, v11, Length);
          v16 += result;
          *(*(v2 + 112) + 4 * v15++) = v16;
        }

        while (v14 != v15);
      }
    }
  }

  return result;
}

uint64_t sub_1AF1A7BA8(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (*(a1 + 38))
  {
    v4 = 0;
    v5 = *(a1 + 8);
    if (a2 >= 1 && *a1)
    {
      v4 = *(*a1 + 4 * a2 - 4);
    }

    if ((*(a1 + 38) & 2) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    v4 = *a1 * a2;
    if ((*(a1 + 38) & 2) == 0)
    {
LABEL_6:
      a4 *= *(a1 + 32);
      v6 = 1;
      goto LABEL_9;
    }
  }

  v6 = *(a1 + 37);
LABEL_9:
  if (*(a1 + 16))
  {
    return sub_1AF1A781C(*(a1 + 16), (a4 + v5 + v6 * (v4 + a3)), *(a1 + 36), *(a1 + 24));
  }

  else
  {
    return (a4 + v5 + v6 * (v4 + a3));
  }
}

uint64_t sub_1AF1A7C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v8 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v8, a2, v9, v10, v11, v12, v13, v14);
    }
  }

  if (*(a1 + 88) == 4)
  {
    v15 = *(a1 + 104);
    sub_1AF1A7ABC(a1, a2);
    v17 = 0;
    if (a2 >= 1)
    {
      v18 = *(a1 + 112);
      if (v18)
      {
        v17 = *(v18 + 4 * a2 - 4);
      }
    }
  }

  else
  {
    v15 = 0;
    v17 = sub_1AF1A71E0(a1, a2) * a2;
  }

  if (*(a1 + 131))
  {
    v19 = *(a1 + 130);
  }

  else
  {
    a4 *= sub_1AF1A70CC(a1, v16);
    v19 = 1;
  }

  v20 = a4 + v15 + v19 * (a3 + v17);
  v21 = *(a1 + 96);
  if (!v21)
  {
    return v20;
  }

  v22 = *(a1 + 80);
  Length = CFDataGetLength(v21);
  BytePtr = CFDataGetBytePtr(v21);
  return sub_1AF1A781C(BytePtr, v20, v22, Length);
}

uint64_t sub_1AF1A7D34(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = sub_1AF1A70CC(a1, a2);
  v14 = *(a1 + 80);
  Length = CFDataGetLength(*(a1 + 96));
  BytePtr = CFDataGetBytePtr(*(a1 + 96));
  v17 = BytePtr;
  if (*(a1 + 88) == 4)
  {
    v18 = *(a1 + 104);
    v17 = &BytePtr[v18 * v14];
    Length -= v18 * v14;
  }

  if (*(a1 + 131) == 1)
  {
    if (v13)
    {
      v19 = 0;
      while (1)
      {
        v20 = sub_1AF1A781C(v17, v4 + v19 * *(a1 + 130), v14, Length);
        if (v20 != sub_1AF1A781C(v17, a3 + v19 * *(a1 + 130), v14, Length))
        {
          break;
        }

        if (v13 == ++v19)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  else if (memcmp((v17 + v14 * (v13 * v4)), (v17 + v14 * (v13 * a3)), v13 * v14))
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1AF1A7E6C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 130);
  if (v11 < 2)
  {
    return 1;
  }

  for (i = 1; i < v11; ++i)
  {
    result = sub_1AF1A7D34(a1, 0, i);
    if (!result)
    {
      break;
    }
  }

  return result;
}

uint64_t sub_1AF1A7EF0(uint64_t result)
{
  if (*(result + 72))
  {
    return *(result + 72);
  }

  return result;
}

uint64_t sub_1AF1A7F00(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 64);
}

uint64_t sub_1AF1A7F48(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 68);
}

uint64_t sub_1AF1A7F90(uint64_t a1, uint64_t a2)
{
  result = sub_1AF1A6834(a1, a2);
  *(result + 82) = 1;
  return result;
}

BOOL sub_1AF1A7FB0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 82) != 0;
}

void sub_1AF1A8000(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 160) = a2;
}

uint64_t sub_1AF1A8054(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 160);
}

uint64_t sub_1AF1A809C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 80);
}

void sub_1AF1A80E4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3.n128_u64[0] = MEMORY[0x1E69E9820];
  a3.n128_u64[0] = 0x40000000;
  v3.n128_u64[1] = 0x40000000;
  v4 = sub_1AF1A9C88;
  v5 = &unk_1E7A7B448;
  v6 = a2;
  sub_1AF1A8154(a1, 1, &v3, a3);
}

void sub_1AF1A8154(uint64_t a1, uint64_t a2, __n128 *a3, __n128 a4)
{
  v246 = a3;
  v4 = a2;
  v261 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 34);
  v248 = *(a1 + 16);
  v6 = *(a1 + 35);
  v247 = a1;
  v7 = *(a1 + 40);
  v250 = 0;
  v242 = a2;
  if (v5 <= 2)
  {
    if (v5 >= 2)
    {
      if (a2 == 1)
      {
        v8 = *v247;
        v9 = *(v247 + 8);
        v10 = *(v247 + 48);
        v11 = *(v247 + 56);
        if (v6 == 1)
        {
          if (v248)
          {
            v207 = 0;
            v208 = 1;
            a4.n128_u64[0] = 67109376;
            v249 = a4;
            do
            {
              v209 = v10 + v11 * (v208 - 1);
              v210 = v10 + v11 * v208;
              if (v210 <= v209)
              {
                v211 = v10 + v11 * (v208 - 1);
              }

              else
              {
                v211 = v10 + v11 * v208;
              }

              if (v9 >= (v211 + 1))
              {
                *v251 = v8->n128_u8[v209];
                v213 = v8->n128_u8[v210];
              }

              else
              {
                v212 = sub_1AF0D5194(a1, a2);
                if (os_log_type_enabled(v212, OS_LOG_TYPE_ERROR))
                {
                  *buf = v249.n128_u32[0];
                  *&buf[4] = v211;
                  *&buf[8] = 2048;
                  *&buf[10] = v9;
                  _os_log_error_impl(&dword_1AF0CE000, v212, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v213 = 0;
                *v251 = 0;
              }

              *&v251[4] = v213;
              a1 = (v246[1].n128_u64[0])(v246, v207, v251, 2, &v250);
              if (v250)
              {
                break;
              }

              ++v207;
              v208 += 2;
            }

            while (v248 != v207);
          }
        }

        else if (v6 == 2)
        {
          if (v248)
          {
            v182 = 0;
            v183 = 1;
            a4.n128_u64[0] = 67109376;
            v249 = a4;
            do
            {
              v184 = v10 + v11 * (v183 - 1);
              v185 = v10 + v11 * v183;
              if (v185 <= v184)
              {
                v186 = v10 + v11 * (v183 - 1);
              }

              else
              {
                v186 = v10 + v11 * v183;
              }

              if (v9 >= (2 * v186 + 2))
              {
                *v251 = v8->n128_u16[v184];
                v188 = v8->n128_u16[v185];
              }

              else
              {
                v187 = sub_1AF0D5194(a1, a2);
                if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
                {
                  *buf = v249.n128_u32[0];
                  *&buf[4] = v186;
                  *&buf[8] = 2048;
                  *&buf[10] = v9 >> 1;
                  _os_log_error_impl(&dword_1AF0CE000, v187, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v188 = 0;
                *v251 = 0;
              }

              *&v251[4] = v188;
              a1 = (v246[1].n128_u64[0])(v246, v182, v251, 2, &v250);
              if (v250)
              {
                break;
              }

              ++v182;
              v183 += 2;
            }

            while (v248 != v182);
          }
        }

        else if (v6 == 4 && v248)
        {
          v12 = 0;
          v13 = 1;
          a4.n128_u64[0] = 67109376;
          v249 = a4;
          do
          {
            v14 = v10 + v11 * (v13 - 1);
            v15 = v10 + v11 * v13;
            if (v15 <= v14)
            {
              v16 = v10 + v11 * (v13 - 1);
            }

            else
            {
              v16 = v10 + v11 * v13;
            }

            if (v9 >= (4 * v16 + 4))
            {
              *v251 = v8->n128_u32[v14];
              v18 = v8->n128_u32[v15];
            }

            else
            {
              v17 = sub_1AF0D5194(a1, a2);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = v249.n128_u32[0];
                *&buf[4] = v16;
                *&buf[8] = 2048;
                *&buf[10] = v9 >> 2;
                _os_log_error_impl(&dword_1AF0CE000, v17, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
              }

              v18 = 0;
              *v251 = 0;
            }

            *&v251[4] = v18;
            a1 = (v246[1].n128_u64[0])(v246, v12, v251, 2, &v250);
            if (v250)
            {
              break;
            }

            ++v12;
            v13 += 2;
          }

          while (v248 != v12);
        }
      }

      else
      {
        *&v244 = &v232;
        MEMORY[0x1EEE9AC00](a1);
        v249.n128_u64[0] = v232.n128_u64 - v138;
        if (v6 == 1)
        {
          if (v248)
          {
            v214 = 0;
            v245 = v246 + 1;
            v215 = 4 * v136;
            v243.n128_u64[0] = v247 + 35;
            *&v137 = 67109376;
            v241 = v137;
            do
            {
              v247 = v214;
              if (v4)
              {
                v216 = 0;
                v217 = 2 * v247;
                v218 = (2 * v247) | 1;
                v219 = v243.n128_u64[0];
                v220 = v249.n128_u64[0];
                do
                {
                  v221 = *(v219 - 27);
                  v222 = *v219;
                  v223 = *(v219 + 13);
                  v224 = *(v219 + 21);
                  v225 = v223 + v224 * v217;
                  v226 = v223 + v224 * v218;
                  if (v226 <= v225)
                  {
                    v227 = v225;
                  }

                  else
                  {
                    v227 = v226;
                  }

                  if (v221 >= v222 + v222 * v227)
                  {
                    v230 = *(v219 - 35);
                    *v220 = *(v230 + v225);
                    v229 = *(v230 + v226);
                  }

                  else
                  {
                    v228 = sub_1AF0D5194(v134, v135);
                    v134 = os_log_type_enabled(v228, OS_LOG_TYPE_ERROR);
                    if (v134)
                    {
                      *buf = v241;
                      *&buf[4] = v227;
                      *&buf[8] = 2048;
                      *&buf[10] = v221 / v222;
                      _os_log_error_impl(&dword_1AF0CE000, v228, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                    }

                    v229 = 0;
                  }

                  v219 += 64;
                  v220[v215 / 4] = v229;
                  ++v220;
                  v216 += 4;
                }

                while (v215 != v216);
              }

              v231 = v247;
              v134 = (v246[1].n128_u64[0])(v246, v247, v249.n128_u64[0], 2, &v250);
              if (v250)
              {
                break;
              }

              v214 = v231 + 1;
              v4 = v242;
            }

            while (v214 != v248);
          }
        }

        else if (v6 == 2)
        {
          if (v248)
          {
            v189 = 0;
            v245 = v246 + 1;
            v190 = 4 * v136;
            v243.n128_u64[0] = v247 + 35;
            *&v137 = 67109376;
            v241 = v137;
            do
            {
              v247 = v189;
              if (v4)
              {
                v191 = 0;
                v192 = 2 * v247;
                v193 = (2 * v247) | 1;
                v194 = v243.n128_u64[0];
                v195 = v249.n128_u64[0];
                do
                {
                  v196 = *(v194 - 27);
                  v197 = *v194;
                  v198 = *(v194 + 13);
                  v199 = *(v194 + 21);
                  v200 = v198 + v199 * v192;
                  v201 = v198 + v199 * v193;
                  if (v201 <= v200)
                  {
                    v202 = v200;
                  }

                  else
                  {
                    v202 = v201;
                  }

                  if (v196 >= v197 + v197 * v202)
                  {
                    v205 = *(v194 - 35);
                    *v195 = *(v205 + 2 * v200);
                    v204 = *(v205 + 2 * v201);
                  }

                  else
                  {
                    v203 = sub_1AF0D5194(v134, v135);
                    v134 = os_log_type_enabled(v203, OS_LOG_TYPE_ERROR);
                    if (v134)
                    {
                      *buf = v241;
                      *&buf[4] = v202;
                      *&buf[8] = 2048;
                      *&buf[10] = v196 / v197;
                      _os_log_error_impl(&dword_1AF0CE000, v203, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                    }

                    v204 = 0;
                  }

                  v194 += 64;
                  v195[v190 / 4] = v204;
                  ++v195;
                  v191 += 4;
                }

                while (v190 != v191);
              }

              v206 = v247;
              v134 = (v246[1].n128_u64[0])(v246, v247, v249.n128_u64[0], 2, &v250);
              if (v250)
              {
                break;
              }

              v189 = v206 + 1;
              v4 = v242;
            }

            while (v189 != v248);
          }
        }

        else if (v6 == 4 && v248)
        {
          v139 = 0;
          v245 = v246 + 1;
          v140 = 4 * v136;
          v243.n128_u64[0] = v247 + 35;
          *&v137 = 67109376;
          v241 = v137;
          do
          {
            v247 = v139;
            if (v4)
            {
              v141 = 0;
              v142 = 2 * v247;
              v143 = (2 * v247) | 1;
              v144 = v243.n128_u64[0];
              v145 = v249.n128_u64[0];
              do
              {
                v146 = *(v144 - 27);
                v147 = *v144;
                v148 = *(v144 + 13);
                v149 = *(v144 + 21);
                v150 = v148 + v149 * v142;
                v151 = v148 + v149 * v143;
                if (v151 <= v150)
                {
                  v152 = v150;
                }

                else
                {
                  v152 = v151;
                }

                if (v146 >= v147 + v147 * v152)
                {
                  v155 = *(v144 - 35);
                  *v145 = *(v155 + 4 * v150);
                  v154 = *(v155 + 4 * v151);
                }

                else
                {
                  v153 = sub_1AF0D5194(v134, v135);
                  v134 = os_log_type_enabled(v153, OS_LOG_TYPE_ERROR);
                  if (v134)
                  {
                    *buf = v241;
                    *&buf[4] = v152;
                    *&buf[8] = 2048;
                    *&buf[10] = v146 / v147;
                    _os_log_error_impl(&dword_1AF0CE000, v153, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                  }

                  v154 = 0;
                }

                v144 += 64;
                v145[v140 / 4] = v154;
                ++v145;
                v141 += 4;
              }

              while (v140 != v141);
            }

            v156 = v247;
            v134 = (v246[1].n128_u64[0])(v246, v247, v249.n128_u64[0], 2, &v250);
            if (v250)
            {
              break;
            }

            v139 = v156 + 1;
            v4 = v242;
          }

          while (v139 != v248);
        }
      }

      return;
    }

    goto LABEL_102;
  }

  switch(v5)
  {
    case 3:
      if (a2 == 1)
      {
        v110 = *v247;
        v111 = *(v247 + 8);
        v112 = *(v247 + 48);
        v113 = *(v247 + 56);
        *v251 = 0;
        if (v6 == 1)
        {
          if (v248)
          {
            v170 = 0;
            a4.n128_u64[0] = 67109376;
            v249 = a4;
            do
            {
              if (v111 >= (v112 + 1))
              {
                v172 = v110->n128_u8[v112];
              }

              else
              {
                v171 = sub_1AF0D5194(a1, a2);
                if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
                {
                  *buf = v249.n128_u32[0];
                  *&buf[4] = v112;
                  *&buf[8] = 2048;
                  *&buf[10] = v111;
                  _os_log_error_impl(&dword_1AF0CE000, v171, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v172 = 0;
              }

              *v251 = v172;
              a1 = (v246[1].n128_u64[0])(v246, v170, v251, 1, &v250);
              if (v250)
              {
                break;
              }

              ++v170;
              LODWORD(v112) = v112 + v113;
            }

            while (v248 != v170);
          }
        }

        else if (v6 == 2)
        {
          if (v248)
          {
            v157 = 0;
            v158 = 2 * v112 + 2;
            a4.n128_u64[0] = 67109376;
            v249 = a4;
            do
            {
              if (v111 >= (v158 & 0xFFFFFFFE))
              {
                v160 = v110->n128_u16[v112];
              }

              else
              {
                v159 = sub_1AF0D5194(a1, a2);
                if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
                {
                  *buf = v249.n128_u32[0];
                  *&buf[4] = v112;
                  *&buf[8] = 2048;
                  *&buf[10] = v111 >> 1;
                  _os_log_error_impl(&dword_1AF0CE000, v159, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v160 = 0;
              }

              *v251 = v160;
              a1 = (v246[1].n128_u64[0])(v246, v157, v251, 1, &v250);
              if (v250)
              {
                break;
              }

              ++v157;
              v158 += 2 * v113;
              LODWORD(v112) = v112 + v113;
            }

            while (v248 != v157);
          }
        }

        else if (v6 == 4 && v248)
        {
          v114 = 0;
          v115 = 4 * v112 + 4;
          a4.n128_u64[0] = 67109376;
          v249 = a4;
          do
          {
            if (v111 >= (v115 & 0xFFFFFFFC))
            {
              v117 = v110->n128_i32[v112];
            }

            else
            {
              v116 = sub_1AF0D5194(a1, a2);
              if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
              {
                *buf = v249.n128_u32[0];
                *&buf[4] = v112;
                *&buf[8] = 2048;
                *&buf[10] = v111 >> 2;
                _os_log_error_impl(&dword_1AF0CE000, v116, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
              }

              v117 = 0;
            }

            *v251 = v117;
            a1 = (v246[1].n128_u64[0])(v246, v114, v251, 1, &v250);
            if (v250)
            {
              break;
            }

            ++v114;
            v115 += 4 * v113;
            LODWORD(v112) = v112 + v113;
          }

          while (v248 != v114);
        }
      }

      else
      {
        v245 = &v232;
        v119 = a2;
        MEMORY[0x1EEE9AC00](a1);
        v124 = &v232 - v123;
        if (v6 == 1)
        {
          if (v248)
          {
            v173 = 0;
            v249.n128_u64[0] = v246[1].n128_u64;
            v247 += 35;
            *&v122 = 67109376;
            v244 = v122;
            do
            {
              v174 = v119;
              v175 = v247;
              v176 = v124;
              if (v242)
              {
                do
                {
                  v177 = *(v175 - 27);
                  v178 = *v175;
                  v179 = *(v175 + 13) + *(v175 + 21) * v173;
                  if (v177 >= v178 + v178 * v179)
                  {
                    v181 = *(*(v175 - 35) + v179);
                  }

                  else
                  {
                    v180 = sub_1AF0D5194(v120, v121);
                    v120 = os_log_type_enabled(v180, OS_LOG_TYPE_ERROR);
                    if (v120)
                    {
                      *buf = v244;
                      *&buf[4] = v179;
                      *&buf[8] = 2048;
                      *&buf[10] = v177 / v178;
                      _os_log_error_impl(&dword_1AF0CE000, v180, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                    }

                    v181 = 0;
                  }

                  v175 += 64;
                  *v176 = v181;
                  v176 += 4;
                  --v174;
                }

                while (v174);
              }

              v120 = (v246[1].n128_u64[0])(v246, v173, v124, 1, &v250);
              if (v250)
              {
                break;
              }

              ++v173;
            }

            while (v173 != v248);
          }
        }

        else if (v6 == 2)
        {
          if (v248)
          {
            v161 = 0;
            v249.n128_u64[0] = v246[1].n128_u64;
            v247 += 35;
            *&v122 = 67109376;
            v244 = v122;
            do
            {
              v162 = v119;
              v163 = v247;
              v164 = v124;
              if (v242)
              {
                do
                {
                  v165 = *(v163 - 27);
                  v166 = *v163;
                  v167 = *(v163 + 13) + *(v163 + 21) * v161;
                  if (v165 >= v166 + v166 * v167)
                  {
                    v169 = *(*(v163 - 35) + 2 * v167);
                  }

                  else
                  {
                    v168 = sub_1AF0D5194(v120, v121);
                    v120 = os_log_type_enabled(v168, OS_LOG_TYPE_ERROR);
                    if (v120)
                    {
                      *buf = v244;
                      *&buf[4] = v167;
                      *&buf[8] = 2048;
                      *&buf[10] = v165 / v166;
                      _os_log_error_impl(&dword_1AF0CE000, v168, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                    }

                    v169 = 0;
                  }

                  v163 += 64;
                  *v164 = v169;
                  v164 += 4;
                  --v162;
                }

                while (v162);
              }

              v120 = (v246[1].n128_u64[0])(v246, v161, v124, 1, &v250);
              if (v250)
              {
                break;
              }

              ++v161;
            }

            while (v161 != v248);
          }
        }

        else if (v6 == 4 && v248)
        {
          v125 = 0;
          v249.n128_u64[0] = v246[1].n128_u64;
          v247 += 35;
          *&v122 = 67109376;
          v244 = v122;
          do
          {
            v126 = v119;
            v127 = v247;
            v128 = v124;
            if (v242)
            {
              do
              {
                v129 = *(v127 - 27);
                v130 = *v127;
                v131 = *(v127 + 13) + *(v127 + 21) * v125;
                if (v129 >= v130 + v130 * v131)
                {
                  v133 = *(*(v127 - 35) + 4 * v131);
                }

                else
                {
                  v132 = sub_1AF0D5194(v120, v121);
                  v120 = os_log_type_enabled(v132, OS_LOG_TYPE_ERROR);
                  if (v120)
                  {
                    *buf = v244;
                    *&buf[4] = v131;
                    *&buf[8] = 2048;
                    *&buf[10] = v129 / v130;
                    _os_log_error_impl(&dword_1AF0CE000, v132, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                  }

                  v133 = 0;
                }

                v127 += 64;
                *v128 = v133;
                v128 += 4;
                --v126;
              }

              while (v126);
            }

            v120 = (v246[1].n128_u64[0])(v246, v125, v124, 1, &v250);
            if (v250)
            {
              break;
            }

            ++v125;
          }

          while (v125 != v248);
        }
      }

      break;
    case 5:
LABEL_102:
      if (a2 == 1)
      {
        v93 = *(v247 + 16);
        *buf = *v247;
        *&buf[16] = v93;
        v94 = *(v247 + 48);
        v256 = *(v247 + 32);
        v257 = v94;
        if (v248)
        {
          for (i = 0; i != v248; ++i)
          {
            *v251 = *buf;
            v252 = *&buf[16];
            v253 = v256;
            v254 = v257;
            sub_1AF1A9E00(v251, i, &v258, &v259, &v260);
            (v246[1].n128_u64[0])(v246, i, &v258, 3, &v250);
            if (v250 == 1)
            {
              break;
            }
          }
        }
      }

      else
      {
        v245 = &v232;
        v96.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
        v98 = &v232 - v97;
        if (v248)
        {
          v99 = 0;
          v100 = v242;
          v249.n128_u64[0] = v246[1].n128_u64;
          v101 = &v98[8 * v242];
          v102 = &v98[4 * v242];
          do
          {
            v103 = v100;
            v104 = v98;
            v105 = v247;
            v106 = v102;
            v107 = v101;
            if (v242)
            {
              do
              {
                v108 = v105[1];
                *buf = *v105;
                *&buf[16] = v108;
                v109 = v105[3];
                v256 = v105[2];
                v257 = v109;
                sub_1AF1A9E00(buf, v99, v104, v106, v107);
                v107 += 4;
                v106 += 4;
                v105 += 4;
                v104 += 4;
                --v103;
              }

              while (v103);
            }

            (v246[1].n128_u64[0])(v246, v99, v98, 3, &v250, v96);
            if (v250)
            {
              break;
            }

            ++v99;
          }

          while (v99 != v248);
        }
      }

      return;
    case 4:
      if (!v248)
      {
        return;
      }

      v19 = 0;
      v249.n128_u32[0] = 0;
      v234 = v246 + 1;
      *&v244 = a2;
      a4.n128_u64[0] = 67109376;
      v243 = a4;
      a4.n128_u64[0] = 67109120;
      v232 = a4;
      v236 = v6;
      v235 = v7;
      while (1)
      {
        switch(v6)
        {
          case 4:
            v20 = *(v7 + 4 * v19);
            break;
          case 2:
            v20 = *(v7 + 2 * v19);
            break;
          case 1:
            v20 = *(v7 + v19);
            break;
          default:
            LODWORD(v20) = 0;
LABEL_44:
            v35 = sub_1AF0D5194(a1, a2);
            a1 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
            if (a1)
            {
              sub_1AFDDBF54(v251, &v251[1], v35);
            }

            goto LABEL_100;
        }

        if (v20 <= 2)
        {
          goto LABEL_44;
        }

        v237 = v19;
        v238 = v20;
        if (v4 == 1)
        {
          v21 = *(v247 + 8);
          v245 = *v247;
          v22 = *(v247 + 35);
          v23 = *(v247 + 48);
          v24 = *(v247 + 56);
          v25 = v20;
          MEMORY[0x1EEE9AC00](a1);
          v28 = &v232 - v27;
          *&v241 = v29;
          if (v6 == 1)
          {
            v72 = v22;
            v73 = v249.n128_u32[0];
            v20 = &v232 - v27;
            v74 = (&v232 - v27);
            v240 = v21 / v22;
            do
            {
              v75 = v23 + v24 * v73;
              if (v21 >= v72 + v72 * v75)
              {
                v77 = v245->n128_u8[v75];
              }

              else
              {
                v76 = sub_1AF0D5194(v28, v26);
                v28 = os_log_type_enabled(v76, OS_LOG_TYPE_ERROR);
                if (v28)
                {
                  *buf = v243.n128_u32[0];
                  *&buf[4] = v23 + v24 * v73;
                  *&buf[8] = 2048;
                  *&buf[10] = v240;
                  _os_log_error_impl(&dword_1AF0CE000, v76, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v77 = 0;
              }

              v74->n128_u32[0] = v77;
              v74 = (v74 + 4);
              ++v73;
              --v25;
            }

            while (v25);
          }

          else if (v6 == 2)
          {
            v54 = v249.n128_u32[0];
            v20 = &v232 - v27;
            v55 = (&v232 - v27);
            v240 = v21 / v22;
            do
            {
              v56 = v23 + v24 * v54;
              if (v21 >= v22 + v22 * v56)
              {
                v58 = v245->n128_u16[v56];
              }

              else
              {
                v57 = sub_1AF0D5194(v28, v26);
                v28 = os_log_type_enabled(v57, OS_LOG_TYPE_ERROR);
                if (v28)
                {
                  *buf = v243.n128_u32[0];
                  *&buf[4] = v23 + v24 * v54;
                  *&buf[8] = 2048;
                  *&buf[10] = v240;
                  _os_log_error_impl(&dword_1AF0CE000, v57, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v58 = 0;
              }

              v55->n128_u32[0] = v58;
              v55 = (v55 + 4);
              ++v54;
              --v25;
            }

            while (v25);
          }

          else
          {
            v30 = v249.n128_u32[0];
            v20 = &v232 - v27;
            v31 = (&v232 - v27);
            v240 = v21 / v22;
            do
            {
              v32 = v23 + v24 * v30;
              if (v21 >= v22 + v22 * v32)
              {
                v34 = v245->n128_u32[v32];
              }

              else
              {
                v33 = sub_1AF0D5194(v28, v26);
                v28 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
                if (v28)
                {
                  *buf = v243.n128_u32[0];
                  *&buf[4] = v23 + v24 * v30;
                  *&buf[8] = 2048;
                  *&buf[10] = v240;
                  _os_log_error_impl(&dword_1AF0CE000, v33, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v34 = 0;
              }

              v31->n128_u32[0] = v34;
              v31 = (v31 + 4);
              ++v30;
              --v25;
            }

            while (v25);
          }

          v19 = v237;
          v91 = v20;
          LODWORD(v20) = v238;
          a1 = (v246[1].n128_u64[0])(v246, v237, v91, v238, &v250);
          v92 = v250;
        }

        else
        {
          v38.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
          v245 = (&v232 - v39);
          v233 = v40;
          if (v6 == 1)
          {
            if (v4)
            {
              v78 = 0;
              v239 = v238;
              do
              {
                *&v241 = v78;
                v79 = v247 + (v78 << 6);
                v80 = *v79;
                v81 = *(v79 + 8);
                v82 = *(v79 + 35);
                v84 = *(v79 + 48);
                v83 = *(v79 + 56);
                v85 = v239;
                v86 = v249.n128_u32[0];
                v87 = v245;
                v240 = v81 / v82;
                do
                {
                  v88 = v84 + v83 * v86;
                  if (v81 >= v82 + v82 * v88)
                  {
                    v90 = *(v80 + v88);
                  }

                  else
                  {
                    v89 = sub_1AF0D5194(v36, v37);
                    v36 = os_log_type_enabled(v89, OS_LOG_TYPE_ERROR);
                    if (v36)
                    {
                      *buf = v243.n128_u32[0];
                      *&buf[4] = v84 + v83 * v86;
                      *&buf[8] = 2048;
                      *&buf[10] = v240;
                      _os_log_error_impl(&dword_1AF0CE000, v89, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                    }

                    v90 = 0;
                  }

                  v87->n128_u32[0] = v90;
                  v87 = (v87 + 4);
                  ++v86;
                  --v85;
                }

                while (v85);
                v78 = v241 + 1;
              }

              while (v241 + 1 != v244);
            }
          }

          else if (v6 == 2)
          {
            if (v4)
            {
              v59 = 0;
              v239 = v238;
              do
              {
                *&v241 = v59;
                v60 = v247 + (v59 << 6);
                v61 = *v60;
                v62 = *(v60 + 8);
                v63 = *(v60 + 35);
                v65 = *(v60 + 48);
                v64 = *(v60 + 56);
                v66 = v239;
                v67 = v249.n128_u32[0];
                v68 = v245;
                v240 = v62 / v63;
                do
                {
                  v69 = v65 + v64 * v67;
                  if (v62 >= v63 + v63 * v69)
                  {
                    v71 = *(v61 + 2 * v69);
                  }

                  else
                  {
                    v70 = sub_1AF0D5194(v36, v37);
                    v36 = os_log_type_enabled(v70, OS_LOG_TYPE_ERROR);
                    if (v36)
                    {
                      *buf = v243.n128_u32[0];
                      *&buf[4] = v65 + v64 * v67;
                      *&buf[8] = 2048;
                      *&buf[10] = v240;
                      _os_log_error_impl(&dword_1AF0CE000, v70, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                    }

                    v71 = 0;
                  }

                  v68->n128_u32[0] = v71;
                  v68 = (v68 + 4);
                  ++v67;
                  --v66;
                }

                while (v66);
                v59 = v241 + 1;
              }

              while (v241 + 1 != v244);
            }
          }

          else if (v4)
          {
            v41 = 0;
            v239 = v238;
            do
            {
              *&v241 = v41;
              v42 = v247 + (v41 << 6);
              v43 = *v42;
              v44 = *(v42 + 8);
              v45 = *(v42 + 35);
              v47 = *(v42 + 48);
              v46 = *(v42 + 56);
              v48 = v239;
              v49 = v249.n128_u32[0];
              v50 = v245;
              v240 = v44 / v45;
              do
              {
                v51 = v47 + v46 * v49;
                if (v44 >= v45 + v45 * v51)
                {
                  v53 = *(v43 + 4 * v51);
                }

                else
                {
                  v52 = sub_1AF0D5194(v36, v37);
                  v36 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
                  if (v36)
                  {
                    *buf = v243.n128_u32[0];
                    *&buf[4] = v47 + v46 * v49;
                    *&buf[8] = 2048;
                    *&buf[10] = v240;
                    _os_log_error_impl(&dword_1AF0CE000, v52, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                  }

                  v53 = 0;
                }

                v50->n128_u32[0] = v53;
                v50 = (v50 + 4);
                ++v49;
                --v48;
              }

              while (v48);
              v41 = v241 + 1;
            }

            while (v241 + 1 != v244);
          }

          v19 = v237;
          LODWORD(v20) = v238;
          a1 = (v246[1].n128_u64[0])(v246, v237, v245, v238, &v250, v38);
          v92 = v250;
        }

        v4 = v242;
        v6 = v236;
        v7 = v235;
        if (v92)
        {
          return;
        }

LABEL_100:
        v249.n128_u32[0] += v20;
        if (++v19 == v248)
        {
          return;
        }
      }

    default:
      v118 = sub_1AF0D5194(a1, a2);
      if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDDBF94();
      }

      break;
  }
}

void sub_1AF1A9C98(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3.n128_u64[0] = MEMORY[0x1E69E9820];
  a3.n128_u64[0] = 0x40000000;
  v3.n128_u64[1] = 0x40000000;
  v4 = sub_1AF1A9D08;
  v5 = &unk_1E7A7B470;
  v6 = a2;
  sub_1AF1A8154(a1, 1, &v3, a3);
}

void sub_1AF1A9D08(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (a4 == 3)
  {
    (*(*(result + 32) + 16))(*(result + 32));
  }

  else if (a4 < 4)
  {
    v10 = sub_1AF0D5194(result, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDC008();
    }
  }

  else
  {
    v7 = 0;
    v8 = a4 - 2;
    do
    {
      if (v8 == v7)
      {
        break;
      }

      v9 = v7 + 1;
      (*(*(result + 32) + 16))(*(result + 32));
      v7 = v9;
    }

    while (!a5);
  }
}

void sub_1AF1A9E00(uint64_t *a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 34);
  v10 = 3;
  if (a2)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (a2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = v9 != 5;
  if (v9 == 1)
  {
    v13 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (v9 != 1)
  {
    v12 = 1;
  }

  v14 = v9 == 0;
  if (*(a1 + 34))
  {
    v15 = 1;
  }

  else
  {
    v15 = 3;
  }

  if (*(a1 + 34))
  {
    v10 = v13;
    v16 = v11;
  }

  else
  {
    v16 = 2;
  }

  if (v14)
  {
    v17 = 1;
  }

  else
  {
    v17 = v12;
  }

  v18 = *a1;
  if (!*a1)
  {
    *a3 = v10 * a2;
    *a4 = v17 + v15 * a2;
    v29 = v16 + v15 * a2;
LABEL_33:
    *a5 = v29;
    return;
  }

  v19 = *(a1 + 35);
  v20 = a1[6];
  v21 = a1[7];
  v22 = v20 + v10 * a2 * v21;
  v23 = v15 * a2;
  v24 = v20 + v21 * (v17 + v15 * a2);
  v25 = v20 + v21 * (v16 + v23);
  if (v25 <= v22)
  {
    v26 = v22;
  }

  else
  {
    v26 = v25;
  }

  if (v24 <= v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = v24;
  }

  if (a1[1] < (v19 + v19 * v27))
  {
    v28 = sub_1AF0D5194(1, a2);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v31 = a1[1];
      v32 = *(a1 + 35);
      v33 = 136315650;
      v34 = "CFXIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex";
      v35 = 1024;
      v36 = v27;
      v37 = 2048;
      v38 = v31 / v32;
      _os_log_error_impl(&dword_1AF0CE000, v28, OS_LOG_TYPE_ERROR, "Error: %s - index (%u) out of bounds (%lu)", &v33, 0x1Cu);
    }

    *a3 = 0;
    *a4 = 0;
    *a5 = 0;
    return;
  }

  switch(v19)
  {
    case 4:
      *a3 = *(v18 + 4 * v22);
      *a4 = *(v18 + 4 * v24);
      v29 = *(v18 + 4 * v25);
      goto LABEL_33;
    case 2:
      *a3 = *(v18 + 2 * v22);
      *a4 = *(v18 + 2 * v24);
      v29 = *(v18 + 2 * v25);
      goto LABEL_33;
    case 1:
      *a3 = *(v18 + v22);
      *a4 = *(v18 + v24);
      v29 = *(v18 + v25);
      goto LABEL_33;
  }

  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  v30 = sub_1AF0D5194(1, a2);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDDC044();
  }
}

void sub_1AF1AA060(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v165 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 24))
  {
    v24 = *(a1 + 16);
    *buf = *a1;
    *&buf[16] = v24;
    v26 = *(a1 + 48);
    v159 = *(a1 + 32);
    v25.n128_u64[1] = *(&v159 + 1);
    v160 = v26;
    v161.n128_u64[0] = MEMORY[0x1E69E9820];
    v25.n128_u64[0] = 0x40000000;
    v161.n128_u64[1] = 0x40000000;
    v162 = sub_1AF1A9C88;
    v163 = &unk_1E7A7B448;
    v164 = a2;
    sub_1AF1A8154(buf, 1, &v161, v25);
    return;
  }

  v157 = 0;
  v5 = *(a1 + 34);
  v155 = a2;
  if (v5 <= 2)
  {
    if (v5 >= 2)
    {
      v161.n128_u64[0] = 0;
      v6 = *(a1 + 35);
      switch(v6)
      {
        case 1:
          v130 = *(a1 + 32);
          if (*(a1 + 32))
          {
            v131 = 0;
            a3.n128_u64[0] = 67109376;
            v156 = a3;
            while (1)
            {
              v132 = (*(v4 + 24) + 16 * v131);
              v133 = *v132;
              v134 = v132[1] + *v132;
              if (v133 < v134)
              {
                break;
              }

LABEL_177:
              if (++v131 >= v130)
              {
                return;
              }
            }

            v135 = 2 * v133;
            v136 = v134 - v133;
            while (1)
            {
              v137 = *(v4 + 48);
              v138 = *(v4 + 56);
              v139 = v137 + v138 * v135;
              v140 = v137 + v138 * (v135 + 1);
              v141 = v140 <= v139 ? v139 : v140;
              v142 = *(v4 + 8);
              v143 = *(v4 + 35);
              if (v142 >= v143 + v143 * v141)
              {
                v146 = *v4;
                v161.n128_u32[0] = *(*v4 + v139);
                v145 = *(v146 + v140);
              }

              else
              {
                v144 = sub_1AF0D5194(a1, a2);
                if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
                {
                  *buf = v156.n128_u32[0];
                  *&buf[4] = v141;
                  *&buf[8] = 2048;
                  *&buf[10] = v142 / v143;
                  _os_log_error_impl(&dword_1AF0CE000, v144, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v145 = 0;
                v161.n128_u32[0] = 0;
              }

              v161.n128_u32[1] = v145;
              a1 = (*(v155 + 16))(v155, v133, &v161, 2, &v157);
              if (v157)
              {
                break;
              }

              v133 = (v133 + 1);
              v135 += 2;
              if (!--v136)
              {
                v130 = *(v4 + 32);
                goto LABEL_177;
              }
            }
          }

          break;
        case 2:
          v113 = *(a1 + 32);
          if (*(a1 + 32))
          {
            v114 = 0;
            a3.n128_u64[0] = 67109376;
            v156 = a3;
            while (1)
            {
              v115 = (*(v4 + 24) + 16 * v114);
              v116 = *v115;
              v117 = v115[1] + *v115;
              if (v116 < v117)
              {
                break;
              }

LABEL_160:
              if (++v114 >= v113)
              {
                return;
              }
            }

            v118 = 2 * v116;
            v119 = v117 - v116;
            while (1)
            {
              v120 = *(v4 + 48);
              v121 = *(v4 + 56);
              v122 = v120 + v121 * v118;
              v123 = v120 + v121 * (v118 + 1);
              v124 = v123 <= v122 ? v122 : v123;
              v125 = *(v4 + 8);
              v126 = *(v4 + 35);
              if (v125 >= v126 + v126 * v124)
              {
                v129 = *v4;
                v161.n128_u32[0] = *(*v4 + 2 * v122);
                v128 = *(v129 + 2 * v123);
              }

              else
              {
                v127 = sub_1AF0D5194(a1, a2);
                if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
                {
                  *buf = v156.n128_u32[0];
                  *&buf[4] = v124;
                  *&buf[8] = 2048;
                  *&buf[10] = v125 / v126;
                  _os_log_error_impl(&dword_1AF0CE000, v127, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v128 = 0;
                v161.n128_u32[0] = 0;
              }

              v161.n128_u32[1] = v128;
              a1 = (*(v155 + 16))(v155, v116, &v161, 2, &v157);
              if (v157)
              {
                break;
              }

              v116 = (v116 + 1);
              v118 += 2;
              if (!--v119)
              {
                v113 = *(v4 + 32);
                goto LABEL_160;
              }
            }
          }

          break;
        case 4:
          v7 = *(a1 + 32);
          if (*(a1 + 32))
          {
            v8 = 0;
            a3.n128_u64[0] = 67109376;
            v156 = a3;
            while (1)
            {
              v9 = (*(v4 + 24) + 16 * v8);
              v10 = *v9;
              v11 = v9[1] + *v9;
              if (v10 < v11)
              {
                break;
              }

LABEL_22:
              if (++v8 >= v7)
              {
                return;
              }
            }

            v12 = 2 * v10;
            v13 = v11 - v10;
            while (1)
            {
              v14 = *(v4 + 48);
              v15 = *(v4 + 56);
              v16 = v14 + v15 * v12;
              v17 = v14 + v15 * (v12 + 1);
              v18 = v17 <= v16 ? v16 : v17;
              v19 = *(v4 + 8);
              v20 = *(v4 + 35);
              if (v19 >= v20 + v20 * v18)
              {
                v23 = *v4;
                v161.n128_u32[0] = *(*v4 + 4 * v16);
                v22 = *(v23 + 4 * v17);
              }

              else
              {
                v21 = sub_1AF0D5194(a1, a2);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  *buf = v156.n128_u32[0];
                  *&buf[4] = v18;
                  *&buf[8] = 2048;
                  *&buf[10] = v19 / v20;
                  _os_log_error_impl(&dword_1AF0CE000, v21, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v22 = 0;
                v161.n128_u32[0] = 0;
              }

              v161.n128_u32[1] = v22;
              a1 = (*(v155 + 16))(v155, v10, &v161, 2, &v157);
              if (v157)
              {
                break;
              }

              v10 = (v10 + 1);
              v12 += 2;
              if (!--v13)
              {
                v7 = *(v4 + 32);
                goto LABEL_22;
              }
            }
          }

          break;
      }

      return;
    }

    goto LABEL_88;
  }

  if (v5 != 3)
  {
    if (v5 == 5)
    {
LABEL_88:
      v161.n128_u32[2] = 0;
      v161.n128_u64[0] = 0;
      v68 = *(a1 + 32);
      if (*(a1 + 32))
      {
        v69 = 0;
        while (1)
        {
          v70 = (*(v4 + 24) + 16 * v69);
          v71 = v70[1];
          if (*v70 < v71 + *v70)
          {
            break;
          }

LABEL_95:
          if (++v69 >= v68)
          {
            return;
          }
        }

        v72 = *v70;
        while (1)
        {
          v73 = *(v4 + 16);
          *buf = *v4;
          *&buf[16] = v73;
          v74 = *(v4 + 48);
          v159 = *(v4 + 32);
          v160 = v74;
          sub_1AF1A9E00(buf, v72, &v161, &v161.n128_u32[1], &v161.n128_u32[2]);
          (*(a2 + 16))(a2, v72, &v161, 3, &v157);
          if (v157)
          {
            break;
          }

          ++v72;
          LODWORD(v71) = v71 - 1;
          if (!v71)
          {
            v68 = *(v4 + 32);
            goto LABEL_95;
          }
        }
      }

      return;
    }

    if (v5 != 4)
    {
      v88 = sub_1AF0D5194(a1, a2);
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDDC0BC();
      }

      return;
    }

    v27 = *(a1 + 32);
    if (!*(a1 + 32))
    {
      return;
    }

    v148 = 0;
    v150 = a2 + 16;
    a3.n128_u64[0] = 67109376;
    v149 = a3;
    a3.n128_u64[0] = 67109120;
    v147 = a3;
    while (1)
    {
      v28 = (*(v4 + 24) + 16 * v148);
      v29 = *v28;
      if (*v28)
      {
        v30 = 0;
        v31 = 0;
        v32 = *(v4 + 35);
        do
        {
          switch(v32)
          {
            case 4:
              v33 = *(*(v4 + 40) + 4 * v30);
              break;
            case 2:
              v33 = *(*(v4 + 40) + 2 * v30);
              break;
            case 1:
              v33 = *(*(v4 + 40) + v30);
              break;
            default:
              v33 = 0;
              break;
          }

          v31 += v33;
          ++v30;
        }

        while (v29 != v30);
      }

      else
      {
        v31 = 0;
      }

      v34 = v28[1] + v29;
      if (v29 < v34)
      {
        break;
      }

LABEL_86:
      if (++v148 >= v27)
      {
        return;
      }
    }

    v35 = v29;
    v36 = v34;
    v151 = v34;
    while (1)
    {
      v37 = *(v4 + 35);
      switch(v37)
      {
        case 4:
          v38 = *(*(v4 + 40) + 4 * v35);
          break;
        case 2:
          v38 = *(*(v4 + 40) + 2 * v35);
          break;
        case 1:
          v38 = *(*(v4 + 40) + v35);
          break;
        default:
          LODWORD(v38) = 0;
          goto LABEL_63;
      }

      if (v38 > 2)
      {
        v153 = &v147;
        v39 = v38;
        MEMORY[0x1EEE9AC00](a1);
        v43 = (&v147 - v42);
        v44 = *(v4 + 35);
        v154 = v38;
        v152 = v43;
        switch(v44)
        {
          case 4:
            v156.n128_u64[0] = *v4;
            v58 = v31;
            do
            {
              v59 = *(v4 + 48) + *(v4 + 56) * v58;
              v60 = *(v4 + 8);
              v61 = *(v4 + 35);
              if (v60 >= v61 + v61 * v59)
              {
                v63 = *(v156.n128_u64[0] + 4 * v59);
              }

              else
              {
                v62 = sub_1AF0D5194(v40, v41);
                v40 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);
                if (v40)
                {
                  *buf = v149.n128_u32[0];
                  *&buf[4] = v59;
                  *&buf[8] = 2048;
                  *&buf[10] = v60 / v61;
                  _os_log_error_impl(&dword_1AF0CE000, v62, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v63 = 0;
              }

              v43->n128_u32[0] = v63;
              v43 = (v43 + 4);
              ++v58;
              --v39;
            }

            while (v39);
            break;
          case 2:
            v156.n128_u64[0] = *v4;
            v52 = v31;
            do
            {
              v53 = *(v4 + 48) + *(v4 + 56) * v52;
              v54 = *(v4 + 8);
              v55 = *(v4 + 35);
              if (v54 >= v55 + v55 * v53)
              {
                v57 = *(v156.n128_u64[0] + 2 * v53);
              }

              else
              {
                v56 = sub_1AF0D5194(v40, v41);
                v40 = os_log_type_enabled(v56, OS_LOG_TYPE_ERROR);
                if (v40)
                {
                  *buf = v149.n128_u32[0];
                  *&buf[4] = v53;
                  *&buf[8] = 2048;
                  *&buf[10] = v54 / v55;
                  _os_log_error_impl(&dword_1AF0CE000, v56, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v57 = 0;
              }

              v43->n128_u32[0] = v57;
              v43 = (v43 + 4);
              ++v52;
              --v39;
            }

            while (v39);
            break;
          case 1:
            v156.n128_u64[0] = *v4;
            v45 = v31;
            do
            {
              v46 = *(v4 + 48) + *(v4 + 56) * v45;
              v47 = *(v4 + 8);
              v48 = *(v4 + 35);
              if (v47 >= v48 + v48 * v46)
              {
                v50 = *(v156.n128_u64[0] + v46);
              }

              else
              {
                v49 = sub_1AF0D5194(v40, v41);
                v40 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
                if (v40)
                {
                  *buf = v149.n128_u32[0];
                  *&buf[4] = v46;
                  *&buf[8] = 2048;
                  *&buf[10] = v47 / v48;
                  _os_log_error_impl(&dword_1AF0CE000, v49, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v50 = 0;
              }

              v43->n128_u32[0] = v50;
              v43 = (v43 + 4);
              ++v45;
              --v39;
            }

            while (v39);
            break;
          default:
            bzero(v43, 4 * v38);
            v66 = sub_1AF0D5194(v64, v65);
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              v67 = *(v4 + 35);
              *buf = v147.n128_u32[0];
              *&buf[4] = v67;
              _os_log_error_impl(&dword_1AF0CE000, v66, OS_LOG_TYPE_ERROR, "Unreachable code: Invalid bytes per index (%d)", buf, 8u);
            }

            break;
        }

        LODWORD(v38) = v154;
        a1 = (*(v155 + 16))(v155, v35, v152, v154, &v157);
        v36 = v151;
        if (v157)
        {
          return;
        }

        goto LABEL_84;
      }

LABEL_63:
      v51 = sub_1AF0D5194(a1, a2);
      a1 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
      if (a1)
      {
        sub_1AFDDBF54(&v161, &v161.n128_u8[1], v51);
      }

LABEL_84:
      v31 += v38;
      if (++v35 == v36)
      {
        v27 = *(v4 + 32);
        goto LABEL_86;
      }
    }
  }

  v161.n128_u32[0] = 0;
  v75 = *(a1 + 35);
  switch(v75)
  {
    case 1:
      v101 = *(a1 + 32);
      if (*(a1 + 32))
      {
        v102 = 0;
        a3.n128_u64[0] = 67109376;
        v156 = a3;
        while (1)
        {
          v103 = (*(v4 + 24) + 16 * v102);
          v104 = *v103;
          v105 = v103[1] + *v103;
          if (v104 < v105)
          {
            break;
          }

LABEL_143:
          if (++v102 >= v101)
          {
            return;
          }
        }

        v106 = v104;
        v107 = v105;
        while (1)
        {
          v108 = *(v4 + 48) + *(v4 + 56) * v106;
          v109 = *(v4 + 8);
          v110 = *(v4 + 35);
          if (v109 >= v110 + v110 * v108)
          {
            v112 = *(*v4 + v108);
          }

          else
          {
            v111 = sub_1AF0D5194(a1, a2);
            if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
            {
              *buf = v156.n128_u32[0];
              *&buf[4] = v108;
              *&buf[8] = 2048;
              *&buf[10] = v109 / v110;
              _os_log_error_impl(&dword_1AF0CE000, v111, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
            }

            v112 = 0;
          }

          v161.n128_u32[0] = v112;
          a1 = (*(v155 + 16))(v155, v106, &v161, 1, &v157);
          if (v157)
          {
            break;
          }

          if (v107 == ++v106)
          {
            v101 = *(v4 + 32);
            goto LABEL_143;
          }
        }
      }

      break;
    case 2:
      v89 = *(a1 + 32);
      if (*(a1 + 32))
      {
        v90 = 0;
        a3.n128_u64[0] = 67109376;
        v156 = a3;
        while (1)
        {
          v91 = (*(v4 + 24) + 16 * v90);
          v92 = *v91;
          v93 = v91[1] + *v91;
          if (v92 < v93)
          {
            break;
          }

LABEL_129:
          if (++v90 >= v89)
          {
            return;
          }
        }

        v94 = v92;
        v95 = v93;
        while (1)
        {
          v96 = *(v4 + 48) + *(v4 + 56) * v94;
          v97 = *(v4 + 8);
          v98 = *(v4 + 35);
          if (v97 >= v98 + v98 * v96)
          {
            v100 = *(*v4 + 2 * v96);
          }

          else
          {
            v99 = sub_1AF0D5194(a1, a2);
            if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
            {
              *buf = v156.n128_u32[0];
              *&buf[4] = v96;
              *&buf[8] = 2048;
              *&buf[10] = v97 / v98;
              _os_log_error_impl(&dword_1AF0CE000, v99, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
            }

            v100 = 0;
          }

          v161.n128_u32[0] = v100;
          a1 = (*(v155 + 16))(v155, v94, &v161, 1, &v157);
          if (v157)
          {
            break;
          }

          if (v95 == ++v94)
          {
            v89 = *(v4 + 32);
            goto LABEL_129;
          }
        }
      }

      break;
    case 4:
      v76 = *(a1 + 32);
      if (*(a1 + 32))
      {
        v77 = 0;
        a3.n128_u64[0] = 67109376;
        v156 = a3;
        while (1)
        {
          v78 = (*(v4 + 24) + 16 * v77);
          v79 = *v78;
          v80 = v78[1] + *v78;
          if (v79 < v80)
          {
            break;
          }

LABEL_112:
          if (++v77 >= v76)
          {
            return;
          }
        }

        v81 = v79;
        v82 = v80;
        while (1)
        {
          v83 = *(v4 + 48) + *(v4 + 56) * v81;
          v84 = *(v4 + 8);
          v85 = *(v4 + 35);
          if (v84 >= v85 + v85 * v83)
          {
            v87 = *(*v4 + 4 * v83);
          }

          else
          {
            v86 = sub_1AF0D5194(a1, a2);
            if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
            {
              *buf = v156.n128_u32[0];
              *&buf[4] = v83;
              *&buf[8] = 2048;
              *&buf[10] = v84 / v85;
              _os_log_error_impl(&dword_1AF0CE000, v86, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
            }

            v87 = 0;
          }

          v161.n128_u32[0] = v87;
          a1 = (*(v155 + 16))(v155, v81, &v161, 1, &v157);
          if (v157)
          {
            break;
          }

          if (v82 == ++v81)
          {
            v76 = *(v4 + 32);
            goto LABEL_112;
          }
        }
      }

      break;
  }
}

void sub_1AF1AADF4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF1A7034(a1, a2);
  v4 = *(a1 + 130);
  if (*(a1 + 130))
  {
    v5 = v3;
    v6 = 0;
    do
    {
      fprintf(*MEMORY[0x1E69E9858], "CHANNEL %ld/%ld\n", v6 + 1, v4);
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      sub_1AF1A767C(a1, v6, &v12);
      v10[0] = 0;
      v10[1] = v10;
      v10[2] = 0x2000000000;
      v11 = 0;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 0x40000000;
      v8[2] = sub_1AF1AAF74;
      v8[3] = &unk_1E7A7B498;
      v9 = v5;
      v8[4] = v10;
      v7[0] = v12;
      v7[1] = v13;
      v7[2] = v14;
      v7[3] = v15;
      v16.n128_u64[0] = MEMORY[0x1E69E9820];
      v16.n128_u64[1] = 0x40000000;
      v17 = sub_1AF1A9C88;
      v18 = &unk_1E7A7B448;
      v19 = v8;
      sub_1AF1A8154(v7, 1, &v16, v14);
      _Block_object_dispose(v10, 8);
      ++v6;
    }

    while (v4 != v6);
  }
}

uint64_t sub_1AF1AAF74(uint64_t result, uint64_t a2, int *a3, unsigned int a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      result = fprintf(*MEMORY[0x1E69E9858], "%4u : %4u %4u\n");
      goto LABEL_9;
    }

LABEL_7:
    result = fprintf(*MEMORY[0x1E69E9858], "%4u : %4u %4u %4u\n");
    goto LABEL_9;
  }

  if (v6 == 3)
  {
    result = fprintf(*MEMORY[0x1E69E9858], "%4u : %4u\n");
    goto LABEL_9;
  }

  if (v6 != 4)
  {
    if (v6 != 5)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v8 = MEMORY[0x1E69E9858];
  fprintf(*MEMORY[0x1E69E9858], "%2u : [Polygon %4u]", *(*(*(result + 32) + 8) + 24), a4);
  if (a4)
  {
    v9 = a4;
    do
    {
      v10 = *a3++;
      fprintf(*v8, " %4u", v10);
      --v9;
    }

    while (v9);
  }

  result = fputc(10, *v8);
LABEL_9:
  ++*(*(*(v5 + 32) + 8) + 24);
  return result;
}

id sub_1AF1AB0F0(uint64_t a1)
{
  if (!*(a1 + 72))
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, @"kCFXNotificationMeshElementWillDie", a1, 0, 1u);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 96) = 0;
  }

  v4 = *(a1 + 168);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 168) = 0;
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 72) = 0;
  }

  v6 = *(a1 + 136);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 136) = 0;
  }

  free(*(a1 + 112));
  free(*(a1 + 120));
  free(*(a1 + 208));

  return sub_1AF16C9A4(a1, v7);
}

__CFString *sub_1AF1AB1A8(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = sub_1AF3753A8(a1);
  v4 = *(a1 + 88);
  if (v4 > 5)
  {
    v5 = @"invalid";
  }

  else
  {
    v5 = off_1E7A7B4B8[v4];
  }

  v6 = *(a1 + 104);
  v7 = *(a1 + 130);
  v8 = *(a1 + 80);
  v9 = *(a1 + 64);
  v10 = sub_1AF1ABA68(a1, 0x20uLL);
  v11 = *(a1 + 68);
  Length = *(a1 + 96);
  if (Length)
  {
    Length = CFDataGetLength(Length);
  }

  CFStringAppendFormat(Mutable, 0, @"<%s %p | type:%@ primCount:%d channels:%d indexBytes:%d offset:%d acmr:%f inst:%d dataSize:%d shared:%p>", v3, a1, v5, v6, v7, v8, v9, v10, v11, Length, *(a1 + 72));
  return Mutable;
}

__CFArray *sub_1AF1AB2AC(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v44 = 1;
  valuePtr = 5;
  v41 = a1;
  v42 = a1 + 88;
  v43 = *(a1 + 96);
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v5, @"name", @"indexes");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v44 = 0;
  valuePtr = 2;
  v43 = a1 + 104;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v9, @"name", @"subElementsCount");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = v4;
  v14 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v44 = 0;
  valuePtr = 2;
  v43 = v42;
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v16 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v17 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v14, @"name", @"type");
  CFDictionarySetValue(v14, @"type", v15);
  CFDictionarySetValue(v14, @"address", v17);
  CFDictionarySetValue(v14, @"semantic", v16);
  CFArrayAppendValue(Mutable, v14);
  CFRelease(v16);
  CFRelease(v14);
  CFRelease(v17);
  CFRelease(v15);
  v18 = MEMORY[0x1E695E9D8];
  v19 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v13);
  v44 = 0;
  valuePtr = 2;
  v43 = v41 + 80;
  v20 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v21 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v22 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v19, @"name", @"bytesPerIndex");
  CFDictionarySetValue(v19, @"type", v20);
  CFDictionarySetValue(v19, @"address", v22);
  CFDictionarySetValue(v19, @"semantic", v21);
  CFArrayAppendValue(Mutable, v19);
  CFRelease(v21);
  CFRelease(v19);
  CFRelease(v22);
  CFRelease(v20);
  v23 = CFDictionaryCreateMutable(0, 4, v18, MEMORY[0x1E695E9E8]);
  v44 = 0;
  valuePtr = 3;
  v43 = v41 + 81;
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v25 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v26 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v23, @"name", @"doubleSided");
  CFDictionarySetValue(v23, @"type", v24);
  CFDictionarySetValue(v23, @"address", v26);
  CFDictionarySetValue(v23, @"semantic", v25);
  CFArrayAppendValue(Mutable, v23);
  CFRelease(v25);
  CFRelease(v23);
  CFRelease(v26);
  CFRelease(v24);
  v27 = MEMORY[0x1E695E9E8];
  v28 = CFDictionaryCreateMutable(0, 4, v18, MEMORY[0x1E695E9E8]);
  v44 = 1;
  valuePtr = 5;
  v43 = *(v41 + 168);
  v29 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v30 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v31 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v28, @"name", @"primitiveNormals");
  CFDictionarySetValue(v28, @"type", v29);
  CFDictionarySetValue(v28, @"address", v31);
  CFDictionarySetValue(v28, @"semantic", v30);
  CFArrayAppendValue(Mutable, v28);
  CFRelease(v30);
  CFRelease(v28);
  CFRelease(v31);
  CFRelease(v29);
  v32 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v27);
  v44 = 0;
  valuePtr = 8;
  v43 = v41 + 176;
  v33 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v34 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v35 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v32, @"name", @"bbox[0]");
  CFDictionarySetValue(v32, @"type", v33);
  CFDictionarySetValue(v32, @"address", v35);
  CFDictionarySetValue(v32, @"semantic", v34);
  CFArrayAppendValue(Mutable, v32);
  CFRelease(v34);
  CFRelease(v32);
  CFRelease(v35);
  CFRelease(v33);
  v36 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v44 = 0;
  valuePtr = 8;
  v43 = v41 + 192;
  v37 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v38 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v39 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v36, @"name", @"bbox[1]");
  CFDictionarySetValue(v36, @"type", v37);
  CFDictionarySetValue(v36, @"address", v39);
  CFDictionarySetValue(v36, @"semantic", v38);
  CFArrayAppendValue(Mutable, v36);
  CFRelease(v38);
  CFRelease(v36);
  CFRelease(v39);
  CFRelease(v37);
  return Mutable;
}

float sub_1AF1ABA68(uint64_t a1, size_t a2)
{
  v9 = 0u;
  v10 = 0u;
  *v7 = 0u;
  v8 = 0u;
  sub_1AF1A767C(a1, 0, v7);
  v3 = 0.0;
  if (*v7 && BYTE2(v9) != 4)
  {
    v4 = sub_1AF1A7944(BYTE2(v9), v8);
    switch(BYTE3(v9))
    {
      case 4u:
        v5 = sub_1AF1ABD4C(*v7, v4, a2);
        return *&v5;
      case 2u:
        v5 = sub_1AF1ABC4C(*v7, v4, a2);
        return *&v5;
      case 1u:
        v5 = sub_1AF1ABB24(*v7, v4, a2);
        return *&v5;
    }
  }

  return v3;
}

double sub_1AF1ABB24(uint64_t a1, unsigned int a2, size_t __len)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = __len;
  if (__len)
  {
    memset(&__b, 255, __len);
  }

  if (!a2)
  {
    return 0.0;
  }

  v6 = 0;
  v7 = 0;
  v8 = __b;
  do
  {
    v9 = *(a1 + v6);
    if (!v15)
    {
      goto LABEL_11;
    }

    if (v8 != v9)
    {
      v10 = 1;
      do
      {
        v11 = v10;
        if (v15 == v10)
        {
          break;
        }

        v12 = v14[v10++ - 1];
      }

      while (v12 != v9);
      if (v11 >= v15)
      {
LABEL_11:
        memmove(v14, &__b, v15 - 1);
        __b = v9;
        ++v7;
        v8 = v9;
      }
    }

    ++v6;
  }

  while (v6 != a2);
  *&result = v7 / (a2 / 3);
  return result;
}

double sub_1AF1ABC4C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v14 = a3;
  if (a3)
  {
    memset(__b, 255, 2 * a3);
  }

  if (!a2)
  {
    return 0.0;
  }

  v6 = 0;
  v7 = 0;
  v8 = __b[0];
  do
  {
    v9 = *(a1 + 2 * v6);
    if (!v14)
    {
      goto LABEL_11;
    }

    if (v8 != v9)
    {
      v10 = 1;
      do
      {
        v11 = v10;
        if (v14 == v10)
        {
          break;
        }

        v12 = __b[v10++];
      }

      while (v12 != v9);
      if (v11 >= v14)
      {
LABEL_11:
        memmove(&__b[1], __b, 2 * (v14 - 1));
        __b[0] = v9;
        ++v7;
        v8 = v9;
      }
    }

    ++v6;
  }

  while (v6 != a2);
  *&result = v7 / (a2 / 3);
  return result;
}

double sub_1AF1ABD4C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v14 = a3;
  if (a3)
  {
    memset(__b, 255, 4 * a3);
  }

  if (!a2)
  {
    return 0.0;
  }

  v6 = 0;
  v7 = 0;
  v8 = __b[0];
  do
  {
    v9 = *(a1 + 4 * v6);
    if (!v14)
    {
      goto LABEL_11;
    }

    if (v8 != v9)
    {
      v10 = 1;
      do
      {
        v11 = v10;
        if (v14 == v10)
        {
          break;
        }

        v12 = __b[v10++];
      }

      while (v12 != v9);
      if (v11 >= v14)
      {
LABEL_11:
        memmove(&__b[1], __b, 4 * (v14 - 1));
        __b[0] = v9;
        ++v7;
        v8 = v9;
      }
    }

    ++v6;
  }

  while (v6 != a2);
  *&result = v7 / (a2 / 3);
  return result;
}

CFDataRef sub_1AF1ABE4C(const __CFData *a1, uint64_t a2, int a3)
{
  BytePtr = CFDataGetBytePtr(a1);
  switch(a3)
  {
    case 4:
      if (a2)
      {
        v18 = 0;
        v19 = (3 * a2);
        v20 = BytePtr;
        do
        {
          v22 = *v20++;
          v21 = v22;
          if (v18 <= v22)
          {
            v18 = v21;
          }

          --v19;
        }

        while (v19);
        v23 = v18 + 1;
      }

      else
      {
        v23 = 1;
      }

      return sub_1AF1AC0F8(BytePtr, a2, v23);
    case 2:
      if (a2)
      {
        LOWORD(v12) = 0;
        v13 = (3 * a2);
        v14 = BytePtr;
        do
        {
          v16 = *v14;
          v14 = (v14 + 2);
          v15 = v16;
          v12 = v12;
          if (v12 <= v16)
          {
            v12 = v15;
          }

          --v13;
        }

        while (v13);
        v17 = v12 + 1;
      }

      else
      {
        v17 = 1;
      }

      return sub_1AF1AC040(BytePtr, a2, v17);
    case 1:
      if (a2)
      {
        LOBYTE(v6) = 0;
        v7 = (3 * a2);
        v8 = BytePtr;
        do
        {
          v10 = *v8;
          v8 = (v8 + 1);
          v9 = v10;
          v6 = v6;
          if (v6 <= v10)
          {
            v6 = v9;
          }

          --v7;
        }

        while (v7);
        v11 = v6 + 1;
      }

      else
      {
        v11 = 1;
      }

      return sub_1AF1ABF88(BytePtr, a2, v11);
    default:
      return 0;
  }
}

CFDataRef sub_1AF1ABF88(unsigned __int8 *a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = 3 * a2;
  v7 = malloc_type_calloc(1uLL, v6, 0x100004077774924uLL);
  sub_1AF1AC968(v9);
  if (sub_1AF1AC340(v9, v7, a1, v4, a3))
  {
    return CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v7, v6, *MEMORY[0x1E695E480]);
  }

  free(v7);
  return 0;
}

CFDataRef sub_1AF1AC040(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = 3 * a2;
  v7 = malloc_type_calloc(2uLL, v6, 0x1000040BDFB0063uLL);
  sub_1AF1AC968(v9);
  if (sub_1AF1ACB88(v9, v7, a1, v4, v3))
  {
    return CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v7, 2 * v6, *MEMORY[0x1E695E480]);
  }

  free(v7);
  return 0;
}

CFDataRef sub_1AF1AC0F8(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = 3 * a2;
  v7 = malloc_type_calloc(4uLL, v6, 0x100004052888210uLL);
  sub_1AF1AC968(v9);
  if (sub_1AF1AD1B0(v9, v7, a1, v4, v3))
  {
    return CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v7, 4 * v6, *MEMORY[0x1E695E480]);
  }

  free(v7);
  return 0;
}

void sub_1AF1AC1B0(uint64_t a1)
{
  if (!*(a1 + 88))
  {
    v2 = sub_1AF1ABE4C(*(a1 + 96), *(a1 + 104), *(a1 + 80));
    if (v2)
    {
      v3 = v2;
      sub_1AF1A72A0(a1, *(a1 + 104), v2, *(a1 + 80));

      CFRelease(v3);
    }
  }
}

_DWORD *sub_1AF1AC224(uint64_t a1, uint64_t a2)
{
  v16 = 0u;
  *count = 0u;
  sub_1AF1AE1A8(a1, a2, &v16);
  v2 = malloc_type_calloc(LODWORD(count[0]), 4uLL, 0x100004052888210uLL);
  v5 = 0uLL;
  v13 = 0u;
  v14 = 0u;
  v15 = 1065353216;
  if (!LODWORD(count[0]))
  {
    goto LABEL_8;
  }

  v6 = 0;
  do
  {
    *v7.i64 = sub_1AF279750(BYTE4(count[0]), (v16 + v6 * BYTE6(count[0])), v5, v3, v4);
    v11 = v7;
    v12 = v7;
    v8 = sub_1AF1AD7D8(&v13, &v12);
    if (v8)
    {
      v9 = v8[2].i32[0];
    }

    else
    {
      v12 = v11;
      v18 = &v12;
      sub_1AF1AD8B0(&v13, &v12, &unk_1AFE22A40, &v18)[2].i32[0] = v6;
      v9 = v6;
    }

    v2[v6++] = v9;
  }

  while (v6 < LODWORD(count[0]));
  if (*(&v14 + 1) == LODWORD(count[0]))
  {
LABEL_8:
    free(v2);
    v2 = 0;
  }

  sub_1AF144AE4(&v13);
  return v2;
}

uint64_t sub_1AF1AC340(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4, void *a5)
{
  v85 = *MEMORY[0x1E69E9840];
  v82 = a5;
  v8 = a5;
  v9 = malloc_type_malloc(a5, 0x100004077774924uLL);
  bzero(v9, v8);
  if (a4 >= 1)
  {
    LODWORD(v10) = 3 * a4;
    if (3 * a4 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v10;
    }

    v11 = a3;
    do
    {
      v13 = *v11++;
      v12 = v13;
      v14 = v9[v13];
      if (v14 == 255)
      {
        free(v9);
        return 0;
      }

      v9[v12] = v14 + 1;
      --v10;
    }

    while (v10);
  }

  v80 = a3;
  v15 = malloc_type_malloc(4 * v8, 0x100004052888210uLL);
  v16 = malloc_type_malloc(2 * v8, 0x1000040BDFB0063uLL);
  v17 = malloc_type_malloc(v8, 0x100004077774924uLL);
  v18 = a4 + 7;
  if (a4 < -7)
  {
    v18 = a4 + 14;
  }

  v79 = v18 >> 3;
  v19 = malloc_type_malloc(v79, 0x100004077774924uLL);
  v20 = malloc_type_malloc(2 * a4, 0x1000040BDFB0063uLL);
  v78 = 12 * a4;
  v21 = malloc_type_malloc(v78, 0x100004052888210uLL);
  bzero(v19, v79);
  bzero(v20, 2 * a4);
  bzero(v21, v78);
  v22 = v82;
  v23 = v82;
  if (v82 >= 1)
  {
    v24 = 0;
    v25 = v82;
    v26 = v15;
    v27 = v9;
    v28 = v17;
    do
    {
      *v26++ = v24;
      v24 += *v27;
      *v27++ = 0;
      *v28++ = -1;
      --v25;
    }

    while (v25);
  }

  v29 = a3;
  if (a4 >= 1)
  {
    v30 = 0;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        v32 = v29[i];
        *&v21[4 * v15[v32] + 4 * v9[v32]++] = v30;
      }

      ++v30;
      v29 += 3;
    }

    while (v30 != a4);
  }

  if (v22 >= 1)
  {
    v33 = 0;
    do
    {
      if (v9[v33])
      {
        v34 = v17[v33];
        if ((v34 & 0x80000000) != 0)
        {
          v35 = 0;
        }

        else
        {
          v35 = *(a1 + 4 * v34);
        }

        if (v9[v33] <= 0x1Fu)
        {
          v35 += *(a1 + 128 + 4 * v9[v33]);
        }
      }

      else
      {
        LOWORD(v35) = 0;
      }

      v16[v33] = v35;
      if (v9[v33])
      {
        v36 = 0;
        v37 = &v21[4 * v15[v33]];
        do
        {
          v20[*&v37[4 * v36++]] += v16[v33];
        }

        while (v36 < v9[v33]);
      }

      ++v33;
    }

    while (v33 != v23);
  }

  if (a4 < 1)
  {
    v40 = -1;
  }

  else
  {
    v38 = 0;
    v39 = -1;
    v40 = -1;
    do
    {
      v41 = v20[v38];
      if (v39 < v41)
      {
        v40 = v38;
      }

      if (v39 <= v41)
      {
        v39 = v20[v38];
      }

      ++v38;
    }

    while (a4 != v38);
  }

  v82 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
  *&v42 = -1;
  *(&v42 + 1) = -1;
  *&v84[12] = v42;
  v83[4] = v42;
  *v84 = v42;
  v83[2] = v42;
  v83[3] = v42;
  v83[0] = v42;
  v83[1] = v42;
  if ((v40 & 0x80000000) != 0)
  {
    goto LABEL_92;
  }

  v43 = 0;
  v44 = 0;
  do
  {
    v45 = 0;
    v19[v40 >> 3] |= 1 << (v40 & 7);
    *(v82 + v43) = v40;
    do
    {
      v46 = v80[3 * v40 + v45];
      LODWORD(v47) = v17[v46];
      if (v47 < 0)
      {
        LODWORD(v47) = v45 | 0x18;
      }

      v47 = v47;
      if (v47 > v45)
      {
        v48 = v83 + v47;
        do
        {
          v49 = *(v48 - 1);
          *v48 = v49;
          if ((v49 & 0x80000000) == 0)
          {
            v50 = v17[v49];
            if (v50 <= 25)
            {
              v17[v49] = v50 + 1;
            }
          }

          --v47;
          --v48;
        }

        while (v47 > v45);
      }

      *(v83 + v45) = v46;
      v17[v46] = v45;
      v51 = v9[v46];
      if (v9[v46])
      {
        v52 = v15[v46];
        v53 = &v21[4 * v52];
        v54 = v9[v46];
        while (*v53 != v40)
        {
          v53 += 4;
          if (!--v54)
          {
            goto LABEL_58;
          }
        }

        *v53 = *&v21[4 * v52 - 4 + 4 * v51];
        LOBYTE(v51) = v9[v46];
      }

LABEL_58:
      v9[v46] = v51 - 1;
      ++v45;
    }

    while (v45 != 3);
    v55 = 0;
    ++v43;
    do
    {
      v56 = *(v83 + v55);
      if ((v56 & 0x80000000) != 0)
      {
        break;
      }

      v57 = &v16[v56];
      if (v55 <= 0x17)
      {
        v58 = &v9[v56];
        v59 = v9[v56];
        if (v9[v56])
        {
          v60 = v17[v56];
          if ((v60 & 0x80000000) != 0)
          {
LABEL_67:
            v61 = 0;
          }

          else
          {
            v61 = *(a1 + 4 * v60);
          }

          if (v59 <= 0x1F)
          {
            v61 += *(a1 + 128 + 4 * v59);
          }

          v62 = 0;
          v63 = v61 - *v57;
          v64 = &v21[4 * v15[v56]];
          do
          {
            v20[*&v64[4 * v62++]] += v63;
          }

          while (v62 < *v58);
          goto LABEL_74;
        }
      }

      else
      {
        v17[v56] = -1;
        *(v83 + v55) = -1;
        v58 = &v9[v56];
        v59 = v9[v56];
        if (v9[v56])
        {
          goto LABEL_67;
        }
      }

      LOWORD(v61) = 0;
LABEL_74:
      *v57 = v61;
      ++v55;
    }

    while (v55 != 27);
    v65 = 0;
    v66 = -1;
    v40 = -1;
    do
    {
      v67 = *(v83 + v65);
      if ((v67 & 0x80000000) != 0)
      {
        break;
      }

      v68 = v9[v67];
      if (v9[v67])
      {
        v69 = &v21[4 * v15[v67]];
        do
        {
          v71 = *v69;
          v69 += 4;
          v70 = v71;
          v72 = v20[v71];
          if (v66 < v72)
          {
            v40 = v70;
          }

          if (v66 <= v72)
          {
            v66 = v72;
          }

          --v68;
        }

        while (v68);
      }

      ++v65;
    }

    while (v65 != 24);
    if ((v40 & 0x80000000) != 0 && v44 < a4)
    {
      while (((v19[v44 >> 3] >> (v44 & 7)) & 1) != 0)
      {
        if (a4 == ++v44)
        {
          v44 = a4;
          goto LABEL_91;
        }
      }

      v40 = v44;
    }

LABEL_91:
    ;
  }

  while ((v40 & 0x80000000) == 0);
LABEL_92:
  if (a4 >= 1)
  {
    v73 = 0;
    LODWORD(v74) = 0;
    do
    {
      v75 = 0;
      v74 = v74;
      v76 = &v80[3 * *(v82 + v73)];
      do
      {
        *(a2 + v74++) = v76[v75++];
      }

      while (v75 != 3);
      ++v73;
    }

    while (v73 != a4);
  }

  free(v21);
  free(v15);
  free(v16);
  free(v9);
  free(v17);
  free(v19);
  free(v20);
  free(v82);
  return a2;
}

uint64_t sub_1AF1AC968(uint64_t a1)
{
  v2 = 0;
  v3 = -3;
  do
  {
    if (v2 >= 3)
    {
      v4 = (powf((v3 * -0.034483) + 1.0, 1.5) * 7281.0);
    }

    else
    {
      v4 = 5460;
    }

    *(a1 + 4 * v2++) = v4;
    ++v3;
  }

  while (v2 != 32);
  v5 = 0;
  v6 = (a1 + 144);
  v17 = vdupq_n_s64(0x1FuLL);
  do
  {
    v20 = vdupq_n_s64(v5);
    v7 = vorrq_s8(v20, xmmword_1AFE21110);
    v8 = vmovn_s64(vcgtq_u64(v17, v7));
    v18 = vuzp1_s16(v8, v8).u8[0];
    v19 = v7;
    v24 = vcvtq_f32_u32(vaddq_s32(vdupq_n_s32(v5), xmmword_1AFE21870));
    v21 = powf(v24.f32[1], -0.5);
    *&v9 = powf(v24.f32[0], -0.5);
    *(&v9 + 1) = v21;
    v22 = v9;
    v10 = powf(v24.f32[2], -0.5);
    v11 = v22;
    *(&v11 + 2) = v10;
    v23 = v11;
    v12 = powf(v24.f32[3], -0.5);
    if (v18)
    {
      *(v6 - 3) = ((*&v23 + *&v23) * 7281.0);
    }

    v13 = vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v19));
    if (vuzp1_s16(v13, v13).i8[2])
    {
      *(v6 - 2) = ((*(&v23 + 1) + *(&v23 + 1)) * 7281.0);
    }

    v14 = vorrq_s8(v20, xmmword_1AFE21100);
    if (vuzp1_s16(*&v14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v14))).i32[1])
    {
      *(v6 - 1) = ((*(&v23 + 2) + *(&v23 + 2)) * 7281.0);
    }

    v15 = vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v14));
    if (vuzp1_s16(v15, v15).i8[6])
    {
      *v6 = ((v12 + v12) * 7281.0);
    }

    v5 += 4;
    v6 += 4;
  }

  while (v5 != 32);
  return a1;
}

uint64_t sub_1AF1ACB88(uint64_t a1, uint64_t a2, unsigned __int16 *a3, int a4, int a5)
{
  v88 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = malloc_type_malloc(a5, 0x100004077774924uLL);
  bzero(v10, v9);
  if (a4 >= 1)
  {
    LODWORD(v11) = 3 * a4;
    if (3 * a4 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v11;
    }

    v12 = a3;
    do
    {
      v14 = *v12++;
      v13 = v14;
      v15 = v10[v14];
      if (v15 == 255)
      {
        free(v10);
        return 0;
      }

      v10[v13] = v15 + 1;
      --v11;
    }

    while (v11);
  }

  v85 = a3;
  v83 = a2;
  v16 = malloc_type_malloc(4 * v9, 0x100004052888210uLL);
  v17 = malloc_type_malloc(2 * v9, 0x1000040BDFB0063uLL);
  v18 = malloc_type_malloc(v9, 0x100004077774924uLL);
  v19 = a4 + 7;
  if (a4 < -7)
  {
    v19 = a4 + 14;
  }

  v82 = v19 >> 3;
  v20 = malloc_type_malloc(v82, 0x100004077774924uLL);
  v21 = malloc_type_malloc(2 * a4, 0x1000040BDFB0063uLL);
  v81 = 12 * a4;
  v22 = malloc_type_malloc(v81, 0x100004052888210uLL);
  bzero(v20, v82);
  bzero(v21, 2 * a4);
  bzero(v22, v81);
  if (a5 >= 1)
  {
    v23 = 0;
    v24 = a5;
    v25 = v16;
    v26 = v10;
    v27 = v18;
    do
    {
      *v25++ = v23;
      v23 += *v26;
      *v26++ = 0;
      *v27++ = -1;
      --v24;
    }

    while (v24);
  }

  v28 = v85;
  if (a4 >= 1)
  {
    v29 = 0;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        v31 = v28[i];
        *&v22[4 * v16[v31] + 4 * v10[v31]++] = v29;
      }

      ++v29;
      v28 += 3;
    }

    while (v29 != a4);
  }

  if (a5 >= 1)
  {
    v32 = 0;
    do
    {
      if (v10[v32])
      {
        v33 = v18[v32];
        if ((v33 & 0x80000000) != 0)
        {
          v34 = 0;
        }

        else
        {
          v34 = *(a1 + 4 * v33);
        }

        if (v10[v32] <= 0x1Fu)
        {
          v34 += *(a1 + 128 + 4 * v10[v32]);
        }
      }

      else
      {
        LOWORD(v34) = 0;
      }

      v17[v32] = v34;
      if (v10[v32])
      {
        v35 = 0;
        v36 = &v22[4 * v16[v32]];
        do
        {
          v21[*&v36[4 * v35++]] += v17[v32];
        }

        while (v35 < v10[v32]);
      }

      ++v32;
    }

    while (v32 != a5);
  }

  if (a4 < 1)
  {
    v39 = -1;
  }

  else
  {
    v37 = 0;
    v38 = -1;
    v39 = -1;
    do
    {
      v40 = v21[v37];
      if (v38 < v40)
      {
        v39 = v37;
      }

      if (v38 <= v40)
      {
        v38 = v21[v37];
      }

      ++v37;
    }

    while (a4 != v37);
  }

  v42 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
  *&v43 = -1;
  *(&v43 + 1) = -1;
  *&v87[12] = v43;
  v86[4] = v43;
  *v87 = v43;
  v86[2] = v43;
  v86[3] = v43;
  v86[0] = v43;
  v86[1] = v43;
  v44 = v85;
  if ((v39 & 0x80000000) != 0)
  {
    goto LABEL_92;
  }

  v45 = 0;
  v46 = 0;
  do
  {
    v47 = 0;
    v20[v39 >> 3] |= 1 << (v39 & 7);
    v42[v45] = v39;
    do
    {
      v48 = v44[3 * v39 + v47];
      LODWORD(v49) = v18[v48];
      if (v49 < 0)
      {
        LODWORD(v49) = v47 | 0x18;
      }

      v49 = v49;
      if (v49 > v47)
      {
        v50 = v86 + v49;
        do
        {
          v51 = *(v50 - 1);
          *v50 = v51;
          if ((v51 & 0x80000000) == 0)
          {
            v52 = v18[v51];
            if (v52 <= 25)
            {
              v18[v51] = v52 + 1;
            }
          }

          --v49;
          --v50;
        }

        while (v49 > v47);
      }

      *(v86 + v47) = v48;
      v18[v48] = v47;
      v53 = v10[v48];
      if (v10[v48])
      {
        v54 = v16[v48];
        v55 = &v22[4 * v54];
        v56 = v10[v48];
        while (*v55 != v39)
        {
          v55 += 4;
          if (!--v56)
          {
            goto LABEL_58;
          }
        }

        *v55 = *&v22[4 * v54 - 4 + 4 * v53];
        LOBYTE(v53) = v10[v48];
      }

LABEL_58:
      v10[v48] = v53 - 1;
      ++v47;
    }

    while (v47 != 3);
    v57 = 0;
    ++v45;
    do
    {
      v58 = *(v86 + v57);
      if ((v58 & 0x80000000) != 0)
      {
        break;
      }

      v59 = &v17[v58];
      if (v57 <= 0x17)
      {
        v60 = &v10[v58];
        v61 = v10[v58];
        if (v10[v58])
        {
          v62 = v18[v58];
          if ((v62 & 0x80000000) != 0)
          {
LABEL_67:
            v63 = 0;
          }

          else
          {
            v63 = *(a1 + 4 * v62);
          }

          if (v61 <= 0x1F)
          {
            v63 += *(a1 + 128 + 4 * v61);
          }

          v64 = 0;
          v65 = v63 - *v59;
          v66 = &v22[4 * v16[v58]];
          do
          {
            v21[*&v66[4 * v64++]] += v65;
          }

          while (v64 < *v60);
          goto LABEL_74;
        }
      }

      else
      {
        v18[v58] = -1;
        *(v86 + v57) = -1;
        v60 = &v10[v58];
        v61 = v10[v58];
        if (v10[v58])
        {
          goto LABEL_67;
        }
      }

      LOWORD(v63) = 0;
LABEL_74:
      *v59 = v63;
      ++v57;
    }

    while (v57 != 27);
    v67 = 0;
    v68 = -1;
    v39 = -1;
    do
    {
      v69 = *(v86 + v67);
      if ((v69 & 0x80000000) != 0)
      {
        break;
      }

      v70 = v10[v69];
      if (v10[v69])
      {
        v71 = &v22[4 * v16[v69]];
        do
        {
          v73 = *v71;
          v71 += 4;
          v72 = v73;
          v74 = v21[v73];
          if (v68 < v74)
          {
            v39 = v72;
          }

          if (v68 <= v74)
          {
            v68 = v74;
          }

          --v70;
        }

        while (v70);
      }

      ++v67;
    }

    while (v67 != 24);
    if ((v39 & 0x80000000) != 0 && v46 < a4)
    {
      while (((v20[v46 >> 3] >> (v46 & 7)) & 1) != 0)
      {
        if (a4 == ++v46)
        {
          v46 = a4;
          goto LABEL_91;
        }
      }

      v39 = v46;
    }

LABEL_91:
    ;
  }

  while ((v39 & 0x80000000) == 0);
LABEL_92:
  v41 = v83;
  if (a4 >= 1)
  {
    v75 = 0;
    v76 = 0;
    do
    {
      v77 = 0;
      v78 = &v44[3 * v42[v75]];
      v79 = v83 + 2 * v76;
      v76 += 3;
      do
      {
        *(v79 + v77 * 2) = v78[v77];
        ++v77;
      }

      while (v77 != 3);
      ++v75;
    }

    while (v75 != a4);
  }

  free(v22);
  free(v16);
  free(v17);
  free(v10);
  free(v18);
  free(v20);
  free(v21);
  free(v42);
  return v41;
}

uint64_t sub_1AF1AD1B0(uint64_t a1, uint64_t a2, unsigned int *a3, int a4, int a5)
{
  v88 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = malloc_type_malloc(a5, 0x100004077774924uLL);
  bzero(v10, v9);
  if (a4 >= 1)
  {
    LODWORD(v11) = 3 * a4;
    if (3 * a4 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v11;
    }

    v12 = a3;
    do
    {
      v14 = *v12++;
      v13 = v14;
      v15 = v10[v14];
      if (v15 == 255)
      {
        free(v10);
        return 0;
      }

      v10[v13] = v15 + 1;
      --v11;
    }

    while (v11);
  }

  v85 = a3;
  v83 = a2;
  v16 = malloc_type_malloc(4 * v9, 0x100004052888210uLL);
  v17 = malloc_type_malloc(2 * v9, 0x1000040BDFB0063uLL);
  v18 = malloc_type_malloc(v9, 0x100004077774924uLL);
  v19 = a4 + 7;
  if (a4 < -7)
  {
    v19 = a4 + 14;
  }

  v82 = v19 >> 3;
  v20 = malloc_type_malloc(v82, 0x100004077774924uLL);
  v21 = malloc_type_malloc(2 * a4, 0x1000040BDFB0063uLL);
  v81 = 12 * a4;
  v22 = malloc_type_malloc(v81, 0x100004052888210uLL);
  bzero(v20, v82);
  bzero(v21, 2 * a4);
  bzero(v22, v81);
  if (a5 >= 1)
  {
    v23 = 0;
    v24 = a5;
    v25 = v16;
    v26 = v10;
    v27 = v18;
    do
    {
      *v25++ = v23;
      v23 += *v26;
      *v26++ = 0;
      *v27++ = -1;
      --v24;
    }

    while (v24);
  }

  v28 = v85;
  if (a4 >= 1)
  {
    v29 = 0;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        v31 = v28[i];
        *&v22[4 * v16[v31] + 4 * v10[v31]++] = v29;
      }

      ++v29;
      v28 += 3;
    }

    while (v29 != a4);
  }

  if (a5 >= 1)
  {
    v32 = 0;
    do
    {
      if (v10[v32])
      {
        v33 = v18[v32];
        if ((v33 & 0x80000000) != 0)
        {
          v34 = 0;
        }

        else
        {
          v34 = *(a1 + 4 * v33);
        }

        if (v10[v32] <= 0x1Fu)
        {
          v34 += *(a1 + 128 + 4 * v10[v32]);
        }
      }

      else
      {
        LOWORD(v34) = 0;
      }

      v17[v32] = v34;
      if (v10[v32])
      {
        v35 = 0;
        v36 = &v22[4 * v16[v32]];
        do
        {
          v21[*&v36[4 * v35++]] += v17[v32];
        }

        while (v35 < v10[v32]);
      }

      ++v32;
    }

    while (v32 != a5);
  }

  if (a4 < 1)
  {
    v39 = -1;
  }

  else
  {
    v37 = 0;
    v38 = -1;
    v39 = -1;
    do
    {
      v40 = v21[v37];
      if (v38 < v40)
      {
        v39 = v37;
      }

      if (v38 <= v40)
      {
        v38 = v21[v37];
      }

      ++v37;
    }

    while (a4 != v37);
  }

  v42 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
  *&v43 = -1;
  *(&v43 + 1) = -1;
  *&v87[12] = v43;
  v86[4] = v43;
  *v87 = v43;
  v86[2] = v43;
  v86[3] = v43;
  v86[0] = v43;
  v86[1] = v43;
  v44 = v85;
  if ((v39 & 0x80000000) != 0)
  {
    goto LABEL_92;
  }

  v45 = 0;
  v46 = 0;
  do
  {
    v47 = 0;
    v20[v39 >> 3] |= 1 << (v39 & 7);
    v42[v45] = v39;
    do
    {
      v48 = v44[3 * v39 + v47];
      LODWORD(v49) = v18[v48];
      if (v49 < 0)
      {
        LODWORD(v49) = v47 | 0x18;
      }

      v49 = v49;
      if (v49 > v47)
      {
        v50 = v86 + v49;
        do
        {
          v51 = *(v50 - 1);
          *v50 = v51;
          if ((v51 & 0x80000000) == 0)
          {
            v52 = v18[v51];
            if (v52 <= 25)
            {
              v18[v51] = v52 + 1;
            }
          }

          --v49;
          --v50;
        }

        while (v49 > v47);
      }

      *(v86 + v47) = v48;
      v18[v48] = v47;
      v53 = v10[v48];
      if (v10[v48])
      {
        v54 = v16[v48];
        v55 = &v22[4 * v54];
        v56 = v10[v48];
        while (*v55 != v39)
        {
          v55 += 4;
          if (!--v56)
          {
            goto LABEL_58;
          }
        }

        *v55 = *&v22[4 * v54 - 4 + 4 * v53];
        LOBYTE(v53) = v10[v48];
      }

LABEL_58:
      v10[v48] = v53 - 1;
      ++v47;
    }

    while (v47 != 3);
    v57 = 0;
    ++v45;
    do
    {
      v58 = *(v86 + v57);
      if ((v58 & 0x80000000) != 0)
      {
        break;
      }

      v59 = &v17[v58];
      if (v57 <= 0x17)
      {
        v60 = &v10[v58];
        v61 = v10[v58];
        if (v10[v58])
        {
          v62 = v18[v58];
          if ((v62 & 0x80000000) != 0)
          {
LABEL_67:
            v63 = 0;
          }

          else
          {
            v63 = *(a1 + 4 * v62);
          }

          if (v61 <= 0x1F)
          {
            v63 += *(a1 + 128 + 4 * v61);
          }

          v64 = 0;
          v65 = v63 - *v59;
          v66 = &v22[4 * v16[v58]];
          do
          {
            v21[*&v66[4 * v64++]] += v65;
          }

          while (v64 < *v60);
          goto LABEL_74;
        }
      }

      else
      {
        v18[v58] = -1;
        *(v86 + v57) = -1;
        v60 = &v10[v58];
        v61 = v10[v58];
        if (v10[v58])
        {
          goto LABEL_67;
        }
      }

      LOWORD(v63) = 0;
LABEL_74:
      *v59 = v63;
      ++v57;
    }

    while (v57 != 27);
    v67 = 0;
    v68 = -1;
    v39 = -1;
    do
    {
      v69 = *(v86 + v67);
      if ((v69 & 0x80000000) != 0)
      {
        break;
      }

      v70 = v10[v69];
      if (v10[v69])
      {
        v71 = &v22[4 * v16[v69]];
        do
        {
          v73 = *v71;
          v71 += 4;
          v72 = v73;
          v74 = v21[v73];
          if (v68 < v74)
          {
            v39 = v72;
          }

          if (v68 <= v74)
          {
            v68 = v74;
          }

          --v70;
        }

        while (v70);
      }

      ++v67;
    }

    while (v67 != 24);
    if ((v39 & 0x80000000) != 0 && v46 < a4)
    {
      while (((v20[v46 >> 3] >> (v46 & 7)) & 1) != 0)
      {
        if (a4 == ++v46)
        {
          v46 = a4;
          goto LABEL_91;
        }
      }

      v39 = v46;
    }

LABEL_91:
    ;
  }

  while ((v39 & 0x80000000) == 0);
LABEL_92:
  v41 = v83;
  if (a4 >= 1)
  {
    v75 = 0;
    v76 = 0;
    do
    {
      v77 = 0;
      v78 = &v44[3 * v42[v75]];
      v79 = v83 + 4 * v76;
      v76 += 3;
      do
      {
        *(v79 + v77 * 4) = v78[v77];
        ++v77;
      }

      while (v77 != 3);
      ++v75;
    }

    while (v75 != a4);
  }

  free(v22);
  free(v16);
  free(v17);
  free(v10);
  free(v18);
  free(v20);
  free(v21);
  free(v42);
  return v41;
}

float32x4_t *sub_1AF1AD7D8(void *a1, float32x4_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2->u32[0] ^ (2 * HIDWORD(a2->i64[0])) ^ (4 * a2->i64[1]);
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2->u32[0] ^ (2 * HIDWORD(a2->i64[0])) ^ (4 * a2->i64[1]);
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = result->i64[0])
  {
    v8 = result->u64[1];
    if (v8 == v3)
    {
      v9 = vceqq_f32(result[1], *a2);
      v9.i32[3] = v9.i32[2];
      if ((vminvq_u32(v9) & 0x80000000) != 0)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

float32x4_t *sub_1AF1AD8B0(void *a1, float32x4_t *a2, uint64_t a3, float32x4_t **a4)
{
  v4 = a2->u32[0] ^ (2 * HIDWORD(a2->i64[0])) ^ (4 * a2->i64[1]);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = a2->u32[0] ^ (2 * HIDWORD(a2->i64[0])) ^ (4 * a2->i64[1]);
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9->u64[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = v9->i64[0];
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  v11 = vceqq_f32(v9[1], *a2);
  v11.i32[3] = v11.i32[2];
  if ((vminvq_u32(v11) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  return v9;
}

__CFString *sub_1AF1ADAF8(unsigned int a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E7A7B508[a1];
  }
}

uint64_t sub_1AF1ADB18(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AC08 != -1)
  {
    sub_1AFDDC134();
  }

  return qword_1ED73AC00;
}

uint64_t sub_1AF1ADB50()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED73AC00 = result;
  qword_1ED72EA48 = sub_1AF1AFA84;
  return result;
}

uint64_t sub_1AF1ADB94(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AC08 != -1)
  {
    sub_1AFDDC134();
  }

  v3 = qword_1ED73AC00;

  return sub_1AF0D160C(v3, 0x58uLL);
}

uint64_t sub_1AF1ADBE4(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AF288070(a5, a2) * a4;

  return sub_1AF1ADC58(a2, a1, a5, a4, a3, v10, 0);
}

uint64_t sub_1AF1ADC58(_BOOL8 a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a1;
  if (!a2)
  {
    v14 = sub_1AF0D5194(a1, 0);
    a1 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDC148(v14, a2, v15, v16, v17, v18, v19, v20);
    }
  }

  if (a4 >= 5)
  {
    v21 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDC1C0(v21, v22, v23, v24, v25, v26, v27, v28);
    }
  }

  v29 = sub_1AF1CAE64(a3, a4, a5, a6, a7);
  v30 = sub_1AF1ADD44(v29, v13);
  *(v30 + 72) = CFRetain(a2);
  sub_1AF1CB108(v29, v30, v31);
  if (v29)
  {
    CFRelease(v29);
  }

  return v30;
}

uint64_t sub_1AF1ADD44(const void *a1, uint64_t a2)
{
  v2 = a2;
  v5 = sub_1AF1ADB94(a1, a2);
  if (!v5)
  {
    v6 = sub_1AF0D5194(0, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB710(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  sub_1AF16FB7C(v5, a1);
  *(v5 + 96) = v2;
  return v5;
}

uint64_t sub_1AF1ADDB0(_BOOL8 a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a1;
  if (!a2)
  {
    v14 = sub_1AF0D5194(a1, 0);
    a1 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDC148(v14, a2, v15, v16, v17, v18, v19, v20);
    }
  }

  if (a4 >= 5)
  {
    v21 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDC1C0(v21, v22, v23, v24, v25, v26, v27, v28);
    }
  }

  v29 = sub_1AF1CAE64(a3, a4, a5, a6, a7);
  v30 = sub_1AF1ADD44(v29, v13);
  *(v30 + 72) = CFRetain(a2);
  *(v30 + 88) |= 1u;
  sub_1AF1CB108(v29, v30, v31);
  if (v29)
  {
    CFRelease(v29);
  }

  return v30;
}

uint64_t sub_1AF1ADEA8(uint64_t a1, uint64_t a2)
{
  v75 = 0u;
  v76 = 0u;
  sub_1AF1AE1A8(a1, a2, &v75);
  v73 = 0u;
  v74 = 0u;
  v4 = sub_1AF1AE1A8(a2, v3, &v73);
  v6 = v76;
  v7 = v74;
  if (v76 == v74)
  {
    v8 = v75;
    if (!v75)
    {
      v9 = sub_1AF0D5194(v4, v5);
      v4 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
      if (v4)
      {
        sub_1AFDDC2C0(v9, v5, v10, v11, v12, v13, v14, v15);
      }
    }

    v16 = v73;
    if (!v73)
    {
      v17 = sub_1AF0D5194(v4, v5);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDC338(v17, v5, v18, v19, v20, v21, v22, v23);
      }
    }

    if (BYTE7(v74) == 1 && BYTE7(v76) == 1)
    {
      v24 = BYTE8(v74);
      if (BYTE8(v74) >= 3u)
      {
        v25 = 3;
      }

      else
      {
        v25 = BYTE8(v74);
      }

      v26 = malloc_type_malloc((4 * v25) * v6, 0x2C220B58uLL);
      v28 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v26, (4 * v25) * v6, *MEMORY[0x1E695E480]);
      if (v6)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = BYTE6(v76);
        v33 = BYTE6(v74);
        do
        {
          if (v24)
          {
            v34 = (v16 + v30);
            v35 = v25;
            v36 = v26;
            v37 = (v8 + v29);
            do
            {
              v38 = *v34++;
              v39 = v38;
              v40 = *v37++;
              *v36++ = v39 - v40;
              --v35;
            }

            while (v35);
          }

          ++v31;
          v30 += v33;
          v29 += v32;
          v26 += 4 * v25;
        }

        while (v31 != v6);
      }

      v41 = sub_1AF1AE3D8(a2, v27);
      v43 = sub_1AF288070(1, v42);
      v44 = sub_1AF1ADC58(v41, v28, 1, v25, v6, v43 * v25, 0);
      v45 = v28;
    }

    else
    {
      v69 = a2;
      v47 = BYTE4(v76);
      v71 = sub_1AF288070(BYTE4(v76), v5);
      v48 = malloc_type_malloc(v71 * v6, 0x43F11468uLL);
      v68 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v48, v71 * v6, *MEMORY[0x1E695E480]);
      v70 = v6;
      if (v6)
      {
        v53 = v16;
        v54 = v8;
        v55 = 0;
        v56 = 0;
        v57 = BYTE6(v76);
        v58 = BYTE4(v74);
        v59 = BYTE6(v74);
        do
        {
          *v60.i64 = sub_1AF279750(v47, (v54 + v55), v50, v51, v52);
          v72 = v60;
          *v63.i64 = sub_1AF279750(v58, (v53 + v56), v60, v61, v62);
          sub_1AF279B88(v47, v48, vsubq_f32(v63, v72));
          v56 += v59;
          v55 += v57;
          v48 += v71;
          --v6;
        }

        while (v6);
      }

      v64 = sub_1AF1AE3D8(v69, v49);
      v66 = sub_1AF288070(v47, v65);
      v44 = sub_1AF1ADC58(v64, v68, v47, 1, v70, v66, 0);
      v45 = v68;
    }

    CFRelease(v45);
  }

  else
  {
    v46 = sub_1AF0D5194(v4, v5);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDC238(v7, v6, v46);
    }

    return 0;
  }

  return v44;
}

uint64_t sub_1AF1AE1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v5 = sub_1AF17032C(a1, a2);
  v8 = sub_1AF1CAEF0(v5, v6, v7);
  v9 = sub_1AF12DB9C(v5);
  *(a3 + 16) = v9;
  v10 = sub_1AF121B74(v5);
  v12 = v10;
  *(a3 + 22) = v10;
  if (!v8 || !v9)
  {
    v13 = sub_1AF0D5194(v10, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v32 = 138412802;
      v33 = v8;
      v34 = 1024;
      *v35 = v9;
      *&v35[4] = 2112;
      *&v35[6] = a1;
      v29 = "Error: Can't build content (with data %@ and count %d) for mesh source %@";
      v30 = v13;
      v31 = 28;
      goto LABEL_15;
    }

LABEL_6:
    *a3 = 0;
    *(a3 + 8) = 0;
    goto LABEL_7;
  }

  if (sub_1AF170380(a1))
  {
    *a3 = sub_1AF1CB064(v5, 0);
    *(a3 + 8) = v12 * v9;
    goto LABEL_7;
  }

  BytePtr = CFDataGetBytePtr(v8);
  Length = CFDataGetLength(v8);
  v25 = sub_1AF1CB564(v5, v24);
  v27 = v25;
  if (Length <= v25)
  {
    v28 = sub_1AF0D5194(v25, v26);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v32 = 134218498;
      v33 = Length;
      v34 = 2048;
      *v35 = v27;
      *&v35[8] = 2112;
      *&v35[10] = a1;
      v29 = "Error: Can't build content (with data length %zu and offset %llu) for mesh source %@";
      v30 = v28;
      v31 = 32;
LABEL_15:
      _os_log_error_impl(&dword_1AF0CE000, v30, OS_LOG_TYPE_ERROR, v29, &v32, v31);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  *a3 = &BytePtr[v25];
  *(a3 + 8) = Length - v25;
LABEL_7:
  v14 = sub_1AF1CAED8(v5);
  v15 = sub_1AF1CAED0(v5);
  v17 = sub_1AF28844C(v14, v16);
  *(a3 + 23) = v17;
  v19 = v15;
  if (v14 != v17)
  {
    v19 = sub_1AF2884B4(v14, v18) * v15;
  }

  *(a3 + 24) = v19;
  *(a3 + 20) = sub_1AF2885E4(v14, v15);
  result = sub_1AF288070(v14, v20);
  *(a3 + 21) = result * v15;
  return result;
}

uint64_t sub_1AF1AE3D8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB710(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 96);
}

uint64_t sub_1AF1AE420(uint64_t a1, uint64_t a2)
{
  v77 = 0u;
  v78 = 0u;
  v3 = sub_1AF1AE1A8(a1, a2, &v77);
  v5 = v77;
  if (!v77)
  {
    v6 = sub_1AF0D5194(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDC2C0(v6, v4, v7, v8, v9, v10, v11, v12);
    }
  }

  v75 = 0u;
  v76 = 0u;
  v13 = sub_1AF1AE1A8(a2, v4, &v75);
  v15 = v75;
  if (!v75)
  {
    v16 = sub_1AF0D5194(v13, v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDC3B0(v16, v14, v17, v18, v19, v20, v21, v22);
    }
  }

  v23 = v78;
  if (v78 != v76)
  {
    return 0;
  }

  if (BYTE7(v76) == 1 && BYTE7(v78) == 1)
  {
    v24 = BYTE8(v76);
    if (BYTE8(v76) >= 3u)
    {
      v25 = 3;
    }

    else
    {
      v25 = BYTE8(v76);
    }

    v26 = malloc_type_malloc((4 * v25) * v78, 0x5409217FuLL);
    v28 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v26, (4 * v25) * v23, *MEMORY[0x1E695E480]);
    if (v23)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = BYTE6(v78);
      v33 = BYTE6(v76);
      do
      {
        if (v24)
        {
          v34 = (v5 + v30);
          v35 = v25;
          v36 = v26;
          v37 = (v15 + v29);
          do
          {
            v38 = *v34++;
            v39 = v38;
            v40 = *v37++;
            *v36++ = v39 + v40;
            --v35;
          }

          while (v35);
        }

        ++v31;
        v30 += v32;
        v29 += v33;
        v26 += 4 * v25;
      }

      while (v31 != v23);
    }

    v41 = sub_1AF1AE3D8(a2, v27);
    v43 = sub_1AF288070(1, v42) * v25;
    v44 = v41;
    v45 = v28;
    v46 = 1;
    v47 = v25;
    v48 = v23;
  }

  else
  {
    v71 = a2;
    v50 = BYTE4(v78);
    v73 = sub_1AF288070(BYTE4(v78), v14);
    v51 = malloc_type_malloc(v73 * v23, 0x8A25F0DFuLL);
    v70 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v51, v73 * v23, *MEMORY[0x1E695E480]);
    v72 = v23;
    if (v23)
    {
      v56 = v15;
      v57 = v5;
      v58 = 0;
      v59 = 0;
      v60 = BYTE6(v78);
      v61 = BYTE4(v76);
      v62 = BYTE6(v76);
      do
      {
        *v63.i64 = sub_1AF279750(v50, (v57 + v58), v53, v54, v55);
        v74 = v63;
        *v66.i64 = sub_1AF279750(v61, (v56 + v59), v63, v64, v65);
        sub_1AF279B88(v50, v51, vaddq_f32(v74, v66));
        v59 += v62;
        v58 += v60;
        v51 += v73;
        --v23;
      }

      while (v23);
    }

    v67 = sub_1AF1AE3D8(v71, v52);
    v43 = sub_1AF288070(v50, v68);
    v44 = v67;
    v28 = v70;
    v45 = v70;
    v46 = v50;
    v47 = 1;
    v48 = v72;
  }

  v49 = sub_1AF1ADC58(v44, v45, v46, v47, v48, v43, 0);
  CFRelease(v28);
  return v49;
}

uint64_t sub_1AF1AE6EC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB710(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return sub_1AF12DB9C(*(a1 + 64));
}

uint64_t sub_1AF1AE738(_BOOL8 a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDC428(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  if (!a2)
  {
    v13 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDC4A0(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  v51 = 0u;
  sub_1AF1A767C(a2, a3, &v51);
  if (v52)
  {
    v22 = 0;
    v23 = 0;
    do
    {
      LODWORD(v44) = 0;
      v50 = 0;
      v46 = v51;
      v47 = v52;
      v48 = v53;
      v49 = v54;
      sub_1AF1AE9B0(&v46, v22, &v44, &v50);
      v23 += (v50 - v44);
      ++v22;
    }

    while (v22 < v52);
  }

  else
  {
    v23 = 0;
  }

  v44 = 0u;
  v45 = 0u;
  sub_1AF1AE1A8(v5, v21, &v44);
  v24 = BYTE6(v45);
  v26 = sub_1AF288070(BYTE4(v45), v25);
  if (v26 != v24)
  {
    v41 = sub_1AF0D5194(v26, v27);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDC518();
    }

    return 0;
  }

  if (!(v23 * v24))
  {
    return 0;
  }

  v28 = malloc_type_malloc(v23 * v24, 0x7747E81EuLL);
  if (v52)
  {
    v29 = 0;
    v30 = 0;
    v31 = v44;
    do
    {
      v50 = 0;
      v43 = 0;
      v46 = v51;
      v47 = v52;
      v48 = v53;
      v49 = v54;
      sub_1AF1AE9B0(&v46, v29, &v50, &v43);
      v32 = ((v43 - v50) * v24);
      memcpy(&v28[v30], (v31 + (v50 * v24)), v32);
      v30 += v32;
      ++v29;
    }

    while (v29 < v52);
  }

  v33 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v28, v23 * v24, *MEMORY[0x1E695E480]);
  v35 = sub_1AF1AE3D8(v5, v34);
  v36 = BYTE8(v45);
  v37 = BYTE7(v45);
  v39 = sub_1AF288070(BYTE7(v45), v38);
  v40 = sub_1AF1ADC58(v35, v33, v37, v36, v23, v39 * v36, 0);
  CFRelease(v33);
  return v40;
}

void sub_1AF1AE9B0(uint64_t *a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a1 + 35;
  v7 = *(a1 + 35);
  v9 = a1[6];
  v10 = a1[7];
  v11 = v9 + v10 * 2 * a2;
  v12 = v10 * ((2 * (a2 & 0x3FFFFFFFFFFFFFFFLL)) | 1);
  if (v12 + v9 <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12 + v9;
  }

  if (a1[1] < (v7 + v7 * v13))
  {
    v14 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v20 = a1[1];
      v21 = *(a1 + 35);
      v22 = 136315650;
      v23 = "CFXIndicesContentGetVertexIndicesForLinePrimitiveAtIndex";
      v24 = 1024;
      v25 = v13;
      v26 = 2048;
      v27 = v20 / v21;
      _os_log_error_impl(&dword_1AF0CE000, v14, OS_LOG_TYPE_ERROR, "Error: %s - index (%u) out of bounds (%lu)", &v22, 0x1Cu);
    }

    *a3 = 0;
    *a4 = 0;
    return;
  }

  switch(v7)
  {
    case 4:
      v18 = *a1;
      *a3 = *(*a1 + 4 * v11);
      v16 = *(v18 + 4 * v9 + 4 * v12);
      goto LABEL_14;
    case 2:
      v17 = *a1;
      *a3 = *(*a1 + 2 * v11);
      v16 = *(v17 + 2 * v9 + 2 * v12);
      goto LABEL_14;
    case 1:
      v15 = *a1;
      *a3 = *(*a1 + v11);
      v16 = *(v15 + v9 + v12);
LABEL_14:
      *a4 = v16;
      return;
  }

  *a3 = 0;
  *a4 = 0;
  v19 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDDC54C(v8, v19);
  }
}

float32x4_t sub_1AF1AEB70(uint64_t a1, uint64_t a2)
{
  v11 = 0u;
  v12 = 0u;
  sub_1AF1AE1A8(a1, a2, &v11);
  result = 0uLL;
  v5 = v12;
  if (v12)
  {
    v6 = BYTE4(v12);
    v7 = v11;
    v8 = BYTE6(v12);
    do
    {
      v10 = result;
      *v9.i64 = sub_1AF279750(v6, v7, result, v2.f32[0], v3);
      v2 = vmaxnmq_f32(v10, vabsq_f32(v9));
      result = v2;
      v7 = (v7 + v8);
      --v5;
    }

    while (v5);
  }

  return result;
}

BOOL sub_1AF1AEBF4(uint64_t a1, uint64_t a2)
{
  v11 = 0u;
  v12 = 0u;
  sub_1AF1AE1A8(a1, a2, &v11);
  v5 = v11;
  if (!v11 || !v12)
  {
    return 0;
  }

  v6 = BYTE4(v12);
  v7 = BYTE6(v12);
  v8 = v12 - 1;
  do
  {
    *v2.i64 = sub_1AF279750(v6, v5, v2, v3, v4);
    v2.i32[0] = v2.i32[3];
    result = v2.f32[3] < 1.0;
    v10 = v2.f32[3] < 1.0 || v8-- == 0;
    v5 = (v5 + v7);
  }

  while (!v10);
  return result;
}

uint64_t sub_1AF1AEC88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v59 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDC428(v8, a2, v9, v10, v11, v12, v13, v14);
    }
  }

  v57 = 0u;
  v58 = 0u;
  sub_1AF1AE1A8(a1, a2, &v57);
  v15 = v57;
  if (!v57)
  {
    return 0;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v16 = sub_1AF1A767C(a2, a4, &v53);
  if (BYTE2(v55) != 2)
  {
    v18 = sub_1AF0D5194(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDC5C8(v18, v17, v19, v20, v21, v22, v23, v24);
    }
  }

  v25 = sub_1AF288070(BYTE4(v58), v17);
  v26 = v25 * a3;
  v27 = malloc_type_malloc(v25 * a3, 0xF76C8875uLL);
  MEMORY[0x1EEE9AC00](v27);
  bzero(&v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
  if (v54)
  {
    v48 = v25 * a3;
    v49 = &v47;
    v50 = a3;
    v28 = 0;
    LODWORD(v29) = 0;
    v30 = BYTE6(v58);
    do
    {
      v52 = 0;
      v51[0] = v53;
      v51[1] = v54;
      v51[2] = v55;
      v51[3] = v56;
      sub_1AF1AE9B0(v51, v28, &v52 + 1, &v52);
      v31 = HIDWORD(v52);
      if (HIDWORD(v52) > v29)
      {
        v32 = &v27[v25 * v29];
        v33 = HIDWORD(v52) - v29;
        do
        {
          memcpy(v32, &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
          v32 += v25;
          --v33;
        }

        while (v33);
      }

      v29 = v52;
      if (v52 > v31)
      {
        v34 = &v27[v25 * v31];
        v35 = v52 - v31;
        do
        {
          memcpy(v34, v15, v25);
          v15 += v30;
          v34 += v25;
          --v35;
        }

        while (v35);
      }

      ++v28;
    }

    while (v28 < v54);
    a3 = v50;
    v26 = v48;
  }

  else
  {
    v29 = 0;
  }

  v37 = a3 - v29;
  if (a3 > v29)
  {
    v38 = &v27[v25 * v29];
    do
    {
      memcpy(v38, &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
      v38 += v25;
      --v37;
    }

    while (v37);
  }

  v39 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v27, v26, *MEMORY[0x1E695E480]);
  v41 = sub_1AF1AE3D8(a1, v40);
  v42 = BYTE8(v58);
  v43 = BYTE7(v58);
  v45 = sub_1AF288070(BYTE7(v58), v44);
  v36 = sub_1AF1ADC58(v41, v39, v43, v42, a3, v45 * v42, 0);
  CFRelease(v39);
  return v36;
}

uint64_t sub_1AF1AEF80(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF1ADB94(a1, a2);
  v4 = sub_1AF1CB2E4(*(a1 + 64));
  sub_1AF16FB7C(v3, v4);
  sub_1AF1CB108(v4, v3, v5);
  CFRelease(v4);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  if (v7)
  {
    sub_1AF16FD80(v3, v6, v7);
  }

  else
  {
    sub_1AF16FCB0(v3, v6);
  }

  *(v3 + 96) = *(a1 + 96);
  return v3;
}

uint64_t sub_1AF1AF000(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF1ADB94(a1, a2);
  sub_1AF16FDD8(a1, v3);
  *(v3 + 96) = *(a1 + 96);
  return v3;
}

uint64_t sub_1AF1AF040(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF1ADB94(a1, a2);
  sub_1AF1700F0(a1, v3);
  *(v3 + 96) = *(a1 + 96);
  return v3;
}

double sub_1AF1AF084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB710(v5, v6, a3, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 64);
  v13 = sub_1AF1CAF40(v12, a2, a3);
  if (!v13)
  {
    return 0.0;
  }

  v14 = v13;
  v15 = sub_1AF1CAEE0(v12);
  return sub_1AF279750(v15, v14, v16, v17, v18);
}

double sub_1AF1AF104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB710(v5, v6, a3, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 64);
  v13 = sub_1AF1CAF40(v12, a2, a3);
  v14 = sub_1AF1CAEE0(v12);
  return sub_1AF279750(v14, v13, v15, v16, v17);
}

uint64_t sub_1AF1AF184(uint64_t a1, uint64_t a2, int a3)
{
  v28 = 0u;
  v29 = 0u;
  sub_1AF1AE1A8(a1, a2, &v28);
  v6 = sub_1AF2885E4(BYTE7(v29), BYTE8(v29));
  if (v6 != a2)
  {
    v9 = v6;
    v10 = sub_1AF288070(a2, v7);
    v11 = v10;
    if ((v10 & 3) != 0)
    {
      v12 = -v10 & 3;
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_1AF2795E8(a2, v9);
    if (v13)
    {
      v15 = v12 + v11;
      v16 = v29;
      v17 = v15 * v29;
      if (a3)
      {
        Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v15 * v29);
        CFDataSetLength(Mutable, v17);
      }

      else
      {
        v21 = malloc_type_calloc(v15 * v29, 1uLL, 0xA183863BuLL);
        Mutable = CFDataCreateWithBytesNoCopy(0, v21, v17, 0);
      }

      BytePtr = CFDataGetBytePtr(Mutable);
      sub_1AF27964C(BytePtr, v15 | (a2 << 16) | (v16 << 32), v28, BYTE6(v29) | (BYTE4(v29) << 16) | (v16 << 32));
      v24 = sub_1AF1AE3D8(a1, v23);
      if (a3)
      {
        v25 = sub_1AF1ADDB0(v24, Mutable, a2, 1, v16, v15, 0);
      }

      else
      {
        v25 = sub_1AF1ADC58(v24, Mutable, a2, 1, v16, v15, 0);
      }

      v8 = v25;
      CFRelease(Mutable);
      v27 = sub_1AF17032C(v8, v26);
      sub_1AF1CB654(v27, v12);
    }

    else
    {
      v20 = sub_1AF0D5194(v13, v14);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDDC640(v9, a2, v20);
      }

      return 0;
    }

    return v8;
  }

  if (a3)
  {
    v8 = sub_1AF1ADB94(v6, v7);
    sub_1AF1700F0(a1, v8);
    *(v8 + 96) = *(a1 + 96);
    return v8;
  }

  return sub_1AF1AEF80(a1, v7);
}

size_t sub_1AF1AF380(uint64_t a1, uint64_t a2)
{
  v19 = 0u;
  v20 = 0u;
  result = sub_1AF1AE1A8(a1, a2, &v19);
  v6 = v19;
  if (v19)
  {
    v7 = sub_1AF1AE3D8(a1, v5);
    v8 = sub_1AF1ADAF8(v7);
    v9 = MEMORY[0x1E69E9858];
    v10 = *MEMORY[0x1E69E9858];
    CStringPtr = CFStringGetCStringPtr(v8, 0x600u);
    result = fprintf(v10, "%s\n", CStringPtr);
    v12 = v20 >= a2 ? a2 : v20;
    if (v12 >= 1)
    {
      v13 = 0;
      v14 = BYTE4(v20);
      v15 = BYTE6(v20);
      do
      {
        if (v14 <= 23)
        {
          switch(v14)
          {
            case 7:
              v18 = *v9;
              goto LABEL_25;
            case 8:
              v17 = *v9;
              goto LABEL_24;
            case 9:
              v16 = *v9;
LABEL_26:
              result = fprintf(v16, "%4d : %+.2f %+.2f %+.2f %+.2f\n");
              goto LABEL_27;
          }
        }

        else if (v14 > 42)
        {
          if (v14 == 43)
          {
            v17 = *v9;
LABEL_24:
            result = fprintf(v17, "%4d : %+.2f %+.2f %+.2f\n");
            goto LABEL_27;
          }

          if (v14 == 44)
          {
            v16 = *v9;
            goto LABEL_26;
          }
        }

        else
        {
          if (v14 == 24)
          {
            result = fprintf(*v9, "%4d : %3d %3d %3d %3d\n");
            goto LABEL_27;
          }

          if (v14 == 42)
          {
            v18 = *v9;
LABEL_25:
            result = fprintf(v18, "%4d : %+.2f %+.2f\n");
            goto LABEL_27;
          }
        }

        result = fwrite("type debugging not implemented\n", 0x1FuLL, 1uLL, *v9);
LABEL_27:
        ++v13;
        v6 += v15;
      }

      while (v12 != v13);
    }
  }

  return result;
}

uint64_t sub_1AF1AF854(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB710(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 99);
}

void sub_1AF1AF89C(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB710(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 99) = v2;
}

id sub_1AF1AF8F4(const void *a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"kCFXNotificationMeshSourceWillDie", a1, 0, 1u);

  return sub_1AF16F9B4(a1, v3);
}

__CFString *sub_1AF1AF94C(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = sub_1AF1CAED8(*(a1 + 64));
  v4 = sub_1AF1CAED0(*(a1 + 64));
  v6 = sub_1AF1AE6EC(a1, v5);
  v8 = sub_1AF170230(a1, v7);
  v11 = sub_1AF170374(a1);
  v12 = *(a1 + 64);
  if (v8)
  {
    v13 = sub_1AF170230(a1, v9);
  }

  else
  {
    v13 = sub_1AF1701CC(a1, v9, v10);
  }

  v14 = v13;
  v15 = v8 != 0;
  v16 = sub_1AF2885E4(v3, v4);
  v17 = sub_1AF3753A8(a1);
  v18 = sub_1AF1ADAF8(*(a1 + 96));
  v20 = sub_1AF2883D8(v16, v19);
  CFStringAppendFormat(Mutable, 0, @"<%s %p | %@ data:(%p) mut:%d count:%ld type:%@ divisor:%d mtl:%d offset:%zu stride:%zu", v17, a1, v18, v14, v11, v6, v20, *(a1 + 98), v15, *(v12 + 48), *(v12 + 40));
  CFStringAppend(Mutable, @">");
  return Mutable;
}

__CFArray *sub_1AF1AFA84(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v17 = 2;
  valuePtr = 5;
  v16 = a1 + 64;
  v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &v17);
  v6 = CFNumberCreate(0, kCFNumberLongType, &v16);
  CFDictionarySetValue(v3, @"name", @"accessor");
  CFDictionarySetValue(v3, @"type", v4);
  CFDictionarySetValue(v3, @"address", v6);
  CFDictionarySetValue(v3, @"semantic", v5);
  CFArrayAppendValue(Mutable, v3);
  CFRelease(v5);
  CFRelease(v3);
  CFRelease(v6);
  CFRelease(v4);
  v7 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v17 = 2;
  valuePtr = 5;
  v16 = a1 + 72;
  v8 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v9 = CFNumberCreate(0, kCFNumberSInt32Type, &v17);
  v10 = CFNumberCreate(0, kCFNumberLongType, &v16);
  CFDictionarySetValue(v7, @"name", @"data");
  CFDictionarySetValue(v7, @"type", v8);
  CFDictionarySetValue(v7, @"address", v10);
  CFDictionarySetValue(v7, @"semantic", v9);
  CFArrayAppendValue(Mutable, v7);
  CFRelease(v9);
  CFRelease(v7);
  CFRelease(v10);
  CFRelease(v8);
  v11 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v17 = 0;
  valuePtr = 2;
  v16 = a1 + 96;
  v12 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v13 = CFNumberCreate(0, kCFNumberSInt32Type, &v17);
  v14 = CFNumberCreate(0, kCFNumberLongType, &v16);
  CFDictionarySetValue(v11, @"name", @"semantic");
  CFDictionarySetValue(v11, @"type", v12);
  CFDictionarySetValue(v11, @"address", v14);
  CFDictionarySetValue(v11, @"semantic", v13);
  CFArrayAppendValue(Mutable, v11);
  CFRelease(v13);
  CFRelease(v11);
  CFRelease(v14);
  CFRelease(v12);
  return Mutable;
}

void sub_1AF1AFDA8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v129 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDC6F4();
    }
  }

  v5 = *(v3 + 120);
  if (v5)
  {
    if (*(v3 + 152))
    {
      return;
    }

    CFRelease(v5);
    *(v3 + 120) = 0;
  }

  v103 = v2;
  v6 = *(v3 + 152);
  if (v6)
  {
    CFRelease(v6);
    *(v3 + 152) = 0;
  }

  free(*(v3 + 176));
  *(v3 + 176) = 0;
  *(v3 + 168) = 0;
  free(*(v3 + 184));
  *(v3 + 184) = 0;
  v115 = 0;
  v116 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  sub_1AF1B06E0(v3, &v116, &v115, &v114, &v113, &v112);
  v9 = v116;
  if (v116)
  {
    v10 = v115;
    if (!v115)
    {
      v24 = sub_1AF0D5194(v7, v8);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDDC9CC(v3, v24, v25, v26, v27, v28, v29, v30);
      }

      v23 = v9;
      goto LABEL_83;
    }

    Count = CFArrayGetCount(v116);
    if (Count < 1)
    {
LABEL_15:
      v101 = 0;
    }

    else
    {
      v12 = Count;
      v13 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, v13);
        if (!sub_1AF1AE3D8(ValueAtIndex, v15))
        {
          break;
        }

        if (v12 == ++v13)
        {
          goto LABEL_15;
        }
      }

      v101 = ValueAtIndex;
    }

    v31 = CFArrayGetCount(v10);
    allocator = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v31, MEMORY[0x1E695E9C0]);
    v33 = Mutable;
    if (v31 < 1)
    {
LABEL_72:
      CFRelease(v10);
      v80 = CFArrayGetCount(v33);
      if (v31 != v80)
      {
        v82 = sub_1AF0D5194(v80, v81);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDDC8CC();
        }
      }

      *(v3 + 120) = v116;
      *(v3 + 152) = v33;
      v83 = v114;
      *(v3 + 168) = v113;
      v84 = v112;
      *(v3 + 176) = v83;
      *(v3 + 184) = v84;
      sub_1AF1A2768(v3);
      if ((v103 & 1) == 0)
      {
        sub_1AF1A2A5C(v3, v85);
      }

      return;
    }

    v34 = 0;
    bytesDeallocator = *MEMORY[0x1E695E488];
    theArray = Mutable;
    v95 = v31;
LABEL_26:
    idx = v34;
    v35 = CFArrayGetValueAtIndex(v115, v34);
    v37 = v35;
    if (*(v35 + 88) != 4)
    {
      v35 = CFRetain(v35);
      v53 = v35;
      if (v35)
      {
        goto LABEL_68;
      }

      goto LABEL_80;
    }

    if (!*(v35 + 96))
    {
      goto LABEL_80;
    }

    v38 = sub_1AF1A7634(v35);
    if (v38 != 1)
    {
      v88 = sub_1AF0D5194(v38, v39);
      v35 = os_log_type_enabled(v88, OS_LOG_TYPE_FAULT);
      if (v35)
      {
        sub_1AFDDC774();
      }

      goto LABEL_80;
    }

    v40 = *(v37 + 80);
    Length = CFDataGetLength(*(v37 + 96));
    BytePtr = CFDataGetBytePtr(*(v37 + 96));
    v44 = *(v37 + 104);
    if (v44)
    {
      v45 = BytePtr;
      v46 = 0;
      v47 = 0;
      LOBYTE(v48) = 1;
      do
      {
        v35 = sub_1AF1B1BEC(v45, v47, v40, Length);
        v49 = v35;
        if (v35 <= 2)
        {
          if ((byte_1EB658611 & 1) == 0)
          {
            byte_1EB658611 = 1;
            v86 = sub_1AF0D5194(v35, v36);
            v35 = os_log_type_enabled(v86, OS_LOG_TYPE_ERROR);
            if (v35)
            {
              sub_1AFDDC800(v49, v86);
            }
          }

          goto LABEL_80;
        }

        v48 = (v35 == 3) & v48;
        v46 += (v35 - 2);
        v47 = (v47 + 1);
      }

      while (v44 != v47);
      if (v48)
      {
        v50 = CFDataGetLength(*(v37 + 96));
        v51 = CFDataCreate(allocator, (v45 + v44 * v40), v50 - v44 * v40);
        v53 = sub_1AF1A6834(v51, v52);
        sub_1AF1A6A70(v53, 0, *(v37 + 104), v51, v40);
        v54 = v51;
        goto LABEL_67;
      }

      v35 = malloc_type_malloc(v46 * 3 * v40, 0x100004077774924uLL);
      if (!v35)
      {
        goto LABEL_80;
      }

      v100 = v35;
      v98 = v46 * 3 * v40;
      v55 = 0;
      v102 = 0;
      v56 = 0;
      v96 = v44 + 2;
      v97 = v44 + 1;
      v89 = v44 + 3;
      v94 = v3;
      v107 = v44;
      while (1)
      {
        v57 = sub_1AF1B1BEC(v45, v56, v40, Length);
        if (v57 >= 3)
        {
          break;
        }

LABEL_65:
        v56 = (v56 + 1);
        if (v56 == v44)
        {
          v77 = CFDataCreateWithBytesNoCopy(allocator, v100, v46 * 3 * v40, bytesDeallocator);
          v53 = sub_1AF1A6834(v77, v78);
          sub_1AF1A6A70(v53, 0, v46, v77, v40);
          v54 = v77;
LABEL_67:
          CFRelease(v54);
          v31 = v95;
          if (!v53)
          {
            goto LABEL_80;
          }

LABEL_68:
          v79 = sub_1AF1A3D1C(v3, idx, 0);
          if (v79)
          {
            v53[11] = v79[11];
            v53[12] = v79[12];
          }

          v33 = theArray;
          CFArrayAppendValue(theArray, v53);
          CFRelease(v53);
          v34 = idx + 1;
          if (idx + 1 == v31)
          {
            v10 = v115;
            goto LABEL_72;
          }

          goto LABEL_26;
        }
      }

      v59 = v57;
      v60 = v55 + v44;
      v61 = v60 + v57 - 1;
      if (v40 * v61 > Length)
      {
        v108 = v55;
        v62 = sub_1AF0D5194(v57, v58);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          *buf = 67110144;
          v120 = v56;
          v121 = 1024;
          v122 = v59;
          v123 = 1024;
          v124 = v60;
          v125 = 1024;
          v126 = v61;
          v127 = 1024;
          v128 = Length / v40;
          _os_log_error_impl(&dword_1AF0CE000, v62, OS_LOG_TYPE_ERROR, "Error: __CFXMeshElementCreateRenderablePrimitiveTypeCopy - polygon %u (%u vertices, indices [%u, %u]) does not fit in index buffer (%u elements)", buf, 0x20u);
        }

        v46 -= v59 - 2;
        v44 = v107;
        v55 = v108;
        goto LABEL_65;
      }

      if (v57 == 4)
      {
        v64 = sub_1AF1B1BEC(v45, v60, v40, Length);
        v92 = sub_1AF1B1BEC(v45, v55 + v97, v40, Length);
        v65 = sub_1AF1B1BEC(v45, v55 + v96, v40, Length);
        v66 = v55;
        v67 = v65;
        v109 = v66 + 4;
        v105 = sub_1AF1B1BEC(v45, v89 + v66, v40, Length);
        sub_1AF1B1804(v100, v102, v64, v40, v98);
        sub_1AF1B1804(v100, v102 + 1, v92, v40, v98);
        sub_1AF1B1804(v100, v102 + 2, v67, v40, v98);
        sub_1AF1B1804(v100, v102 + 3, v64, v40, v98);
        sub_1AF1B1804(v100, v102 + 4, v67, v40, v98);
        v3 = v94;
        sub_1AF1B1804(v100, v102 + 5, v105, v40, v98);
        v102 += 6;
        goto LABEL_50;
      }

      if (v57 == 3)
      {
        v63 = sub_1AF1B1BEC(v45, v60, v40, Length);
        v104 = sub_1AF1B1BEC(v45, v55 + v97, v40, Length);
        v109 = v55 + 3;
        v91 = sub_1AF1B1BEC(v45, v55 + v96, v40, Length);
        sub_1AF1B1804(v100, v102, v63, v40, v98);
        sub_1AF1B1804(v100, v102 + 1, v104, v40, v98);
        sub_1AF1B1804(v100, v102 + 2, v91, v40, v98);
        v102 += 3;
LABEL_50:
        v55 = v109;
LABEL_64:
        v44 = v107;
        goto LABEL_65;
      }

      if (!v101)
      {
        goto LABEL_64;
      }

      v68 = malloc_type_malloc(4 * v57, 0x100004052888210uLL);
      v69 = 0;
      v110 = v55;
      do
      {
        v68[v69] = sub_1AF1B1BEC(v45, v107 + v55 + v69, v40, Length);
        ++v69;
      }

      while (v59 != v69);
      *buf = 0;
      v70 = sub_1AF2879EC(v101, v68, v59, buf);
      v72 = v70;
      v73 = v59 - 2;
      if (*buf)
      {
        if (*buf == 3 * v73)
        {
          v93 = v45;
          v74 = 0;
          v75 = v70;
          do
          {
            sub_1AF1B1804(v100, v102 + v74, v75[v74], v40, v98);
            ++v74;
          }

          while (v74 < *buf);
          v102 += v74;
          v72 = v75;
          v45 = v93;
          v3 = v94;
          goto LABEL_62;
        }

        v76 = sub_1AF0D5194(v70, v71);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDDC88C(&v117, v118, v76);
        }
      }

      v46 -= v73;
      v3 = v94;
      if (!v72)
      {
LABEL_63:
        free(v68);
        v55 = v59 + v110;
        goto LABEL_64;
      }

LABEL_62:
      free(v72);
      goto LABEL_63;
    }

    v53 = sub_1AF1A6834(BytePtr, v43);
    sub_1AF1A6A70(v53, 0, 0, 0, 0);
    if (v53)
    {
      goto LABEL_68;
    }

LABEL_80:
    v87 = sub_1AF0D5194(v35, v36);
    if (os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDC94C();
    }

    v23 = theArray;
LABEL_83:
    CFRelease(v23);
  }

  else
  {
    v16 = sub_1AF0D5194(v7, v8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDC9CC(v3, v16, v17, v18, v19, v20, v21, v22);
    }

    v23 = v115;
    if (v115)
    {
      goto LABEL_83;
    }
  }
}

void sub_1AF1B06E0(uint64_t a1, __CFArray **a2, __CFArray **a3, void *a4, _DWORD *a5, void *a6)
{
  v258 = *MEMORY[0x1E69E9840];
  v206 = a2;
  *a2 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  v217 = a1;
  *&v233 = sub_1AF1A4CE8(a1, 0);
  if (!v233)
  {
    v18 = sub_1AF0D5194(0, v11);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDCC90(v217, v18, v19, v20, v21, v22, v23, v24);
    }

    return;
  }

  Count = CFArrayGetCount(*(a1 + 72));
  v213 = CFArrayGetCount(*(a1 + 104));
  v234 = Count;
  if (Count < 1)
  {
    v17 = 0;
    goto LABEL_12;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = sub_1AF1A4C10(v217, v15);
    v17 = v16;
    if (v15)
    {
      break;
    }

LABEL_7:
    v15 = (v15 + 1);
    v14 = v17;
    if (v234 == v15)
    {
      goto LABEL_12;
    }
  }

  if (v14 == v16)
  {
    v17 = v14;
    goto LABEL_7;
  }

  if (v213 < 1)
  {
    v17 = v14;
    goto LABEL_12;
  }

  v34 = sub_1AF1A3D1C(v217, 0, 0);
  v200 = a5;
  v201 = a6;
  v199 = a4;
  if (!sub_1AF1A7E6C(v34, v35))
  {
    goto LABEL_44;
  }

  v37 = a3;
  *&v36 = 134218496;
  v232 = v36;
  v38 = 1;
  do
  {
    v39 = v38;
    v40 = sub_1AF1A7634(v34);
    if (v40 >= 2 && (byte_1EB658610 & 1) == 0)
    {
      v41 = v40;
      byte_1EB658610 = 1;
      v42 = sub_1AF0D5194(v40, v13);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v249[0]) = v232;
        *(v249 + 4) = v34;
        WORD6(v249[0]) = 2048;
        *(v249 + 14) = v217;
        WORD3(v249[1]) = 1024;
        DWORD2(v249[1]) = v41;
        _os_log_error_impl(&dword_1AF0CE000, v42, OS_LOG_TYPE_ERROR, "Warning: Mesh element %p of mesh %p has %d channels but they all define the same topology", v249, 0x1Cu);
      }
    }

    if (v213 == v39)
    {
      break;
    }

    v34 = sub_1AF1A3D1C(v217, v39, 0);
    v44 = sub_1AF1A7E6C(v34, v43);
    v38 = v39 + 1;
  }

  while (v44);
  v17 = v14;
  v62 = v39 < v213;
  a3 = v37;
  if (v62)
  {
LABEL_44:
    v203 = a3;
    v63 = *MEMORY[0x1E695E480];
    v64 = MEMORY[0x1E695E9C0];
    v65 = v234;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v234, MEMORY[0x1E695E9C0]);
    v211 = v63;
    v212 = CFArrayCreateMutable(v63, v213, v64);
    v198[1] = v198;
    MEMORY[0x1EEE9AC00](v212);
    v227 = 0;
    LODWORD(v66) = 0;
    v67 = 0;
    v202 = &v198[-8 * v65];
    v68 = v202 + 15;
    do
    {
      v69 = v217;
      ValueAtIndex = CFArrayGetValueAtIndex(*(v217 + 72), v67);
      v72 = sub_1AF1AF080(ValueAtIndex, v71);
      v73 = sub_1AF1A4C10(v69, v67);
      v74 = sub_1AF12DB9C(v72);
      v75 = sub_1AF1CAED8(v72);
      v76 = sub_1AF1CAED0(v72);
      v78 = sub_1AF288070(v75, v77);
      if (v75 == 14 && v76 == 3)
      {
        v81 = 4 * sub_1AF288070(14, v79);
        v76 = 4;
      }

      else
      {
        v81 = v78 * v76;
      }

      *(v68 - 15) = ValueAtIndex;
      *(v68 - 13) = v72;
      *(v68 - 44) = v73;
      *(v68 - 9) = v81;
      *(v68 - 14) = v75;
      *(v68 - 5) = v76;
      *(v68 - 1) = 0;
      *v68 = v74;
      *(v68 - 3) = malloc_type_malloc(v81 * v74, 0x22EC32FAuLL);
      if (ValueAtIndex == v233)
      {
        v66 = v74;
      }

      else
      {
        v66 = v66;
      }

      if (ValueAtIndex == v233)
      {
        v82 = v73;
      }

      else
      {
        v82 = v227;
      }

      v227 = v82;
      v67 = (v67 + 1);
      v68 += 16;
    }

    while (v234 != v67);
    v235 = 0uLL;
    *&v236 = 0;
    v205 = v66;
    v226 = malloc_type_calloc(v66, 4uLL, 0x100004052888210uLL);
    MEMORY[0x1EEE9AC00](v226);
    v210 = v198 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
    v225 = 0;
    v84 = 0;
    v240 = 0;
    v241 = 0;
    v239 = &v240;
    v209 = *MEMORY[0x1E695E488];
    v220 = (v202 + 2);
    v228 = (v202 + 6);
    *&v85 = 134218498;
    v208 = v85;
    *&v85 = 67109632;
    v207 = v85;
    do
    {
      v86 = sub_1AF1A3D1C(v217, v84, 0);
      v216 = sub_1AF1A7034(v86, v87);
      v88 = sub_1AF1A7674(v86);
      LODWORD(v233) = sub_1AF1A809C(v86, v89);
      v91 = sub_1AF1A70CC(v86, v90);
      v250 = 0;
      v221 = v91;
      memset(v249, 0, sizeof(v249));
      v224 = v86;
      sub_1AF1A79D0(v86, v92, v249);
      v215 = v84;
      v93 = &v210[40 * v84];
      v94 = v249[1];
      *v93 = v249[0];
      *(v93 + 1) = v94;
      v230 = v93;
      *(v93 + 4) = v250;
      v223 = v88;
      v95 = 0;
      if (v88 < 1)
      {
        v97 = v88;
      }

      else
      {
        v96 = 0;
        v97 = v88;
        do
        {
          v98 = sub_1AF1A7798(v224, v96);
          if (v98 >= 1)
          {
            v99 = v98;
            v100 = 0;
            while (2)
            {
              v101 = v220;
              v102 = v234;
              do
              {
                v103 = sub_1AF12DB9C(*(v101 - 1));
                *buf = v249[0];
                *&buf[16] = v249[1];
                v256.n128_u64[0] = v250;
                v104 = sub_1AF1A7BA8(buf, v96, v100, *v101);
                if (v104 >= v103)
                {
                  v106 = v104;
                  v107 = sub_1AF0D5194(v104, v105);
                  v108 = os_log_type_enabled(v107, OS_LOG_TYPE_ERROR);
                  if (v108)
                  {
                    v111 = *(v101 - 2);
                    v112 = sub_1AF1AE3D8(v111, v109);
                    v113 = sub_1AF1ADAF8(v112);
                    *buf = v208;
                    *&buf[4] = v111;
                    *&buf[12] = 2112;
                    *&buf[14] = v113;
                    *&buf[22] = 1024;
                    *&buf[24] = v106;
                    _os_log_error_impl(&dword_1AF0CE000, v107, OS_LOG_TYPE_ERROR, "Error: Deindexer issue - source %p (%@) has no original data at index %u", buf, 0x1Cu);
                  }

                  v110 = sub_1AF0D5194(v108, v109);
                  if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
                  {
                    *buf = v207;
                    *&buf[4] = v96;
                    *&buf[8] = 1024;
                    *&buf[10] = v215;
                    *&buf[14] = 2048;
                    *&buf[16] = v224;
                    _os_log_error_impl(&dword_1AF0CE000, v110, OS_LOG_TYPE_ERROR, "Error: Deindexer issue - will discard face #%u of element at index %d (%p)", buf, 0x18u);
                  }

                  v88 = v223;
                  if (!v95)
                  {
                    v95 = malloc_type_calloc(v223, 1uLL, 0x100004077774924uLL);
                  }

                  --v97;
                  v221 -= v99;
                  v95[v96] = 1;
                  goto LABEL_75;
                }

                v101 += 64;
                v102 = (v102 - 1);
              }

              while (v102);
              if (++v100 != v99)
              {
                continue;
              }

              break;
            }

            v88 = v223;
          }

LABEL_75:
          ++v96;
        }

        while (v96 != v88);
      }

      v219 = v95;
      v114 = v233;
      v214 = v97;
      if (v216 == 4)
      {
        v231 = (v97 + v221) * v233;
        v115 = malloc_type_malloc(v231, 0x100004077774924uLL);
        v117 = v115;
        v118 = v219;
        if (v219)
        {
          if (v88 < 1)
          {
            v120 = 0;
          }

          else
          {
            v119 = 0;
            v120 = 0;
            do
            {
              v121 = *v118++;
              if ((v121 & 1) == 0)
              {
                BytePtr = CFDataGetBytePtr(v224[12]);
                v115 = memcpy(v117 + v120, &BytePtr[v119], v114);
                v120 += v114;
              }

              v119 += v114;
              --v88;
            }

            while (v88);
          }

          if (v120 == v97 * v114)
          {
            v218 = v214;
            v88 = v223;
          }

          else
          {
            v124 = sub_1AF0D5194(v115, v116);
            v125 = os_log_type_enabled(v124, OS_LOG_TYPE_FAULT);
            v126 = v214;
            v88 = v223;
            if (v125)
            {
              sub_1AFDDCA38(v247, &v248, v124);
            }

            v218 = v126;
          }
        }

        else
        {
          v123 = CFDataGetBytePtr(v224[12]);
          memcpy(v117, v123, v97 * v114);
          v218 = v97;
        }
      }

      else
      {
        v231 = v221 * v233;
        v117 = malloc_type_malloc(v231, 0x100004077774924uLL);
        v218 = 0;
      }

      if (v88 < 1)
      {
        v127 = 0;
        v129 = v219;
      }

      else
      {
        v127 = 0;
        v128 = 0;
        v129 = v219;
        v229 = v117;
        do
        {
          if (!v129 || (v129[v128] & 1) == 0)
          {
            *&v233 = sub_1AF1A7798(v224, v128);
            v222 = v127;
            if (v233 >= 1)
            {
              v130 = 0;
              *&v232 = v127 + v218;
              do
              {
                v131 = v241;
                *buf = v230;
                *&buf[8] = v128;
                *&buf[16] = v130;
                *&buf[24] = v241;
                v132 = sub_1AF1B19B0(&v239, buf, buf);
                v134 = v133;
                v135 = v114;
                sub_1AF1B1804(v117, (v232 + v130), *(v132 + 56), v114, v231);
                v136 = v228;
                v137 = v234;
                if (v134)
                {
                  do
                  {
                    v139 = *(v136 + 2);
                    v138 = *(v136 + 3);
                    if (v138 == v139)
                    {
                      v140 = (2 * v138);
                      *(v136 + 3) = v140;
                      v141 = *(v136 - 3);
                      v142 = malloc_type_realloc(*v136, v141 * v140, 0x36D65746uLL);
                      *v136 = v142;
                    }

                    else
                    {
                      v142 = *v136;
                      v141 = *(v136 - 3);
                    }

                    v143 = &v142[v141 * v139];
                    *buf = v249[0];
                    *&buf[16] = v249[1];
                    v256.n128_u64[0] = v250;
                    v144 = sub_1AF1A7BA8(buf, v128, v130, *(v136 - 32));
                    v146 = sub_1AF1CAF40(*(v136 - 5), v144, v145);
                    v147 = memcpy(v143, v146, v141);
                    if (v139 != v131)
                    {
                      v149 = sub_1AF0D5194(v147, v148);
                      if (os_log_type_enabled(v149, OS_LOG_TYPE_FAULT))
                      {
                        sub_1AFDDCA7C(v245, &v246, v149);
                      }
                    }

                    *(v136 + 2) = v139 + 1;
                    v136 += 8;
                    v137 = (v137 - 1);
                  }

                  while (v137);
                  *buf = v249[0];
                  *&buf[16] = v249[1];
                  v256.n128_u64[0] = v250;
                  *buf = sub_1AF1A7BA8(buf, v128, v130, v227);
                  sub_1AF121C58(&v235, buf);
                  if (!v226[*buf])
                  {
                    v226[*buf] = (*(&v235 + 1) - v235) >> 2;
                  }
                }

                else
                {
                  v225 = 1;
                }

                v114 = v135;
                ++v130;
                v117 = v229;
              }

              while (v130 != v233);
            }

            v127 = v233 + v222;
            v129 = v219;
          }

          ++v128;
        }

        while (v128 != v223);
      }

      free(v129);
      if (v127 != v221)
      {
        v152 = sub_1AF0D5194(v150, v151);
        if (os_log_type_enabled(v152, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDDCAC0(v243, &v244, v152);
        }
      }

      v153 = CFDataCreateWithBytesNoCopy(v211, v117, v231, v209);
      v155 = sub_1AF1A6834(v153, v154);
      sub_1AF1A6A70(v155, v216, v214, v153, v114);
      CFArrayAppendValue(v212, v155);
      CFRelease(v155);
      CFRelease(v153);
      v84 = v215 + 1;
    }

    while (v215 + 1 != v213);
    if ((v225 & 1) == 0)
    {
      v159 = sub_1AF0D5194(v156, v157);
      v156 = os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT);
      if (v156)
      {
        LODWORD(v249[0]) = 134217984;
        *(v249 + 4) = v217;
        _os_log_impl(&dword_1AF0CE000, v159, OS_LOG_TYPE_DEFAULT, "Warning: Mesh %p has multiple channels but deindexing didn't have any effect", v249, 0xCu);
      }
    }

    *buf = 0;
    v161 = Mutable;
    v160 = v205;
    if (v205)
    {
      v162 = 0;
      v163 = 0;
      v164 = 0;
      v165 = (v202 + 6);
      *&v158 = 67109376;
      v233 = v158;
      do
      {
        v166 = v226[v164];
        if (v166)
        {
          v226[v164] = v166 - 1;
        }

        else
        {
          v167 = sub_1AF0D5194(v156, v157);
          v156 = os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT);
          if (v156)
          {
            *&v249[0] = __PAIR64__(*buf, v233);
            WORD4(v249[0]) = 1024;
            *(v249 + 10) = v205;
            _os_log_impl(&dword_1AF0CE000, v167, OS_LOG_TYPE_DEFAULT, "Warning: Deindexing - Vertex at index %u of %u is not used by any mesh element", v249, 0xEu);
          }

          v168 = v165;
          v169 = v234;
          if ((v162 & 1) == 0)
          {
            do
            {
              v171 = *(v168 + 2);
              v170 = *(v168 + 3);
              if (v170 == v171)
              {
                v172 = (v170 + 1);
                *(v168 + 3) = v172;
                v173 = *(v168 - 3);
                v174 = malloc_type_realloc(*v168, v173 * v172, 0x43FBAE61uLL);
                *v168 = v174;
              }

              else
              {
                v174 = *v168;
                v173 = *(v168 - 3);
              }

              bzero(&v174[v173 * v171], v173);
              *(v168 + 2) = v171 + 1;
              v168 += 8;
              v169 = (v169 - 1);
            }

            while (v169);
            sub_1AF121C58(&v235, buf);
            v163 = ((*(&v235 + 1) - v235) >> 2) - 1;
          }

          v226[*buf] = v163;
          v162 = 1;
          v161 = Mutable;
          v160 = v205;
        }

        v164 = *buf + 1;
        *buf = v164;
      }

      while (v164 < v160);
    }

    v175 = *(&v235 + 1) - v235;
    *&v233 = (*(&v235 + 1) - v235) >> 2;
    v176 = malloc_type_malloc((*(&v235 + 1) - v235) & 0x3FFFFFFFCLL, 0x100004052888210uLL);
    memcpy(v176, v235, v175 & 0x3FFFFFFFCLL);
    v178 = (v202 + 4);
    v179 = v234;
    v180 = v211;
    do
    {
      v181 = *(v178 + 6);
      v182 = sub_1AF1AE3D8(*(v178 - 4), v177);
      v183 = *(v178 - 1);
      v184 = CFDataCreate(v180, *(v178 + 2), v183 * v181);
      v185 = sub_1AF1ADC58(v182, v184, *v178, *(v178 + 1), v181, v183, 0);
      CFArrayAppendValue(v161, v185);
      CFRelease(v185);
      CFRelease(v184);
      v178 += 32;
      v179 = (v179 - 1);
    }

    while (v179);
    v186 = (v202 + 6);
    v187 = v234;
    do
    {
      v188 = *v186;
      v186 += 8;
      free(v188);
      v187 = (v187 - 1);
    }

    while (v187);
    v189 = CFArrayGetCount(v161);
    v191 = v203;
    v192 = v199;
    if (v234 != v189)
    {
      v193 = sub_1AF0D5194(v189, v190);
      if (os_log_type_enabled(v193, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDCB04();
      }
    }

    v194 = CFArrayGetCount(v212);
    if (v213 != v194)
    {
      v196 = sub_1AF0D5194(v194, v195);
      if (os_log_type_enabled(v196, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDCB84();
      }
    }

    *v206 = v161;
    *v191 = v212;
    *v192 = v176;
    v197 = v201;
    *v200 = v233;
    *v197 = v226;
    sub_1AF112128(&v239, v240);
    if (v235)
    {
      *(&v235 + 1) = v235;
      operator delete(v235);
    }
  }

  else
  {
LABEL_12:
    v25 = v217;
    v26 = sub_1AF1A3CCC(v217, v13);
    v27 = v26;
    if (v26)
    {
      v28 = 0;
      while (1)
      {
        v29 = sub_1AF1A3D1C(v217, v28, 0);
        v30 = sub_1AF1A7634(v29);
        if (v30 <= v17)
        {
          v45 = sub_1AF0D5194(v30, v31);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDDCC04(v17, v29, v45);
          }

          return;
        }

        if (v30 >= 2)
        {
          break;
        }

        if (v27 == ++v28)
        {
          goto LABEL_17;
        }
      }

      v203 = a3;
      v234 = *MEMORY[0x1E695E480];
      MutableCopy = CFArrayCreateMutable(v234, v27, MEMORY[0x1E695E9C0]);
      v46 = 0;
      v230 = &v249[1];
      v231 = v17;
      v229 = *MEMORY[0x1E695E488];
      *&v233 = v27;
      *&v232 = MutableCopy;
      do
      {
        v47 = sub_1AF1A3D1C(v25, v46, 0);
        if (sub_1AF1A7634(v47) == 1)
        {
          CFArrayAppendValue(MutableCopy, v47);
        }

        else
        {
          v49 = sub_1AF1A7034(v47, v48);
          v50 = sub_1AF1A7674(v47);
          v52 = sub_1AF1A809C(v47, v51);
          v54 = sub_1AF1A70CC(v47, v53);
          if (v49 == 4)
          {
            v55 = v52 * (v54 + v50);
            v56 = malloc_type_malloc(v55, 0x100004077774924uLL);
            v57 = v50;
            v58 = CFDataGetBytePtr(v47[12]);
            memcpy(v56, v58, v50 * v52);
          }

          else
          {
            v55 = v54 * v52;
            v56 = malloc_type_malloc(v55, 0x100004077774924uLL);
            v57 = v50;
            v50 = 0;
          }

          v239 = 0;
          v240 = &v239;
          v241 = 0x2000000000;
          v242 = 0;
          v256 = 0u;
          v257 = 0u;
          memset(buf, 0, sizeof(buf));
          sub_1AF1A767C(v47, v231, buf);
          v235 = *buf;
          v236 = *&buf[16];
          v237 = v256;
          v238 = v257;
          *&v249[0] = MEMORY[0x1E69E9820];
          *(&v249[0] + 1) = 0x40000000;
          *&v249[1] = sub_1AF1B1928;
          *(&v249[1] + 1) = &unk_1E7A7B558;
          v254 = v50;
          v251 = v56;
          v250 = &v239;
          v252 = v52;
          v253 = v55;
          sub_1AF1A80E4(&v235, v249, v256);
          v59 = CFDataCreateWithBytesNoCopy(v234, v56, v55, v229);
          v61 = sub_1AF1A6834(v59, v60);
          sub_1AF1A6A70(v61, v49, v57, v59, v52);
          MutableCopy = v232;
          CFArrayAppendValue(v232, v61);
          CFRelease(v59);
          CFRelease(v61);
          _Block_object_dispose(&v239, 8);
          v25 = v217;
          v27 = v233;
        }

        ++v46;
      }

      while (v27 != v46);
      a3 = v203;
      if (!MutableCopy)
      {
        return;
      }

LABEL_40:
      *v206 = CFArrayCreateMutableCopy(v234, 0, *(v217 + 72));
      *a3 = MutableCopy;
    }

    else
    {
LABEL_17:
      v32 = *(v217 + 104);
      v234 = *MEMORY[0x1E695E480];
      MutableCopy = CFArrayCreateMutableCopy(v234, 0, v32);
      if (MutableCopy)
      {
        goto LABEL_40;
      }
    }
  }
}

void sub_1AF1B1804(uint64_t a1, uint64_t a2, int a3, unint64_t a4, unint64_t a5)
{
  v6 = a2;
  v13 = *MEMORY[0x1E69E9840];
  if ((a2 + 1) * a4 <= a5)
  {
    switch(a4)
    {
      case 4uLL:
        *(a1 + 4 * a2) = a3;
        break;
      case 2uLL:
        *(a1 + 2 * a2) = a3;
        break;
      case 1uLL:
        *(a1 + a2) = a3;
        break;
      default:
        v9 = sub_1AF0D5194(a1, a2);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDDCCFC();
        }

        break;
    }
  }

  else
  {
    v8 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 67109376;
      v10[1] = v6;
      v11 = 2048;
      v12 = a5 / a4;
      _os_log_error_impl(&dword_1AF0CE000, v8, OS_LOG_TYPE_ERROR, "Error: __writeIndexInBuffer - index (%u) out of bounds (%lu)", v10, 0x12u);
    }
  }
}

void sub_1AF1B1928(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      sub_1AF1B1804(*(a1 + 40), (i + *(a1 + 64) + *(*(*(a1 + 32) + 8) + 24)), *(a3 + 4 * i), *(a1 + 48), *(a1 + 56));
    }
  }

  *(*(*(a1 + 32) + 8) + 24) += a4;
}

uint64_t sub_1AF1B19B0(uint64_t **a1, __int128 **a2, uint64_t a3)
{
  v3 = *sub_1AF1B1A54(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_1AF1B1A54(uint64_t a1, __int128 ***a2, __int128 **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_1AF1B1AF0(a1, a3, v4 + 4))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_1AF1B1AF0(a1, v8 + 4, a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

BOOL sub_1AF1B1AF0(uint64_t a1, __int128 **a2, __int128 **a3)
{
  v5 = *(*a2 + 37);
  if (v5 == *(*a3 + 37) || (v6 = sub_1AF0D5194(a1, a2), !os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    if (v5)
    {
      goto LABEL_4;
    }

    return 0;
  }

  sub_1AFDDCD84();
  if (!v5)
  {
    return 0;
  }

LABEL_4:
  v7 = 0;
  v8 = v5 - 1;
  do
  {
    v9 = a2[1];
    v10 = *(*a2 + 4);
    v11 = (*a2)[1];
    v19 = **a2;
    v20 = v11;
    v21 = v10;
    v12 = sub_1AF1A7BA8(&v19, v9, a2[2], v7);
    v13 = a3[1];
    v14 = *(*a3 + 4);
    v15 = (*a3)[1];
    v19 = **a3;
    v20 = v15;
    v21 = v14;
    v16 = sub_1AF1A7BA8(&v19, v13, a3[2], v7);
    result = v12 < v16;
    if (v12 < v16)
    {
      break;
    }

    if (v12 > v16)
    {
      break;
    }
  }

  while (v8 != v7++);
  return result;
}

uint64_t sub_1AF1B1BEC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = a2;
  v13 = *MEMORY[0x1E69E9840];
  if ((a2 + 1) * a3 <= a4)
  {
    switch(a3)
    {
      case 4uLL:
        return *(a1 + 4 * a2);
      case 2uLL:
        return *(a1 + 2 * a2);
      case 1uLL:
        return *(a1 + a2);
      default:
        v9 = sub_1AF0D5194(a1, a2);
        result = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
        if (result)
        {
          sub_1AFDDCE04();
          return 0;
        }

        break;
    }
  }

  else
  {
    v7 = sub_1AF0D5194(a1, a2);
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v10[0] = 67109376;
      v10[1] = v5;
      v11 = 2048;
      v12 = a4 / a3;
      _os_log_error_impl(&dword_1AF0CE000, v7, OS_LOG_TYPE_ERROR, "Error: __readIndexInBuffer - index (%u) out of bounds (%lu)", v10, 0x12u);
      return 0;
    }
  }

  return result;
}

void sub_1AF1B1D38(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    sub_1AF28A5A0(v1, &unk_1F24E7EC8);
  }
}

id sub_1AF1B1D5C(void *a1)
{
  sub_1AF1BE334(@"kCFXNotificationModelWillDie", a1, 0, 1u);
  sub_1AF1707C0(a1);
  v3 = a1[11];
  if (v3)
  {
    Count = CFSetGetCount(v3);
    if (Count)
    {
      v5 = sub_1AF0D5194(Count, v2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDCE8C(a1, v5);
      }
    }

    v6 = a1[11];
    if (v6)
    {
      CFRelease(v6);
      a1[11] = 0;
    }
  }

  v7 = a1[10];
  if (v7)
  {
    CFRelease(v7);
    a1[10] = 0;
  }

  v8 = a1[9];
  if (v8)
  {
    CFRelease(v8);
    a1[9] = 0;
  }

  v9 = a1[8];
  if (v9)
  {
    CFRelease(v9);
    a1[8] = 0;
  }

  v10 = a1[12];
  if (v10)
  {
    CFRelease(v10);
    a1[12] = 0;
  }

  v11 = a1[13];
  if (v11)
  {
    free(v11);
  }

  a1[13] = 0;
  return sub_1AF16C9A4(a1, v2);
}

__CFString *sub_1AF1B1E3C(const void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = sub_1AF3753A8(a1);
  v5 = sub_1AF1B1F38(a1, v4);
  CFStringAppendFormat(Mutable, 0, @"<%s %p | %@\n", v3, a1, v5);
  v7 = sub_1AF1B1F84(a1, v6);
  CFStringAppendFormat(Mutable, 0, @"  geometry: %@\n", v7);
  if (sub_1AF1B1FE0(a1, v8) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = sub_1AF1B2030(a1, v9);
      CFStringAppendFormat(Mutable, 0, @"  mat%d: %@\n", v9++, v10);
    }

    while (v9 < sub_1AF1B1FE0(a1, v11));
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

uint64_t sub_1AF1B1F38(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  return sub_1AF16CBEC(a1, a2);
}

uint64_t sub_1AF1B1F84(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 120);
  if (v10)
  {
    (*v10)(a1, a2);
  }

  return *(a1 + 64);
}

const __CFArray *sub_1AF1B1FE0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  result = *(a1 + 80);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

const __CFArray *sub_1AF1B2030(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  result = sub_1AF1B1FE0(a1, a2);
  if (result)
  {
    return CFArrayGetValueAtIndex(*(a1 + 80), a2 % result);
  }

  return result;
}

uint64_t sub_1AF1B209C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 72);
  if (v3)
  {
    v4 = sub_1AF1A1828(v3, a2) != 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_1AF1B1FE0(a1, a2);
  if (v5 >= 1 && (v4 & 1) == 0)
  {
    v6 = v5;
    v7 = 1;
    do
    {
      v8 = sub_1AF1B2030(a1, v7 - 1);
      v10 = sub_1AF1A1828(v8, v9);
      v4 = v10 != 0;
      v12 = sub_1AF1A1270(v8, v11);
      if (v12)
      {
        v13 = sub_1AF1656E4(v12, 18, 0);
        if (v13)
        {
          v15 = v13;
          v17 = sub_1AF166220(v13, v14) && sub_1AF166598(v15, v16) != 0.0;
          if (v10)
          {
            v4 = 1;
          }

          else
          {
            v4 = v17;
          }
        }
      }

      if (v7 >= v6)
      {
        break;
      }

      ++v7;
    }

    while ((v4 & 1) == 0);
  }

  return v4;
}

void sub_1AF1B2180(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 104);
  if (a2)
  {
    if (!v3)
    {
      v3 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
      *(a1 + 104) = v3;
    }

    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
  }

  else
  {
    if (!v3)
    {
      return;
    }

    free(v3);
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 88);
  if (v6)
  {

    sub_1AF28A5A0(v6, &unk_1F24E7EC8);
  }
}

__CFArray *sub_1AF1B2210(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v32 = 1;
  valuePtr = 5;
  v31 = sub_1AF1B1F38(a1, v6);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v8 = CFNumberCreate(0, kCFNumberSInt32Type, &v32);
  v9 = CFNumberCreate(0, kCFNumberLongType, &v31);
  CFDictionarySetValue(v5, @"name", @"name");
  CFDictionarySetValue(v5, @"type", v7);
  CFDictionarySetValue(v5, @"address", v9);
  CFDictionarySetValue(v5, @"semantic", v8);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v8);
  CFRelease(v5);
  CFRelease(v9);
  CFRelease(v7);
  v10 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v32 = 2;
  valuePtr = 5;
  v31 = a1 + 64;
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v12 = CFNumberCreate(0, kCFNumberSInt32Type, &v32);
  v13 = CFNumberCreate(0, kCFNumberLongType, &v31);
  CFDictionarySetValue(v10, @"name", @"geometry");
  CFDictionarySetValue(v10, @"type", v11);
  CFDictionarySetValue(v10, @"address", v13);
  CFDictionarySetValue(v10, @"semantic", v12);
  CFArrayAppendValue(Mutable, v10);
  CFRelease(v12);
  CFRelease(v10);
  CFRelease(v13);
  CFRelease(v11);
  v14 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v32 = 2;
  valuePtr = 5;
  v31 = a1 + 72;
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v16 = CFNumberCreate(0, kCFNumberSInt32Type, &v32);
  v17 = CFNumberCreate(0, kCFNumberLongType, &v31);
  CFDictionarySetValue(v14, @"name", @"overrideMaterial");
  CFDictionarySetValue(v14, @"type", v15);
  CFDictionarySetValue(v14, @"address", v17);
  CFDictionarySetValue(v14, @"semantic", v16);
  CFArrayAppendValue(Mutable, v14);
  CFRelease(v16);
  CFRelease(v14);
  CFRelease(v17);
  CFRelease(v15);
  v18 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v32 = 2;
  valuePtr = 5;
  v31 = a1 + 80;
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v20 = CFNumberCreate(0, kCFNumberSInt32Type, &v32);
  v21 = CFNumberCreate(0, kCFNumberLongType, &v31);
  CFDictionarySetValue(v18, @"name", @"materials");
  CFDictionarySetValue(v18, @"type", v19);
  CFDictionarySetValue(v18, @"address", v21);
  CFDictionarySetValue(v18, @"semantic", v20);
  CFArrayAppendValue(Mutable, v18);
  CFRelease(v20);
  CFRelease(v18);
  CFRelease(v21);
  CFRelease(v19);
  v22 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v32 = 2;
  valuePtr = 5;
  v31 = a1 + 96;
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &v32);
  v25 = CFNumberCreate(0, kCFNumberLongType, &v31);
  CFDictionarySetValue(v22, @"name", @"levelsOfDetail");
  CFDictionarySetValue(v22, @"type", v23);
  CFDictionarySetValue(v22, @"address", v25);
  CFDictionarySetValue(v22, @"semantic", v24);
  CFArrayAppendValue(Mutable, v22);
  CFRelease(v24);
  CFRelease(v22);
  CFRelease(v25);
  CFRelease(v23);
  v26 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v32 = 0;
  valuePtr = 5;
  v31 = a1 + 48;
  v27 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v28 = CFNumberCreate(0, kCFNumberSInt32Type, &v32);
  v29 = CFNumberCreate(0, kCFNumberLongType, &v31);
  CFDictionarySetValue(v26, @"name", @"worldRef");
  CFDictionarySetValue(v26, @"type", v27);
  CFDictionarySetValue(v26, @"address", v29);
  CFDictionarySetValue(v26, @"semantic", v28);
  CFArrayAppendValue(Mutable, v26);
  CFRelease(v28);
  CFRelease(v26);
  CFRelease(v29);
  CFRelease(v27);
  return Mutable;
}

uint64_t sub_1AF1B27E4(CFTypeRef cf, uint64_t a2)
{
  v4 = *(cf + 8);
  if (v4)
  {
    (*(a2 + 16))(a2);
  }

  v5 = *(cf + 10);
  if (v5)
  {
    Count = CFArrayGetCount(*(cf + 10));
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
        (*(a2 + 16))(a2, ValueAtIndex);
      }
    }
  }

  v10 = *(cf + 12);
  if (v10)
  {
    v11 = CFArrayGetCount(v10);
    if (v11 >= 1)
    {
      v12 = v11;
      for (j = 0; j != v12; ++j)
      {
        v14 = CFArrayGetValueAtIndex(*(cf + 12), j);
        (*(a2 + 16))(a2, v14);
      }
    }
  }

  result = sub_1AF1C3858(cf, v4);
  if (result)
  {
    v16 = *(a2 + 16);

    return v16(a2, result);
  }

  return result;
}

const __CFDictionary *sub_1AF1B2904(_BOOL8 a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return sub_1AF16CEA0(a1, @"kCoreEntityKey");
}

void sub_1AF1B295C(void *a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = sub_1AF1C3FAC(a1, a2);
  v13 = sub_1AF1B2904(a1, v12);
  if (v11 && v13)
  {
    sub_1AF1C3A90(v13, v11);
  }

  sub_1AF16CF28(a1, @"kCoreEntityKey", a2, v11 != 0);
  if (a2)
  {
    if (v11)
    {
      sub_1AF1C3CB4(a2, v11);
    }
  }
}

uint64_t sub_1AF1B2A04(uint64_t a1, uint64_t a2)
{
  if (qword_1ED7346C8 != -1)
  {
    sub_1AFDDCF90();
  }

  return qword_1ED7346C0;
}

double sub_1AF1B2A3C()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED7346C0 = v0;
  v2 = sub_1AF16CB64(v0, v1);
  sub_1AF1DCFAC(v0, v2);
  sub_1AF1DD018();
  *algn_1ED722D50 = xmmword_1F24E7F28;
  *&algn_1ED722D50[16] = xmmword_1F24E7F38;
  qword_1ED722D48 = sub_1AF1B2210;
  *&algn_1ED722D50[32] = unk_1F24E7F48;
  qword_1ED722D80 = off_1F24E7F58;
  unk_1ED722D88 = sub_1AF1B4208;
  qword_1ED722D90 = sub_1AF1B42B4;
  result = *&xmmword_1F24E7F60;
  unk_1ED722DA0 = xmmword_1F24E7F60;
  return result;
}

double sub_1AF1B2AF0(uint64_t a1)
{
  *(a1 + 80) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 200) = 0;

  return sub_1AF17079C(a1);
}

uint64_t sub_1AF1B2BD0(CFTypeRef cf, uint64_t a2)
{
  if (!cf)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB4B8(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  return sub_1AF1C3734(cf, a2);
}

const void *sub_1AF1B2C1C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 120);
  if (v10)
  {
    (*v10)(a1, a2);
  }

  result = *(a1 + 64);
  if (result)
  {
    return sub_1AF170740(result);
  }

  return result;
}

void sub_1AF1B2C84(_BOOL8 a1, __n128 *a2)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDAF5C(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDAFD4(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  if (sub_1AF1706B8(*(v3 + 64)) == 1)
  {
    v20 = sub_1AF1B2E04(v3, v19);
  }

  else
  {
    v20 = sub_1AF1B1F84(v3, v19);
  }

  sub_1AF1B2E54(a2, v20);
  v23 = *(v3 + 80);
  if (!a2)
  {
    v24 = sub_1AF0D5194(v21, v22);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v24, v22, v25, v26, v27, v28, v29, v30);
    }
  }

  v31 = a2[5].n128_u64[0];
  if (v31 != v23)
  {
    if (v31)
    {
      CFRelease(v31);
      a2[5].n128_u64[0] = 0;
    }

    if (v23)
    {
      a2[5].n128_u64[0] = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, v23);
    }
  }

  v32 = sub_1AF1B31B0(v3, v22);
  sub_1AF1B2F3C(a2, v32);
  a2[7].n128_u64[1] = *(v3 + 120);
  if (*(v3 + 104))
  {
    v33 = sub_1AF288058(0x20uLL);
    a2[6].n128_u64[1] = v33;
    v34 = *(v3 + 104);
    v35 = v34[1];
    *v33 = *v34;
    v33[1] = v35;
  }

  sub_1AF16D160(v3, a2);
  sub_1AF17081C(v3, a2);
  v36 = *(v3 + 176);
  v37 = *(v3 + 192);
  sub_1AF1B31F8(a2, &v36);
}