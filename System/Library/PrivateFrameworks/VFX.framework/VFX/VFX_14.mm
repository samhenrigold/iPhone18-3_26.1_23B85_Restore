const void *sub_1AF1B2E04(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  result = *(a1 + 64);
  if (result)
  {
    return sub_1AF170740(result);
  }

  return result;
}

void sub_1AF1B2E54(uint64_t result, uint64_t *a2)
{
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(result + 64) != a2)
  {
    v11 = sub_1AF1C3F64(result, a2);
    if (!v11)
    {
      goto LABEL_8;
    }

    v12 = *(result + 64);
    if (v12)
    {
      sub_1AF1C3A90(v12, v11);
LABEL_8:
      v13 = *(result + 64);
      if (v13 == a2)
      {
LABEL_19:
        if (v11 && v13)
        {
          sub_1AF1C3CB4(v13, v11);
        }

        goto LABEL_22;
      }

      if (v13)
      {
        CFRelease(v13);
        *(result + 64) = 0;
      }

      if (!a2)
      {
        v13 = 0;
LABEL_18:
        *(result + 64) = v13;
        goto LABEL_19;
      }

LABEL_17:
      v13 = CFRetain(a2);
      goto LABEL_18;
    }

    if (a2)
    {
      goto LABEL_17;
    }

LABEL_22:
    *(result + 200) = 0;
    v14 = *(result + 88);
    if (v14)
    {
      sub_1AF28A5A0(v14, &unk_1F24E7EC8);
    }

    return;
  }

  if (!a2 && *(result + 120))
  {
    goto LABEL_22;
  }
}

void sub_1AF1B2F3C(uint64_t a1, const __CFArray *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = sub_1AF1C3F64(a1, a2);
  v12 = *(a1 + 96);
  if (v12)
  {
    if (*(a1 + 88))
    {
      Count = CFArrayGetCount(v12);
      if (Count >= 1)
      {
        v14 = Count;
        for (i = 0; i != v14; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 96), i);
          v18 = sub_1AF1A09B0(ValueAtIndex, v17);
          if (v18)
          {
            v19 = *(a1 + 88);
            v38[0] = MEMORY[0x1E69E9820];
            v38[1] = 0x40000000;
            v38[2] = sub_1AF1B39F0;
            v38[3] = &unk_1E7A7B5B8;
            v38[4] = v18;
            sub_1AF28A5A0(v19, v38);
          }
        }
      }
    }
  }

  v20 = *(a1 + 96);
  if (v20 && v11)
  {
    v21 = CFArrayGetCount(v20);
    if (v21 >= 1)
    {
      v22 = v21;
      for (j = 0; j != v22; ++j)
      {
        v24 = CFArrayGetValueAtIndex(*(a1 + 96), j);
        sub_1AF1C3A90(v24, v11);
      }
    }

    v20 = *(a1 + 96);
  }

  if (v20 != a2)
  {
    if (v20)
    {
      CFRelease(v20);
      *(a1 + 96) = 0;
    }

    if (a2)
    {
      v20 = CFRetain(a2);
    }

    else
    {
      v20 = 0;
    }

    *(a1 + 96) = v20;
  }

  if (v20 && v11)
  {
    v25 = CFArrayGetCount(v20);
    if (v25 >= 1)
    {
      v26 = v25;
      for (k = 0; k != v26; ++k)
      {
        v28 = CFArrayGetValueAtIndex(*(a1 + 96), k);
        sub_1AF1C3CB4(v28, v11);
      }
    }

    v20 = *(a1 + 96);
  }

  if (v20)
  {
    if (*(a1 + 88))
    {
      v29 = CFArrayGetCount(v20);
      if (v29 >= 1)
      {
        v30 = v29;
        for (m = 0; m != v30; ++m)
        {
          v32 = CFArrayGetValueAtIndex(*(a1 + 96), m);
          v34 = sub_1AF1A09B0(v32, v33);
          if (v34)
          {
            v35 = *(a1 + 88);
            v37[0] = MEMORY[0x1E69E9820];
            v37[1] = 0x40000000;
            v37[2] = sub_1AF1B39F8;
            v37[3] = &unk_1E7A7B5D8;
            v37[4] = v34;
            sub_1AF28A5A0(v35, v37);
          }
        }
      }
    }
  }

  v36 = *(a1 + 88);
  if (v36)
  {
    sub_1AF28A5A0(v36, &unk_1F24E7F08);
  }
}

uint64_t sub_1AF1B31B0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 96);
}

void sub_1AF1B31F8(__n128 *a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = a1[11].n128_u8[0];
  v12 = a1[11].n128_u8[12];
  v13 = *a2;
  a1[12].n128_u64[0] = *(a2 + 2);
  a1[11] = v13;
  if (v12 != a2[12])
  {
    v14 = sub_1AF1C3FAC(a1, a2);
    sub_1AF1CF760(v14, 6, a1, 0);
  }

  sub_1AF170A30(a1, v11, *a2, a1[8].n128_u8[0], a1[8].n128_u8[0]);
}

const void *sub_1AF1B329C(uint64_t a1, uint64_t a2)
{
  if (sub_1AF170978(a1, a2))
  {

    return sub_1AF1710CC(a1, v3);
  }

  else
  {

    return sub_1AF1B2C1C(a1, v3);
  }
}

uint64_t sub_1AF1B32F8(_BOOL8 a1, void *value)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, value), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDCF18(v4, value, v5, v6, v7, v8, v9, v10);
    if (value)
    {
      goto LABEL_6;
    }
  }

  else if (value)
  {
    goto LABEL_6;
  }

  v11 = sub_1AF0D5194(a1, value);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDB04C(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  CFArrayAppendValue(*(v3 + 80), value);
  v20 = sub_1AF1C3F64(v3, v19);
  sub_1AF1C3CB4(value, v20);
  return sub_1AF1B3398(v3);
}

uint64_t sub_1AF1B3398(void *cf)
{
  v2 = cf[11];
  if (v2)
  {
    sub_1AF28A5A0(v2, &unk_1F24E7EC8);
  }

  v3 = CFGetTypeID(cf);
  result = sub_1AF1BE9BC(v3, v4);
  if (v3 == result)
  {

    return sub_1AF1BE6B0(cf);
  }

  return result;
}

uint64_t sub_1AF1B3404(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (sub_1AF1C3F64(a1, a2))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), a2);
    v13 = sub_1AF1C3F64(a1, v12);
    sub_1AF1C3A90(ValueAtIndex, v13);
  }

  CFArrayRemoveValueAtIndex(*(a1 + 80), a2);
  return sub_1AF1B3398(a1);
}

uint64_t sub_1AF1B3498(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  if (sub_1AF1C3F64(a1, a2))
  {
    Count = CFArrayGetCount(*(a1 + 80));
    if (Count >= 1)
    {
      v11 = Count;
      for (i = 0; i != v11; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), i);
        v15 = sub_1AF1C3F64(a1, v14);
        sub_1AF1C3A90(ValueAtIndex, v15);
      }
    }
  }

  CFArrayRemoveAllValues(*(a1 + 80));
  return sub_1AF1B3398(a1);
}

uint64_t sub_1AF1B3548(uint64_t a1, void *value, CFIndex idx)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, value);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  CFArrayInsertValueAtIndex(*(a1 + 80), idx, value);
  v15 = sub_1AF1C3F64(a1, v14);
  sub_1AF1C3CB4(value, v15);
  return sub_1AF1B3398(a1);
}

uint64_t sub_1AF1B35C8(uint64_t a1, void *a2, CFIndex a3)
{
  newValues = a2;
  if (!a1)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  if (sub_1AF1C3F64(a1, a2))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), a3);
    v14 = sub_1AF1C3F64(a1, v13);
    sub_1AF1C3A90(ValueAtIndex, v14);
  }

  v20.location = a3;
  v20.length = 1;
  CFArrayReplaceValues(*(a1 + 80), v20, &newValues, 1);
  v15 = newValues;
  v17 = sub_1AF1C3F64(a1, v16);
  sub_1AF1C3CB4(v15, v17);
  return sub_1AF1B3398(a1);
}

CFIndex sub_1AF1B368C(_BOOL8 a1, const void *a2)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDCF18(v4, a2, v5, v6, v7, v8, v9, v10);
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
    sub_1AFDD137C(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  Mutable = *(v3 + 88);
  if (!Mutable)
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    *(v3 + 88) = Mutable;
  }

  v20 = CFSetContainsValue(Mutable, a2);
  if (v20)
  {
    v22 = sub_1AF0D5194(v20, v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCFA4(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  CFSetAddValue(*(v3 + 88), a2);
  Count = CFSetGetCount(*(v3 + 88));
  v31 = *(v3 + 112) & 0xFE;
  if (Count > 4)
  {
    ++v31;
  }

  *(v3 + 112) = v31;
  result = *(v3 + 96);
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v33 = result;
      for (i = 0; i != v33; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 96), i);
        result = sub_1AF1A09B0(ValueAtIndex, v36);
        if (result)
        {
          result = sub_1AF1B368C(result, a2);
        }
      }
    }
  }

  return result;
}

void sub_1AF1B37C0(_BOOL8 a1, const void *a2)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDCF18(v4, a2, v5, v6, v7, v8, v9, v10);
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
    sub_1AFDD137C(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  v18 = *(v3 + 88);
  if (!v18 || (v18 = CFSetContainsValue(v18, a2), !v18))
  {
    v19 = sub_1AF0D5194(v18, a2);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD01C(v19, a2, v20, v21, v22, v23, v24, v25);
    }
  }

  v26 = *(v3 + 96);
  if (v26)
  {
    Count = CFArrayGetCount(v26);
    if (Count >= 1)
    {
      v28 = Count;
      for (i = 0; i != v28; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 96), i);
        v32 = sub_1AF1A09B0(ValueAtIndex, v31);
        if (v32)
        {
          sub_1AF1B37C0(v32, a2);
        }
      }
    }
  }

  v33 = *(v3 + 88);
  if (v33)
  {
    goto LABEL_20;
  }

  v34 = sub_1AF0D5194(0, a2);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDD094(v34, v35, v36, v37, v38, v39, v40, v41);
  }

  v33 = *(v3 + 88);
  if (v33)
  {
LABEL_20:
    CFSetRemoveValue(v33, a2);
  }
}

void sub_1AF1B38E8(void *a1, uint64_t a2)
{
  v3 = sub_1AF1B1FE0(a1, a2);
  if (v3 >= 1)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = sub_1AF1B2030(a1, i);
      sub_1AF1A1A4C(v6, v7);
    }
  }

  sub_1AF1B3398(a1);

  sub_1AF1BE334(@"kCFXShadableDidChange", a1, 0, 1u);
}

void sub_1AF1B3970(void *a1, void *cf)
{
  v4 = a1[9];
  if (v4 != cf)
  {
    if (v4)
    {
      CFRelease(v4);
      a1[9] = 0;
    }

    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = 0;
    }

    a1[9] = v5;
  }

  if (cf)
  {
    v6 = sub_1AF1C3F64(a1, cf);
    sub_1AF1C3CB4(cf, v6);
  }

  sub_1AF1B38E8(a1, cf);
}

BOOL sub_1AF1B3A08(uint64_t a1, uint64_t a2)
{
  if (qword_1ED7346C8 != -1)
  {
    sub_1AFDDCF90();
  }

  if (qword_1ED7346C0 == a1)
  {
    return 1;
  }

  v3 = sub_1AF16EA90(a1, a2);
  if (v3 == a1)
  {
    return 1;
  }

  v5 = sub_1AF1BE9BC(v3, v4);
  if (v5 == a1)
  {
    return 1;
  }

  v7 = sub_1AF1C611C(v5, v6);
  return v7 == a1 || sub_1AF1C621C(v7, v8) == a1;
}

void sub_1AF1B3A88(CFTypeRef cf, uint64_t a2, unsigned int *a3, _OWORD *a4, _OWORD *a5, uint64_t a6)
{
  v6 = a6;
  v71 = a2;
  v78 = *MEMORY[0x1E69E9840];
  if (a6 != 2)
  {
    v10 = CFGetTypeID(cf);
    if (v10 == sub_1AF1BE9BC(v10, v11))
    {

      sub_1AF1BE38C(cf, v71);
      return;
    }
  }

  v12 = sub_1AF1B2C1C(cf, a2);
  if (!v12)
  {
    return;
  }

  v13 = v12;
  v14 = sub_1AF1A4CE8(v12, 1);
  if (!v14)
  {
    return;
  }

  v16 = v14;
  v17 = sub_1AF1AE6EC(v14, v15);
  if (!v17)
  {
    return;
  }

  v18 = v17;
  v19 = sub_1AF1A4F84(v13, 1);
  v21 = v19;
  if (!v19 || (v19 = sub_1AF1AE6EC(v19, v20), v19 == v18))
  {
    if (v6 == 1)
    {
      if ((byte_1EB658619 & 1) == 0)
      {
        byte_1EB658619 = 1;
        v22 = sub_1AF0D5194(v19, v20);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDDD150(v22);
        }
      }

      v6 = 0;
    }

    v23 = sub_1AF1A3CCC(v13, v20);
    if (v23)
    {
      v25 = 0;
    }

    else
    {
      v25 = v6 == 0;
    }

    if (v25)
    {
      v26 = 2;
    }

    else
    {
      v26 = v6;
    }

    if (v26)
    {
      if (v26 == 2 && v71 >= 1)
      {
        if (a5)
        {
          v27 = v21 == 0;
        }

        else
        {
          v27 = 1;
        }

        v28 = !v27;
        do
        {
          v29 = 214013 * *a3 + 2531011;
          *a3 = v29;
          v30 = v29 % v18;
          *&v31 = sub_1AF1AF084(v16, v29 % v18, v24);
          *a4 = v31;
          if (v28)
          {
            *&v32 = sub_1AF1AF084(v21, v30, v24);
            *a5 = v32;
          }

          ++a5;
          ++a4;
          --v71;
        }

        while (v71);
      }

      return;
    }

    if (v71 < 1)
    {
      return;
    }

    v34 = 0;
    v68 = a4;
    v69 = a5;
    v66 = v23;
    v67 = v13;
    while (1)
    {
      v35 = 214013 * *a3 + 2531011;
      *a3 = v35;
      v36 = sub_1AF1A3D1C(v13, v35 % v23, 1);
      v37 = sub_1AF1A7674(v36);
      v38 = 214013 * *a3 + 2531011;
      *a3 = v38;
      v40 = sub_1AF1A71E0(v36, v39);
      if (v40 >= 1)
      {
        v41 = 0;
        v42 = v38 % v37;
        do
        {
          v43 = sub_1AF1A7C24(v36, v42, v41, 0);
          *&v46 = sub_1AF1AF084(v16, v43, v44);
          *(&v75 + v41) = v46;
          if (v21)
          {
            *&v47 = sub_1AF1AF084(v21, v43, v45);
            *(&v72 + v41) = v47;
          }

          ++v41;
        }

        while (v40 != v41);
      }

      if (v40 == 1)
      {
        v48 = v69;
        v68[v34] = v75;
        v23 = v66;
        v13 = v67;
        if (v69)
        {
          v60 = v72;
          goto LABEL_54;
        }
      }

      else
      {
        v48 = v69;
        v23 = v66;
        v13 = v67;
        if (v40 != 2)
        {
          if (v40 != 3)
          {
            goto LABEL_55;
          }

          v49 = 214013 * *a3 + 2531011;
          v50 = HIWORD(v49) * 0.000015259;
          v51 = 214013 * v49 + 2531011;
          v52 = HIWORD(v51) * 0.000015259;
          v53 = 214013 * v51 + 2531011;
          *a3 = v53;
          v54 = HIWORD(v53) * 0.000015259;
          v55 = 1.0 / ((v50 + v52) + v54);
          v56 = v52 * v55;
          v68[v34] = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v76, v56), v75, v50 * v55), v77, v54 * v55);
          if (!v69)
          {
            goto LABEL_55;
          }

          v57 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v73, v56), v72, v50 * v55), v74, v54 * v55);
          v58 = vmulq_f32(v57, v57);
          *&v59 = v58.f32[2] + vaddv_f32(*v58.f32);
          *v58.f32 = vrsqrte_f32(v59);
          *v58.f32 = vmul_f32(*v58.f32, vrsqrts_f32(v59, vmul_f32(*v58.f32, *v58.f32)));
          v60 = vmulq_n_f32(v57, vmul_f32(*v58.f32, vrsqrts_f32(v59, vmul_f32(*v58.f32, *v58.f32))).f32[0]);
          goto LABEL_54;
        }

        v61 = 214013 * *a3 + 2531011;
        *a3 = v61;
        v62 = HIWORD(v61) * 0.000015259;
        v68[v34] = vmlaq_n_f32(v75, vsubq_f32(v76, v75), v62);
        if (v69)
        {
          v63 = vmlaq_n_f32(v72, vsubq_f32(v73, v72), v62);
          v64 = vmulq_f32(v63, v63);
          *&v65 = v64.f32[2] + vaddv_f32(*v64.f32);
          *v64.f32 = vrsqrte_f32(v65);
          *v64.f32 = vmul_f32(*v64.f32, vrsqrts_f32(v65, vmul_f32(*v64.f32, *v64.f32)));
          v60 = vmulq_n_f32(v63, vmul_f32(*v64.f32, vrsqrts_f32(v65, vmul_f32(*v64.f32, *v64.f32))).f32[0]);
LABEL_54:
          v48[v34] = v60;
        }
      }

LABEL_55:
      if (++v34 == v71)
      {
        return;
      }
    }
  }

  if ((byte_1EB658618 & 1) == 0)
  {
    byte_1EB658618 = 1;
    v33 = sub_1AF0D5194(v19, v20);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDD10C(v33);
    }
  }
}

BOOL sub_1AF1B3F8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 200);
  v3 = v2 & 3;
  if ((v2 & 3) == 0)
  {
    v5 = sub_1AF1B2C1C(a1, a2);
    v3 = 1;
    v6 = sub_1AF1A516C(v5, 1);
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v8 = Count;
      v9 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
        if (sub_1AF1A7034(ValueAtIndex, v11))
        {
          break;
        }

        if (v8 == ++v9)
        {
          v3 = 1;
          goto LABEL_8;
        }
      }

      v3 = 2;
    }

LABEL_8:
    *(a1 + 200) = v3 | v2;
  }

  return v3 == 1;
}

BOOL sub_1AF1B402C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 176) - 1 < 3)
  {
    return sub_1AF1B3F8C(a1, a2);
  }

  if (*(a1 + 176))
  {
    return sub_1AF170D38(a1, a2);
  }

  return 0;
}

BOOL sub_1AF1B40A0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  return !sub_1AF170998(a1, a2);
}

__n128 sub_1AF1B40F0@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  if (!a1)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  result = a1[11];
  *a3 = result;
  a3[1].n128_u64[0] = a1[12].n128_u64[0];
  return result;
}

uint64_t sub_1AF1B4154(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4)
{
  v4 = *(a1 + 104);
  if (v4)
  {
    *a3 = vsubq_f32(*v4, v4[1]);
    *a4 = vaddq_f32(**(a1 + 104), *(*(a1 + 104) + 16));
    return 1;
  }

  else
  {
    result = *(a1 + 64);
    if (result)
    {
      return sub_1AF1C3958(result, 0, a3, a4);
    }
  }

  return result;
}

const void *sub_1AF1B4194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 64);
  if (result)
  {
    return sub_1AF1C39FC(result, 0, a3);
  }

  return result;
}

void sub_1AF1B41A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF1B1F84(a1, a2);
  if (v3)
  {
    v5 = sub_1AF1C3734(v3, v4);
    sub_1AF1B2E54(a1, v5);
    if (v5)
    {

      CFRelease(v5);
    }
  }
}

uint64_t sub_1AF1B4208(uint64_t a1, const void *a2)
{
  v3 = a1;
  v4 = sub_1AF16CCC0(a1, a2);
  if (sub_1AF1D2AE0(v4, a2))
  {
    return v3;
  }

  v6 = sub_1AF1B1FE0(v3, v5);
  if (v6 >= 1)
  {
    v8 = v6;
    v9 = 0;
    do
    {
      v10 = sub_1AF1B2030(v3, v9);
      v11 = sub_1AF1C4020(v10, a2);
      if (v11)
      {
        return v11;
      }
    }

    while (v8 != ++v9);
  }

  v12 = sub_1AF1B1F84(v3, v7);

  return sub_1AF1C4020(v12, a2);
}

__n128 *sub_1AF1B42B4(uint64_t a1, uint64_t a2)
{
  v3 = [VFXModel __createCFObject]_0(a1, a2);
  sub_1AF1B2C84(a1, v3);
  return v3;
}

uint64_t sub_1AF1B42EC(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73ABF8 != -1)
  {
    sub_1AFDDD194();
  }

  return qword_1ED73ABF0;
}

double sub_1AF1B4324()
{
  qword_1ED73ABF0 = _CFRuntimeRegisterClass();
  qword_1ED72E9B0 = sub_1AF1B5EEC;
  result = *&xmmword_1F24E7F90;
  unk_1ED72E988 = xmmword_1F24E7F90;
  qword_1ED72E970 = sub_1AF1B5F5C;
  unk_1ED72E998 = unk_1F24E7FA0;
  qword_1ED72E9A8 = qword_1F24E7FB0;
  qword_1ED72E9C0 = sub_1AF1B6144;
  return result;
}

uint64_t sub_1AF1B43A4(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73ABF8 != -1)
  {
    sub_1AFDDD194();
  }

  result = sub_1AF0D160C(qword_1ED73ABF0, 0xC0uLL);
  *(result + 192) = 1;
  *(result + 184) = 0x13C23D70ALL;
  return result;
}

uint64_t sub_1AF1B4400(uint64_t result, int a2)
{
  if (*(result + 64) != a2)
  {
    *(result + 64) = a2;
    ++*(result + 188);
    result = *(result + 200);
    if (result)
    {
      return sub_1AF1B64F8(result);
    }
  }

  return result;
}

__n128 sub_1AF1B4434@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 88);
  *(a2 + 8) = *(a1 + 96);
  *(a2 + 24) = *(a1 + 112);
  *(a2 + 32) = *(a1 + 120);
  *(a2 + 40) = *(a1 + 128);
  *(a2 + 48) = *(a1 + 136);
  *(a2 + 56) = *(a1 + 144);
  result = *(a1 + 152);
  *(a2 + 64) = result;
  return result;
}

void sub_1AF1B4478(uint64_t a1, CFTypeRef cf, size_t __n, const void **a4)
{
  v5 = __n;
  v7 = *(a1 + 88);
  v8 = *(a1 + 72);
  if (v8 != cf)
  {
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 72) = 0;
    }

    if (cf)
    {
      v10 = CFRetain(cf);
    }

    else
    {
      v10 = 0;
    }

    *(a1 + 72) = v10;
  }

  ++*(a1 + 188);
  *(a1 + 193) = v5;
  v11 = *a4;
  v12 = *(a4 + 1);
  *(a1 + 88) = *a4;
  if (v12)
  {
    v13 = *(a1 + 92);
    *(a1 + 92) = v12;
    v14 = (4 * v11);
    if (v11 != v7)
    {
      v15 = *(a1 + 96);
      if (v11)
      {
        v16 = malloc_type_realloc(v15, (4 * v11), 0x390C0F67uLL);
      }

      else
      {
        free(v15);
        v16 = 0;
      }

      *(a1 + 96) = v16;
    }

    if (*a4)
    {
      memcpy(*(a1 + 96), a4[1], v14);
    }

    v17 = *(a4 + 1);
    v18 = (4 * v17);
    if (v17 != v13)
    {
      v19 = *(a1 + 104);
      if (v17)
      {
        v20 = malloc_type_realloc(v19, (4 * v17), 0xB1F0F3B9uLL);
      }

      else
      {
        free(v19);
        v20 = 0;
      }

      *(a1 + 104) = v20;
      v13 = *(a4 + 1);
    }

    if (v13)
    {
      memcpy(*(a1 + 104), a4[2], v18);
    }
  }

  else
  {
    *(a1 + 92) = 0;
    free(*(a1 + 96));
    *(a1 + 96) = 0;
    free(*(a1 + 104));
    *(a1 + 104) = 0;
  }

  v21 = *(a1 + 112);
  v22 = *(a4 + 6);
  *(a1 + 112) = v22;
  if (v22)
  {
    v23 = (4 * v22);
    if (v22 == v21 || (*(a1 + 120) = malloc_type_realloc(*(a1 + 120), (4 * v22), 0x9C87AB7CuLL), *(a4 + 6)))
    {
      memcpy(*(a1 + 120), a4[4], v23);
    }

    v24 = *(a1 + 128);
    v25 = *(a4 + 10);
    *(a1 + 128) = v25;
    v26 = (4 * v25);
    if (v25 != v24)
    {
      v27 = *(a1 + 136);
      if (v25)
      {
        v28 = malloc_type_realloc(v27, (4 * v25), 0xB67FBF09uLL);
      }

      else
      {
        free(v27);
        v28 = 0;
      }

      *(a1 + 136) = v28;
      v24 = *(a4 + 10);
    }

    if (v24)
    {
      memcpy(*(a1 + 136), a4[6], v26);
    }

    v29 = *(a4 + 14);
    if (v29)
    {
      v30 = *(a1 + 144);
      *(a1 + 144) = v29;
      v31 = *(a4 + 6);
      v32 = (4 * v31);
      if (v31 != v21)
      {
        v33 = *(a1 + 152);
        if (v31)
        {
          v34 = malloc_type_realloc(v33, (4 * v31), 0x4B7040D0uLL);
        }

        else
        {
          free(v33);
          v34 = 0;
        }

        *(a1 + 152) = v34;
      }

      if (*a4)
      {
        memcpy(*(a1 + 152), a4[8], v32);
      }

      v35 = *(a4 + 14);
      v36 = (4 * v35);
      if (v35 != v30)
      {
        v37 = *(a1 + 160);
        if (*(a4 + 1))
        {
          v38 = malloc_type_realloc(v37, v36, 0x47AE1FFAuLL);
        }

        else
        {
          free(v37);
          v38 = 0;
        }

        *(a1 + 160) = v38;
        v30 = *(a4 + 14);
      }

      if (v30)
      {
        memcpy(*(a1 + 160), a4[9], v36);
      }
    }

    else
    {
      *(a1 + 144) = 0;
      free(*(a1 + 152));
      *(a1 + 152) = 0;
      free(*(a1 + 160));
      *(a1 + 160) = 0;
    }
  }

  else
  {
    *(a1 + 128) = 0;
    *(a1 + 144) = 0;
    free(*(a1 + 120));
    *(a1 + 120) = 0;
    free(*(a1 + 136));
    *(a1 + 136) = 0;
    free(*(a1 + 152));
    *(a1 + 152) = 0;
    free(*(a1 + 160));
    *(a1 + 160) = 0;
    if (!v12)
    {
      free(*(a1 + 168));
      *(a1 + 168) = 0;
    }
  }

  v39 = *(a1 + 80);
  if (v39)
  {
    sub_1AF1C3A90(*(a1 + 80), *(a1 + 48));
    *(a1 + 80) = 0;
    sub_1AF1B47D4(a1, v39);
    sub_1AF1703F8(v39, 0);
    CFRelease(v39);
  }

  v40 = *(a1 + 176);
  if (v40)
  {
    CFRelease(v40);
    *(a1 + 176) = 0;
  }
}

void sub_1AF1B47D4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 4 * v2);
    CFDataSetLength(Mutable, 4 * v2);
    if (a2)
    {
      a2 = sub_1AF17032C(a2, v6);
    }

    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    for (i = 0; i != v2; ++i)
    {
      v9 = 0;
      if (a2 && sub_1AF12DB9C(a2) > i)
      {
        v9 = *sub_1AF1CAF40(a2, i, v10);
      }

      *&MutableBytePtr[4 * i] = v9;
    }

    v11 = sub_1AF1CAE64(1, 1, v2, 0, 0);
    v12 = sub_1AF16FC00(v11, 0);
    sub_1AF16FCB0(v12, Mutable);
    sub_1AF1CB108(v11, v12, v13);
    CFRelease(v11);
    CFRelease(Mutable);
    sub_1AF1B4994(a1, v12, v14);

    CFRelease(v12);
  }
}

void sub_1AF1B4918(uint64_t a1, CFArrayRef theArray, size_t a3)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  memset(v11, 0, sizeof(v11));
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = Count;
  sub_1AF1B4478(a1, theArray, a3, &v7);
}

float sub_1AF1B4994(uint64_t a1, CFTypeRef a2, float result)
{
  v4 = *(a1 + 80);
  if (v4 == a2)
  {
    return result;
  }

  if (v4)
  {
    sub_1AF1703F8(v4, 0);
    sub_1AF1C3A90(*(a1 + 80), *(a1 + 48));
    v6 = *(a1 + 80);
    if (v6 == a2)
    {
      goto LABEL_12;
    }

    if (v6)
    {
      CFRelease(v6);
      *(a1 + 80) = 0;
    }

    if (!a2)
    {
      v6 = 0;
LABEL_11:
      *(a1 + 80) = v6;
LABEL_12:
      if (v6)
      {
        sub_1AF1C3CB4(v6, *(a1 + 48));
        v6 = *(a1 + 80);
      }

      goto LABEL_15;
    }

LABEL_10:
    v6 = CFRetain(a2);
    goto LABEL_11;
  }

  if (a2)
  {
    goto LABEL_10;
  }

  v6 = 0;
LABEL_15:
  sub_1AF1703F8(v6, a1);

  return sub_1AF1B4A50(a1, v9, v7, v8);
}

float sub_1AF1B4A50(uint64_t a1, float result, const char *a3, uint64_t a4)
{
  v45 = *MEMORY[0x1E69E9840];
  ++*(a1 + 188);
  if (*(a1 + 168))
  {
    v5 = *(a1 + 80);
    if (!v5)
    {
      sub_1AF1B47D4(a1, 0);
      v5 = *(a1 + 80);
    }

    v6 = sub_1AF170020(v5, a3, a4);
    v8 = v7;
    if (*(a1 + 88) == v7)
    {
      v9 = v6;
      v10 = *(a1 + 112);
      v11 = *(a1 + 92) + v10 + v7 + *(a1 + 144);
      v36 = 0;
      *buf = 0;
      if (v7)
      {
        v12 = 0;
        v13 = 4 * v7;
        do
        {
          if (*(a1 + 92))
          {
            v14 = *(*(a1 + 96) + v12);
          }

          else
          {
            v14 = 0;
          }

          sub_1AF1B6148(*(a1 + 168), buf, &v36, v14, *(a1 + 104), v11, *&v9[v12]);
          v12 += 4;
        }

        while (v13 != v12);
        v10 = *(a1 + 112);
      }

      v35 = 0;
      if (v10)
      {
        v15 = 0;
        v16 = 0;
        do
        {
          v17 = *(*(a1 + 120) + 4 * v15);
          if (v17)
          {
            v18 = 3.4028e38;
            v19 = *(*(a1 + 120) + 4 * v15);
            v20 = v16;
            do
            {
              v21 = *(*(a1 + 136) + 4 * v20++);
              v18 = fminf(v18, *&v9[4 * v21]);
              --v19;
            }

            while (v19);
            v16 += v17;
          }

          else
          {
            v18 = 3.4028e38;
          }

          if (*(a1 + 144))
          {
            v22 = *(*(a1 + 152) + 4 * v15);
          }

          else
          {
            v22 = 0;
          }

          sub_1AF1B6148(*(a1 + 168), buf, &v35, v22, *(a1 + 160), v11, v18);
          ++v15;
        }

        while (v15 < *(a1 + 112));
      }

      if (*buf != v11)
      {
        v23 = sub_1AF0D5194(v6, v7);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDDD1A8(v23, v24, v25, v26, v27, v28, v29, v30);
        }
      }
    }

    else
    {
      v31 = sub_1AF0D5194(v6, v7);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = *(a1 + 88);
        v33 = *(a1 + 92);
        v34 = *(a1 + 112);
        *buf = 67109888;
        v38 = v8;
        v39 = 1024;
        v40 = v32;
        v41 = 1024;
        v42 = v33;
        v43 = 1024;
        v44 = v34;
        _os_log_error_impl(&dword_1AF0CE000, v31, OS_LOG_TYPE_ERROR, "Error: Morpher has %d targets weights, but has %d main targets (note: there are %d in-betweens and %d correctives)", buf, 0x1Au);
      }
    }
  }

  return result;
}

uint64_t sub_1AF1B4C94(uint64_t a1)
{
  result = *(a1 + 80);
  if (!result)
  {
    sub_1AF1B47D4(a1, 0);
    return *(a1 + 80);
  }

  return result;
}

__CFArray *sub_1AF1B4CD4(uint64_t a1)
{
  if (*(a1 + 92))
  {
    Mutable = CFArrayCreateMutable(0, *(a1 + 88), MEMORY[0x1E695E9C0]);
    if (*(a1 + 88))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v3 += *(*(a1 + 96) + 4 * v4);
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v3 - 1);
        CFArrayAppendValue(Mutable, ValueAtIndex);
        ++v4;
      }

      while (v4 < *(a1 + 88));
    }

    return Mutable;
  }

  if (*(a1 + 112))
  {
    Mutable = CFArrayCreateMutable(0, *(a1 + 88), MEMORY[0x1E695E9C0]);
    if (*(a1 + 88))
    {
      v6 = 0;
      do
      {
        v7 = CFArrayGetValueAtIndex(*(a1 + 72), v6);
        CFArrayAppendValue(Mutable, v7);
        ++v6;
      }

      while (v6 < *(a1 + 88));
    }

    return Mutable;
  }

  v8 = *(a1 + 72);
  if (!v8)
  {
    return 0;
  }

  return CFRetain(v8);
}

uint64_t sub_1AF1B4DEC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD220(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 80);
  if (!v10)
  {
    sub_1AF1B47D4(a1, 0);
    v10 = *(a1 + 80);
    if (!v10)
    {
      v11 = sub_1AF0D5194(0, a2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD0208(v11, a2, v12, v13, v14, v15, v16, v17);
      }

      v10 = 0;
    }
  }

  result = sub_1AF17032C(v10, a2);
  if (result)
  {
    return sub_1AF12DB9C(result);
  }

  return result;
}

float sub_1AF1B4E7C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD220(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 80);
  if (!v11)
  {
    sub_1AF1B47D4(a1, 0);
    v11 = *(a1 + 80);
    if (!v11)
    {
      v12 = sub_1AF0D5194(0, a2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD0208(v12, a2, v13, v14, v15, v16, v17, v18);
      }

      v11 = 0;
    }
  }

  v19 = sub_1AF17032C(v11, a2);
  v21 = 0.0;
  if (sub_1AF12DB9C(v19) > a2)
  {
    v22 = sub_1AF1CAF40(v19, a2, v20);
    if (v22)
    {
      return *v22;
    }
  }

  return v21;
}

void sub_1AF1B4F44(uint64_t a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD220(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = *(a1 + 80);
  if (!v13)
  {
    sub_1AF1B47D4(a1, 0);
    v13 = *(a1 + 80);
    if (!v13)
    {
      v14 = sub_1AF0D5194(0, a2);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD0208(v14, a2, v15, v16, v17, v18, v19, v20);
      }

      v13 = 0;
    }
  }

  v21 = sub_1AF17032C(v13, a2);
  if (sub_1AF12DB9C(v21) > a2)
  {
    v23 = sub_1AF1CAFE0(v21, a2, v22);
    if (v23)
    {
      v26 = *v23;
      if (*v23 != a3)
      {
        *v23 = a3;
        sub_1AF1B4A50(a1, v26, v24, v25);
      }
    }
  }
}

uint64_t sub_1AF1B501C(_BOOL8 a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDD220(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v11 = sub_1AF1B43A4(a1, a2);
  *(v11 + 64) = *(v2 + 64);
  *(v11 + 184) = *(v2 + 184);
  *(v11 + 192) = *(v2 + 192);
  v12 = *(v2 + 80);
  if (v12)
  {
    v13 = sub_1AF170120(v12, v10);
    sub_1AF1B4994(v11, v13, v14);
    if (v13)
    {
      CFRelease(v13);
    }
  }

  v15 = *(v2 + 72);
  if (v15)
  {
    *(v11 + 72) = CFArrayCreateMutableCopy(0, 0, v15);
  }

  v16 = *(v2 + 88);
  *(v11 + 88) = v16;
  *(v11 + 112) = *(v2 + 112);
  *(v11 + 128) = *(v2 + 128);
  *(v11 + 144) = *(v2 + 144);
  if (*(v2 + 96))
  {
    v17 = 4 * v16;
    v18 = malloc_type_malloc(v17, 0xD6801D70uLL);
    *(v11 + 96) = v18;
    memcpy(v18, *(v2 + 96), v17);
  }

  if (*(v2 + 104))
  {
    v19 = 4 * *(v2 + 92);
    v20 = malloc_type_malloc(v19, 0x9C72F448uLL);
    *(v11 + 104) = v20;
    memcpy(v20, *(v2 + 104), v19);
  }

  if (*(v2 + 120))
  {
    v21 = 4 * *(v2 + 112);
    v22 = malloc_type_malloc(v21, 0x7998B04DuLL);
    *(v11 + 120) = v22;
    memcpy(v22, *(v2 + 120), v21);
  }

  if (*(v2 + 136))
  {
    v23 = 4 * *(v2 + 128);
    v24 = malloc_type_malloc(v23, 0x68B89E05uLL);
    *(v11 + 136) = v24;
    memcpy(v24, *(v2 + 136), v23);
  }

  if (*(v2 + 152))
  {
    v25 = 4 * *(v2 + 112);
    v26 = malloc_type_malloc(v25, 0x7F148075uLL);
    *(v11 + 152) = v26;
    memcpy(v26, *(v2 + 152), v25);
  }

  if (*(v2 + 160))
  {
    v27 = 4 * *(v2 + 144);
    v28 = malloc_type_malloc(v27, 0xFD8886BuLL);
    *(v11 + 160) = v28;
    memcpy(v28, *(v2 + 160), v27);
  }

  if (*(v2 + 168))
  {
    v29 = 4 * (*(v2 + 112) + *(v2 + 92) + *(v2 + 144) + *(v2 + 88));
    v30 = malloc_type_malloc(v29, 0x796B9668uLL);
    *(v11 + 168) = v30;
    memcpy(v30, *(v2 + 168), v29);
  }

  sub_1AF16D160(v2, v11);
  return v11;
}

uint64_t sub_1AF1B526C(uint64_t a1, const void *a2, int a3, uint64_t a4)
{
  v60 = *MEMORY[0x1E69E9840];
  if (*(a1 + 193) == a3)
  {
    return 0;
  }

  v6 = a1;
  if (sub_1AF1706B8(a2) != 1)
  {
    return 0;
  }

  *(v6 + 193) = a3;
  if (a3)
  {
    sub_1AF1B5708(v6, a2, 1, a4);
  }

  Count = CFArrayGetCount(*(v6 + 72));
  if (Count >= 1)
  {
    v41 = a2;
    v7 = 0;
    allocator = *MEMORY[0x1E695E480];
    v42 = v6;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v6 + 72), v7);
      v58 = 0;
      v59 = 0;
      v58 = sub_1AF1A4CE8(ValueAtIndex, 0);
      v9 = sub_1AF1A4F84(ValueAtIndex, 0);
      v59 = v9;
      if (v58)
      {
        v11 = sub_1AF1A4C6C(ValueAtIndex, 0, 0);
        v9 = v59;
      }

      else
      {
        v11 = -1;
      }

      v56 = v11;
      if (v9)
      {
        v12 = sub_1AF1A4C6C(ValueAtIndex, 1, 0);
        v13 = v59 == 0;
        v57 = v12;
        if (v59)
        {
          v14 = 2;
LABEL_15:
          if (v12 != v11)
          {
            v15 = sub_1AF0D5194(v12, v10);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
            {
              sub_1AFDDD298(v54, &v55, v15);
            }
          }

          goto LABEL_18;
        }
      }

      else
      {
        v12 = -1;
        v57 = -1;
        v13 = 1;
      }

      v14 = 1;
      if (!v13)
      {
        goto LABEL_15;
      }

LABEL_18:
      if (a3)
      {
        values = sub_1AF27FC18(&v58, v14, 1);
        if (values)
        {
          v17 = CFArrayCreate(allocator, &values, 1, MEMORY[0x1E695E9C0]);
          sub_1AF1A5208(ValueAtIndex, v17);
          CFRelease(v17);
          CFRelease(values);
          for (i = 0; i != v14; ++i)
          {
            v19 = sub_1AF1AE738(*(&v58 + i), values, *(&v56 + i));
            if (v19)
            {
              v21 = v19;
              if (a4)
              {
                (*(a4 + 16))(a4, ValueAtIndex, *(&v58 + i), v19);
              }

              sub_1AF1A44D4(ValueAtIndex, v21, 0, 255);
              CFRelease(v21);
            }

            else
            {
              v22 = sub_1AF0D5194(0, v20);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109376;
                v51 = i;
                v52 = 1024;
                v53 = v7;
                _os_log_error_impl(&dword_1AF0CE000, v22, OS_LOG_TYPE_ERROR, "Error: Failed to create packed source %d for sparse morph target %d", buf, 0xEu);
              }
            }
          }
        }

        else
        {
          v31 = sub_1AF0D5194(0, v16);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v51 = v7;
            _os_log_error_impl(&dword_1AF0CE000, v31, OS_LOG_TYPE_ERROR, "Error: Could not create intervals for sparse morph target %d (this morph target is useless)", buf, 8u);
          }

          sub_1AF1A5208(ValueAtIndex, 0);
          v32 = &v58;
          do
          {
            v33 = *v32++;
            sub_1AF1A4880(ValueAtIndex, v33);
            --v14;
          }

          while (v14);
        }
      }

      else
      {
        v23 = sub_1AF1A3CCC(ValueAtIndex, v10);
        if (v23 != 1)
        {
          v25 = sub_1AF0D5194(v23, v24);
          v23 = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);
          if (v23)
          {
            sub_1AFDDD2DC(v48, &v49, v25);
          }
        }

        if (*(v6 + 64) != 1)
        {
          v26 = sub_1AF0D5194(v23, v24);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDDD320(v46, &v47, v26);
          }
        }

        v27 = sub_1AF1A3D1C(ValueAtIndex, 0, 0);
        v28 = sub_1AF1A4CE8(v41, 0);
        if (v28)
        {
          v30 = sub_1AF1AE6EC(v28, v29);
        }

        else
        {
          v30 = 0;
        }

        v34 = &v56;
        v35 = &v58;
        do
        {
          v36 = *v34++;
          v37 = sub_1AF1AEC88(*v35, v27, v30, v36);
          if (v37)
          {
            v38 = v37;
            if (a4)
            {
              (*(a4 + 16))(a4, ValueAtIndex, *v35, v37);
            }

            sub_1AF1A44D4(ValueAtIndex, v38, 0, 255);
            CFRelease(v38);
          }

          ++v35;
          --v14;
        }

        while (v14);
      }

      ++v7;
      v6 = v42;
    }

    while (v7 != Count);
  }

  return 1;
}

uint64_t sub_1AF1B5708(uint64_t a1, const void *a2, int a3, uint64_t a4)
{
  if (*(a1 + 64) == a3)
  {
    return 0;
  }

  if (sub_1AF1706B8(a2) != 1)
  {
    return 0;
  }

  *(a1 + 64) = a3;
  v20 = sub_1AF1A4CE8(a2, 0);
  v9 = sub_1AF1A4F84(a2, 0);
  Count = CFArrayGetCount(*(a1 + 72));
  if (Count >= 1)
  {
    for (i = 0; Count != i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
      v12 = sub_1AF1A4CE8(ValueAtIndex, 0);
      v13 = sub_1AF1A4F84(ValueAtIndex, 0);
      if (v13)
      {
        v14 = v9 == 0;
      }

      else
      {
        v14 = 1;
      }

      v15 = !v14;
      if (a3 == 1)
      {
        v16 = sub_1AF1ADEA8(v20, v12);
        if (v15)
        {
          v17 = sub_1AF1ADEA8(v9, v13);
          goto LABEL_17;
        }
      }

      else
      {
        v16 = sub_1AF1AE420(v20, v12);
        if (v15)
        {
          v17 = sub_1AF1AE420(v9, v13);
LABEL_17:
          v18 = v17;
          if (v16)
          {
            goto LABEL_20;
          }

          goto LABEL_23;
        }
      }

      v18 = 0;
      if (v16)
      {
LABEL_20:
        if (a4)
        {
          (*(a4 + 16))(a4, ValueAtIndex, v12, v16);
        }

        sub_1AF1A44D4(ValueAtIndex, v16, 0, 255);
        CFRelease(v16);
      }

LABEL_23:
      if (v18)
      {
        if (a4)
        {
          (*(a4 + 16))(a4, ValueAtIndex, v13, v18);
        }

        sub_1AF1A44D4(ValueAtIndex, v18, 0, 255);
        CFRelease(v18);
      }
    }
  }

  return 1;
}

uint64_t sub_1AF1B58F8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD220(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 193);
}

const UInt8 *sub_1AF1B5940(uint64_t a1, _DWORD *a2)
{
  result = *(a1 + 168);
  if (result || (v5 = *(a1 + 112) + *(a1 + 92) + *(a1 + 144)) != 0 && (*(a1 + 168) = malloc_type_malloc(4 * (*(a1 + 88) + v5), 0x100004052888210uLL), sub_1AF1B4A50(a1, v8, v6, v7), (result = *(a1 + 168)) != 0))
  {
    *a2 = *(a1 + 112) + *(a1 + 92) + *(a1 + 144) + *(a1 + 88);
  }

  else
  {
    v9 = *(a1 + 80);
    if (!v9)
    {
      sub_1AF1B47D4(a1, 0);
      v9 = *(a1 + 80);
    }

    v10 = sub_1AF17032C(v9, a2);
    *a2 = sub_1AF12DB9C(v10);

    return sub_1AF1CAF40(v10, 0, v11);
  }

  return result;
}

uint64_t sub_1AF1B5A20(uint64_t a1, void *key)
{
  *&v20[5] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 176);
  if (!v4)
  {
    v5 = sub_1AF1B4CD4(a1);
    if (!v5)
    {
      return -1;
    }

    v6 = v5;
    v7 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v10 = Count;
      for (i = 0; i != v10; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
        v15 = sub_1AF1A5748(ValueAtIndex, v13);
        if (!v15)
        {
          v16 = sub_1AF0D5194(0, v14);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDDD364(v19, v20, v16);
          }
        }

        CFDictionaryAddValue(Mutable, v15, i);
      }
    }

    *(a1 + 176) = CFDictionaryCreateCopy(v7, Mutable);
    CFRelease(Mutable);
    CFRelease(v6);
    v4 = *(a1 + 176);
  }

  value = 0;
  if (CFDictionaryGetValueIfPresent(v4, key, &value))
  {
    return value;
  }

  else
  {
    return -1;
  }
}

uint64_t sub_1AF1B5B9C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD220(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 194);
}

void sub_1AF1B5BE4(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD220(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 194) = v2;
}

float sub_1AF1B5C38(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD220(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 184);
}

void sub_1AF1B5C80(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD220(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 184) = a3;
}

id sub_1AF1B5CD8(uint64_t a1)
{
  sub_1AF1BE334(@"kCFXNotificationMorphWillDie", a1, 0, 1u);
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_1AF1703F8(v2, 0);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 72) = 0;
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 80) = 0;
  }

  v5 = *(a1 + 176);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 176) = 0;
  }

  free(*(a1 + 168));
  free(*(a1 + 96));
  free(*(a1 + 104));
  free(*(a1 + 120));
  free(*(a1 + 136));
  free(*(a1 + 152));
  free(*(a1 + 160));

  return sub_1AF16C9A4(a1, v6);
}

__CFString *sub_1AF1B5DA4(uint64_t a1)
{
  v2 = sub_1AF1B4CD4(a1);
  v3 = v2;
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v6 = sub_1AF3753A8(a1);
  v8 = sub_1AF16CBEC(a1, v7);
  CFStringAppendFormat(Mutable, 0, @"<%s %p | %@\n", v6, a1, v8);
  CFStringAppendFormat(Mutable, 0, @"  calc:%d morphNrm:%d targets:%ld\n", *(a1 + 64), *(a1 + 192), Count);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
      v11 = sub_1AF1B4E7C(a1, i);
      CFStringAppendFormat(Mutable, 0, @"[%ld] weight:%f %@\n", i, v11, ValueAtIndex);
    }
  }

  CFStringAppend(Mutable, @">");
  if (v3)
  {
    CFRelease(v3);
  }

  return Mutable;
}

uint64_t sub_1AF1B5EEC(uint64_t a1, const void *a2)
{
  v4 = sub_1AF16CCC0(a1, a2);
  if (sub_1AF1D2AE0(v4, a2))
  {
    return a1;
  }

  v6 = *(a1 + 80);
  if (!v6)
  {
    sub_1AF1B47D4(a1, 0);
    v6 = *(a1 + 80);
  }

  return sub_1AF1C4020(v6, a2);
}

__CFArray *sub_1AF1B5F5C(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = *(a1 + 72);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
        v9 = sub_1AF16CBEC(ValueAtIndex, v8);
        if (v9)
        {
          v10 = v9;
          CFRetain(v9);
        }

        else
        {
          v10 = CFStringCreateWithFormat(0, 0, @"<unnamed %d>", i);
        }

        v11 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v17 = 1;
        valuePtr = 5;
        v16 = ValueAtIndex;
        v12 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        v13 = CFNumberCreate(0, kCFNumberSInt32Type, &v17);
        v14 = CFNumberCreate(0, kCFNumberLongType, &v16);
        CFDictionarySetValue(v11, @"name", v10);
        CFDictionarySetValue(v11, @"type", v12);
        CFDictionarySetValue(v11, @"address", v14);
        CFDictionarySetValue(v11, @"semantic", v13);
        CFArrayAppendValue(Mutable, v11);
        CFRelease(v13);
        CFRelease(v11);
        CFRelease(v14);
        CFRelease(v12);
        CFRelease(v10);
      }
    }
  }

  return Mutable;
}

uint64_t sub_1AF1B6120(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 80);
    if (v2)
    {
      return (*(a2 + 16))(a2, v2);
    }
  }

  return result;
}

void sub_1AF1B6148(uint64_t result, _DWORD *a2, unsigned int *a3, unsigned int a4, uint64_t a5, unsigned int a6, float a7)
{
  v7 = *a2;
  v8 = *a3;
  if (a4 >= 2)
  {
    v10 = 0;
    v11 = 0;
    v12 = a6 - v7;
    if (a6 < v7)
    {
      v12 = 0;
    }

    v13 = result + 4 * v7;
    while (1)
    {
      if (v12 == v10)
      {
        v18 = sub_1AF0D5194(result, a2);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDDD3A8(v7 + v10, a6, v18);
        }

        return;
      }

      v14 = v10 - a4;
      if (v11)
      {
        *(v13 + 4 * v10) = 0;
      }

      else if (a7 >= 1.0)
      {
        if (v14 != -1)
        {
          goto LABEL_16;
        }

        *(v13 + 4 * v10) = a7;
      }

      else
      {
        if (v14 == -1)
        {
          v15 = 1.0;
        }

        else
        {
          v15 = *(a5 + 4 * v8);
        }

        if (v15 < a7)
        {
LABEL_16:
          v11 = 0;
          *(v13 + 4 * v10) = 0;
          goto LABEL_17;
        }

        if (v10)
        {
          v16 = *(a5 + 4 * (v8 - 1));
          v17 = (a7 - v16) / (v15 - v16);
          *(result + 4 * (v7 - 1 + v10)) = 1.0 - v17;
        }

        else
        {
          v17 = a7 / v15;
        }

        *(v13 + 4 * v10) = v17;
      }

      v11 = 1;
LABEL_17:
      if (v14 != -1)
      {
        ++v8;
      }

      if (++v10 == a4)
      {
        v19 = v7 + v10;
        goto LABEL_28;
      }
    }
  }

  v19 = v7 + 1;
  *(result + 4 * v7) = a7;
LABEL_28:
  *a2 = v19;
  *a3 = v8;
}

const __CFArray *sub_1AF1B6288(uint64_t a1)
{
  result = sub_1AF15B294(*(a1 + 72));
  if (result)
  {
    result = CFArrayGetCount(result);
    v3 = result;
  }

  else
  {
    v3 = 0;
  }

  if (v3 != *(a1 + 96))
  {
    free(*(a1 + 88));
    if (v3)
    {
      result = malloc_type_calloc(v3, 4uLL, 0x100004052888210uLL);
    }

    else
    {
      result = 0;
    }

    *(a1 + 88) = result;
    *(a1 + 96) = v3;
    *(a1 + 80) = 0;
  }

  return result;
}

uint64_t sub_1AF1B630C(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73ABE8 != -1)
  {
    sub_1AFDDD430();
  }

  return qword_1ED73ABE0;
}

double sub_1AF1B6344()
{
  qword_1ED73ABE0 = _CFRuntimeRegisterClass();
  result = *&xmmword_1F24E7FD8;
  unk_1ED72E8B0 = xmmword_1F24E7FD8;
  unk_1ED72E8C0 = unk_1F24E7FE8;
  qword_1ED72E8D0 = qword_1F24E7FF8;
  unk_1ED72E8D8 = sub_1AF1B684C;
  qword_1ED72E898 = sub_1AF1B68C8;
  return result;
}

uint64_t sub_1AF1B63B0(const void *a1, uint64_t a2)
{
  if (qword_1ED73ABE8 != -1)
  {
    sub_1AFDDD430();
  }

  v3 = sub_1AF0D160C(qword_1ED73ABE0, 0x58uLL);
  v5 = sub_1AF1C3F64(v3, v4);
  if (v5)
  {
    v6 = *(v3 + 72);
    if (v6)
    {
      sub_1AF1C3A90(v6, v5);
    }
  }

  v7 = *(v3 + 72);
  if (!v7)
  {
    if (!a1)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  sub_1AF1B43F8(v7, 0);
  v8 = *(v3 + 72);
  if (v8 == a1)
  {
    goto LABEL_15;
  }

  if (v8)
  {
    CFRelease(v8);
    *(v3 + 72) = 0;
  }

  if (a1)
  {
LABEL_13:
    v9 = CFRetain(a1);
    goto LABEL_14;
  }

  v9 = 0;
LABEL_14:
  *(v3 + 72) = v9;
LABEL_15:
  free(*(v3 + 88));
  *(v3 + 88) = 0;
  *(v3 + 100) = 0;
  if (a1)
  {
    sub_1AF1B43F8(a1, v3);
    sub_1AF1B6288(v3);
  }

  if (v5)
  {
    v10 = *(v3 + 72);
    if (v10)
    {
      sub_1AF1C3CB4(v10, v5);
    }
  }

  return v3;
}

uint64_t sub_1AF1B64A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF1B501C(*(a1 + 72), a2);
  v5 = sub_1AF1B63B0(v3, v4);
  CFRelease(v3);
  sub_1AF16D160(a1, v5);
  return v5;
}

uint64_t sub_1AF1B6500(_BOOL8 a1, uint64_t a2, void *a3, const UInt8 **a4, _DWORD *a5, float *a6)
{
  v10 = a2;
  v11 = a1;
  if (!a1)
  {
    v12 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDD444(v12, a2, v13, v14, v15, v16, v17, v18);
    }
  }

  v19 = *(v11 + 72);
  if (!v19)
  {
    v20 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD220(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  v28 = *(v11 + 100);
  v29 = sub_1AF12EE68(v19);
  if (v28 != v10 || v28 == 0)
  {
    v31 = 2;
LABEL_16:
    *(v11 + 80) = v29;
    sub_1AF1B6288(v11);
    *a3 = *(v11 + 88);
    v33 = 0;
    *a4 = sub_1AF1B5940(v19, &v33);
    *a5 = v33;
    *a6 = sub_1AF1B442C(v19);
    return v31;
  }

  if (*(v11 + 80) != v29)
  {
    v31 = 1;
    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_1AF1B6618(uint64_t a1)
{
  v7 = 0;
  v2 = sub_1AF1B5940(*(a1 + 72), &v7);
  v3 = sub_1AF1B442C(*(a1 + 72));
  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 88);
    do
    {
      if (vabds_f32(*v2, *v5) > v3)
      {
        *v5 = *v2;
      }

      ++v2;
      ++v5;
      --v4;
    }

    while (v4);
  }

  result = (*(a1 + 100) + 1);
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_1AF1B669C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD444(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 64);
}

CFTypeRef sub_1AF1B66E4(uint64_t a1, CFTypeRef cf)
{
  result = *(a1 + 64);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 64) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 64) = result;
    *(a1 + 80) = 0;
  }

  return result;
}

id sub_1AF1B6740(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_1AF1B43F8(v2, 0);
    CFRelease(*(a1 + 72));
  }

  free(*(a1 + 88));
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v4 = *(a1 + 64);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 64) = 0;
  }

  return sub_1AF16C9A4(a1, v3);
}

__CFString *sub_1AF1B67B0(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = sub_1AF3753A8(a1);
  CFStringAppendFormat(Mutable, 0, @"<%s %p | geometry:%p state:%d\n", v3, a1, *(a1 + 64), *(a1 + 80));
  CFStringAppendFormat(Mutable, 0, @"  morph:%@\n", *(a1 + 72));
  CFStringAppend(Mutable, @">");
  return Mutable;
}

uint64_t sub_1AF1B684C(uint64_t a1, const void *a2)
{
  v4 = sub_1AF16CCC0(a1, a2);
  if (sub_1AF1D2AE0(v4, a2))
  {
    return a1;
  }

  v6 = *(a1 + 72);

  return sub_1AF1C4020(v6, a2);
}

uint64_t sub_1AF1B68A8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 72);
  if (v2)
  {
    return (*(a2 + 16))(a2, v2);
  }

  return result;
}

__CFArray *sub_1AF1B68C8(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = 2;
  valuePtr = 5;
  v8 = a1 + 72;
  v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &v9);
  v6 = CFNumberCreate(0, kCFNumberLongType, &v8);
  CFDictionarySetValue(v3, @"name", @"morph");
  CFDictionarySetValue(v3, @"type", v4);
  CFDictionarySetValue(v3, @"address", v6);
  CFDictionarySetValue(v3, @"semantic", v5);
  CFArrayAppendValue(Mutable, v3);
  CFRelease(v5);
  CFRelease(v3);
  CFRelease(v6);
  CFRelease(v4);
  return Mutable;
}

uint64_t sub_1AF1B6A14(CFDataRef theData, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a5)
  {
    return 0;
  }

  if (theData)
  {
    Length = CFDataGetLength(theData);
    MutableCopy = CFDataCreateMutableCopy(0, Length, theData);
  }

  else
  {
    v14 = a4 * a3 * sub_1AF288070(a5, a2);
    MutableCopy = CFDataCreateMutable(0, 0);
    CFDataSetLength(MutableCopy, v14);
  }

  v15 = sub_1AF288070(a5, v11);
  v16 = sub_1AF1ADDB0(a2, MutableCopy, a5, a4, a3, v15 * a4, 0);
  CFRelease(MutableCopy);
  return v16;
}

uint64_t sub_1AF1B6AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 64);
  result = sub_1AF1CAED0(v8);
  v11 = result - a4;
  if (result > a4)
  {
    v12 = sub_1AF1AE3D8(a1, v10) - 1;
    v13 = 1.0;
    v14 = 1.0;
    if (v12 <= 5)
    {
      v13 = flt_1AFE21C30[v12];
      v14 = flt_1AFE21C48[v12];
    }

    result = sub_1AF121B74(v8);
    if (a3 >= 1)
    {
      v15 = result;
      v16 = 0;
      v17 = a2 + a4;
      v18 = a2 + 8 * a4;
      v19 = a2 + 4 * a4;
      do
      {
        v20 = 0;
        do
        {
          if (v11 - 1 == v20)
          {
            v21 = v13;
          }

          else
          {
            v21 = v14;
          }

          result = sub_1AF1CAED8(v8);
          if (result > 5u)
          {
            if (result != 6)
            {
              if (result != 15)
              {
                goto LABEL_19;
              }

LABEL_16:
              *(v17 + v20) = v21;
              goto LABEL_19;
            }

            *(v18 + 8 * v20) = v21;
          }

          else if (result == 1)
          {
            *(v19 + 4 * v20) = v21;
          }

          else if (result == 4)
          {
            goto LABEL_16;
          }

LABEL_19:
          ++v20;
        }

        while (v11 != v20);
        ++v16;
        v17 += v15;
        v18 += v15;
        v19 += v15;
      }

      while (v16 != a3);
    }
  }

  return result;
}

void sub_1AF1B6C38(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB710(v6, v7, a4, v8, v9, v10, v11, v12);
    }
  }

  v13 = *(a1 + 64);
  v14 = sub_1AF1CAFE0(v13, a2, a4);
  v15 = a3;
  v15.n128_u32[3] = 0;
  v18 = v15;
  v16 = sub_1AF1CAEE0(v13);
  sub_1AF279B88(v16, v14, v18);
}

void sub_1AF1B6CC8(uint64_t a1, uint64_t a2, float32x4_t a3, uint64_t a4)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB710(v6, v7, a4, v8, v9, v10, v11, v12);
    }
  }

  v13 = *(a1 + 64);
  v14 = sub_1AF1CAFE0(v13, a2, a4);
  v15 = sub_1AF1CAEE0(v13);
  sub_1AF279B88(v15, v14, a3);
}

__CFData *sub_1AF1B6D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB710(v5, a2, a3, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 64);
  v12 = sub_1AF1CAEF0(v11, a2, a3);
  v13 = sub_1AF121B74(v11);
  v15 = v13;
  if (!v12)
  {
    v16 = sub_1AF0D5194(v13, v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDC148(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  Length = CFDataGetLength(v12);
  v25 = sub_1AF12DB9C(v11);
  if (Length != v25 * v15)
  {
    v27 = sub_1AF0D5194(v25, v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD4BC(v27, v28, v29, v30, v31, v32, v33, v34);
    }
  }

  v35 = CFDataGetLength(v12);
  CFDataSetLength(v12, v35 + v15 * a2);
  v36 = sub_1AF12DB9C(v11);
  sub_1AF1CB354(v11, v36 + a2);
  return sub_1AF1CAFE0(v11, v36, v37);
}

uint64_t sub_1AF1B6E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB710(v6, v7, a3, v8, v9, v10, v11, v12);
    }
  }

  v13 = *(a1 + 64);
  v14 = sub_1AF1B6D4C(a1, a3, a3);
  v15 = sub_1AF121B74(v13);
  if (a3 >= 1)
  {
    v16 = v15;
    v17 = (v14 + 8);
    v18 = (a2 + 4);
    for (i = a3; i; --i)
    {
      v20 = sub_1AF1CAED8(v13);
      if (v20 > 5u)
      {
        if (v20 == 6)
        {
          *(v17 - 1) = *(v18 - 1);
          *v17 = *v18;
          v17[1] = v18[1];
          goto LABEL_16;
        }

        if (v20 != 15)
        {
LABEL_9:
          v22 = sub_1AF0D5194(v20, v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDDD534(&v24, v25);
          }

          goto LABEL_16;
        }
      }

      else
      {
        if (v20 == 1)
        {
          *(v17 - 2) = *(v18 - 1);
          *(v17 - 1) = *v18;
          *v17 = v18[1];
          goto LABEL_16;
        }

        if (v20 != 4)
        {
          goto LABEL_9;
        }
      }

      *(v17 - 8) = *(v18 - 1);
      *(v17 - 7) = *v18;
      *(v17 - 6) = v18[1];
LABEL_16:
      v17 = (v17 + v16);
      v18 += 4;
    }
  }

  return sub_1AF1B6AE4(a1, v14, a3, 3);
}

uint64_t sub_1AF1B6FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB710(v6, v7, a3, v8, v9, v10, v11, v12);
    }
  }

  v13 = *(a1 + 64);
  v14 = sub_1AF1B6D4C(a1, a3, a3);
  v15 = sub_1AF121B74(v13);
  if (a3 >= 1)
  {
    v16 = v15;
    v17 = (a2 + 4);
    v18 = v14;
    for (i = a3; i; --i)
    {
      v20 = sub_1AF1CAED8(v13);
      if (v20 > 5u)
      {
        if (v20 == 6)
        {
          *v18 = COERCE_FLOAT(*(v17 - 1));
          *(v18 + 1) = *v17;
          goto LABEL_16;
        }

        if (v20 != 15)
        {
LABEL_9:
          v22 = sub_1AF0D5194(v20, v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDDD560(&v24, v25);
          }

          goto LABEL_16;
        }
      }

      else
      {
        if (v20 == 1)
        {
          *v18 = *(v17 - 1);
          *(v18 + 1) = *v17;
          goto LABEL_16;
        }

        if (v20 != 4)
        {
          goto LABEL_9;
        }
      }

      *v18 = COERCE_FLOAT(*(v17 - 1));
      *(v18 + 1) = *v17;
LABEL_16:
      v17 += 2;
      v18 = (v18 + v16);
    }
  }

  return sub_1AF1B6AE4(a1, v14, a3, 2);
}

uint64_t sub_1AF1B7164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 <= 0x14 && ((1 << a3) & 0x108052) != 0)
  {
    v6 = sub_1AF288070(a3, a2);
    v8 = sub_1AF1CAE64(a3, a2, 0, v6 * a2, 0);
    if (!v8)
    {
      v9 = sub_1AF0D5194(0, v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD8424(v9, v10, v11, v12, v13, v14, v15, v16);
      }
    }

    v19 = sub_1AF1ADD44(v8, a1);
    if (!v19)
    {
      v20 = sub_1AF0D5194(0, v17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDB710(v20, v21, v18, v22, v23, v24, v25, v26);
      }
    }

    sub_1AF1CB108(v8, v19, v18);
    CFRelease(v8);
    *(v19 + 88) |= 4u;
  }

  else
  {
    v28 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDD58C(v28);
    }

    return 0;
  }

  return v19;
}

void sub_1AF1B727C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF170380(a1);
  if ((v4 & 1) == 0)
  {
    v6 = sub_1AF0D5194(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD5D0(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  sub_1AF170288(a1, a2);
}

uint64_t sub_1AF1B7300(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0208(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 98);
}

uint64_t sub_1AF1B7348(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 200);
}

void sub_1AF1B7390(uint64_t result)
{
  v1 = *(result + 48);
  if (v1)
  {
    sub_1AF1B73A0(result, v1);
  }
}

void sub_1AF1B73A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF1B8088(a1, a2);
  if (((v4 ^ (*(a1 + 216) == -1)) & 1) == 0)
  {
    v6 = v4;
    v7 = sub_1AF1D01D0(a2, v5);
    if (v6)
    {
      v8 = sub_1AF127288(v7, a1);
    }

    else
    {
      sub_1AF127918(v7, *(a1 + 216));
      v8 = -1;
    }

    *(a1 + 216) = v8;
    v10 = sub_1AF1D0218(a2, v9);
    v11 = *(a1 + 88);
    v12 = *(a1 + 216);

    sub_1AF14CC70(v10, v11, v12);
  }
}

float32x4_t sub_1AF1B7440(uint64_t a1, uint64_t a2)
{
  *(a1 + 272) = xmmword_1AFE201A0;
  *(a1 + 288) = xmmword_1AFE20B70;
  v3 = sub_1AF1B7558(a1, a2);
  if (!v3 || (sub_1AF16BE10(v3, (a1 + 272)) & 1) == 0)
  {
    v6 = sub_1AF1B75A0(a1, v4);
    if (v6)
    {
      v22 = 0uLL;
      v21 = 0uLL;
      if (sub_1AF1C3958(v6, 0, &v22, &v21))
      {
        v9 = v21;
        v8 = v22;
        v8.i32[3] = 1.0;
        v9.i32[3] = 1.0;
        v10.i64[0] = 0x3F0000003F000000;
        v10.i64[1] = 0x3F0000003F000000;
        *(a1 + 272) = vmulq_f32(vaddq_f32(v8, v9), v10);
        *(a1 + 288) = vmulq_f32(vsubq_f32(v9, v8), v10);
      }
    }

    v11 = sub_1AF1B75E8(a1, v7);
    if (v11)
    {
      v13 = v11;
      if (sub_1AF19CBB4(v11, v12) == 5)
      {
        if (sub_1AF19D3B0(v13, v14))
        {
          v16 = sub_1AF19CD34(v13, v15);
          if (v16)
          {
            v22 = 0uLL;
            v21 = 0uLL;
            if (sub_1AF1C3958(v16, 0, &v22, &v21))
            {
              v18 = v21;
              v17 = v22;
              v17.i32[3] = 1.0;
              v18.i32[3] = 1.0;
              v19.i64[0] = 0x3F0000003F000000;
              v19.i64[1] = 0x3F0000003F000000;
              v20 = vmulq_f32(vaddq_f32(v17, v18), v19);
              result = vmulq_f32(vsubq_f32(v18, v17), v19);
              *(a1 + 272) = v20;
              *(a1 + 288) = result;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF1B7558(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 248);
}

uint64_t sub_1AF1B75A0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 240);
}

const __CFDictionary *sub_1AF1B75E8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 221))
  {
    return sub_1AF16CEA0(a1, @"kLightKey");
  }

  else
  {
    return 0;
  }
}

void sub_1AF1B7650(float32x4_t *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = a1[3].i64[0];
  v11 = a1[15].i64[1];
  if (v11)
  {
    v12 = a1[15].i64[0];
    if (v12)
    {
      v13 = sub_1AF1B1F84(v12, a2);
    }

    else
    {
      v13 = 0;
    }

    sub_1AF16B998(v11, v13);
  }

  sub_1AF1B778C(a1, a2);
  sub_1AF1B78DC(a1, v14);
  sub_1AF1B7978(a1, 0);
  v15 = a1;
  do
  {
    v15[13].i32[3] |= 2u;
    v15 = v15[4].i64[0];
  }

  while (v15);
  if (v10)
  {
    sub_1AF1CF760(v10, 2, a1, @"model");
    sub_1AF1B73A0(a1, v10);
  }

  v16 = a1[15].i64[0];
  if (v16)
  {
    v17 = CFGetTypeID(v16);
    if (v17 == sub_1AF16EA90(v17, v18))
    {
      v19 = 2048;
LABEL_17:
      sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v10, 0, 1u);
      v21 = a1[13].i32[3];
      v20 = v19;
      goto LABEL_18;
    }
  }

  v19 = 0;
  v20 = 0;
  v21 = a1[13].i32[3];
  if ((v21 & 0x800) != 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  a1[13].i32[3] = v21 & 0xFFFFF7FF | v20;
}

void sub_1AF1B778C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 232);
  if (v10)
  {
    free(v10);
  }

  *(a1 + 232) = 0;
  *(a1 + 220) &= ~0x1000u;
  v11 = sub_1AF1B75A0(a1, a2);
  if (v11)
  {
    v13 = sub_1AF1B31B0(v11, v12);
    if (v13)
    {
      v14 = v13;
      if (CFArrayGetCount(v13) >= 1)
      {
        Count = CFArrayGetCount(v14);
        ValueAtIndex = CFArrayGetValueAtIndex(v14, Count / 2);
        v18 = sub_1AF1A09F8(ValueAtIndex, v17);
        v19 = malloc_type_malloc(12 * Count + 8, 0x100004000313F17uLL);
        *(a1 + 232) = v19;
        *v19 = Count;
        v19[2] = v18;
        *(*(a1 + 232) + 4) = 0;
        *(a1 + 220) |= 0x1000u;
        if (Count >= 1)
        {
          v20 = 0;
          v21 = (v19 + 16);
          do
          {
            v22 = CFArrayGetValueAtIndex(v14, v20);
            *(v21 - 2) = sub_1AF1A0A40(v22, v23);
            *(v21 - 1) = 0xFFFFFFFFLL;
            ++v20;
            v21 += 3;
          }

          while (Count != v20);
        }
      }
    }
  }

  sub_1AF1CF760(*(a1 + 48), 2, a1, @"model");
}

void sub_1AF1B78DC(float32x4_t *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((a1[13].i8[12] & 4) == 0)
  {
    sub_1AF1B7440(a1, a2);
  }

  if (a1[13].i32[2] != -1)
  {
    v10 = a1[3].i64[0];
    if (v10)
    {
      v11 = sub_1AF1D01D0(v10, a2);
      v12 = a1[18];
      v13[0] = a1[17];
      v13[1] = v12;
      if ((vminvq_u32(vcgezq_f32(a1[18])) & 0x80000000) != 0)
      {
        sub_1AF127390(v11, a1[13].u32[2], v13);
      }
    }
  }
}

uint64_t sub_1AF1B7978(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 48);
  if (result)
  {
    v4 = a2;
    result = sub_1AF1D01D0(result, a2);
    if (result)
    {
      if (v4)
      {
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 0x40000000;
        v6[2] = sub_1AF1BC344;
        v6[3] = &unk_1E7A7B748;
        v6[4] = result;
        return sub_1AF1B94AC(a1, v6);
      }

      else
      {
        v5 = *(a1 + 216);
        if (v5 != -1)
        {

          return sub_1AF127798(result, v5);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF1B7A3C(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 288);
  *a2 = *(a1 + 272);
  a2[1] = v2;
  return vminvq_u32(vcgezq_f32(*(a1 + 288))) >> 31;
}

float32x4_t sub_1AF1B7A68(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v5.i32[3] = 1.0;
  v6.i32[3] = 1.0;
  v7.i64[0] = 0x3F0000003F000000;
  v7.i64[1] = 0x3F0000003F000000;
  v8 = vmulq_f32(vaddq_f32(v5, v6), v7);
  v9 = vmulq_f32(vsubq_f32(v6, v5), v7);
  v10 = a5[1];
  v11 = a5[2];
  v12 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a5[3], v11, v8, 2), v10, *v8.f32, 1), *a5, v8.f32[0]);
  v12.i32[3] = v8.i32[3];
  v13 = v9;
  v13.i32[1] = v9.i32[0];
  v13.i32[2] = v9.i32[0];
  v14 = vmlaq_f32(vmlaq_f32(vmulq_f32(vabsq_f32(v10), vuzp2q_s32(vdupq_lane_s32(*v9.i8, 1), v9)), v13, vabsq_f32(*a5)), vzip2q_s32(vtrn1q_s32(v9, v9), v9), vabsq_f32(v11));
  *a3 = vsubq_f32(v12, v14);
  result = vaddq_f32(v14, v12);
  *a4 = result;
  return result;
}

uint64_t sub_1AF1B7AF0(uint64_t a1)
{
  result = *(a1 + 240);
  if (result)
  {
    result = sub_1AF1B2030(result, 0);
    if (result)
    {
      result = sub_1AF1A1270(result, v2);
      if (result)
      {
        return (sub_1AF165AE4(result, v3) & 0xFD) != 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AF1B7B34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 220);
  if ((v2 & 2) != 0)
  {
    if ((v2 & 4) != 0)
    {
      LODWORD(v4) = 0;
    }

    else
    {
      v4 = *(a1 + 240);
      if (v4)
      {
        LODWORD(v4) = sub_1AF1B209C(v4, a2);
        v2 = *(a1 + 220);
      }
    }

    v2 = v2 & 0xFFFFFFFC | v4;
    *(a1 + 220) = v2;
  }

  return v2 & 1;
}

void sub_1AF1B7B98(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v5 = *(a1 + 220);
  if (a3 != 2 || (v5 & 4) == 0)
  {
    if (a2)
    {
      v6 = a2[1];
      *(a1 + 272) = *a2;
      *(a1 + 288) = v6;
    }

    else
    {
      sub_1AF1B7440(a1, 0);
      v5 = *(a1 + 220);
    }

    if (a3 != 2)
    {
      v5 = v5 & 0xFFFFFFFB | (4 * (a3 == 1));
      *(a1 + 220) = v5;
    }

    if ((v5 & 4) != 0)
    {
      *(a1 + 220) = v5 & 0xFFFFFFFC;
    }

    sub_1AF1B78DC(a1, a2);
  }
}

uint64_t sub_1AF1B7C2C(uint64_t result, uint64_t a2)
{
  if (*(result + 216) != -1)
  {
    v2 = result;
    result = *(result + 48);
    if (result)
    {
      v4 = sub_1AF1D01D0(result, a2);
      v5 = *(v2 + 216);

      return sub_1AF1275C4(v4, v5, a2);
    }
  }

  return result;
}

uint64_t sub_1AF1B7C8C(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  if (sub_1AF1B7348(a1, a2))
  {
    v7 = 0;
  }

  else
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2000000000;
    if (sub_1AF1B7DB8(a1, v6))
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      v9 = *(a1 + 288);
      *a2 = *(a1 + 272);
      a2[1] = v9;
      v8 = vminvq_u32(vcgezq_f32(*(a1 + 288))) >> 31;
    }

    v22 = v8;
    v10 = *(a1 + 72);
    if (v10)
    {
      v11 = 0;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v14 = sub_1AF1B7E6C;
      v15 = &unk_1E7A7B660;
      v16 = &v19;
      v17 = a3;
      v18 = a2;
      do
      {
        (v14)(v13, v10, v11++);
        v10 = *(v10 + 80);
      }

      while (v10);
    }

    v7 = *(v20 + 24);
    _Block_object_dispose(&v19, 8);
  }

  return v7 & 1;
}

uint64_t sub_1AF1B7DB8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 221) & 8) != 0)
  {
    return sub_1AF1B75A0(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF1B7E14(uint64_t result, uint64_t a2)
{
  v2 = *(result + 72);
  if (v2)
  {
    v4 = 0;
    do
    {
      result = (*(a2 + 16))(a2, v2, v4++);
      v2 = *(v2 + 80);
    }

    while (v2);
  }

  return result;
}

double sub_1AF1B7E6C(void *a1, uint64_t a2)
{
  v24 = 0u;
  v25 = 0u;
  v4 = sub_1AF1B7DB8(a2, a2);
  v6 = a1[5];
  if (v4)
  {
    if (v6)
    {
      *v6 = 1;
    }
  }

  else if (sub_1AF1B7C8C(a2, &v24, v6))
  {
    *v8.i64 = sub_1AF1B7F84(a2, v7);
    v12 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v10, v9, v24, 2), v11, *v24.f32, 1), v8, v24.f32[0]);
    v12.i32[3] = v24.i32[3];
    v13 = v25;
    v13.i32[1] = v25.i32[0];
    v13.i32[2] = v25.i32[0];
    v14 = vmlaq_f32(vmlaq_f32(vmulq_f32(vabsq_f32(v11), vuzp2q_s32(vdupq_lane_s32(*v25.i8, 1), v25)), v13, vabsq_f32(v8)), vzip2q_s32(vtrn1q_s32(v25, v25), v25), vabsq_f32(v9));
    v24 = v12;
    v25 = v14;
    v15 = *(a1[4] + 8);
    if (*(v15 + 24))
    {
      v16 = a1[6];
      v17 = v16[1];
      v18 = vminnmq_f32(vsubq_f32(*v16, v17), vsubq_f32(v12, v14));
      v19 = vmaxnmq_f32(vaddq_f32(*v16, v17), vaddq_f32(v14, v12));
      v17.i64[0] = 0x3F0000003F000000;
      v17.i64[1] = 0x3F0000003F000000;
      v20 = vmulq_f32(vaddq_f32(v18, v19), v17);
      v5 = vmulq_f32(vsubq_f32(v19, v18), v17);
      *v16 = v20;
      v16[1] = v5;
    }

    else
    {
      *(v15 + 24) = 1;
      v21 = a1[6];
      v5.i64[0] = v24.i64[0];
      v22 = v25;
      *v21 = v24;
      *(v21 + 16) = v22;
    }
  }

  return *v5.i64;
}

double sub_1AF1B7F84(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v13 = sub_1AF1CBF20((a1 + 96), a2);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(a1 + 192);
  if (v17)
  {
    if (*(v17 + 124) == 0.0)
    {
      v25 = v10;
      v26 = v13;
      v23 = v12;
      v24 = v11;
      v29 = __invert_f4(*v17);
      v16 = v23;
      v15 = v24;
      v14 = v25;
      v13 = v26;
      *(v17 + 64) = v29;
      v17 = *(a1 + 192);
    }

    v18 = 0;
    v19 = *(v17 + 80);
    v20 = *(v17 + 96);
    v21 = *(v17 + 112);
    v27[0] = *(v17 + 64);
    v27[1] = v19;
    v27[2] = v20;
    v27[3] = v21;
    memset(v28, 0, sizeof(v28));
    do
    {
      v28[v18] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(v27[v18])), v14, *&v27[v18], 1), v15, v27[v18], 2), v16, v27[v18], 3);
      ++v18;
    }

    while (v18 != 4);
    v13.n128_u64[0] = *&v28[0];
  }

  return v13.n128_f64[0];
}

uint64_t sub_1AF1B8088(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 240))
  {
    return 1;
  }

  v4 = *(a1 + 220);
  if ((v4 & 0x100) != 0)
  {
    v5 = sub_1AF1B75E8(a1, a2);
    if (sub_1AF19D3B0(v5, v6))
    {
      return 1;
    }

    v4 = *(a1 + 220);
  }

  return (v4 >> 22) & 1;
}

uint64_t sub_1AF1B80E4(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[18];
  *a2 = a1[17];
  a2[1] = v2;
  v3 = vminvq_u32(vcgezq_f32(a1[18])) >> 31;
  for (i = a1[4].i64[1]; i; i = i[5].i64[0])
  {
    v18 = 0u;
    v19 = 0u;
    if (sub_1AF1B80E4(i, &v18))
    {
      *v7.i64 = sub_1AF1B7F84(i, v6);
      v11 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v9, v8, v18, 2), v10, *v18.f32, 1), v7, v18.f32[0]);
      v11.i32[3] = v18.i32[3];
      v12 = v19;
      v12.i32[1] = v19.i32[0];
      v12.i32[2] = v19.i32[0];
      v13 = vmlaq_f32(vmlaq_f32(vmulq_f32(vabsq_f32(v10), vuzp2q_s32(vdupq_lane_s32(*v19.i8, 1), v19)), v12, vabsq_f32(v7)), vzip2q_s32(vtrn1q_s32(v19, v19), v19), vabsq_f32(v8));
      v14 = a2[1];
      v15 = vminnmq_f32(vsubq_f32(v11, v13), vsubq_f32(*a2, v14));
      v16 = vmaxnmq_f32(vaddq_f32(v13, v11), vaddq_f32(*a2, v14));
      v14.i64[0] = 0x3F0000003F000000;
      v14.i64[1] = 0x3F0000003F000000;
      *a2 = vmulq_f32(vaddq_f32(v15, v16), v14);
      a2[1] = vmulq_f32(vsubq_f32(v16, v15), v14);
      LOBYTE(v3) = 1;
    }
  }

  return v3 & 1;
}

uint64_t sub_1AF1B81E4(float32x4_t *a1, uint64_t a2, float32x4_t *a3)
{
  v4 = a2;
  if ((a1[13].i8[14] & 0x38) == 0 && (v14 = a1[3].i64[0]) != 0 && (v15 = sub_1AF1D01D0(v14, a2)) != 0)
  {
    *a3 = sub_1AF128598(v15, a1, v4);
    a3[1] = v16;
    return vminvq_u32(vcgezq_f32(v16)) >> 31;
  }

  else
  {
    result = sub_1AF1B80E4(a1, a3);
    if (result)
    {
      if ((v4 & 1) == 0)
      {
        v8 = sub_1AF1B9B04(a1, v7);
        v9 = *(v8 + 16);
        v10 = *(v8 + 32);
        v11 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(*(v8 + 48), v10, *a3, 2), v9, *a3->f32, 1), *v8, COERCE_FLOAT(*a3));
        v11.i32[3] = HIDWORD(*a3);
        v12 = a3[1];
        v12.i32[1] = v12.i32[0];
        v12.i32[2] = a3[1];
        v13 = vmlaq_f32(vmlaq_f32(vmulq_f32(vabsq_f32(v9), vuzp2q_s32(vdupq_lane_s32(*a3[1].f32, 1), a3[1])), v12, vabsq_f32(*v8)), vzip2q_s32(vtrn1q_s32(a3[1], a3[1]), a3[1]), vabsq_f32(v10));
        *a3 = v11;
        a3[1] = v13;
        return 1;
      }
    }
  }

  return result;
}

double sub_1AF1B82C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if ((sub_1AF1B7348(a1, a2) & 1) == 0)
  {
    v8 = *(a1 + 48);
    if (!v8)
    {
      goto LABEL_9;
    }

    v9 = sub_1AF1D01D0(v8, v6);
    if (!v9)
    {
      goto LABEL_9;
    }

    if (v4)
    {
      v10 = sub_1AF128598(v9, a1, 1);
LABEL_8:
      *a3 = v10;
      *(a3 + 16) = v11;
LABEL_9:
      v7 = vcgezq_f32(*(a3 + 16));
      v7.i32[0] = vminvq_u32(v7);
      return *v7.i64;
    }

    v12 = *(a1 + 216);
    if (v12 != -1)
    {
      v10.n128_f64[0] = sub_1AF1284D0(v9, v12, 1);
      goto LABEL_8;
    }

    v7.i64[0] = 0;
    *a3 = xmmword_1AFE201A0;
    *(a3 + 16) = xmmword_1AFE20B70;
  }

  return *v7.i64;
}

uint64_t sub_1AF1B8374(uint64_t a1, uint64_t a2)
{
  if (sub_1AF1B75A0(a1, a2))
  {
    v4 = 1;
  }

  else
  {
    v4 = 8 * (sub_1AF1B83E8(a1, v3) != 0);
  }

  v5 = sub_1AF1B75E8(a1, v3);
  if (v5 && sub_1AF19CBB4(v5, v6) == 5)
  {
    v4 |= 4u;
  }

  if (sub_1AF1B8420(a1, v6))
  {
    return v4 | 0x10;
  }

  else
  {
    return v4;
  }
}

const __CFDictionary *sub_1AF1B83E8(_BOOL8 a1, uint64_t a2)
{
  v2 = sub_1AF1BC094(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v5 = v2;
  if ((sub_1AF16ACC0(v2, v3, v4) & 1) == 0)
  {
    return 0;
  }

  return v5;
}

uint64_t sub_1AF1B8420(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 222) >> 7;
}

uint64_t sub_1AF1B846C(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73ABD8 != -1)
  {
    sub_1AFDDD648();
  }

  return qword_1ED73ABD0;
}

double sub_1AF1B84A4()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73ABD0 = v0;
  v2 = sub_1AF16CB64(v0, v1);
  sub_1AF1DCFAC(v0, v2);
  sub_1AF1DD02C(@"hidden", 200, 3, 0);
  sub_1AF1DD02C(@"opacity", 204, 1, 0);
  sub_1AF1DD018();
  unk_1ED72E7C8 = xmmword_1F24E8020;
  xmmword_1ED72E7B0 = xmmword_1F24E8030;
  unk_1ED72E7D8 = xmmword_1F24E8040;
  qword_1ED72E7C0 = sub_1AF1BC5F4;
  unk_1ED72E7E8 = *&off_1F24E8050;
  qword_1ED72E7F8 = qword_1F24E8060;
  unk_1ED72E800 = sub_1AF1BDAF8;
  result = *&xmmword_1F24E8068;
  unk_1ED72E818 = xmmword_1F24E8068;
  return result;
}

uint64_t sub_1AF1B8588(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73ABD8 != -1)
  {
    sub_1AFDDD648();
  }

  v2 = sub_1AF0D160C(qword_1ED73ABD0, 0x120uLL);
  sub_1AF1CCEE0(v2 + 96);
  *(v2 + 204) = 1065353216;
  *(v2 + 200) = 0;
  v3 = *(v2 + 220) & 0xFFFBFFD1 | 0x4002A;
  *(v2 + 208) = 1;
  *(v2 + 216) = -1;
  *(v2 + 220) = v3;
  *(v2 + 88) = -1;
  *(v2 + 272) = xmmword_1AFE201A0;
  *(v2 + 288) = xmmword_1AFE20B70;
  return v2;
}

uint64_t sub_1AF1B8624(_BOOL8 a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDD137C(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF1B8588(a1, a2);
  v11 = *(v2 + 112);
  *(v10 + 96) = *(v2 + 96);
  *(v10 + 112) = v11;
  v12 = *(v2 + 176);
  v14 = *(v2 + 128);
  v13 = *(v2 + 144);
  *(v10 + 160) = *(v2 + 160);
  *(v10 + 176) = v12;
  *(v10 + 128) = v14;
  *(v10 + 144) = v13;
  if (sub_1AF1B8774(v2, v15))
  {
    v17 = sub_1AF1B887C(v2, v16);
    sub_1AF1B87C4(v10, v18, v17, v19, v20, v21);
  }

  v22 = sub_1AF1B8A30(v2, v16);
  sub_1AF1B88DC(v10, v23, v22);
  v25 = sub_1AF1B7348(v2, v24);
  sub_1AF1B8A78(v10, v25);
  v26 = *(v2 + 240);
  if (v26)
  {
    sub_1AF1B8AE4(v10, v26);
  }

  sub_1AF16D160(v2, v10);
  v27 = *(v10 + 220) & 0xFFFFFDFF | (((*(v2 + 220) >> 9) & 1) << 9);
  *(v10 + 220) = v27;
  v28 = v27 & 0xFFFFDFFF | (((*(v2 + 220) >> 13) & 1) << 13);
  *(v10 + 220) = v28;
  v29 = v28 & 0xFFFFF7FF | (((*(v2 + 220) >> 11) & 1) << 11);
  *(v10 + 220) = v29;
  v30 = v29 & 0xFFFFFEFF | (((*(v2 + 220) >> 8) & 1) << 8);
  *(v10 + 220) = v30;
  v31 = *(v2 + 248);
  if (v31)
  {
    v31 = sub_1AF16B5C4(v31, v10);
    v30 = *(v10 + 220);
  }

  *(v10 + 248) = v31;
  v32 = v30 & 0xFFFFFBFF | (((*(v2 + 220) >> 10) & 1) << 10);
  *(v10 + 220) = v32;
  v33 = *(v2 + 288);
  *(v10 + 272) = *(v2 + 272);
  *(v10 + 288) = v33;
  *(v10 + 220) = v32 & 0xFFFFFFFB | (4 * ((*(v2 + 220) >> 2) & 1));
  *(v10 + 208) = *(v2 + 208);
  return v10;
}

BOOL sub_1AF1B8774(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 192) != 0;
}

uint64_t sub_1AF1B87C4(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (!a1)
  {
    v24 = a6;
    v20 = a4;
    v22 = a5;
    v18 = a3;
    v7 = sub_1AF0D5194(0, a2);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT);
    a3 = v18;
    a4 = v20;
    a5 = v22;
    a6 = v24;
    if (v8)
    {
      sub_1AFDD137C(v7, a2, v9, v10, v11, v12, v13, v14);
      a3 = v18;
      a4 = v20;
      a5 = v22;
      a6 = v24;
    }
  }

  v15 = *(a1 + 192);
  if (!v15)
  {
    v25 = a6;
    v21 = a4;
    v23 = a5;
    v19 = a3;
    v15 = sub_1AF288058(0x80uLL);
    a3 = v19;
    a4 = v21;
    a5 = v23;
    a6 = v25;
    *(a1 + 192) = v15;
  }

  *v15 = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v16 = *(a1 + 192);
  if (v16)
  {
    *(v16 + 124) = 0;
  }

  return sub_1AF1B9F8C(a1, a2);
}

__n128 sub_1AF1B887C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 192);
  if (!v11)
  {
    v11 = MEMORY[0x1E69E9B18];
  }

  return *v11;
}

void sub_1AF1B88DC(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = *(result + 204);
  if (v13 != a3)
  {
    if (a3 >= 1.0 && v13 < 1.0)
    {
      *(result + 204) = a3;
      sub_1AF1BA81C(result, 1);
    }

    else
    {
      if (a3 >= 1.0)
      {
        *(result + 204) = a3;
        sub_1AF1BA81C(result, 0);
        goto LABEL_15;
      }

      *(result + 204) = a3;
      sub_1AF1BA81C(result, v13 >= 1.0);
      if (v13 < 1.0)
      {
        goto LABEL_15;
      }
    }

    v15 = *(result + 48);
    sub_1AF1CF760(v15, 4, result, 0);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = sub_1AF1BDDBC;
    v16[3] = &unk_1E7A7B820;
    v16[4] = v15;
    sub_1AF1B94AC(result, v16);
LABEL_15:
    if (a3 == 0.0 || v13 == 0.0)
    {
      sub_1AF1B7978(result, 1);
    }
  }
}

float sub_1AF1B8A30(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 204);
}

void sub_1AF1B8A78(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 200) != v2)
  {
    *(result + 200) = v2;
    sub_1AF1BAA04(result, v2 ^ 1u);
  }
}

void sub_1AF1B8AE4(float32x4_t *a1, void *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = a1[3].i64[0];
  v12 = sub_1AF1B75A0(a1, a2);
  if (v12)
  {
    v14 = v12;
    sub_1AF1B37C0(v12, a1);
    sub_1AF1C3A90(v14, v11);
  }

  v15 = a1[15].i64[0];
  if (v15 != a2)
  {
    if (v15)
    {
      CFRelease(v15);
      a1[15].i64[0] = 0;
    }

    if (a2)
    {
      v16 = CFRetain(a2);
    }

    else
    {
      v16 = 0;
    }

    a1[15].i64[0] = v16;
  }

  if (a2)
  {
    sub_1AF1B368C(a2, a1);
    sub_1AF1C3CB4(a2, v11);
  }

  sub_1AF1B7650(a1, v13);
}

uint64_t sub_1AF1B8BB0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = sub_1AF1B8624(a1, a2);
  v12 = v11;
  if (v2)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v17 = sub_1AF1B8C94;
    v18 = &unk_1E7A7B6A0;
    v20 = v2;
    v19 = v11;
    v13 = *(a1 + 72);
    if (v13)
    {
      v14 = 0;
      do
      {
        (v17)(v16, v13, v14++);
        v13 = *(v13 + 80);
      }

      while (v13);
    }
  }

  return v12;
}

void sub_1AF1B8C94(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF1B8BB0(a2, *(a1 + 40));
  sub_1AF1B8CE8(*(a1 + 32), v3);

  CFRelease(v3);
}

uint64_t sub_1AF1B8CE8(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = *(a1 + 72);
    if (!v4)
    {
      *(a1 + 72) = CFRetain(cf);
      return sub_1AF1B9664(a1, cf);
    }

    goto LABEL_7;
  }

  v5 = sub_1AF0D5194(a1, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDD65C(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    do
    {
LABEL_7:
      v13 = v4;
      v4 = *(v4 + 80);
    }

    while (v4);
    if (cf)
    {
      *(v13 + 80) = CFRetain(cf);
    }
  }

  return sub_1AF1B9664(a1, cf);
}

__n128 *sub_1AF1B8D80(const void *a1, const void *a2, unsigned __int8 a3)
{
  v5 = sub_1AF1B2BD0(a1, a2);
  v7 = v5;
  if (a2)
  {
    v8 = sub_1AF1B2C1C(v5, v6);
    sub_1AF1A5208(v8, a2);
  }

  v9 = sub_1AF170B68(v7);
  sub_1AF170B70(v7, v9 & 0xFFFFFF00);
  sub_1AF1709B8(v7, a3);
  v11 = sub_1AF1710CC(v7, v10);
  CFRetain(v11);
  sub_1AF1709B8(v7, 0);
  sub_1AF1B2C80(v7, v11);
  CFRelease(v11);
  return v7;
}

float32x4_t *sub_1AF1B8E1C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a2)
  {
    v4 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD6D4(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = sub_1AF1B8BB0(a1, 0);
  v14 = sub_1AF1B75A0(v12, v13);
  if (v14)
  {
    v16 = v14;
    v17 = sub_1AF1B9158(a1, v15);
    v18 = sub_1AF1B8D80(v16, 0, v2);
    sub_1AF1B8AE4(v12, v18);
    CFRelease(v18);
    if (v17)
    {
      v60 = v12;
      v20 = sub_1AF1B64A4(v17, v19);
      v22 = sub_1AF1B1F84(v18, v21);
      sub_1AF1B66E4(v20, v22);
      v58 = v20;
      v23 = sub_1AF15B294(v20);
      v25 = sub_1AF1B1F84(v16, v24);
      if (sub_1AF1B58F8(v23, v26))
      {
        sub_1AF1B526C(v23, v25, 0, 0);
      }

      v59 = v17;
      if (sub_1AF1B4CCC(v23))
      {
        sub_1AF1B5708(v23, v25, 0, 0);
      }

      v28 = sub_1AF1B2C1C(v16, v27);
      v29 = sub_1AF1A516C(v28, 0);
      v30 = sub_1AF15B294(v23);
      Count = CFArrayGetCount(v30);
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v30, i);
          v35 = sub_1AF1B8D80(ValueAtIndex, v29, v2);
          CFArrayAppendValue(Mutable, v35);
          CFRelease(v35);
        }
      }

      sub_1AF1B4918(v23, Mutable, 0);
      v12 = v60;
      sub_1AF1B91A8(v60, v58);
      CFRelease(v58);
      v17 = v59;
    }

    v36 = *(a1 + 248);
    if (v36)
    {
      v37 = sub_1AF16BB4C(v36, v19);
      if (v37)
      {
        v38 = v37;
        v39 = sub_1AF15B294(v37);
        v41 = sub_1AF1B2C1C(v16, v40);
        v43 = sub_1AF1A2EDC(v41, v42);
        v45 = [VFXModel __createCFObject]_0(v43, v44);
        sub_1AF1B2C80(v45, v43);
        if (v43)
        {
          CFRelease(v43);
        }

        if (v17)
        {
          v46 = sub_1AF170B68(v45);
          sub_1AF170B70(v45, v46 & 0xFFFFFF00);
        }

        sub_1AF1709B8(v45, v2);
        v48 = sub_1AF1710CC(v45, v47);
        v49 = sub_1AF1C7594(v38);
        v50 = v49;
        if (v49)
        {
          LOWORD(v49) = CFArrayGetCount(v49);
        }

        v51 = sub_1AF1C7134(v48, v49);
        CFRelease(v45);
        if (v51)
        {
          v52 = sub_1AF1BA1FC(v39);
          sub_1AF1C7934(v51, *v52, v52[1], v52[2], v52[3]);
          v53 = sub_1AF15B364(v39);
          sub_1AF1C759C(v51, v53);
          v55 = sub_1AF1C8C0C(v51, v54);
          CFRelease(v51);
          if (v50)
          {
            Copy = CFArrayCreateCopy(0, v50);
            sub_1AF1C8DC8(v55, Copy);
            CFRelease(Copy);
          }

          sub_1AF1B92D8(v12, v55);
          CFRelease(v55);
        }
      }
    }
  }

  return v12;
}

uint64_t sub_1AF1B9158(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  result = *(a1 + 248);
  if (result)
  {
    return sub_1AF16BA50(result, a2);
  }

  return result;
}

void sub_1AF1B91A8(float32x4_t *a1, uint64_t *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = sub_1AF1B9158(a1, a2);
  if (v11 != a2)
  {
    v13 = v11;
    if (v11)
    {
      v14 = sub_1AF1C3F64(a1, v12);
      sub_1AF1C3A90(v13, v14);
    }

    if (a2)
    {
      v15 = a1[3].i64[0];
      if (v15)
      {
        sub_1AF1C3CB4(a2, v15);
      }

      v17 = &a1[15].i64[1];
      v16 = a1[15].i64[1];
      if (!v16)
      {
        v16 = sub_1AF16B520(a1, v15);
        a1[15].i64[1] = v16;
        if (!v16)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v17 = &a1[15].i64[1];
      v16 = a1[15].i64[1];
      if (!v16)
      {
LABEL_17:
        if (sub_1AF1C3F64(a1, v12))
        {
          sub_1AF1BE334(@"kCFXNotificationEntityAttributeDidChange", a1, @"kDeformerStackKey", 1u);
        }

        sub_1AF1B7650(a1, v19);
        return;
      }
    }

    sub_1AF16BA98(v16, a2);
    if (sub_1AF16B6E4(v16, v18) && *v17)
    {
      CFRelease(*v17);
      *v17 = 0;
    }

    goto LABEL_17;
  }
}

uint64_t sub_1AF1B92C8(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 248);
  if (result)
  {
    return sub_1AF16BB4C(result, a2);
  }

  return result;
}

void sub_1AF1B92D8(float32x4_t *a1, uint64_t *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = a1[15].i64[1];
  if (!v11)
  {
    if (!a2)
    {
      return;
    }

LABEL_12:
    v17 = a1[3].i64[0];
    if (v17)
    {
      sub_1AF1C3CB4(a2, v17);
    }

    sub_1AF1C8F60(a2, a1);
    v16 = a1[15].i64[1];
    if (!v16)
    {
      v16 = sub_1AF16B520(a1, v18);
      a1[15].i64[1] = v16;
      if (!v16)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_16;
  }

  v12 = sub_1AF16BB4C(v11, a2);
  if (v12 == a2)
  {
    return;
  }

  v14 = v12;
  if (v12)
  {
    v15 = sub_1AF1C3F64(a1, v13);
    sub_1AF1C3A90(v14, v15);
    sub_1AF1C8F60(v14, 0);
  }

  if (a2)
  {
    goto LABEL_12;
  }

  v16 = a1[15].i64[1];
  if (v16)
  {
LABEL_16:
    sub_1AF16BB94(v16, a2);
    if (sub_1AF16B6E4(v16, v19))
    {
      v20 = a1[15].i64[1];
      if (v20)
      {
        CFRelease(v20);
        a1[15].i64[1] = 0;
      }
    }
  }

LABEL_19:
  if (sub_1AF1C3F64(a1, v13))
  {
    sub_1AF1BE334(@"kCFXNotificationEntityAttributeDidChange", a1, @"kDeformerStackKey", 1u);
  }

  sub_1AF1B7650(a1, v21);
}

uint64_t sub_1AF1B9410(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (!v1)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    result = (result + 1);
    v1 = *(v1 + 80);
  }

  while (v1);
  return result;
}

uint64_t sub_1AF1B9434(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v2 = *(a1 + 72);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    (*(a2 + 16))(a2, v2, v4, &v6);
    result = v6;
    if (v6)
    {
      break;
    }

    ++v4;
    v2 = *(v2 + 80);
  }

  while (v2);
  return result;
}

uint64_t sub_1AF1B94AC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = (*(a2 + 16))(a2, result);
    if (v4 == 2)
    {
      return 1;
    }

    v5 = v3;
    while (1)
    {
      if (v4 == 1 || (v6 = v5[9]) == 0)
      {
        if (v5 == v3)
        {
          return 0;
        }

        while (1)
        {
          v6 = v5[10];
          if (v6)
          {
            break;
          }

          v5 = v5[8];
          if (v5)
          {
            v7 = v5 == v3;
          }

          else
          {
            v7 = 1;
          }

          if (v7)
          {
            return 0;
          }
        }
      }

      v4 = (*(a2 + 16))(a2, v6);
      v5 = v6;
      if (v4 == 2)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1AF1B955C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  return sub_1AF16CBEC(a1, a2);
}

uint64_t sub_1AF1B95A8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = result;
    do
    {
LABEL_3:
      v5 = v4;
      if (*(v4 + 200))
      {
        break;
      }

      v6 = (*(a2 + 16))(a2, v4);
      if (v6 == 2)
      {
        return 1;
      }

      v4 = v5[9];
    }

    while (v6 != 1 && v4 != 0);
    while (v5 != v3)
    {
      v4 = v5[10];
      if (v4)
      {
        goto LABEL_3;
      }

      v5 = v5[8];
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF1B963C(uint64_t a1, unsigned int a2)
{
  result = *(a1 + 72);
  if (a2 && result)
  {
    v3 = 1;
    do
    {
      result = *(result + 80);
      if (v3 >= a2)
      {
        break;
      }

      ++v3;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1AF1B9664(uint64_t a1, uint64_t a2)
{
  *(a2 + 64) = a1;
  v4 = sub_1AF1B9F8C(a2, a2);
  if (a1)
  {
    if ((*(a2 + 220) & 3) != 0)
    {
      v6 = a1;
      do
      {
        *(v6 + 220) |= 2u;
        v6 = *(v6 + 64);
      }

      while (v6);
      if (!a2)
      {
        v7 = sub_1AF0D5194(v4, v5);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDD137C(v7, v8, v9, v10, v11, v12, v13, v14);
        }
      }
    }
  }

  v15 = *(a2 + 64);
  if (v15)
  {
    v16 = *(a2 + 220) & 0xFFC7FFFF | (((*(v15 + 220) >> 19) & 7) << 19);
    *(a2 + 220) = v16;
  }

  else
  {
    v16 = *(a2 + 220);
  }

  sub_1AF1BDCAC(a2, (v16 >> 19) & 7);
  sub_1AF1BA81C(a2, 0);
  v17 = *(a2 + 48);
  v18 = *(a1 + 48);
  if (v18)
  {
    if (v17 != v18)
    {
      sub_1AF1C3A90(a2, v17);
      sub_1AF1C3CB4(a2, v18);
    }
  }

  else
  {
    sub_1AF1C3A90(a2, v17);
  }

  return sub_1AF1BAA04(a2, 1);
}

uint64_t sub_1AF1B9764(_BOOL8 a1, void *cf, int a3)
{
  v5 = a1;
  if (cf[10])
  {
    v6 = sub_1AF0D5194(a1, cf);
    a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDD74C(v6, cf, v7, v8, v9, v10, v11, v12);
    }
  }

  if (cf[8])
  {
    v13 = sub_1AF0D5194(a1, cf);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD7C4(v13, v14, v15, v16, v17, v18, v19, v20);
      if (a3)
      {
        goto LABEL_7;
      }

LABEL_11:
      cf[10] = *(v5 + 72);
      *(v5 + 72) = cf;
      CFRetain(cf);
      return sub_1AF1B9664(v5, cf);
    }
  }

  if (!a3)
  {
    goto LABEL_11;
  }

LABEL_7:
  v21 = *(v5 + 72);
  v22 = (a3 - 1);
  if (a3 != 1)
  {
    do
    {
      v21 = *(v21 + 80);
      --v22;
    }

    while (v22);
  }

  v23 = *(v21 + 80);
  *(v21 + 80) = cf;
  CFRetain(cf);
  cf[10] = v23;
  return sub_1AF1B9664(v5, cf);
}

uint64_t sub_1AF1B9838(_BOOL8 a1, void *cf, uint64_t a3)
{
  v5 = a1;
  if (cf[8])
  {
    v6 = sub_1AF0D5194(a1, cf);
    a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDD7C4(v6, cf, v7, v8, v9, v10, v11, v12);
    }
  }

  if (!cf[10] || (v13 = sub_1AF0D5194(a1, cf), !(a1 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))))
  {
    if (a3)
    {
      goto LABEL_7;
    }

LABEL_12:
    cf[10] = *(v5 + 72);
    *(v5 + 72) = cf;
    CFRetain(cf);
    return sub_1AF1B9664(v5, cf);
  }

  sub_1AFDDD74C(v13, cf, v14, v15, v16, v17, v18, v19);
  if (!a3)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (*(a3 + 64) != v5)
  {
    v20 = sub_1AF0D5194(a1, cf);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD83C(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  v28 = *(a3 + 80);
  *(a3 + 80) = cf;
  CFRetain(cf);
  cf[10] = v28;
  return sub_1AF1B9664(v5, cf);
}

void sub_1AF1B9920(uint64_t cf, uint64_t a2)
{
  *&v15[5] = *MEMORY[0x1E69E9840];
  v2 = *(cf + 64);
  if (v2)
  {
    v3 = cf;
    v4 = *(v2 + 72);
    if (v4 == cf)
    {
      *(v2 + 72) = *(cf + 80);
    }

    else
    {
      if (!v4)
      {
        v5 = sub_1AF0D5194(cf, a2);
        cf = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT);
        if (cf)
        {
          sub_1AFDDD8B4(v5, a2, v6, v7, v8, v9, v10, v11);
        }
      }

      for (i = v4[10]; i != v3; i = v4[10])
      {
        v4 = i;
        if (!i)
        {
          v13 = sub_1AF0D5194(cf, a2);
          cf = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
          if (cf)
          {
            sub_1AFDDD92C(v14, v15, v13);
          }
        }
      }

      v4[10] = v3[10];
    }

    v3[10] = 0;
    v3[8] = 0;
    sub_1AF1C3A90(v3, v3[6]);
    CFRelease(v3);
  }
}

uint64_t sub_1AF1B9A34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  v3 = v2 == 0;
  v4 = v2 == 0;
  v5 = 0;
  while (!v3 && v2 != a2)
  {
    ++v5;
    v2 = *(v2 + 80);
    v3 = v2 == 0;
    v4 = v2 == 0;
  }

  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1AF1B9A6C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 64);
}

__n128 sub_1AF1B9AB4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(sub_1AF1B9B04(a1, a2) + 48);
}

uint64_t sub_1AF1B9B04(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 48);
  if (!v10)
  {
    return sub_1AF1CC1BC(a1 + 96, a2);
  }

  v11 = sub_1AF1D0218(v10, a2);
  if (!v11)
  {
    v23 = sub_1AF0D5194(0, v12);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_1AF0CE000, v23, OS_LOG_TYPE_DEFAULT, "Warning: CFXNodeGetWorldMatrixPtr - no transform tree", v24, 2u);
    }

    return sub_1AF1CC1BC(a1 + 96, a2);
  }

  v13 = v11;
  if (*(a1 + 88) == -1)
  {
    v14 = sub_1AF0D5194(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD97C(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  return sub_1AF14CD4C(v13, *(a1 + 88));
}

double sub_1AF1B9BEC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF1B9B04(a1, a2);
  v11 = *(v10 + 16);
  v12 = *(v10 + 32);
  v13 = vmulq_f32(*v10, *v10);
  v14 = vmulq_f32(v11, v11);
  v15 = vmulq_f32(v12, v12);
  v16 = vzip2q_s32(v13, v15);
  v17 = vzip1q_s32(vzip1q_s32(v13, v15), v14);
  v18 = vtrn2q_s32(v13, v14);
  v18.i32[2] = v15.i32[1];
  v19 = vaddq_f32(vzip1q_s32(v16, vdupq_laneq_s32(v14, 2)), vaddq_f32(v17, v18));
  v18.i64[0] = 0x80000000800000;
  v18.i64[1] = 0x80000000800000;
  v20 = vcgeq_f32(v18, v19);
  v19.i32[3] = 0;
  v21 = vrsqrteq_f32(v19);
  v22 = vmulq_f32(v21, vrsqrtsq_f32(v19, vmulq_f32(v21, v21)));
  v23 = v20;
  v23.i32[3] = 0;
  v24 = vbslq_s8(vcltzq_s32(v23), v19, vmulq_f32(v22, vrsqrtsq_f32(v19, vmulq_f32(v22, v22))));
  v25 = vmulq_n_f32(*v10, v24.f32[0]);
  v26 = vmulq_lane_f32(v11, *v24.f32, 1);
  v27 = vmulq_laneq_f32(v12, v24, 2);
  v28 = vuzp1q_s32(v27, v27);
  v29 = vuzp1q_s32(v26, v26);
  v30 = v25;
  if (v20.i32[0])
  {
    v31 = vmlaq_f32(vmulq_f32(vextq_s8(v28, v27, 0xCuLL), vnegq_f32(v26)), v27, vextq_s8(v29, v26, 0xCuLL));
    v30 = vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL);
  }

  v32 = vuzp1q_s32(v25, v25);
  v33 = v26;
  if (v20.i32[1])
  {
    v34 = vmlaq_f32(vmulq_f32(vextq_s8(v32, v25, 0xCuLL), vnegq_f32(v27)), v25, vextq_s8(v28, v27, 0xCuLL));
    v33 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
  }

  if (v20.i32[2])
  {
    v35 = vmlaq_f32(vmulq_f32(vextq_s8(v29, v26, 0xCuLL), vnegq_f32(v25)), v26, vextq_s8(v32, v25, 0xCuLL));
    v27 = vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL);
  }

  v36 = (*v30.i32 + *&v33.i32[1]) + v27.f32[2];
  if (v36 > 0.0)
  {
    v37 = sqrtf(v36 + 1.0);
    *v38.f32 = vsub_f32(*&vzip2q_s32(v33, vuzp1q_s32(v33, v27)), *&vtrn2q_s32(v27, vzip2q_s32(v27, v30)));
    v38.f32[2] = *&v30.i32[1] - *v33.i32;
    v38.f32[3] = v37 * v37;
    v39 = 0.5 / v37;
LABEL_12:
    *&result = vmulq_n_f32(v38, v39).u64[0];
    return result;
  }

  if (*v30.i32 < *&v33.i32[1] || *v30.i32 < v27.f32[2])
  {
    if (*&v33.i32[1] <= v27.f32[2])
    {
      v48 = vzip2q_s32(v30, v33).u64[0];
      v49 = __PAIR64__(v30.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v27.f32[2] + 1.0) - *v30.i32) - *&v33.i32[1])));
      v50 = vdup_lane_s32(*v33.i8, 0);
      v51 = vsub_f32(*v30.i8, v50);
      v50.i32[0] = v49.i32[0];
      v50.i32[0] = vmul_f32(v49, v50).u32[0];
      v50.i32[1] = v51.i32[1];
      *v38.f32 = vadd_f32(v48, *v27.f32);
      *&v38.u32[2] = v50;
      v39 = 0.5 / v49.f32[0];
      goto LABEL_12;
    }

    v43 = sqrtf(((*&v33.i32[1] + 1.0) - *v30.i32) - v27.f32[2]);
    v47.f32[0] = *&v30.i32[1] + *v33.i32;
    v42 = vzip2q_s32(v30, v33).u64[0];
    v47.f32[1] = v43 * v43;
    *&v47.u32[2] = vext_s8(vadd_f32(*v27.f32, v42), vsub_f32(*v27.f32, v42), 4uLL);
  }

  else
  {
    v43 = sqrtf(((*v30.i32 + 1.0) - *&v33.i32[1]) - v27.f32[2]);
    v47.f32[0] = v43 * v43;
    v44 = *&v30.i32[1] + *v33.i32;
    v45 = vzip2q_s32(v30, v33).u64[0];
    LODWORD(v46) = vadd_f32(v45, *v27.f32).u32[0];
    HIDWORD(v46) = vsub_f32(v45, *&v27).i32[1];
    v47.f32[1] = v44;
    v47.i64[1] = v46;
  }

  *&result = vmulq_n_f32(v47, 0.5 / v43).u64[0];
  return result;
}

uint64_t sub_1AF1B9E68(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 48);
  if (!v10)
  {
    return sub_1AF1CC1BC(a1 + 96, a2);
  }

  v11 = sub_1AF1D0218(v10, a2);
  v13 = v11;
  if (*(a1 + 88) == -1)
  {
    v14 = sub_1AF0D5194(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD97C(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  return sub_1AF14CE1C(v13, *(a1 + 88));
}

void sub_1AF1B9F10(__n128 *a1, float32x4_t a2)
{
  v3 = vceqq_f32(sub_1AF1CCB30(a1 + 6), a2);
  v3.i32[3] = v3.i32[2];
  if ((vminvq_u32(v3) & 0x80000000) == 0)
  {
    sub_1AF1CCB38(a1 + 6, a2);

    sub_1AF1B9F8C(a1, v4);
  }
}

uint64_t sub_1AF1B9F8C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48);
  if (v2)
  {
    v3 = result;
    v4 = sub_1AF1D0218(*(result + 48), a2);
    if (v4 && *(v3 + 88) != -1)
    {
      v6 = v4;
      *&v7 = sub_1AF1B7F84(v3, v5);
      v15[0] = v7;
      v15[1] = v8;
      v15[2] = v9;
      v15[3] = v10;
      sub_1AF14CB08(v6, *(v3 + 88), v15);
    }

    v11 = sub_1AF1D0140(v2, v5);
    if (v11)
    {
      sub_1AF143F74(v11, v3);
    }

    v13 = sub_1AF1D00B0(v2, v12);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = sub_1AF1BDD24;
    v14[3] = &unk_1E7A7B7E0;
    v14[4] = v13;
    return sub_1AF1B94AC(v3, v14);
  }

  return result;
}

void sub_1AF1BA078(__n128 *a1, float32x4_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, float32x4_t a9)
{
  v11 = vceqq_f32(sub_1AF1CCB48(a1 + 6, a3, *a2.i64, a4, a5, a6, a7, a8, a9), a2);
  v11.i32[3] = v11.i32[2];
  if ((vminvq_u32(v11) & 0x80000000) == 0)
  {
    sub_1AF1CCB7C(&a1[6], v10, a2);

    sub_1AF1B9F8C(a1, v12);
  }
}

uint64_t sub_1AF1BA104(__n128 *a1, uint64_t a2, __n128 a3)
{
  sub_1AF1CCAD8(a1 + 6, a2, a3);

  return sub_1AF1B9F8C(a1, v4);
}

uint64_t sub_1AF1BA148(__n128 *a1, uint64_t a2, __n128 a3)
{
  sub_1AF1CC980(a1 + 6, a2, a3);

  return sub_1AF1B9F8C(a1, v4);
}

void sub_1AF1BA184(simd_float4 *a1, __n128 a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, float32x4_t a9)
{
  *v11.i64 = sub_1AF1CC1F0(a1 + 6, a3, a2.n128_f64[0], a4, a5, a6, a7, a8, a9);
  if ((vminvq_u32(vceqq_f32(v11, a2)) & 0x80000000) == 0)
  {
    sub_1AF1CC674(&a1[6], a2, v10);

    sub_1AF1B9F8C(a1, v12);
  }
}

uint64_t sub_1AF1BA204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1AF1CBF04(a1 + 96, a2);

  return sub_1AF1B9F8C(a1, v9);
}

double sub_1AF1BA240(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  *&result = sub_1AF1CBF20((a1 + 96), a2).n128_u64[0];
  return result;
}

double sub_1AF1BA28C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 192);
  if (v11)
  {
    v12 = *(v11 + 48);
  }

  else
  {
    *&v12 = 0;
  }

  return *&v12;
}

uint64_t sub_1AF1BA2E4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = a3;
  if (!a1)
  {
    v5 = sub_1AF0D5194(0, a2);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT);
    v3 = a3;
    if (v6)
    {
      sub_1AFDD137C(v5, a2, v7, v8, v9, v10, v11, v12);
      v3 = a3;
    }
  }

  v13 = *(a1 + 192);
  if (v13)
  {
    v3.n128_u32[3] = v13[3].n128_u32[3];
    v13[3] = v3;
  }

  else
  {
    v3.n128_u32[3] = 1.0;
    sub_1AF1B87C4(a1, a2, xmmword_1AFE21C60, unk_1AFE21C70, xmmword_1AFE21C80, v3);
  }

  v14 = *(a1 + 192);
  if (v14)
  {
    *(v14 + 124) = 0;
  }

  return sub_1AF1B9F8C(a1, a2);
}

uint64_t sub_1AF1BA38C(_BOOL8 a1, uint64_t a2)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD128C(v4, a2, v5, v6, v7, v8, v9, v10);
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
    sub_1AFDD7F38(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 0x40000000;
  v21[2] = sub_1AF1BA490;
  v21[3] = &unk_1E7A7B6C8;
  v21[4] = &v22;
  v21[5] = a2;
  sub_1AF1B94AC(v3, v21);
  v19 = v23[3];
  _Block_object_dispose(&v22, 8);
  return v19;
}

uint64_t sub_1AF1BA490(uint64_t a1, uint64_t a2)
{
  result = sub_1AF1B955C(a2, a2);
  if (result)
  {
    if (CFEqual(result, *(a1 + 40)))
    {
      *(*(*(a1 + 32) + 8) + 24) = a2;
      return 2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFMutableArrayRef sub_1AF1BA4E4(_BOOL8 a1, __CFString *a2, char a3)
{
  v5 = a1;
  if (!a1 && (v6 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD128C(v6, a2, v7, v8, v9, v10, v11, v12);
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
    sub_1AFDDD9F4(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v22 = Mutable;
  if (@"model" == a2)
  {
    v23 = v29;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 0x40000000;
    v29[2] = sub_1AF1BA6A8;
    v29[3] = &unk_1E7A7B6E8;
    v29[4] = Mutable;
LABEL_11:
    v24 = v23 + 5;
    goto LABEL_12;
  }

  if (@"kDeformerStackKey" == a2)
  {
    v23 = v28;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 0x40000000;
    v28[2] = sub_1AF1BA6F8;
    v28[3] = &unk_1E7A7B708;
    v28[4] = Mutable;
    goto LABEL_11;
  }

  v23 = v26;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 0x40000000;
  v26[2] = sub_1AF1BA748;
  v26[3] = &unk_1E7A7B728;
  v26[4] = a2;
  v26[5] = Mutable;
  v24 = &v27;
LABEL_12:
  *v24 = a3;
  sub_1AF1B94AC(v5, v23);
  return v22;
}

uint64_t sub_1AF1BA6A8(uint64_t a1, const void *a2)
{
  if (sub_1AF1B75A0(a2, a2) && (CFArrayAppendValue(*(a1 + 32), a2), (*(a1 + 40) & 1) != 0))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF1BA6F8(uint64_t a1, const void *a2)
{
  if (sub_1AF1B7558(a2, a2) && (CFArrayAppendValue(*(a1 + 32), a2), (*(a1 + 40) & 1) != 0))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF1BA748(uint64_t a1, const void *a2)
{
  if (sub_1AF16D04C(a2, *(a1 + 32)) && (CFArrayAppendValue(*(a1 + 40), a2), (*(a1 + 48) & 1) != 0))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

void sub_1AF1BA79C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 220);
  if ((v10 & 0x20) != 0)
  {
    *(a1 + 256) = *(a1 + 204);
    v11 = *(a1 + 64);
    if (v11)
    {
      sub_1AF1BA79C(v11, a2);
      *(a1 + 256) = v12 * *(a1 + 256);
      v10 = *(a1 + 220);
    }

    *(a1 + 220) = v10 & 0xFFFFFFDF;
  }
}

void sub_1AF1BA81C(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(result + 48);
  if (v11)
  {
    v12 = sub_1AF1D00B0(*(result + 48), a2);
    sub_1AF133F8C(v12, v13);
  }

  v14 = *(result + 220);
  if (*(result + 72))
  {
    *(result + 220) = v14 & 0xFFFFFFDF;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 0x40000000;
    v15[2] = sub_1AF1BDD58;
    v15[3] = &unk_1E7A7B800;
    v16 = v2;
    v15[4] = v11;
    sub_1AF1B94AC(result, v15);
  }

  else
  {
    *(result + 220) = v14 | 0x20;
  }
}

BOOL sub_1AF1BA900(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (sub_1AF1B7348(a1, a2))
  {
    return 1;
  }

  do
  {
    v2 = *(v2 + 64);
    v4 = v2 != 0;
  }

  while (v2 && !sub_1AF1B7348(v2, v3));
  return v4;
}

float sub_1AF1BA950(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (!sub_1AF1BA9A4(a1, a2))
  {
    do
    {
      v2 = *(v2 + 64);
      if (!v2)
      {
        break;
      }

      if (*(v2 + 200))
      {
        break;
      }

      result = *(v2 + 204);
    }

    while (result > 0.0);
  }

  return result;
}

BOOL sub_1AF1BA9A4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 200) & 1) != 0 || *(a1 + 204) <= 0.0;
}

uint64_t sub_1AF1BAA04(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48);
  if (v2)
  {
    v3 = a2;
    v4 = result;
    v5 = sub_1AF1B8088(result, a2);
    if (v5 && *(v4 + 216) == -1)
    {
      v7 = sub_1AF0D5194(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDDA6C(v7, v8, v9, v10, v11, v12, v13, v14);
      }
    }

    sub_1AF1B7978(v4, 1);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 0x40000000;
    v15[2] = sub_1AF1BDE04;
    v15[3] = &unk_1E7A7B840;
    v16 = v3;
    v15[4] = v4;
    v15[5] = v2;
    return sub_1AF1B94AC(v4, v15);
  }

  return result;
}

BOOL sub_1AF1BAAD8(_BOOL8 a1, uint64_t a2)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD137C(v4, a2, v5, v6, v7, v8, v9, v10);
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
    sub_1AFDDDAE4(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  do
  {
LABEL_6:
    v3 = *(v3 + 64);
  }

  while (v3 != a2 && v3 != 0);
  return v3 != 0;
}

void *sub_1AF1BAB68(CFArrayRef theArray, uint64_t a2)
{
  if (!theArray)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDDB5C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    return 0;
  }

  v12 = Count;
  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  if (v12 >= 2)
  {
    for (i = 1; i != v12; ++i)
    {
      v15 = CFArrayGetValueAtIndex(theArray, i);
      if (!ValueAtIndex)
      {
        break;
      }

      while (!v15)
      {
LABEL_12:
        ValueAtIndex = ValueAtIndex[8];
        if (!ValueAtIndex)
        {
          return ValueAtIndex;
        }
      }

      v16 = v15;
      while (v16 != ValueAtIndex)
      {
        v16 = v16[8];
        if (!v16)
        {
          goto LABEL_12;
        }
      }
    }
  }

  return ValueAtIndex;
}

const __CFDictionary *sub_1AF1BAC2C(_BOOL8 a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  result = sub_1AF16CEA0(a1, @"kRenderingPriorityKey");
  if (result)
  {
    valuePtr = 0;
    CFNumberGetValue(result, kCFNumberLongType, &valuePtr);
    return valuePtr;
  }

  return result;
}

void sub_1AF1BACA4(uint64_t *a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (sub_1AF1BAC2C(a1, a2) != a2)
  {
    if (a2)
    {
      valuePtr = a2;
      v11 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
      sub_1AF16D044(a1, @"kRenderingPriorityKey", v11);
      CFRelease(v11);
    }

    else
    {
      sub_1AF16D044(a1, @"kRenderingPriorityKey", 0);
    }

    sub_1AF1CF760(a1[6], 5, a1, 0);
  }
}

uint64_t sub_1AF1BAD78(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 222) >> 2) & 1;
}

void sub_1AF1BADC4(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(result + 220);
  if (((((v12 & 0x40000) == 0) ^ v2) & 1) == 0)
  {
    if (v2)
    {
      v13 = 0x40000;
    }

    else
    {
      v13 = 0;
    }

    *(result + 220) = v12 & 0xFFFBFFFF | v13;
    sub_1AF1CF760(*(result + 48), 5, result, 0);
    sub_1AF1B7978(result, 0);
  }
}

void sub_1AF1BAE60(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(result + 220);
  if (((((v12 & 0x800000) == 0) ^ v2) & 1) == 0)
  {
    if (v2)
    {
      v13 = 0x800000;
    }

    else
    {
      v13 = 0;
    }

    *(result + 220) = v12 & 0xFF7FFFFF | v13;
    v14 = *(result + 48);
    sub_1AF1CF760(v14, 8, result, 0);
    sub_1AF1CF760(v14, 5, result, 0);
    sub_1AF1B7978(result, 0);
  }
}

uint64_t sub_1AF1BAF14(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 208);
}

uint64_t sub_1AF1BAF5C(uint64_t *a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  a1[26] = a2;
  sub_1AF1CF760(a1[6], 5, a1, 0);
  return sub_1AF1B7978(a1, 0);
}

uint64_t sub_1AF1BAFDC(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *(result + 220) = *(result + 220) & 0xFFFFFFF7 | v2;
  return result;
}

uint64_t sub_1AF1BB008(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 128;
  }

  else
  {
    v2 = 0;
  }

  *(result + 220) = *(result + 220) & 0xFFFFFF7F | v2;
  return result;
}

uint64_t sub_1AF1BB034(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x4000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 220) = *(result + 220) & 0xFBFFFFFF | v2;
  return result;
}

uint64_t sub_1AF1BB060(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x4000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 220) = *(result + 220) & 0xFFFFBFFF | v2;
  return result;
}

uint64_t sub_1AF1BB08C(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x8000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 220) = *(result + 220) & 0xF7FFFFFF | v2;
  return result;
}

const void *sub_1AF1BB0AC(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 240);
  if (result)
  {
    return sub_1AF1B329C(result, a2);
  }

  return result;
}

uint64_t sub_1AF1BB0BC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 221) & 1;
}

void sub_1AF1BB108(float32x4_t *a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = a1[3].i64[0];
  if (v11)
  {
    v12 = sub_1AF1B75E8(a1, a2);
    if (v12)
    {
      sub_1AF1C3A90(v12, a1[3].i64[0]);
      v14 = sub_1AF1D00F8(v11, v13);
      sub_1AF137B54(v14, a1);
    }
  }

  v15 = sub_1AF1C3F64(a1, a2) != 0;
  sub_1AF16CF28(a1, @"kLightKey", a2, v15);
  if (a2)
  {
    v16 = a1[3].i64[0];
    if (v16)
    {
      sub_1AF1C3CB4(a2, v16);
    }
  }

  a1[13].i32[3] = a1[13].i32[3] & 0xFFFFFEFF | ((a2 != 0) << 8);
  if (a2 && v11)
  {
    v17 = sub_1AF1D00F8(v11, v16);
    sub_1AF1378D0(v17, a1);
    sub_1AF137D98(v17, a2);
  }

  else if (!a2)
  {
    return;
  }

  if (sub_1AF19CBB4(a2, v16) == 5 && sub_1AF19D3B0(a2, v18))
  {
    sub_1AF1B78DC(a1, v19);
  }

  if (sub_1AF19B944(a2))
  {
    if (sub_1AF19B994(a2, v20))
    {
      sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v11, 0, 1u);
    }
  }
}

const __CFDictionary *sub_1AF1BB260(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((*(a1 + 221) & 2) != 0)
  {
    return sub_1AF16CEA0(a1, @"kCameraKey");
  }

  else
  {
    return 0;
  }
}

void sub_1AF1BB2D4(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (sub_1AF1C3F64(a1, a2))
  {
    v12 = sub_1AF1BB260(a1, v11);
    if (v12)
    {
      sub_1AF1C3A90(v12, *(a1 + 48));
    }
  }

  v13 = sub_1AF1C3F64(a1, v11) != 0;
  sub_1AF16CF28(a1, @"kCameraKey", a2, v13);
  *(a1 + 220) = *(a1 + 220) & 0xFFFFFDFF | ((a2 != 0) << 9);
  if (a2)
  {
    v14 = *(a1 + 48);
    if (v14)
    {
      sub_1AF1C3CB4(a2, v14);
    }
  }
}

uint64_t sub_1AF1BB398(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 248);
  if (result)
  {
    return sub_1AF16BC38(result, a2);
  }

  return result;
}

void sub_1AF1BB3A8(void *a1, const __CFArray *cf)
{
  v4 = a1[31];
  if (cf && !v4)
  {
    v4 = sub_1AF16B520(a1, cf);
    a1[31] = v4;
  }

  if (v4)
  {
    sub_1AF16BC80(v4, cf);
    if (sub_1AF16B6E4(v4, v5))
    {
      v6 = a1[31];
      if (v6)
      {
        CFRelease(v6);
        a1[31] = 0;
      }
    }

    if (a1[6])
    {

      sub_1AF1BE334(@"kCFXNotificationEntityAttributeDidChange", a1, @"kDeformerStackKey", 1u);
    }
  }
}

const __CFDictionary *sub_1AF1BB464(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((*(a1 + 221) & 4) != 0)
  {
    return sub_1AF16CEA0(a1, @"kLightmapInfoKey");
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF1BB4CC(uint64_t a1, uint64_t a2)
{
  result = sub_1AF1B7DB8(a1, a2);
  if (result)
  {
    v3 = result;
    return sub_1AF16F0B8(result) == 0.0 || sub_1AF16F0C8(v3) == 0.0;
  }

  return result;
}

const __CFDictionary *sub_1AF1BB518(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 222))
  {
    return sub_1AF16CEA0(a1, @"kAudioPlayer");
  }

  else
  {
    return 0;
  }
}

CFIndex sub_1AF1BB580(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((*(a1 + 222) & 1) == 0)
  {
    return 0;
  }

  v12 = sub_1AF16CEA0(a1, @"kAudioPlayer");
  return CFArrayGetCount(v12);
}

uint64_t sub_1AF1BB5EC(_BOOL8 a1, void *a2)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD137C(v4, a2, v5, v6, v7, v8, v9, v10);
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
    sub_1AFDDDBD4(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  v18 = sub_1AF1BB580(v3, a2);
  sub_1AF1BB690(v3, a2, v18);
  result = sub_1AF1BA900(v3, v19);
  if ((result & 1) == 0)
  {
    return sub_1AF15AA98(a2, v21, v22);
  }

  return result;
}

uint64_t sub_1AF1BB690(_BOOL8 a1, void *a2, CFIndex a3)
{
  v5 = a1;
  if (!a1 && (v6 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD137C(v6, a2, v7, v8, v9, v10, v11, v12);
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
    sub_1AFDDDBD4(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  Mutable = sub_1AF16CEA0(v5, @"kAudioPlayer");
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    sub_1AF16D044(v5, @"kAudioPlayer", Mutable);
    CFRelease(Mutable);
  }

  CFArrayInsertValueAtIndex(Mutable, a3, a2);
  *(v5 + 220) |= 0x10000u;
  v23 = sub_1AF1B9B04(v5, v22);
  sub_1AF15AA28(a2, v23->n128_f64[0], v23[1].n128_f64[0], v23[2].n128_f64[0], v23[3], v24, v25);
  return sub_1AF15AB24(a2, v26, v27);
}

void sub_1AF1BB79C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = sub_1AF16CEA0(a1, @"kAudioPlayer");
  if (v11)
  {
    Count = CFArrayGetCount(v11);
    if (Count >= 1)
    {
      v13 = Count;
      do
      {
        sub_1AF1BB848(a1, 0, 1);
        --v13;
      }

      while (v13);
    }

    sub_1AF16D044(a1, @"kAudioPlayer", 0);
  }

  *(a1 + 220) &= ~0x10000u;
}

void sub_1AF1BB848(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = sub_1AF16CEA0(a1, @"kAudioPlayer");
  if (v14)
  {
    v15 = v14;
    ValueAtIndex = CFArrayGetValueAtIndex(v14, a2);
    v17 = ValueAtIndex;
    if (ValueAtIndex)
    {
      CFRetain(ValueAtIndex);
    }

    CFArrayRemoveValueAtIndex(v15, a2);
    if (CFArrayGetCount(v15))
    {
      *(a1 + 220) &= ~0x10000u;
    }

    if (a3)
    {
      sub_1AF15AB78(v17, v18, v19);
    }

    sub_1AF29D0AC(v17);
    if (v17)
    {
      CFRelease(v17);
    }
  }
}

void sub_1AF1BB91C(_BOOL8 a1, const void *a2, int a3)
{
  v5 = a1;
  if (!a1 && (v6 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD137C(v6, a2, v7, v8, v9, v10, v11, v12);
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
    sub_1AFDDDC4C(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  v21 = sub_1AF16CEA0(v5, @"kAudioPlayer");
  if (v21)
  {
    v22 = v21;
    v24.length = CFArrayGetCount(v21);
    v24.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v22, v24, a2);
    if (FirstIndexOfValue != -1)
    {
      sub_1AF1BB848(v5, FirstIndexOfValue, a3);
    }
  }
}

void sub_1AF1BB9E4(_BOOL8 a1, void *cf, uint64_t a3)
{
  v5 = a1;
  if (!a1 && (v6 = sub_1AF0D5194(0, cf), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD137C(v6, cf, v7, v8, v9, v10, v11, v12);
    if (cf)
    {
      goto LABEL_4;
    }
  }

  else if (cf)
  {
LABEL_4:
    CFRetain(cf);
    sub_1AF1BB848(v5, a3, 1);
    sub_1AF1BB690(v5, cf, a3);
    v14 = sub_1AF1B9B04(v5, v13);
    sub_1AF15AA28(cf, v14->n128_f64[0], v14[1].n128_f64[0], v14[2].n128_f64[0], v14[3], v15, v16);
    CFRelease(cf);
    return;
  }

  v17 = sub_1AF0D5194(a1, cf);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDDC4C(v17, v18, v19, v20, v21, v22, v23, v24);
  }

  sub_1AF1BB848(v5, a3, 1);
  sub_1AF1BB690(v5, 0, a3);
  v26 = sub_1AF1B9B04(v5, v25);
  sub_1AF15AA28(0, v26->n128_f64[0], v26[1].n128_f64[0], v26[2].n128_f64[0], v26[3], v27, v28);
}

void sub_1AF1BBAE0(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(result + 222))
  {
    v12 = sub_1AF16CEA0(result, @"kAudioPlayer");
    if (!v12)
    {
      v13 = sub_1AF0D5194(0, v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD666C(v13, v11, v14, v15, v16, v17, v18, v19);
      }
    }

    v20 = sub_1AF1B9B04(result, v11);
    v29 = v20[1];
    v30 = *v20;
    v27 = v20[3];
    v28 = v20[2];
    Count = CFArrayGetCount(v12);
    if (Count >= 1)
    {
      v22 = Count;
      for (i = 0; i != v22; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v12, i);
        sub_1AF15AA28(ValueAtIndex, v30.n128_f64[0], v29.n128_f64[0], v28.n128_f64[0], v27, v25, v26);
      }
    }
  }
}

const __CFDictionary *sub_1AF1BBBCC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((*(a1 + 221) & 0x20) != 0)
  {
    return sub_1AF16CEA0(a1, @"kConstraints");
  }

  else
  {
    return 0;
  }
}

void sub_1AF1BBC34(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (sub_1AF1C3F64(a1, a2))
  {
    v12 = sub_1AF1BBBCC(a1, v11);
    if (v12)
    {
      v13 = v12;
      Count = CFArrayGetCount(v12);
      if (Count >= 1)
      {
        v15 = Count;
        for (i = 0; i != v15; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v13, i);
          v19 = sub_1AF1C3F64(a1, v18);
          sub_1AF1C3A90(ValueAtIndex, v19);
        }
      }
    }
  }

  v20 = sub_1AF1C3F64(a1, v11) != 0;
  sub_1AF16CF28(a1, @"kConstraints", a2, v20);
  *(a1 + 220) = *(a1 + 220) & 0xFFFFDFFF | ((a2 != 0) << 13);
  v21 = *(a1 + 48);
  if (v21)
  {
    sub_1AF1CEC60(*(a1 + 48), a1);
    if (a2)
    {
      v22 = CFArrayGetCount(a2);
      if (v22 >= 1)
      {
        v23 = v22;
        for (j = 0; j != v23; ++j)
        {
          v25 = CFArrayGetValueAtIndex(a2, j);
          sub_1AF1C3CB4(v25, v21);
        }
      }
    }
  }
}

void sub_1AF1BBD7C(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 220) = *(a1 + 220) & 0xFFFFFFBF | ((a2 != 0) << 6);
  sub_1AF16D044(a1, @"kPhysicsBodyKey", a2);
}

const __CFDictionary *sub_1AF1BBDF8(_BOOL8 a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return sub_1AF16CEA0(a1, @"kPhysicsBodyKey");
}

uint64_t sub_1AF1BBE50(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 220) >> 6) & 1;
}

uint64_t sub_1AF1BBE9C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 222) >> 1) & 1;
}

void sub_1AF1BBEE8(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v12 = sub_1AF1C3F64(a1, a2);
  if (v12)
  {
    v13 = sub_1AF1BBFEC(a1, v11);
    if (v13)
    {
      v14 = v13;
      sub_1AF1CEEB0(v12, a1);
      sub_1AF350D48(v14, 0);
      sub_1AF1C3A90(v14, *(a1 + 48));
    }
  }

  v15 = sub_1AF1C3F64(a1, v11) != 0;
  sub_1AF16CF28(a1, @"kForceFieldKey", a2, v15);
  *(a1 + 220) = *(a1 + 220) & 0xFFFDFFFF | ((a2 != 0) << 17);
  if (a2)
  {
    sub_1AF350D48(a2, a1);
    v16 = *(a1 + 48);
    if (v16)
    {
      sub_1AF1C3CB4(a2, v16);
    }

    if (v12)
    {
      sub_1AF1CEE2C(v12, a1);
    }
  }
}

const __CFDictionary *sub_1AF1BBFEC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((*(a1 + 222) & 2) != 0)
  {
    return sub_1AF16CEA0(a1, @"kForceFieldKey");
  }

  else
  {
    return 0;
  }
}

const __CFDictionary *sub_1AF1BC05C(_BOOL8 a1, uint64_t a2)
{
  v2 = sub_1AF1BC094(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v5 = v2;
  if ((sub_1AF16AD10(v2, v3, v4) & 1) == 0)
  {
    return 0;
  }

  return v5;
}

const __CFDictionary *sub_1AF1BC094(_BOOL8 a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return sub_1AF16CEA0(a1, @"kCoreEntityKey");
}

void sub_1AF1BC0EC(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 48);
  v12 = sub_1AF1BC094(a1, a2);
  v14 = v12;
  if (v11)
  {
    v15 = v12 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    sub_1AF1C3A90(v12, *(a1 + 48));
  }

  v16 = sub_1AF1C3F64(a1, v13) != 0;
  sub_1AF16CF28(a1, @"kCoreEntityKey", a2, v16);
  *(a1 + 220) = *(a1 + 220) & 0xFFBFFFFF | ((sub_1AF1BC094(a1, v17) != 0) << 22);
  if (v11 && (a2 == 0) == (v14 != 0))
  {
    if (v14)
    {
      sub_1AF1CEDD4(v11, a1);
    }

    else
    {
      sub_1AF1CED38(v11, a1);
      sub_1AF1BDAA8(a1, v18);
    }

    sub_1AF1B73A0(a1, v11);
  }

  if (a2)
  {
    v19 = *(a1 + 48);
    if (v19)
    {
      sub_1AF1C3CB4(a2, v19);
    }
  }
}

uint64_t sub_1AF1BC210(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 224);
}

void sub_1AF1BC258(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (a2 >= 4)
  {
    v4 = sub_1AF0D5194(result, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDDCC4(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 220) = *(result + 220) & 0xFFC7FFFF | ((v2 & 7) << 19);
}

uint64_t sub_1AF1BC2C4(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 220) = *(result + 220) & 0xFEFFFFFF | v2;
  return result;
}

uint64_t sub_1AF1BC2FC(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  do
  {
    v1 = *(a1 + 220);
    v2 = (v1 >> 25) & 1;
    if ((v1 & 0x2000000) != 0)
    {
      break;
    }

    a1 = *(a1 + 64);
  }

  while (a1);
  return v2;
}

uint64_t sub_1AF1BC324(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x2000000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 220) = *(result + 220) & 0xFDFFFFFF | v2;
  return result;
}

uint64_t sub_1AF1BC344(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 216);
  if (v2 != -1)
  {
    sub_1AF127798(*(a1 + 32), v2);
  }

  return 0;
}

id sub_1AF1BC378(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF1B75A0(a1, a2);
  if (v3)
  {
    sub_1AF1B37C0(v3, a1);
  }

  sub_1AF1BE334(@"kCFXNotificationNodeWillDie", a1, 0, 1u);
  v5 = *(a1 + 192);
  if (v5)
  {
    free(v5);
  }

  v6 = *(a1 + 220);
  if ((v6 & 0x10000) != 0)
  {
    sub_1AF1BB79C(a1, v4);
    v6 = *(a1 + 220);
  }

  if ((v6 & 0x20000) != 0)
  {
    sub_1AF1BBEE8(a1, 0);
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    do
    {
      v8 = v7[8];
      if (v8 == a1)
      {
        v7[8] = 0;
      }

      else if (v8)
      {
        v9 = sub_1AF0D5194(v5, v4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDDDD3C(&v16, v17, v9);
        }
      }

      v10 = v7[10];
      v7[10] = 0;
      CFRelease(v7);
      v7 = v10;
    }

    while (v10);
  }

  v11 = *(a1 + 80);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 80) = 0;
  }

  v12 = *(a1 + 240);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 240) = 0;
  }

  v13 = *(a1 + 248);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 248) = 0;
  }

  v14 = *(a1 + 232);
  if (v14)
  {
    free(v14);
  }

  return sub_1AF16C9A4(a1, v4);
}

__CFString *sub_1AF1BC4AC(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = sub_1AF3753A8(a1);
  v5 = sub_1AF1B955C(a1, v4);
  CFStringAppendFormat(Mutable, 0, @"<%s %p | %@\n", v3, a1, v5);
  v7 = sub_1AF1B75A0(a1, v6);
  CFStringAppendFormat(Mutable, 0, @"  model: %@\n", v7);
  v9 = *(a1 + 220);
  if ((v9 & 0x100) != 0)
  {
    v10 = sub_1AF1B75E8(a1, v8);
    CFStringAppendFormat(Mutable, 0, @"  light: %@\n", v10);
    v9 = *(a1 + 220);
  }

  if ((v9 & 0x200) != 0)
  {
    v11 = sub_1AF1BB260(a1, v8);
    CFStringAppendFormat(Mutable, 0, @"  camera: %@\n", v11);
  }

  v12 = *(a1 + 248);
  if (v12)
  {
    v13 = sub_1AF16BB4C(v12, v8);
    if (v13)
    {
      CFStringAppendFormat(Mutable, 0, @"  skinner: %@\n", v13);
    }
  }

  v14 = sub_1AF1B9158(a1, v8);
  if (v14)
  {
    CFStringAppendFormat(Mutable, 0, @"  morpher: %@\n", v14);
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

__CFArray *sub_1AF1BC5F4(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  valuePtr = 0x500000001;
  v68 = sub_1AF16CCC0(a1, v6);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v8 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v9 = CFNumberCreate(0, kCFNumberLongType, &v68);
  CFDictionarySetValue(v5, @"name", @"id");
  CFDictionarySetValue(v5, @"type", v7);
  CFDictionarySetValue(v5, @"address", v9);
  CFDictionarySetValue(v5, @"semantic", v8);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v8);
  CFRelease(v5);
  CFRelease(v9);
  CFRelease(v7);
  v10 = CFDictionaryCreateMutable(0, 4, v3, v4);
  valuePtr = 0x500000001;
  v68 = sub_1AF16CBEC(a1, v11);
  v12 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v13 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v14 = CFNumberCreate(0, kCFNumberLongType, &v68);
  CFDictionarySetValue(v10, @"name", @"name");
  CFDictionarySetValue(v10, @"type", v12);
  CFDictionarySetValue(v10, @"address", v14);
  CFDictionarySetValue(v10, @"semantic", v13);
  CFArrayAppendValue(Mutable, v10);
  CFRelease(v13);
  CFRelease(v10);
  CFRelease(v14);
  CFRelease(v12);
  v15 = CFDictionaryCreateMutable(0, 4, v3, v4);
  valuePtr = 0x500000001;
  v68 = sub_1AF16CE58(a1, v16);
  v17 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v19 = CFNumberCreate(0, kCFNumberLongType, &v68);
  CFDictionarySetValue(v15, @"name", @"attributes");
  CFDictionarySetValue(v15, @"type", v17);
  CFDictionarySetValue(v15, @"address", v19);
  CFDictionarySetValue(v15, @"semantic", v18);
  CFArrayAppendValue(Mutable, v15);
  CFRelease(v18);
  CFRelease(v15);
  CFRelease(v19);
  CFRelease(v17);
  v20 = MEMORY[0x1E695E9D8];
  v21 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v4);
  valuePtr = 0xA00000000;
  v68 = a1 + 96;
  v22 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v24 = CFNumberCreate(0, kCFNumberLongType, &v68);
  CFDictionarySetValue(v21, @"name", @"transforms");
  CFDictionarySetValue(v21, @"type", v22);
  CFDictionarySetValue(v21, @"address", v24);
  CFDictionarySetValue(v21, @"semantic", v23);
  CFArrayAppendValue(Mutable, v21);
  CFRelease(v23);
  CFRelease(v21);
  CFRelease(v24);
  CFRelease(v22);
  v25 = CFDictionaryCreateMutable(0, 4, v20, v4);
  valuePtr = 0x500000002;
  v68 = a1 + 72;
  v26 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v27 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v28 = CFNumberCreate(0, kCFNumberLongType, &v68);
  CFDictionarySetValue(v25, @"name", @"firstChild");
  CFDictionarySetValue(v25, @"type", v26);
  CFDictionarySetValue(v25, @"address", v28);
  CFDictionarySetValue(v25, @"semantic", v27);
  CFArrayAppendValue(Mutable, v25);
  CFRelease(v27);
  CFRelease(v25);
  CFRelease(v28);
  CFRelease(v26);
  v29 = CFDictionaryCreateMutable(0, 4, v20, MEMORY[0x1E695E9E8]);
  valuePtr = 0x500000002;
  v68 = a1 + 80;
  v30 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v31 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v32 = CFNumberCreate(0, kCFNumberLongType, &v68);
  CFDictionarySetValue(v29, @"name", @"nextSibling");
  CFDictionarySetValue(v29, @"type", v30);
  CFDictionarySetValue(v29, @"address", v32);
  CFDictionarySetValue(v29, @"semantic", v31);
  CFArrayAppendValue(Mutable, v29);
  CFRelease(v31);
  CFRelease(v29);
  CFRelease(v32);
  CFRelease(v30);
  v33 = CFDictionaryCreateMutable(0, 4, v20, MEMORY[0x1E695E9E8]);
  valuePtr = 0x100000000;
  v68 = a1 + 204;
  v34 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v35 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v36 = CFNumberCreate(0, kCFNumberLongType, &v68);
  CFDictionarySetValue(v33, @"name", @"opacity");
  CFDictionarySetValue(v33, @"type", v34);
  CFDictionarySetValue(v33, @"address", v36);
  CFDictionarySetValue(v33, @"semantic", v35);
  CFArrayAppendValue(Mutable, v33);
  CFRelease(v35);
  CFRelease(v33);
  CFRelease(v36);
  CFRelease(v34);
  v37 = CFDictionaryCreateMutable(0, 4, v20, MEMORY[0x1E695E9E8]);
  valuePtr = 0x300000000;
  v68 = a1 + 200;
  v38 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v39 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v40 = CFNumberCreate(0, kCFNumberLongType, &v68);
  CFDictionarySetValue(v37, @"name", @"hidden");
  CFDictionarySetValue(v37, @"type", v38);
  CFDictionarySetValue(v37, @"address", v40);
  CFDictionarySetValue(v37, @"semantic", v39);
  CFArrayAppendValue(Mutable, v37);
  CFRelease(v39);
  CFRelease(v37);
  CFRelease(v40);
  CFRelease(v38);
  v41 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v68 = a1 + 64;
  valuePtr = 0;
  v42 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v43 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v44 = CFNumberCreate(0, kCFNumberLongType, &v68);
  CFDictionarySetValue(v41, @"name", @"parent");
  CFDictionarySetValue(v41, @"type", v42);
  CFDictionarySetValue(v41, @"address", v44);
  CFDictionarySetValue(v41, @"semantic", v43);
  CFArrayAppendValue(Mutable, v41);
  CFRelease(v43);
  CFRelease(v41);
  CFRelease(v44);
  CFRelease(v42);
  v45 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  valuePtr = 0x500000002;
  v68 = a1 + 240;
  v46 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v47 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v48 = CFNumberCreate(0, kCFNumberLongType, &v68);
  CFDictionarySetValue(v45, @"name", @"model");
  CFDictionarySetValue(v45, @"type", v46);
  CFDictionarySetValue(v45, @"address", v48);
  CFDictionarySetValue(v45, @"semantic", v47);
  CFArrayAppendValue(Mutable, v45);
  CFRelease(v47);
  CFRelease(v45);
  CFRelease(v48);
  CFRelease(v46);
  v49 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  valuePtr = 0x2D00000000;
  v68 = a1 + 208;
  v50 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v51 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v52 = CFNumberCreate(0, kCFNumberLongType, &v68);
  CFDictionarySetValue(v49, @"name", @"categoryBitMask");
  CFDictionarySetValue(v49, @"type", v50);
  CFDictionarySetValue(v49, @"address", v52);
  CFDictionarySetValue(v49, @"semantic", v51);
  CFArrayAppendValue(Mutable, v49);
  CFRelease(v51);
  CFRelease(v49);
  CFRelease(v52);
  CFRelease(v50);
  if (sub_1AF1B9158(a1, v53))
  {
    v55 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    valuePtr = 0x500000001;
    v68 = sub_1AF1B9158(a1, v56);
    v57 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
    v58 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v59 = CFNumberCreate(0, kCFNumberLongType, &v68);
    CFDictionarySetValue(v55, @"name", @"morpher");
    CFDictionarySetValue(v55, @"type", v57);
    CFDictionarySetValue(v55, @"address", v59);
    CFDictionarySetValue(v55, @"semantic", v58);
    CFArrayAppendValue(Mutable, v55);
    CFRelease(v58);
    CFRelease(v55);
    CFRelease(v59);
    CFRelease(v57);
  }

  v60 = *(a1 + 248);
  if (v60 && sub_1AF16BB4C(v60, v54))
  {
    v62 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    valuePtr = 0x500000001;
    v63 = *(a1 + 248);
    if (v63)
    {
      v63 = sub_1AF16BB4C(v63, v61);
    }

    v68 = v63;
    v64 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
    v65 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v66 = CFNumberCreate(0, kCFNumberLongType, &v68);
    CFDictionarySetValue(v62, @"name", @"skinner");
    CFDictionarySetValue(v62, @"type", v64);
    CFDictionarySetValue(v62, @"address", v66);
    CFDictionarySetValue(v62, @"semantic", v65);
    CFArrayAppendValue(Mutable, v62);
    CFRelease(v65);
    CFRelease(v62);
    CFRelease(v66);
    CFRelease(v64);
  }

  return Mutable;
}

uint64_t sub_1AF1BD260(float32x4_t *a1, int a2, float32x4_t *a3, float32x4_t *a4)
{
  v10 = 0u;
  v11 = 0u;
  if (a2)
  {
    if (sub_1AF1B81E4(a1, 1, &v10))
    {
LABEL_3:
      v6 = v10;
      v7 = v11;
      *a3 = vsubq_f32(v10, v11);
      *a4 = vaddq_f32(v6, v7);
      return 1;
    }
  }

  else
  {
    v9 = a1[18];
    v10 = a1[17];
    v11 = v9;
    if ((vminvq_u32(vcgezq_f32(a1[18])) & 0x80000000) != 0)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t sub_1AF1BD2E4(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v6 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDDD7C(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3000000000;
  v43 = 0;
  v44 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3000000000;
  v39[4] = 0;
  v39[5] = 0;
  v13 = sub_1AF1B75A0(a1, a2);
  if (v13)
  {
    v15 = v13;
    v16 = *(a1 + 248);
    if (v16)
    {
      v17 = sub_1AF16BB4C(v16, v14);
      if (v17)
      {
        v33 = 0u;
        v34 = 0u;
        v18 = sub_1AF1C9DE4(v17, a1, &v33);
LABEL_11:
        *(v36 + 24) = v18;
        v20 = v33;
        HIDWORD(v20) = vmaxvq_f32(v34);
        *(v41 + 2) = v20;
        goto LABEL_12;
      }
    }

    v19 = sub_1AF1C39FC(v15, a2, (v41 + 4));
    *(v36 + 24) = v19;
  }

  else if (sub_1AF1B83E8(a1, v14))
  {
    v33 = 0u;
    v34 = 0u;
    sub_1AF1B82C8(a1, a2, &v33);
    goto LABEL_11;
  }

LABEL_12:
  if (a2)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 0x40000000;
    v27 = sub_1AF1BD528;
    v28 = &unk_1E7A7B770;
    v32 = a2;
    v29 = v39;
    v30 = &v35;
    v31 = &v40;
    v21 = *(a1 + 72);
    if (v21)
    {
      v22 = 0;
      do
      {
        (v27)(v26, v21, v22++);
        v21 = *(v21 + 80);
      }

      while (v21);
    }
  }

  v23 = v36;
  if (*(v36 + 24) == 1)
  {
    *a3 = *(v41 + 2);
    v24 = *(v23 + 24);
  }

  else
  {
    v24 = 0;
  }

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v35, 8);
  return v24 & 1;
}

__n128 sub_1AF1BD528(void *a1, __n128 *cf)
{
  if (sub_1AF1C39FC(cf, *(a1 + 56), *(a1[4] + 8) + 32))
  {
    *v6.i64 = sub_1AF1B7F84(cf, v4);
    v18[0] = v6;
    v18[1] = v7;
    v18[2] = v8;
    v18[3] = v9;
    v10 = *(a1[4] + 8);
    v15 = sub_1AF1CCB48(cf + 6, v11, *v6.i64, *v7.i64, *v8.i64, *v9.i64, v12, v13, v14);
    sub_1AF27A190(v10 + 32, v18, (*(a1[4] + 8) + 32), v15);
    v16 = *(a1[5] + 8);
    if (*(v16 + 24))
    {
      v17 = (*(a1[6] + 8) + 32);
      sub_1AF1DA274(v17, (*(a1[4] + 8) + 32), v17);
    }

    else
    {
      *(v16 + 24) = 1;
      result = *(*(a1[4] + 8) + 32);
      *(*(a1[6] + 8) + 32) = result;
    }
  }

  return result;
}

void sub_1AF1BD604(void **a1, __n128 *__dst, __n128 *__src, size_t __n, uint64_t a5, uint64_t a6, __n128 a7, double a8, double a9, double a10, double a11, double a12, float32x4_t a13)
{
  v14 = (a1 + 12);
  if (v14 == __dst)
  {
    sub_1AF1CD69C(v14, __src, __n, a5, a6, a7, a8, a9, a10, a11, a12, a13);

    sub_1AF1B9F8C(a1, v15);
  }

  else if (a1[24] == __dst)
  {
    v16 = __src[2];
    v17 = __src[3];
    v18 = *__src;
    v19 = __src[1];

    sub_1AF1B87C4(a1, __dst, v18, v19, v16, v17);
  }

  else if ((a1 + 204) == __dst)
  {
    v20 = __src->n128_f32[0];

    sub_1AF1B88DC(a1, __dst, v20);
  }

  else if (a1 + 25 == __dst)
  {
    v21 = __src->n128_u8[0];

    sub_1AF1B8A78(a1, v21);
  }

  else
  {

    memcpy(__dst, __src, __n);
  }
}

void sub_1AF1BD714(uint64_t a1, const void *a2, void *__dst, size_t __n, int a5, unsigned int a6, double a7, double a8, double a9, double a10, double a11, double a12, float32x4_t a13)
{
  v13 = (a1 + 96);
  if (v13 == a2)
  {
    sub_1AF1CCF54(v13, __dst, __n, a5, a6, a7, a8, a9, a10, a11, a12, a13);
  }

  else
  {
    memcpy(__dst, a2, __n);
  }
}

uint64_t sub_1AF1BD740(void *a1, void (**a2)(void))
{
  v4 = sub_1AF16CE58(a1, a2);
  if (v4)
  {
    CFDictionaryApplyFunction(v4, sub_1AF1BDA3C, a2);
  }

  v5 = a1[30];
  if (v5)
  {
    a2[2](a2);
  }

  v6 = sub_1AF1B9158(a1, v5);
  if (v6)
  {
    (a2[2])(a2, v6);
  }

  v8 = a1[31];
  if (v8)
  {
    v9 = sub_1AF16BB4C(v8, v7);
    if (v9)
    {
      (a2[2])(a2, v9);
    }
  }

  result = sub_1AF1BBBCC(a1, v7);
  if (result)
  {
    v11 = result;
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v12 = result;
      for (i = 0; i != v12; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v11, i);
        result = (a2[2])(a2, ValueAtIndex);
      }
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v18 = sub_1AF1BDA98;
  v19 = &unk_1E7A7B798;
  v20 = a2;
  v15 = a1[9];
  if (v15)
  {
    v16 = 0;
    do
    {
      result = (v18)(v17, v15, v16++);
      v15 = *(v15 + 80);
    }

    while (v15);
  }

  return result;
}

void sub_1AF1BD8BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF1D0218(a2, a2);
  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = *(v6 + 88);
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  *(a1 + 88) = sub_1AF14C160(v4, a1, v7, v5);
  sub_1AF1B73A0(a1, a2);
  if ((*(a1 + 222) & 0x40) != 0)
  {
    sub_1AF1CED38(a2, a1);

    sub_1AF1BDAA8(a1, v8);
  }
}

void sub_1AF1BD948(unsigned int *a1, uint64_t a2)
{
  sub_1AF1CF194(a2, a1);
  if (a1[22] != -1)
  {
    v5 = sub_1AF1D0218(a2, v4);
    if (v5)
    {
      sub_1AF14C3E8(v5, a1[22]);
    }

    a1[22] = -1;
  }

  if (a1[54] != -1)
  {
    v6 = sub_1AF1D01D0(a2, v4);
    if (v6)
    {
      sub_1AF127918(v6, a1[54]);
    }

    a1[54] = -1;
  }
}

void sub_1AF1BD9C8(float32x4_t *a1, uint64_t a2)
{
  if (!a1[4].i64[0])
  {
    sub_1AF1BAA04(a1, 1);
  }

  v3 = a1[15].i64[1];
  if (v3)
  {
    v4 = sub_1AF16BB4C(v3, a2);
    if (v4)
    {
      v5 = v4;
      if (sub_1AF15B294(v4))
      {

        sub_1AF1C9CD8(v5, a1);
      }
    }
  }
}

const void *sub_1AF1BDA3C(uint64_t a1, const void *a2, uint64_t a3)
{
  result = sub_1AF16D234(a2);
  if (result)
  {
    v6 = *(a3 + 16);

    return v6(a3, a2);
  }

  return result;
}

_BYTE *sub_1AF1BDAA8(_BYTE *result, uint64_t a2)
{
  if ((result[222] & 0x40) != 0)
  {
    v3 = result;
    v4 = sub_1AF1B7348(result, a2);
    v6 = sub_1AF1BC094(v3, v5);

    return sub_1AF16AC10(v6, (v4 ^ 1u), v7);
  }

  return result;
}

uint64_t sub_1AF1BDAF8(uint64_t a1, const void *a2)
{
  v3 = a1;
  v4 = sub_1AF16CCC0(a1, a2);
  if (!sub_1AF1D2AE0(v4, a2))
  {
    v6 = sub_1AF16CBEC(v3, v5);
    if (!v6 || !sub_1AF1D2AE0(v6, a2))
    {
      v8 = sub_1AF1B75A0(v3, v7);
      v9 = sub_1AF1C4020(v8, a2);
      if (v9)
      {
        return v9;
      }

      v11 = sub_1AF1B75E8(v3, v10);
      v9 = sub_1AF1C4020(v11, a2);
      if (v9)
      {
        return v9;
      }

      v13 = sub_1AF1B9158(v3, v12);
      v9 = sub_1AF1C4020(v13, a2);
      if (v9)
      {
        return v9;
      }

      v15 = *(v3 + 248);
      if (v15)
      {
        v15 = sub_1AF16BB4C(v15, v14);
      }

      v9 = sub_1AF1C4020(v15, a2);
      if (v9)
      {
        return v9;
      }

      v17 = sub_1AF1B7DB8(v3, v16);
      v9 = sub_1AF1C4020(v17, a2);
      if (v9)
      {
        return v9;
      }

      v19 = sub_1AF1BB260(v3, v18);
      v9 = sub_1AF1C4020(v19, a2);
      if (v9)
      {
        return v9;
      }

      else
      {
        v22 = 0;
        v23 = &v22;
        v24 = 0x2000000000;
        v25 = 0;
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 0x40000000;
        v21[2] = sub_1AF1BDC54;
        v21[3] = &unk_1E7A7B7C0;
        v21[4] = &v22;
        v21[5] = a2;
        sub_1AF1B9434(v3, v21);
        v3 = v23[3];
        _Block_object_dispose(&v22, 8);
      }
    }
  }

  return v3;
}

uint64_t sub_1AF1BDC54(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = sub_1AF1BDAF8(a2, *(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    *a4 = 1;
  }

  return result;
}

void sub_1AF1BDCAC(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 220) = *(result + 220) & 0xFFC7FFFF | ((a2 & 7) << 19);
  for (i = *(result + 72); i; i = *(i + 80))
  {
    sub_1AF1BDCAC(i, a2);
  }
}

uint64_t sub_1AF1BDD24(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 221) & 0x4301) != 0)
  {
    sub_1AF133EE8(*(a1 + 32), a2);
  }

  return 0;
}

uint64_t sub_1AF1BDD58(uint64_t a1, _DWORD *a2)
{
  v2 = a2[55];
  if ((*(a1 + 40) & 1) == 0 && (v2 & 0x20) != 0)
  {
    return 1;
  }

  a2[55] = v2 | 0x20;
  if (*(a1 + 40) == 1)
  {
    sub_1AF1CF760(*(a1 + 32), 4, a2, 0);
  }

  return 0;
}

uint64_t sub_1AF1BDDBC(uint64_t a1, float *a2)
{
  if (a2[51] < 1.0)
  {
    return 1;
  }

  sub_1AF1CF760(*(a1 + 32), 4, a2, 0);
  return 0;
}

uint64_t sub_1AF1BDE04(uint64_t a1, uint64_t a2)
{
  if (sub_1AF1B7348(a2, a2) && ((*(a1 + 48) & 1) != 0 || *(a1 + 32) != a2))
  {
    return 1;
  }

  v6 = sub_1AF1B8088(a2, v4);
  if (v6)
  {
    if (*(a2 + 216) == -1)
    {
      v8 = sub_1AF0D5194(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDDDF4(v8, v7, v9, v10, v11, v12, v13, v14);
      }
    }
  }

  v17 = sub_1AF1BC094(a2, v7);
  v18 = *(a1 + 48);
  if (v18 == 1)
  {
    sub_1AF1CF760(*(a2 + 48), 0, a2, 0);
    v19 = *(a1 + 40);
    if (v19)
    {
      sub_1AF1CEFD8(v19, a2);
    }
  }

  else
  {
    v20 = *(a1 + 40);
    if (v20)
    {
      sub_1AF1CF318(v20, a2);
    }
  }

  if (v17)
  {
    sub_1AF16AC10(v17, v18, v16);
  }

  v21 = sub_1AF1B7DB8(a2, v15);
  v23 = sub_1AF1B75E8(a2, v22);
  if (v23 && (v24 = v23, v25 = CFGetTypeID(v23), v25 == sub_1AF19AF4C(v25, v26)) && sub_1AF19B944(v24) && (sub_1AF19B994(v24, v27) & 1) != 0 || v21)
  {
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", *(a1 + 40), 0, 1u);
  }

  return 0;
}

uint64_t sub_1AF1BDF5C(uint64_t a1, uint64_t (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (!*a2 || (v6 = (*a2)(a1, a3)) == 0)
  {
    v7 = a2[1];
    if (!v7)
    {
      v6 = 0;
LABEL_10:
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 0x40000000;
      v10[2] = sub_1AF1BE060;
      v10[3] = &unk_1E7A7B860;
      v10[4] = a2;
      v10[5] = a3;
      if (sub_1AF1B9434(a1, v10))
      {
        v6 = 3;
      }

      goto LABEL_12;
    }

    v6 = v7(a1, a3);
  }

  if ((v6 - 4) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_10;
  }

LABEL_12:
  v8 = a2[2];
  if (v8)
  {
    v8(a1, a3);
  }

  return v6;
}

uint64_t sub_1AF1BE060(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = sub_1AF1BDF5C(a2, *(a1 + 32), *(a1 + 40));
  if (result == 3)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t sub_1AF1BE0A0(uint64_t a1, uint64_t (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (!*a2)
  {
    v6 = 0;
    goto LABEL_6;
  }

  v6 = (*a2)(a1, a3);
  if ((v6 - 4) <= 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_6:
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = sub_1AF1BE198;
    v10[3] = &unk_1E7A7B880;
    v10[4] = a2;
    v10[5] = a3;
    sub_1AF1B9434(a1, v10);
  }

  v7 = a2[2];
  if (v7)
  {
    v7(a1, a3);
  }

  if (!v6)
  {
    v8 = a2[1];
    if (v8)
    {
      return v8(a1, a3);
    }

    return 0;
  }

  return v6;
}

uint64_t sub_1AF1BE198(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = sub_1AF1BE0A0(a2, *(a1 + 32), *(a1 + 40));
  if (result == 3)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t sub_1AF1BE1D8(_BOOL8 a1, uint64_t (**a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (!a1 && (v8 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDDE6C(v8);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v9 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDDEF0(v9);
  }

LABEL_6:
  if (a3)
  {
    return sub_1AF1BE0A0(v7, a2, a4);
  }

  else
  {
    return sub_1AF1BDF5C(v7, a2, a4);
  }
}

void sub_1AF1BE27C(const void *a1, void (__cdecl *a2)(CFNotificationCenterRef, void *, CFNotificationName, const void *, CFDictionaryRef), const __CFString *a3, const void *a4, CFNotificationSuspensionBehavior a5)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterAddObserver(LocalCenter, a1, a2, a3, a4, a5);
}

void sub_1AF1BE2E4(const void *a1, const __CFString *a2, const void *a3)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterRemoveObserver(LocalCenter, a1, a2, a3);
}

void sub_1AF1BE334(const __CFString *a1, const void *a2, const __CFDictionary *a3, Boolean a4)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, a1, a2, a3, a4);
}

void sub_1AF1BE38C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 328);
  if (v3)
  {

    v3();
  }

  else
  {
    v4 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDDF74(v4);
    }
  }
}

void sub_1AF1BE3E0(uint64_t a1, uint64_t a2)
{
  v29[11] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 64))
  {
    v3 = *(a1 + 288);
    if (v3)
    {
      if (v3 == sub_1AF1BE68C)
      {
        v4 = sub_1AF1B1FE0(a1, a2);
        v5 = 0;
        if (v4 <= 8)
        {
          v6 = v4;
          if (v4)
          {
            if (v4 >= 1)
            {
              v7 = 0;
              do
              {
                v8 = sub_1AF1B2030(a1, v7);
                if (v7)
                {
                  v9 = v8;
                  v10 = 0;
                  while (sub_1AF1B2030(a1, v10) != v9)
                  {
                    if (v7 == ++v10)
                    {
                      v10 = v7;
                      break;
                    }
                  }

                  v11 = v10 + 1;
                }

                else
                {
                  v11 = 1;
                }

                v29[v7++] = v11;
              }

              while (v7 != v6);
            }

            v12 = 0;
            v13 = 0;
            v5 = 0;
            do
            {
              v5 |= v29[v13 % v6] << v12;
              ++v13;
              v12 += 4;
            }

            while (v13 != 8);
          }
        }

        *(a1 + 284) = v5;
      }

      os_unfair_lock_lock(&unk_1EB654CD8);
      sub_1AF1C2FF8();
      if (*(a1 + 336))
      {
        sub_1AF1C3074(a1);
      }

      v14 = (*(a1 + 320))(a1, v29);
      v15 = CFDataCreate(*MEMORY[0x1E695E480], v29, v14);
      Value = CFDictionaryGetValue(qword_1ED731AF8, v15);
      if (Value)
      {
        v17 = Value;
        sub_1AF1C2274(v15);
      }

      else
      {
        v17 = (*(a1 + 288))(a1 + 208);
        if (v17)
        {
          CFDictionarySetValue(qword_1ED731B00, v15, 1);
          CFDictionarySetValue(qword_1ED731AF8, v15, v17);
          CFRelease(v17);
          v25 = sub_1AF1C3FAC(a1, v24);
          if (v25)
          {
            v26 = sub_1AF1D0140(v25, v18);
            sub_1AF14434C(v26, a1);
          }
        }
      }

      v19 = sub_1AF1C3FAC(a1, v18);
      v21 = v19;
      if (v19)
      {
        sub_1AF1CEA20(v19, v20);
      }

      if (v17)
      {
        v22 = *(a1 + 336);
        if (v22 != v15)
        {
          if (v22)
          {
            CFRelease(v22);
            *(a1 + 336) = 0;
          }

          if (v15)
          {
            v23 = CFRetain(v15);
          }

          else
          {
            v23 = 0;
          }

          *(a1 + 336) = v23;
        }

        v28 = sub_1AF1A2EDC(v17, v20);
        sub_1AF1B2C80(a1, v28);
        if (v28)
        {
          CFRelease(v28);
        }
      }

      else
      {
        sub_1AF1B2C80(a1, 0);
      }

      if (v21)
      {
        sub_1AF1CEA9C(v21, v27);
      }

      CFRelease(v15);
      os_unfair_lock_unlock(&unk_1EB654CD8);
    }
  }
}

uint64_t sub_1AF1BE6B0(uint64_t result)
{
  if (*(result + 288) == sub_1AF1BE68C)
  {
    v1 = result;
    result = sub_1AF1BE6FC(result);
    *(v1 + 284) = -1;
  }

  return result;
}

uint64_t sub_1AF1BE6FC(uint64_t a1)
{
  if (*(a1 + 64))
  {
    os_unfair_lock_lock(&unk_1EB654CD8);
    sub_1AF1C3074(a1);
    os_unfair_lock_unlock(&unk_1EB654CD8);
  }

  return sub_1AF1B2C80(a1, 0);
}

uint64_t sub_1AF1BE75C(uint64_t a1, int a2)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v2 = &xmmword_1F24E8080;
      }

      else
      {
        v2 = &xmmword_1F24E80E0;
      }

      goto LABEL_20;
    }

    if (!a2)
    {
      v2 = &xmmword_1F24E80B0;
      goto LABEL_20;
    }

    if (a2 == 1)
    {
      v2 = &xmmword_1F24E8110;
      goto LABEL_20;
    }
  }

  else
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        v2 = &xmmword_1F24E8140;
      }

      else
      {
        v2 = &xmmword_1F24E8170;
      }

      goto LABEL_20;
    }

    switch(a2)
    {
      case 6:
        v2 = &xmmword_1F24E81A0;
        goto LABEL_20;
      case 7:
        v2 = &xmmword_1F24E81D0;
        goto LABEL_20;
      case 8:
        v2 = &xmmword_1F24E8200;
LABEL_20:
        v3 = v2[1];
        *(a1 + 288) = *v2;
        *(a1 + 304) = v3;
        *(a1 + 320) = v2[2];
        break;
    }
  }

  return sub_1AF1BE6FC(a1);
}

uint64_t sub_1AF1BE834(uint64_t a1, uint64_t a2)
{
  memset(v3, 0, sizeof(v3));
  sub_1AF1BE95C(a1, a2, v3);
  result = memcmp(v3, &xmmword_1F24E80B0, 0x30uLL);
  if (result)
  {
    if (!memcmp(v3, &xmmword_1F24E80E0, 0x30uLL))
    {
      return 3;
    }

    else if (!memcmp(v3, &xmmword_1F24E8140, 0x30uLL))
    {
      return 4;
    }

    else if (!memcmp(v3, &xmmword_1F24E8170, 0x30uLL))
    {
      return 5;
    }

    else if (!memcmp(v3, &xmmword_1F24E81A0, 0x30uLL))
    {
      return 6;
    }

    else if (!memcmp(v3, &xmmword_1F24E81D0, 0x30uLL))
    {
      return 7;
    }

    else if (!memcmp(v3, &xmmword_1F24E8200, 0x30uLL))
    {
      return 8;
    }

    else if (!memcmp(v3, &xmmword_1F24E8110, 0x30uLL))
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

__n128 sub_1AF1BE95C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDDFB8(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = *(a1 + 304);
  *a3 = *(a1 + 288);
  *(a3 + 16) = v13;
  result = *(a1 + 320);
  *(a3 + 32) = result;
  return result;
}

uint64_t sub_1AF1BE9BC(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73ABC8 != -1)
  {
    sub_1AFDDE030();
  }

  return qword_1ED73ABC0;
}

double sub_1AF1BE9F4()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73ABC0 = v0;
  v2 = sub_1AF1B2A04(v0, v1);
  sub_1AF1DCFAC(v0, v2);
  sub_1AF1DD02C(@"width", 208, 1, 0);
  sub_1AF1DD02C(@"height", 212, 1, 0);
  sub_1AF1DD02C(@"length", 216, 1, 0);
  sub_1AF1DD02C(@"chamferRadius", 224, 1, 0);
  sub_1AF1DD02C(@"topRadius", 228, 1, 0);
  sub_1AF1DD02C(@"radius", 220, 1, 0);
  sub_1AF1DD02C(@"innerRadius", 232, 1, 0);
  sub_1AF1DD02C(@"pipeRadius", 236, 1, 0);
  sub_1AF1DD02C(@"chamferSegmentCount", 260, 2, 0);
  sub_1AF1DD02C(@"heightSegmentCount", 252, 2, 0);
  sub_1AF1DD02C(@"lengthSegmentCount", 256, 2, 0);
  sub_1AF1DD02C(@"widthSegmentCount", 248, 2, 0);
  sub_1AF1DD02C(@"capSegmentCount", 272, 1, 0);
  sub_1AF1DD02C(@"radialSegmentCount", 264, 2, 0);
  sub_1AF1DD02C(@"cornerSegmentCount", 260, 2, 0);
  sub_1AF1DD02C(@"segmentCount", 244, 2, 0);
  sub_1AF1DD02C(@"radialSpan", 240, 1, 0);
  sub_1AF1DD02C(@"pipeSegmentCount", 268, 2, 0);
  sub_1AF1DD018();
  unk_1ED72E6F0 = xmmword_1F24E8250;
  xmmword_1ED72E6D8 = xmmword_1F24E8260;
  result = *&xmmword_1F24E8270;
  unk_1ED72E700 = xmmword_1F24E8270;
  unk_1ED72E710 = unk_1F24E8280;
  qword_1ED72E720 = qword_1F24E8290;
  qword_1ED72E730 = sub_1AF1C3494;
  return result;
}

float32x2_t sub_1AF1BEC3C(float32x2_t *a1, float32x2_t *a2, float32x2_t result, float32_t a4)
{
  if (a1)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    result.f32[1] = a4;
    a1[1].i32[0] = 0;
    *a1 = vmul_f32(result, 0xBF000000BF000000);
    result = vmul_f32(result, 0x3F0000003F000000);
    a2[1].i32[0] = 0;
    *a2 = result;
  }

  return result;
}

float32x2_t sub_1AF1BEC78(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3)
{
  if (a2)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = a1[26];
    a2[1].i32[0] = 0;
    *a2 = vmul_f32(v4, 0xBF000000BF000000);
    result = vmul_f32(v4, 0x3F0000003F000000);
    a3[1].i32[0] = 0;
    *a3 = result;
  }

  return result;
}

double sub_1AF1BECB4(uint64_t a1, int a2)
{
  v2 = sub_1AF1C22E4(a1, a2);
  if (!v2)
  {
    return 0.0;
  }

  LODWORD(result) = *v2;
  return result;
}

BOOL sub_1AF1BECDC(_OWORD *a1, float a2, float a3)
{
  if (a1)
  {
    v3 = sqrtf((a3 * a3) + (a2 * a2)) * 0.5;
    *&v4 = 0;
    DWORD2(v4) = 0;
    *(&v4 + 3) = v3;
    *a1 = v4;
  }

  return a1 != 0;
}

BOOL sub_1AF1BED0C(uint64_t a1, _OWORD *a2)
{
  if (a2)
  {
    *&v2 = 0;
    DWORD2(v2) = 0;
    *(&v2 + 3) = sqrtf((*(a1 + 212) * *(a1 + 212)) + (*(a1 + 208) * *(a1 + 208))) * 0.5;
    *a2 = v2;
  }

  return a2 != 0;
}

uint64_t sub_1AF1BED40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDDFB8(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  return (*(a1 + 296))(a1, a2, a3);
}

uint64_t sub_1AF1BEDA8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDDFB8(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return (*(a1 + 304))(a1, a2);
}

void sub_1AF1BEE08(void *a1, uint64_t a2, unsigned int *a3, _OWORD *a4, _OWORD *a5, unsigned int a6)
{
  v10 = a2;
  v36 = a1[26];
  v12 = sub_1AF1BF028(a1, a2);
  if (a6 >= 2)
  {
    if (a6 == 2)
    {

      sub_1AF1B3A88(a1, v10, a3, a4, a5, 2);
    }
  }

  else
  {
    v14 = vmul_f32(v36, 0x3F0000003F000000);
    if (v12 <= 0.0)
    {
      if (v10 >= 1)
      {
        v29 = vneg_f32(v14);
        v30 = vdupq_n_s64(0x3EF0001000100010uLL);
        v31 = a5;
        do
        {
          v32 = 214013 * *a3 + 2531011;
          *a3 = 214013 * v32 + 2531011;
          v33.i32[0] = v32;
          v33.i32[1] = 214013 * v32 + 2531011;
          v34 = vshr_n_u32(v33, 0x10uLL);
          v35.i64[0] = v34.u32[0];
          v35.i64[1] = v34.u32[1];
          *&v13 = vmla_f32(v29, v36, vcvt_f32_f64(vmulq_f64(vcvtq_f64_u64(v35), v30)));
          *a4 = v13;
          if (a5)
          {
            *v31 = xmmword_1AFE20180;
          }

          ++v31;
          ++a4;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      if (v14.f32[0] >= v14.f32[1])
      {
        v15 = v14.f32[1];
      }

      else
      {
        v15 = v14.f32[0];
      }

      if (v12 >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = v12;
      }

      if (v10 >= 1)
      {
        v17 = 0;
        v18 = -v14.f32[0];
        v14.f32[0] = v16 - v14.f32[0];
        do
        {
          v19 = *a3;
          do
          {
            v20 = 214013 * v19 + 2531011;
            v21 = HIWORD(v20) * 0.0000152590219;
            v22 = v18 + (v21 * v36.f32[0]);
            v19 = 214013 * v20 + 2531011;
            v23 = HIWORD(v19) * 0.0000152590219;
            v24 = (v23 * v36.f32[1]) - v14.f32[1];
            v25 = v14.f32[0] + fabsf(v22);
            if (v25 <= 0.0)
            {
              break;
            }

            v26 = (v16 - v14.f32[1]) + fabsf(v24);
            v27 = (v26 * v26) + (v25 * v25);
          }

          while (v26 > 0.0 && v27 > (v16 * v16));
          *a3 = v19;
          a4[v17] = __PAIR64__(LODWORD(v24), LODWORD(v22));
          if (a5)
          {
            a5[v17] = xmmword_1AFE20180;
          }

          ++v17;
        }

        while (v17 != v10);
      }
    }
  }
}

float sub_1AF1BF028(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 224);
}

uint64_t sub_1AF1BF08C(uint64_t a1)
{
  sub_1AF1C236C(a1, 0, 1.0);
  sub_1AF1C236C(a1, 1, 1.0);
  sub_1AF1C236C(a1, 3, 0.0);
  sub_1AF1C213C(a1, 9, 1);
  sub_1AF1C213C(a1, 10, 1);

  return sub_1AF1C213C(a1, 12, 10);
}

uint64_t sub_1AF1BF114(_DWORD *a1, _DWORD *a2)
{
  *a2 = 2;
  a2[1] = a1[69];
  a2[2] = a1[52];
  a2[3] = a1[53];
  a2[4] = a1[56];
  a2[5] = a1[62];
  a2[6] = a1[63];
  a2[7] = a1[65];
  a2[8] = a1[71];
  return 36;
}

float32x2_t sub_1AF1BF164(float32x2_t *a1, float32x2_t *a2, float32x2_t result, float32_t a4, float a5)
{
  if (a1)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    result.f32[1] = a4;
    a1[1].f32[0] = a5 * -0.5;
    *a1 = vmul_f32(result, 0xBF000000BF000000);
    result = vmul_f32(result, 0x3F0000003F000000);
    a2[1].f32[0] = a5 * 0.5;
    *a2 = result;
  }

  return result;
}

float32_t sub_1AF1BF1B0(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3)
{
  if (a2)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = a1[27].f32[0];
    v5 = a1[26];
    a2[1].f32[0] = v4 * -0.5;
    *a2 = vmul_f32(v5, 0xBF000000BF000000);
    result = v4 * 0.5;
    a3[1].f32[0] = result;
    *a3 = vmul_f32(v5, 0x3F0000003F000000);
  }

  return result;
}

BOOL sub_1AF1BF200(_OWORD *a1, float a2, float a3, float a4)
{
  if (a1)
  {
    v4 = sqrtf(((a3 * a3) + (a2 * a2)) + (a4 * a4)) * 0.5;
    *&v5 = 0;
    DWORD2(v5) = 0;
    *(&v5 + 3) = v4;
    *a1 = v5;
  }

  return a1 != 0;
}

BOOL sub_1AF1BF234(float *a1, _OWORD *a2)
{
  if (a2)
  {
    *&v2 = 0;
    DWORD2(v2) = 0;
    *(&v2 + 3) = sqrtf(((a1[53] * a1[53]) + (a1[52] * a1[52])) + (a1[54] * a1[54])) * 0.5;
    *a2 = v2;
  }

  return a2 != 0;
}

void sub_1AF1BF270(const void *a1, uint64_t a2, unsigned int *a3, float32x4_t *a4, float32x4_t *a5, int a6)
{
  v10 = a2;
  v99 = sub_1AF1BF984(a1, a2);
  v100 = sub_1AF1BF9CC(a1, v12);
  v14 = sub_1AF1BFA14(a1, v13);
  v16 = sub_1AF1BF028(a1, v15);
  *v19.f32 = vmul_f32(__PAIR64__(LODWORD(v100), LODWORD(v99)), 0x3F0000003F000000);
  v20.i64[0] = v19.i64[0];
  v21 = v14 * 0.5;
  v22 = v19.f32[1];
  if (v19.f32[0] >= v19.f32[1])
  {
    v23 = v19.f32[1];
  }

  else
  {
    v23 = v19.f32[0];
  }

  if (v23 >= v21)
  {
    v23 = v14 * 0.5;
  }

  if (v16 >= v23)
  {
    v16 = v23;
  }

  if (v16 >= 0.0)
  {
    *v17.i32 = v16;
  }

  else
  {
    *v17.i32 = 0.0;
  }

  if (a6 == 2)
  {

    sub_1AF1B3A88(a1, v10, a3, a4, a5, 2);
  }

  else
  {
    v20.f32[2] = v14 * 0.5;
    v24 = *v17.i32 * *v17.i32;
    v25 = vsubq_f32(v20, vdupq_lane_s32(v17, 0));
    if (a6 == 1)
    {
      if (*v17.i32 <= 0.0)
      {
        if (v10 >= 1)
        {
          v86 = vneg_f32(*v19.f32);
          v87 = -v21;
          v88 = vdupq_n_s64(0x3EF0001000100010uLL);
          v89 = a5;
          do
          {
            v90 = 214013 * *a3 + 2531011;
            v91.i32[0] = v90;
            v91.i32[1] = 214013 * v90 + 2531011;
            v92 = vshr_n_u32(v91, 0x10uLL);
            v93.i64[0] = v92.u32[0];
            v93.i64[1] = v92.u32[1];
            v96 = vmulq_f64(vcvtq_f64_u64(v93), v88);
            *v96.f32 = vmla_f32(v86, __PAIR64__(LODWORD(v100), LODWORD(v99)), vcvt_f32_f64(v96));
            v94 = 214013 * (214013 * v90 + 2531011) + 2531011;
            *a3 = v94;
            v95 = HIWORD(v94) * 0.0000152590219;
            v96.f32[2] = v87 + (v95 * v14);
            *a4 = v96;
            if (a5)
            {
              v97 = vmulq_f32(v96, v96);
              *&v98 = v97.f32[2] + vaddv_f32(*v97.f32);
              *v97.f32 = vrsqrte_f32(v98);
              *v97.f32 = vmul_f32(*v97.f32, vrsqrts_f32(v98, vmul_f32(*v97.f32, *v97.f32)));
              *v89 = vmulq_n_f32(v96, vmul_f32(*v97.f32, vrsqrts_f32(v98, vmul_f32(*v97.f32, *v97.f32))).f32[0]);
            }

            ++v89;
            ++a4;
            --v10;
          }

          while (v10);
        }
      }

      else if (v10 >= 1)
      {
        v69 = 0;
        v70 = vneg_f32(*v19.f32);
        v71 = -v21;
        v72 = vdupq_n_s64(0x3EF0001000100010uLL);
        do
        {
          v73 = *a3;
          do
          {
            v74 = 214013 * v73 + 2531011;
            v75.i32[0] = v74;
            v75.i32[1] = 214013 * v74 + 2531011;
            v76 = vshr_n_u32(v75, 0x10uLL);
            v77.i64[0] = v76.u32[0];
            v77.i64[1] = v76.u32[1];
            v79 = vmulq_f64(vcvtq_f64_u64(v77), v72);
            v73 = 214013 * (214013 * v74 + 2531011) + 2531011;
            *v79.f32 = vmla_f32(v70, __PAIR64__(LODWORD(v100), LODWORD(v99)), vcvt_f32_f64(v79));
            v78 = HIWORD(v73) * 0.0000152590219;
            v79.f32[2] = v71 + (v78 * v14);
            v80 = vsubq_f32(vabsq_f32(v79), v25);
            v81 = v80.f32[1];
            v82 = v80.f32[1] > 0.0;
            if (v80.f32[0] > 0.0)
            {
              ++v82;
            }

            if (v80.f32[2] > 0.0)
            {
              ++v82;
            }

            if (v82 == 2)
            {
              if (v80.f32[0] <= v80.f32[1])
              {
                v80.f32[0] = v80.f32[1];
              }

              if (v80.f32[1] <= v80.f32[2])
              {
                v81 = v80.f32[2];
              }

              v83 = (v81 * v81) + (v80.f32[0] * v80.f32[0]);
            }

            else
            {
              if (v82 != 3)
              {
                break;
              }

              v83 = ((v80.f32[1] * v80.f32[1]) + (v80.f32[0] * v80.f32[0])) + (v80.f32[2] * v80.f32[2]);
            }
          }

          while (v83 > v24);
          *a3 = v73;
          a4[v69] = v79;
          if (a5)
          {
            v84 = vmulq_f32(v79, v79);
            *&v85 = v84.f32[2] + vaddv_f32(*v84.f32);
            *v84.f32 = vrsqrte_f32(v85);
            *v84.f32 = vmul_f32(*v84.f32, vrsqrts_f32(v85, vmul_f32(*v84.f32, *v84.f32)));
            a5[v69] = vmulq_n_f32(v79, vmul_f32(*v84.f32, vrsqrts_f32(v85, vmul_f32(*v84.f32, *v84.f32))).f32[0]);
          }

          ++v69;
        }

        while (v69 != v10);
      }
    }

    else if (!a6 && v10 >= 1)
    {
      v19.f32[0] = v19.f32[1] * v21;
      v19.f32[1] = v20.f32[0] * v21;
      v19.f32[2] = v20.f32[0] * v22;
      v26 = vmulq_n_f32(v19, 1.0 / ((v20.f32[0] * v22) + ((v22 * v21) + (v20.f32[0] * v21))));
      v27 = v26.f32[0] + v26.f32[0];
      v28 = (v26.f32[0] + v26.f32[0]) + v26.f32[1] * 2.0;
      v29.i64[0] = 0x8000000080000000;
      v29.i64[1] = 0x8000000080000000;
      v30 = a5;
      do
      {
        v31 = 214013 * *a3 + 2531011;
        v32 = HIWORD(v31) * 0.0000152590219;
        v33 = v32 * 2.0 + -1.0;
        v34 = 214013 * v31 + 2531011;
        v35 = HIWORD(v34) * 0.0000152590219;
        v36 = v35 * 2.0 + -1.0;
        v37 = 214013 * v34 + 2531011;
        *a3 = v37;
        v38 = HIWORD(v37) * 0.0000152590219;
        v39 = v38 + v38;
        v40 = v26.f32[2] == 1.0;
        if ((v39 - v28) < v26.f32[2])
        {
          v40 = 1;
        }

        v41 = v26.f32[1] == 1.0;
        if ((v39 - v27) < v26.f32[1])
        {
          v41 = 1;
        }

        if (v39 < v28)
        {
          v40 = v41;
        }

        v42 = -1;
        if (v39 < v28)
        {
          v43 = 1;
        }

        else
        {
          v43 = 2;
        }

        v44 = v26.f32[0] == 1.0;
        if (v39 < v26.f32[0])
        {
          v44 = 1;
        }

        if (v39 < v27)
        {
          v42 = 2;
        }

        else
        {
          v44 = v40;
        }

        if (v39 < v27)
        {
          v45 = 0;
        }

        else
        {
          v45 = v43;
        }

        if (v45 == 2)
        {
          v46 = 0;
        }

        else
        {
          v46 = v45 + 1;
        }

        v47 = v45 + v42;
        v106 = v20;
        v48 = *(&v106 | (4 * v45));
        if (!v44)
        {
          v48 = -v48;
        }

        v107 = 0uLL;
        *(&v107 & 0xFFFFFFFFFFFFFFF3 | (4 * (v45 & 3))) = v48;
        v49 = *(&v106 & 0xFFFFFFFFFFFFFFF3 | (4 * (v46 & 3))) * v33;
        v108 = v107;
        *(&v108 & 0xFFFFFFFFFFFFFFF3 | (4 * (v46 & 3))) = v49;
        v50 = *(&v106 & 0xFFFFFFFFFFFFFFF3 | (4 * (v47 & 3))) * v36;
        v109 = v108;
        *(&v109 & 0xFFFFFFFFFFFFFFF3 | (4 * (v47 & 3))) = v50;
        v51 = v109;
        v52 = v109;
        v52.i32[3] = v18;
        if (*v17.i32 <= 0.0)
        {
          goto LABEL_59;
        }

        v53 = vsubq_f32(vabsq_f32(v109), v25);
        v54 = v53.f32[1] > 0.0;
        if (v53.f32[0] > 0.0)
        {
          ++v54;
        }

        if (v53.f32[2] > 0.0)
        {
          ++v54;
        }

        if (v54 == 3)
        {
          v56 = vmulq_f32(v53, v53);
          v57 = vaddv_f32(*v56.f32);
          if ((v56.f32[2] + v57) > v24)
          {
            v58 = vmlaq_n_f32(v25, v53, *v17.i32 / sqrtf(v56.f32[2] + v57));
            *v52.f32 = vbsl_s8(0x8000000080000000, *v58.f32, *v109.i8);
            v53.i32[0] = v58.i32[2];
            v51.i32[0] = v109.i32[2];
            v52.i32[2] = vbslq_s8(v29, v53, v51).u32[0];
LABEL_58:
            v52.i32[3] = v18;
          }
        }

        else if (v54 == 2)
        {
          if (v45 == 2)
          {
            v55 = v53.f32[1] <= 0.0;
          }

          else if (v45 == 1)
          {
            v55 = 2 * (v53.f32[0] > 0.0);
          }

          else if (v53.f32[1] <= 0.0)
          {
            v55 = 1;
          }

          else
          {
            v55 = 2;
          }

          if (v55 == 2)
          {
            v59 = 0;
          }

          else
          {
            v59 = v55 + 1;
          }

          v60 = (v55 + 2) % 3u;
          v101 = v53;
          *(&v101 & 0xFFFFFFFFFFFFFFF3 | (4 * (v55 & 3))) = 0;
          v61 = v101;
          v62 = vmulq_f32(v61, v61);
          v62.f32[0] = *v17.i32 / sqrtf(v62.f32[2] + vaddv_f32(*v62.f32));
          v63 = (&v104 & 0xFFFFFFFFFFFFFFF3 | (4 * (v59 & 3)));
          v102 = v25;
          v64 = *(&v102 & 0xFFFFFFFFFFFFFFF3 | (4 * (v59 & 3)));
          v103 = v101;
          v61.f32[0] = v64 + (*(&v103 & 0xFFFFFFFFFFFFFFF3 | (4 * (v59 & 3))) * v62.f32[0]);
          v104 = v51;
          v51.i32[0] = *v63;
          *v63 = vbslq_s8(v29, v61, v51).u32[0];
          v65 = v104;
          v66 = (&v105 & 0xFFFFFFFFFFFFFFF3 | (4 * (v60 & 3)));
          v61.f32[0] = *(&v102 & 0xFFFFFFFFFFFFFFF3 | (4 * (v60 & 3))) + (*(&v103 & 0xFFFFFFFFFFFFFFF3 | (4 * (v60 & 3))) * v62.f32[0]);
          v105 = v104;
          v65.i32[0] = *v66;
          *v66 = vbslq_s8(v29, v61, v65).u32[0];
          v52 = v105;
          goto LABEL_58;
        }

LABEL_59:
        *a4 = v52;
        if (a5)
        {
          v67 = vmulq_f32(v52, v52);
          *&v68 = v67.f32[2] + vaddv_f32(*v67.f32);
          *v67.f32 = vrsqrte_f32(v68);
          *v67.f32 = vmul_f32(*v67.f32, vrsqrts_f32(v68, vmul_f32(*v67.f32, *v67.f32)));
          *v30 = vmulq_n_f32(v52, vmul_f32(*v67.f32, vrsqrts_f32(v68, vmul_f32(*v67.f32, *v67.f32))).f32[0]);
        }

        ++v30;
        ++a4;
        v18 = v52.i32[3];
        --v10;
      }

      while (v10);
    }
  }
}

float sub_1AF1BF984(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 208);
}

float sub_1AF1BF9CC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 212);
}

float sub_1AF1BFA14(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 216);
}

uint64_t sub_1AF1BFA5C(uint64_t a1)
{
  sub_1AF1C236C(a1, 0, 1.0);
  sub_1AF1C236C(a1, 1, 1.0);
  sub_1AF1C236C(a1, 2, 1.0);
  sub_1AF1C236C(a1, 3, 0.0);
  sub_1AF1C213C(a1, 9, 1);
  sub_1AF1C213C(a1, 10, 1);
  sub_1AF1C213C(a1, 11, 1);

  return sub_1AF1C213C(a1, 12, 10);
}