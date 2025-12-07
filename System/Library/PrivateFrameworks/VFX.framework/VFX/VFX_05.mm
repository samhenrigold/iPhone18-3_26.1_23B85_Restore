void sub_1AF133EE8(_BOOL8 a1, void *value)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, value), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD2A58(v4, value, v5, v6, v7, v8, v9, v10);
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
    sub_1AFDD137C(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  *(v3 + 153) = 1;
  Mutable = *(v3 + 144);
  if (!Mutable)
  {
    Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
    *(v3 + 144) = Mutable;
  }

  CFSetAddValue(Mutable, value);
}

void sub_1AF133F8C(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2A58(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  *(result + 154) = 1;
}

void sub_1AF133FD8(_BOOL8 a1, void *value)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, value), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD2A58(v4, value, v5, v6, v7, v8, v9, v10);
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
    sub_1AFDD137C(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  *(v3 + 153) = 1;
  Mutable = *(v3 + 136);
  if (!Mutable)
  {
    Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
    *(v3 + 136) = Mutable;
  }

  CFSetAddValue(Mutable, value);
}

void sub_1AF13407C(_BOOL8 a1, void *value)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, value), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD2A58(v4, value, v5, v6, v7, v8, v9, v10);
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
    sub_1AFDD137C(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  *(v3 + 153) = 1;
  v19 = *(v3 + 128);
  if (v19)
  {
    CFSetRemoveValue(v19, value);
  }

  Mutable = *(v3 + 120);
  if (!Mutable)
  {
    Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
    *(v3 + 120) = Mutable;
  }

  CFSetAddValue(Mutable, value);
  sub_1AF133FD8(v3, value);
  sub_1AF133EE8(v3, value);
  sub_1AF133F8C(v3, v21);
}

void sub_1AF134150(_BOOL8 a1, void *value)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, value), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD2A58(v4, value, v5, v6, v7, v8, v9, v10);
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
    sub_1AFDD137C(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  *(v3 + 153) = 1;
  v19 = *(v3 + 120);
  if (v19)
  {
    CFSetRemoveValue(v19, value);
  }

  v20 = *(v3 + 136);
  if (v20)
  {
    CFSetRemoveValue(v20, value);
  }

  v21 = *(v3 + 144);
  if (v21)
  {
    CFSetRemoveValue(v21, value);
  }

  Mutable = *(v3 + 128);
  if (!Mutable)
  {
    Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
    *(v3 + 128) = Mutable;
  }

  CFSetAddValue(Mutable, value);
}

void sub_1AF134224(uint64_t result, uint64_t a2)
{
  context[3] = *MEMORY[0x1E69E9840];
  if (!result)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2A58(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(result + 153) & 1) != 0 || (*(result + 152) & 1) == 0)
  {
    *(result + 153) = 0;
    v10 = *(result + 16);
    context[0] = result;
    context[1] = sub_1AF1CF878(v10, a2);
    context[2] = v10;
    v12 = *(result + 128);
    if (v12)
    {
      CFSetApplyFunction(v12, sub_1AF1343CC, context);
      CFSetRemoveAllValues(*(result + 128));
    }

    v13 = *(result + 120);
    if (v13)
    {
      CFSetApplyFunction(v13, sub_1AF134488, context);
      CFSetRemoveAllValues(*(result + 120));
    }

    v14 = *(result + 136);
    if (v14)
    {
      CFSetApplyFunction(v14, sub_1AF134514, context);
      CFSetRemoveAllValues(*(result + 136));
    }

    if (*(result + 152))
    {
      v15 = *(result + 144);
      if (v15)
      {
        CFSetApplyFunction(v15, sub_1AF1345E8, context);
        CFSetRemoveAllValues(*(result + 144));
      }
    }

    else
    {
      v16 = sub_1AF1CEDE4(*(result + 16), v11);
      if (v16)
      {
        CFDictionaryApplyFunction(v16, sub_1AF1345DC, context);
      }
    }

    v17 = *(result + 112);
    if (v17)
    {
      v18 = 0;
      CFDictionaryApplyFunction(v17, sub_1AF1345F8, &v18);
      sub_1AF1CEF34(v10, v18);
    }

    *(result + 152) = 1;
  }
}

void sub_1AF1343CC(void *key, void *a2)
{
  v3 = *a2;
  v4 = *(*a2 + 112);
  if (v4)
  {
    v5 = a2[1];
    Value = CFDictionaryGetValue(v4, key);
    if (Value)
    {
      v8 = Value;
      CFDictionaryRemoveValue(*(v3 + 112), key);

      MEMORY[0x1EEE66B58](v5, sel_destroyObject_, v8);
    }

    else
    {
      v10 = sub_1AF0D5194(0, v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDD36EC();
      }
    }
  }

  else
  {
    v9 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDD3728();
    }
  }
}

void sub_1AF134488(void *key, void *a2)
{
  v4 = *a2;
  v3 = a2[1];
  Mutable = *(*a2 + 112);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], 0);
    *(v4 + 112) = Mutable;
  }

  if (!CFDictionaryGetValue(Mutable, key))
  {
    v8 = objc_msgSend_newObject(v3, v6, v7);
    v9 = *(v4 + 112);

    CFDictionarySetValue(v9, key, v8);
  }
}

void sub_1AF134514(void *key, void *a2)
{
  v3 = *(*a2 + 112);
  if (v3)
  {
    v4 = a2[1];
    if (CFDictionaryGetValue(v3, key))
    {
      v6 = sub_1AF1BBFEC(key, v5);
      if (v6)
      {
        v8 = sub_1AF350D00(v6, v7);

        MEMORY[0x1EEE66B58](v4, sel_updateForceField_of_, v8);
      }
    }

    else
    {
      v10 = sub_1AF0D5194(0, v5);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDD3764();
      }
    }
  }

  else
  {
    v9 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDD37D8();
    }
  }
}

uint64_t sub_1AF1345F8(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = sub_1AF1BBE9C(a1, a2);
  if (result)
  {
    ++*a3;
  }

  return result;
}

const __CFDictionary *sub_1AF13462C(uint64_t a1, const void *a2)
{
  result = *(a1 + 112);
  if (result)
  {
    return CFDictionaryGetValue(result, a2);
  }

  return result;
}

void sub_1AF134650(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF1B7558(a2, a2);
  if (!v4)
  {
    v5 = sub_1AF0D5194(0, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD3814(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1AF134708;
  v13[3] = &unk_1E7A79C80;
  v14 = *(a1 + 32);
  sub_1AF16BD24(v4, v13);
}

void sub_1AF134708(uint64_t a1, int a2, void *value)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  if (!v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = CFSetCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(a1 + 40));
    CFAutorelease(*(*(*(a1 + 32) + 8) + 24));
    v5 = *(*(*(a1 + 32) + 8) + 24);
  }

  CFSetAddValue(v5, value);
}

const __CFDictionary *sub_1AF134790(uint64_t a1, const void *a2, uint64_t a3)
{
  sub_1AF1BBAE0(a2, a2);
  v7 = sub_1AF1B9B04(a2, v6);
  if (v7)
  {
    v8 = sub_1AF1BC054(a2);
    if (v8)
    {
      v11 = sub_1AF16A4C8(v8, v9, v10);
      if (v11)
      {
        v14 = v11;
        objc_msgSend_transform(v11, v12, v13);
        if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v17, *v7), vceqq_f32(v18, v7[1])), vandq_s8(vceqq_f32(v19, v7[2]), vceqq_f32(v20, v7[3])))) & 0x80000000) == 0)
        {
          objc_msgSend_setTransform_(v14, v15, v16);
        }
      }
    }
  }

  result = *(a1 + 112);
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v23 = result;
      v24 = sub_1AF1BBFEC(a2, v22);
      if (v24 && (sub_1AF350704(v24, v25) & 1) == 0)
      {
        sub_1AF1B7F84(a2, v26);
      }

      return MEMORY[0x1EEE66B58](a3, sel_updateWorldTransform_of_, v23);
    }
  }

  return result;
}

void *sub_1AF1348BC(int *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0.0;
  v6 = 1.17549435e-38;
  v7 = 3.40282347e38;
  for (i = 88; i != 208; i += 2)
  {
    v9 = *&a1[i];
    if (v7 >= v9)
    {
      v7 = *&a1[i];
    }

    if (v6 < v9)
    {
      v6 = *&a1[i];
    }

    v5 = v5 + v9;
  }

  *(a1 + 42) = v7;
  *(a1 + 43) = v6;
  *(a1 + 41) = v5 / 60.0;
  v47 = a1[2];
  v48 = a1[1];
  v10 = a1[4];
  v11 = a1[6];
  v46 = a1[5];
  v12 = a1[7];
  v50 = *a1;
  v51 = a1[8];
  v13 = a1[9];
  v14 = a1[10];
  v15 = a1[11];
  v16 = a1[12];
  v49 = a1[13];
  v52 = a1[3];
  v53 = a1[14];
  v17 = *(a1 + 15);
  v18 = *(a1 + 19);
  v65 = a1[23];
  v63 = v17;
  v64 = v18;
  v43 = *(a1 + 7);
  v44 = *(a1 + 6);
  v45 = *(a1 + 9);
  v40 = *(a1 + 10);
  v41 = *(a1 + 11);
  v42 = *(a1 + 8);
  v19 = *(a1 + 24);
  v20 = *(a1 + 50);
  v21 = *(a1 + 54);
  v22 = *(a1 + 62);
  v57 = *(a1 + 58);
  v58 = v22;
  v55 = v20;
  v56 = v21;
  v23 = *(a1 + 66);
  v24 = *(a1 + 70);
  v25 = *(a1 + 74);
  v62 = *(a1 + 39);
  v60 = v24;
  v61 = v25;
  v59 = v23;
  result = memcpy(__dst, a1 + 80, sizeof(__dst));
  if (v10 <= 1)
  {
    v27 = 1;
  }

  else
  {
    v27 = v10;
  }

  if (a2)
  {
    v62 = *(a2 + 312);
    v28 = *(a2 + 232);
    v56 = *(a2 + 216);
    v57 = v28;
    v29 = *(a2 + 264);
    v30 = *(a2 + 280);
    v58 = *(a2 + 248);
    v59 = v29;
    v31 = *(a2 + 296);
    v60 = v30;
    v61 = v31;
  }

  if (a3)
  {
    v32 = vdupq_lane_s64(COERCE__INT64(v27), 0);
    v33 = v63;
    *(a3 + 76) = v64;
    *a3 = v50 / v27;
    *(a3 + 4) = v48 / v27;
    *(a3 + 8) = v47 / v27;
    *(a3 + 12) = v52;
    *(a3 + 16) = v10;
    *(a3 + 20) = v46 / v27;
    *(a3 + 24) = v11 / v27;
    *(a3 + 28) = v12 / v27;
    *(a3 + 32) = v51;
    *(a3 + 36) = v13 / v27;
    *(a3 + 40) = v14 / v27;
    *(a3 + 44) = v15 / v27;
    *(a3 + 48) = v16 / v27;
    *(a3 + 52) = v49 / v27;
    *(a3 + 56) = v53 / v27;
    *(a3 + 92) = v65;
    *(a3 + 60) = v33;
    *(a3 + 96) = vdivq_f64(v44, v32);
    *(a3 + 112) = vdivq_f64(v43, v32);
    *(a3 + 128) = vdivq_f64(v42, v32);
    *(a3 + 144) = vdivq_f64(v45, v32);
    *(a3 + 160) = vdivq_f64(v40, v32);
    *(a3 + 176) = vdivq_f64(v41, v32);
    *(a3 + 192) = v19 / v27;
    v34 = v55;
    v35 = v56;
    v36 = v57;
    *(a3 + 248) = v58;
    *(a3 + 232) = v36;
    *(a3 + 216) = v35;
    *(a3 + 200) = v34;
    v37 = v59;
    v38 = v60;
    v39 = v61;
    *(a3 + 312) = v62;
    *(a3 + 280) = v38;
    *(a3 + 296) = v39;
    *(a3 + 264) = v37;
    return memcpy((a3 + 320), __dst, 0x218uLL);
  }

  return result;
}

void sub_1AF134B58(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD388C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 840) = CACurrentMediaTime();
}

CFTimeInterval sub_1AF134BC4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD388C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  result = CACurrentMediaTime();
  v12 = result - *(a1 + 848);
  *(a1 + 96) = result - *(a1 + 840);
  *(a1 + 848) = result;
  v13 = *(a1 + 832);
  *(a1 + 8 * v13 + 352) = v12;
  *(a1 + 832) = (v13 + 1) % 0x3Cu;
  ++*(a1 + 16);
  return result;
}

void sub_1AF134C64(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;

  v3 = *(a1 + 96);
  *(a1 + 96) = 0;

  v4 = *(a1 + 120);
  *(a1 + 120) = 0;

  vfx_counters_destroy(*(a1 + 32));
  CFRelease(*(a1 + 88));
  CFRelease(*(a1 + 112));
  v5 = *(a1 + 136);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 136) = 0;
  }

  v6 = *(a1 + 144);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 144) = 0;
  }

  v7 = *(a1 + 160);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 160) = 0;
  }

  v8 = *(a1 + 168);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 168) = 0;
  }
}

__n128 CFXGPUDeviceGetCounters@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 40);
  v3 = *(a1 + 56);
  *a2 = result;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 72);
  return result;
}

void sub_1AF134D2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = *(WeakRetained + 24);
    v16 = WeakRetained;
    if (v9)
    {
      vfx_counters_update(*(WeakRetained + 4), *(a1 + 56), v3, v4, v5, v6, v7, v8, -1.0);
      vfx_counters_update(*(v16 + 4), *(a1 + 60), v10, v11, v12, v13, v14, v15, -*(a1 + 40));
      WeakRetained = v16;
      v9 = *(v16 + 24);
    }

    if ((v9 & 2) != 0)
    {
      os_unfair_lock_lock(v16 + 38);
      CFArrayAppendValue(*(v16 + 20), *(a1 + 48));
      os_unfair_lock_unlock(v16 + 38);
      WeakRetained = v16;
    }
  }
}

void sub_1AF134DE4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 24);
  if ((v6 & 2) != 0)
  {
    os_unfair_lock_lock((a1 + 128));
    CFArrayAppendValue(*(a1 + 144), v5);
    os_unfair_lock_unlock((a1 + 128));
    v6 = *(a1 + 24);
  }

  v7 = *(a3 + 12);
  v8 = (v7 >> 44) & 7;
  v9 = (v7 & 0x600000000000) == 0x200000000000;
  v10 = 56;
  if (v9)
  {
    v10 = 60;
  }

  v11 = *(a1 + v10);
  v12 = 64;
  if (v8 == 2)
  {
    v12 = 68;
  }

  v13 = *(a1 + v12);
  if (v6)
  {
    *location = *a3;
    v33 = *(a3 + 16);
    v14 = CFXTextureDescriptorComputeBytesPerTexture(location);
    vfx_counters_update(*(a1 + 32), v11, v15, v16, v17, v18, v19, v20, 1.0);
    if (v8 != 3)
    {
      vfx_counters_update(*(a1 + 32), v13, v21, v22, v23, v24, v25, v26, v14);
    }
  }

  else
  {
    v14 = 0;
  }

  objc_initWeak(location, a1);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1AF134F90;
  v27[3] = &unk_1E7A79CF8;
  objc_copyWeak(v28, location);
  v31 = v8 == 3;
  v29 = v11;
  v30 = v13;
  v28[1] = v14;
  v28[2] = v5;
  sub_1AF0D29D4(v5, a1, v27);
  objc_destroyWeak(v28);
  objc_destroyWeak(location);
}

void sub_1AF134F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AF134F90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v15 = WeakRetained;
    if (WeakRetained[3])
    {
      vfx_counters_update(WeakRetained[4], *(a1 + 56), v3, v4, v5, v6, v7, v8, -1.0);
      WeakRetained = v15;
      if ((*(a1 + 64) & 1) == 0)
      {
        vfx_counters_update(v15[4], *(a1 + 60), v9, v10, v11, v12, v13, v14, -*(a1 + 40));
        WeakRetained = v15;
      }
    }

    if ((WeakRetained[3] & 2) != 0)
    {
      os_unfair_lock_lock(v15 + 38);
      CFArrayAppendValue(v15[21], *(a1 + 48));
      os_unfair_lock_unlock(v15 + 38);
      WeakRetained = v15;
    }
  }
}

void *CFXGPUDeviceCreateTexture(uint64_t a1, __int128 *a2)
{
  v4 = objc_opt_new();
  v14 = *a2;
  v15 = *(a2 + 2);
  v5 = CFXTextureDescriptorFillMTLDescriptor(&v14, v4);
  v7 = *(a2 + 12);
  if ((*(a1 + 24) & 2) != 0 && ((v8 = v7 & 0xF0000000000, v9 = v7 & 0x700000000000, v8 != 0x40000000000) ? (v10 = v9 == 0x200000000000) : (v10 = 0), v10) || (v5 = objc_msgSend_newTextureWithDescriptor_(*(a1 + 16), v6, v4)) == 0)
  {
    v12 = sub_1AF0D5194(v5, v6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDD3904();
    }

    v11 = 0;
  }

  else
  {
    v11 = v5;
    v14 = *a2;
    v15 = *(a2 + 2);
    sub_1AF134DE4(a1, v5, &v14);
  }

  return v11;
}

uint64_t sub_1AF1351D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 1111970369)
  {
    return 80;
  }

  if (a1 == 1380401729)
  {
    return 70;
  }

  v3 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD3980(v3);
  }

  return 0;
}

uint64_t sub_1AF135250@<X0>(__IOSurface *a1@<X0>, uint64_t a2@<X8>)
{
  PixelFormat = IOSurfaceGetPixelFormat(a1);
  v6 = sub_1AF1351D4(PixelFormat, v5);
  Width = IOSurfaceGetWidth(a1);
  Height = IOSurfaceGetHeight(a1);

  return CFXTextureDescriptorMake2D(Width, Height, v6, a2);
}

void *CFXGPUDeviceCreateTextureWithIOSurfaceAndDesc(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_new();
  v15 = *a2;
  v16 = *(a2 + 2);
  CFXTextureDescriptorFillMTLDescriptor(&v15, v8);
  v11 = objc_msgSend_newTextureWithDescriptor_iosurface_plane_(*(a1 + 16), v9, v8, a3, a4);
  if (v11)
  {
    v15 = *a2;
    v16 = *(a2 + 2);
    sub_1AF134DE4(a1, v11, &v15);
    v12 = v11;
  }

  else
  {
    v13 = sub_1AF0D5194(0, v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDD3A04();
    }
  }

  return v11;
}

void *CFXGPUDeviceCreateTextureWithIOSurface(uint64_t a1, __IOSurface *a2, uint64_t a3)
{
  v9 = 0uLL;
  v10 = 0;
  sub_1AF135250(a2, &v9);
  v7 = v9;
  v8 = v10;
  return CFXGPUDeviceCreateTextureWithIOSurfaceAndDesc(a1, &v7, a2, a3);
}

void sub_1AF13541C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    if (WeakRetained[3])
    {
      vfx_counters_update(WeakRetained[4], *(WeakRetained + 18), v3, v4, v5, v6, v7, v8, -1.0);
    }

    sub_1AF135494((v9 + 10), *(a1 + 40));
    WeakRetained = v9;
  }
}

void sub_1AF135494(uint64_t a1, const void *a2)
{
  os_unfair_lock_lock(a1);
  CFDictionaryRemoveValue(*(a1 + 8), a2);

  os_unfair_lock_unlock(a1);
}

uint64_t CFXGPUDeviceGetSamplerDesc(uint64_t a1, const void *a2)
{
  v2 = sub_1AF135520(a1 + 80, a2);
  if (v2)
  {
    return *v2;
  }

  return sub_1AF0D839C();
}

const void *sub_1AF135520(uint64_t a1, const void *a2)
{
  os_unfair_lock_lock(a1);
  Value = CFDictionaryGetValue(*(a1 + 8), a2);
  os_unfair_lock_unlock(a1);
  return Value;
}

void sub_1AF135564(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    if (WeakRetained[3])
    {
      vfx_counters_update(WeakRetained[4], *(WeakRetained + 19), v3, v4, v5, v6, v7, v8, -1.0);
    }

    sub_1AF135494((v9 + 13), *(a1 + 40));
    WeakRetained = v9;
  }
}

uint64_t CFXGPUDeviceGetDepthStencilDesc(uint64_t a1, const void *a2)
{
  v2 = sub_1AF135520(a1 + 104, a2);
  if (v2)
  {
    return *v2;
  }

  else
  {
    return CFXDepthStencilDescMakeDefault();
  }
}

id CFXGPUDeviceGetFrameworkLibrary(uint64_t a1)
{
  v1 = sub_1AF20C050(VFXMTLResourceManager, *(a1 + 16));
  v2 = sub_1AFDE868C(v1);
  v5 = objc_msgSend_frameworkLibrary(v2, v3, v4);

  sub_1AF20C174(VFXMTLResourceManager);

  return v5;
}

void CFXGPUDeviceFetchAllNewlyCreatedBuffers(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((a1 + 128));
  v4 = *(a1 + 136);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF13576C;
  v6[3] = &unk_1E7A79D68;
  v7 = v3;
  v5 = v3;
  sub_1AF28A5FC(v4, v6);
  CFArrayRemoveAllValues(*(a1 + 136));
  os_unfair_lock_unlock((a1 + 128));
}

void CFXGPUDeviceFetchAllNewlyCreatedTextures(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((a1 + 128));
  v4 = *(a1 + 144);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF13583C;
  v6[3] = &unk_1E7A79D68;
  v7 = v3;
  v5 = v3;
  sub_1AF28A5FC(v4, v6);
  CFArrayRemoveAllValues(*(a1 + 144));
  os_unfair_lock_unlock((a1 + 128));
}

void CFXGPUDeviceFetchAllNewlyDestroyedBuffers(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((a1 + 152));
  v4 = *(a1 + 160);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF13590C;
  v6[3] = &unk_1E7A79D68;
  v7 = v3;
  v5 = v3;
  sub_1AF28A5FC(v4, v6);
  CFArrayRemoveAllValues(*(a1 + 160));
  os_unfair_lock_unlock((a1 + 152));
}

void CFXGPUDeviceFetchAllNewlyDestroyedTextures(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((a1 + 152));
  v4 = *(a1 + 168);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF1359DC;
  v6[3] = &unk_1E7A79D68;
  v7 = v3;
  v5 = v3;
  sub_1AF28A5FC(v4, v6);
  CFArrayRemoveAllValues(*(a1 + 168));
  os_unfair_lock_unlock((a1 + 152));
}

void sub_1AF135A10(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x18u);
}

uint64_t sub_1AF135A30(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AC78 != -1)
  {
    sub_1AFDD3A7C();
  }

  return qword_1ED73AC70;
}

double sub_1AF135A68()
{
  qword_1ED73AC70 = _CFRuntimeRegisterClass();
  result = *&xmmword_1F24E6EE8;
  xmmword_1ED72EF48 = xmmword_1F24E6EE8;
  return result;
}

uint64_t sub_1AF135AAC(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AC78 != -1)
  {
    sub_1AFDD3A7C();
  }

  v2 = sub_1AF0D160C(qword_1ED73AC70, 0x40uLL);
  *(v2 + 64) = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  return v2;
}

uint64_t sub_1AF135B18(CFDictionaryRef *a1, CFArrayRef theArray, int a3, uint64_t a4)
{
  Count = CFArrayGetCount(theArray);
  v9 = a3 + 1;
  v10 = a3;
  ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
  Value = CFDictionaryGetValue(a1[8], ValueAtIndex);
  v13 = Value;
  if (Value)
  {
    v14 = CFGetTypeID(Value);
    if (v14 == sub_1AF167C2C(v14, v15) && sub_1AF1DB074(v13, theArray, a3 + 1, Count, a4, 0))
    {
      sub_1AF1DE260(a4, a1);
      return 1;
    }
  }

  if (v9 >= Count)
  {
    v18 = 0;
    v17 = 0;
    goto LABEL_19;
  }

  if (Count - 2 != a3)
  {
LABEL_17:
    v19 = Count - a3;
    v20 = Count - a3;
    Mutable = CFArrayCreateMutable(0, v19, MEMORY[0x1E695E9C0]);
    v31.location = v10;
    v31.length = v20;
    CFArrayAppendArray(Mutable, theArray, v31);
    v22 = CFStringCreateByCombiningStrings(0, Mutable, @".");
    v23 = v22;
    CFRelease(Mutable);
    v24 = CFDictionaryGetValue(a1[8], v22);
    v18 = 0;
    v17 = 0;
    if (v24)
    {
      v13 = v24;
    }

    goto LABEL_19;
  }

  v16 = CFArrayGetValueAtIndex(theArray, v9);
  if (CFEqual(v16, @"x"))
  {
    v17 = 0;
LABEL_9:
    v18 = 1;
    goto LABEL_19;
  }

  if (!CFEqual(v16, @"y"))
  {
    if (CFEqual(v16, @"z"))
    {
      v17 = 2;
      goto LABEL_9;
    }

    if (CFEqual(v16, @"w"))
    {
      v17 = 3;
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  v18 = 1;
  v17 = 1;
LABEL_19:
  if (!v13)
  {
    return 0;
  }

  v25 = CFGetTypeID(v13);
  if (v25 != sub_1AF1CD8D8(v25, v26))
  {
    return 0;
  }

  sub_1AF1DE260(a4, a1);
  if (v18)
  {
    v28 = 1;
  }

  else
  {
    v28 = sub_1AF1CDAAC(v13, v27);
  }

  *(a4 + 32) = v28;
  *(a4 + 34) = sub_1AF1CDAF4(v13, v27);
  *(a4 + 24) = sub_1AF1CDA60(v13, v30) + 4 * v17;
  *(a4 + 35) = v17;
  return 1;
}

void sub_1AF135D68(uint64_t a1, const void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 64), a2);
  if (Value)
  {
    v5 = Value;
    v6 = CFGetTypeID(Value);
    if (v6 == sub_1AF1CD8D8(v6, v7))
    {
      v9 = *(v5 + 16);
      v10 = sub_1AF1CDA60(v5, v8);
      v12 = v10;
      if (v9 == 10)
      {
        *v10 = xmmword_1AFE20150;
        v10[1] = xmmword_1AFE20160;
        v10[2] = xmmword_1AFE20180;
        v10[3] = xmmword_1AFE201A0;
      }

      else
      {
        v13 = sub_1AF288070(*(v5 + 16), v11);
        bzero(v12, v13);
      }
    }

    else
    {
      CFDictionaryRemoveValue(*(a1 + 64), a2);
    }

    ++*(a1 + 72);
  }
}

void sub_1AF135E2C(uint64_t a1, void *key, __int16 *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    CFDictionaryRemoveValue(*(a1 + 64), key);
    ++*(a1 + 72);
    return;
  }

  ++*(a1 + 72);
  Value = CFDictionaryGetValue(*(a1 + 64), key);
  v7 = CFGetTypeID(a3);
  v9 = v7;
  if (Value)
  {
    v10 = CFGetTypeID(Value);
    v12 = sub_1AF1CD8D8(v10, v11);
    if (v10 == v12)
    {
      v14 = Value;
    }

    else
    {
      v14 = 0;
    }

    v15 = sub_1AF1CD8D8(v12, v13);
    if (v9 == v15)
    {
      if (v14)
      {
        if (v14[8] != a3[8] && (byte_1EB644888 & 1) == 0)
        {
          byte_1EB644888 = 1;
          v17 = sub_1AF0D5194(v15, v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = sub_1AF2883D8(v14[8], v16);
            v20 = sub_1AF2883D8(a3[8], v19);
            v24 = 138412802;
            v25 = key;
            v26 = 2112;
            v27 = v18;
            v28 = 2112;
            v29 = v20;
            _os_log_error_impl(&dword_1AF0CE000, v17, OS_LOG_TYPE_ERROR, "Error: type for key %@ is switching from %@ to %@, this will lead to improper animation", &v24, 0x20u);
          }
        }

        goto LABEL_15;
      }

LABEL_14:
      Value = sub_1AF1CD954(10, v16);
      CFDictionarySetValue(*(a1 + 64), key, Value);
      CFRelease(Value);
LABEL_15:
      v21 = sub_1AF1CDA60(Value, v16);
      sub_1AF1CDC30(a3, v21);
      Value[8] = sub_1AF1CDAAC(a3, v22);
      return;
    }
  }

  else if (v7 == sub_1AF1CD8D8(v7, v8))
  {
    goto LABEL_14;
  }

  v23 = *(a1 + 64);

  CFDictionarySetValue(v23, key, a3);
}

uint64_t sub_1AF136048(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 64);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF1360B8;
  v4[3] = &unk_1E7A79D90;
  v4[4] = a2;
  return objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v2, a2, v4);
}

void *sub_1AF1360C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 64);
  if (objc_msgSend_count(v4, a2, a3) > 1)
  {
    v8 = objc_msgSend_allKeys(v4, v5, v6);
    v10 = objc_msgSend_sortedArrayUsingSelector_(v8, v9, sel_compare_);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    result = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v18, v23, 16);
    if (result)
    {
      v13 = result;
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v18 + 1) + 8 * v15);
          v17 = objc_msgSend_objectForKeyedSubscript_(v4, v12, v16);
          (*(a2 + 16))(a2, v16, v17);
          v15 = v15 + 1;
        }

        while (v13 != v15);
        result = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v18, v23, 16);
        v13 = result;
      }

      while (result);
    }
  }

  else
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1AF13625C;
    v22[3] = &unk_1E7A79D90;
    v22[4] = a2;
    return objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v4, v5, v22);
  }

  return result;
}

id sub_1AF136270(uint64_t a1)
{
  CFRelease(*(a1 + 64));

  return sub_1AF16C9A4(a1, v2);
}

void *sub_1AF1362B4(uint64_t a1, void *__dst, void *__src, size_t __n)
{
  result = memcpy(__dst, __src, __n);
  ++*(a1 + 72);
  return result;
}

BOOL sub_1AF1362F0(uint64_t a1)
{
  if (sub_1AF19B944(a1))
  {
    v3 = sub_1AF19B994(a1, v2);
  }

  else
  {
    v3 = 0;
  }

  if (sub_1AF19D618(a1) || ((sub_1AF19B934(a1, v4) | v3) & 1) != 0)
  {
    return 0;
  }

  v7 = sub_1AF19CBB4(a1, v5);
  if (v7 == 1 || v7 == 3)
  {
    return sub_1AF19C1FC(a1, v8) > 0.0;
  }

  if (v7 != 4)
  {
    return 0;
  }

  return sub_1AF19D968(a1, v8) != 0;
}

uint64_t sub_1AF136394(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF19CBB4(a1, a2);
  if ((v3 & 0xFFFFFFFB) == 0)
  {
    v5 = 0;
    return v5 & 1;
  }

  v5 = 1;
  if (v3 > 2)
  {
    if (v3 != 3)
    {
      if (v3 == 5)
      {
        return v5 & 1;
      }

LABEL_11:
      if (sub_1AF19B944(a1))
      {
        v7 = sub_1AF19B994(a1, v6);
      }

      else
      {
        v7 = 0;
      }

      if (!sub_1AF19D618(a1))
      {
        v5 = sub_1AF19B934(a1, v8) | v7;
        return v5 & 1;
      }

      goto LABEL_15;
    }

LABEL_10:
    if (sub_1AF19C1FC(a1, v4) <= 0.0)
    {
LABEL_15:
      v5 = 1;
      return v5 & 1;
    }

    goto LABEL_11;
  }

  if (v3 == 1)
  {
    goto LABEL_10;
  }

  if (v3 != 2)
  {
    goto LABEL_11;
  }

  return v5 & 1;
}

uint64_t sub_1AF136450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  result = sub_1AF1B75E8(a1, a2);
  if (result)
  {
    v7 = result;
    result = sub_1AF136394(result, v6);
    if (result)
    {
      v9 = *(a3 + 584);
      if (v9 <= 7)
      {
        *(a3 + 4 * v9 + 520) = v4;
        result = sub_1AF19B7C0(v7, v8);
        *(a3 + 4 * (*(a3 + 584))++ + 552) = result;
      }
    }
  }

  return result;
}

uint64_t sub_1AF1364C4(const __CFDictionary *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = sub_1AF136718;
  v5[3] = &unk_1E7A79DB8;
  v5[5] = a3;
  v5[6] = a1;
  v5[4] = &v6;
  sub_1AF13656C(a1, a2, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

const __CFDictionary *sub_1AF13656C(const __CFDictionary *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v24 = *MEMORY[0x1E69E9840];
  memset(v23, 0, sizeof(v23));
  memset(v22, 0, sizeof(v22));
  v6 = *(result + 146);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = *(result + i + 130);
      v9 = (v8 & 0xFFFFFFF) - 1;
      v10 = (v8 >> 25) & 0x78;
      *(v23 + i) = *(*(result + v10 + 152) + 8 * v9);
      *(v22 + i) = *(*(result + v10 + 216) + 8 * v9);
    }

    return (*(a3 + 16))(a3);
  }

  else if (!(*(result + 23) | *(result + 22) | *(result + 26) | *(result + 27)))
  {
    result = sub_1AF13808C(a2, v6);
    if (result)
    {
      v21 = sub_1AF12EF98(a2, v11);
      v13 = sub_1AF1B75E8(v21, v12);
      if (sub_1AF12F0C4(a2, v14))
      {
        v16 = sub_1AF12F10C(a2, v15);
        sub_1AF12DF78(a2, v16);
      }

      else
      {
        v18 = sub_1AF12EF50(a2, v15);
        v20 = sub_1AF12F10C(a2, v19);
        sub_1AF12DF78(a2, v20);
        if (!v18)
        {
          sub_1AF12EB90(a2, 0);
        }
      }

      *(v5 + 138) = sub_1AF19B7C0(v13, v17);
      return (*(a3 + 16))(a3);
    }
  }

  return result;
}

void *sub_1AF136718(void *result)
{
  v1 = result[5];
  v2 = result[6];
  if (*v1 == v2[69] && *(v1 + 8) == v2[70] && *(v1 + 16) == v2[71] && *(v1 + 24) == v2[72])
  {
    v8 = 0;
  }

  else
  {
    v6 = v2 + 69;
    v7 = v6[1];
    *v1 = *v6;
    *(v1 + 16) = v7;
    v8 = 1;
  }

  *(*(result[4] + 8) + 24) = v8;
  return result;
}

void *sub_1AF136770(void *a1, size_t a2, size_t a3, size_t alignment)
{
  memptr = 0;
  malloc_type_posix_memalign(&memptr, alignment, a3, 0x574EC1DAuLL);
  if (a2)
  {
    memcpy(memptr, a1, a2);
  }

  free(a1);
  return memptr;
}

void sub_1AF1367D4(uint64_t result, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  if (a2 >= 8)
  {
    v6 = sub_1AF0D5194(result, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD3A90(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else if (a2 == 4)
  {
    sub_1AF13B7E8(*(result + 24), a3 + 1);
  }

  v14 = *(result + 112 + 4 * v4);
  if (v14 <= a3)
  {
    if (v14)
    {
      v15 = 2 * v14;
    }

    else
    {
      v15 = 8;
    }

    v16 = result + 152;
    v17 = *(result + 152 + 8 * v4);
    v18 = result + 216;
    if (v17)
    {
      *(v16 + 8 * v4) = malloc_type_realloc(v17, 8 * v15, 0x2004093837F09uLL);
      v19 = (result + 8 * v4);
      v19[35] = malloc_type_realloc(v19[35], 8 * v15, 0x100004000313F17uLL);
      *(v18 + 8 * v4) = malloc_type_realloc(*(v18 + 8 * v4), 8 * v15, 0x2004093837F09uLL);
      v19[43] = malloc_type_realloc(v19[43], v15, 0x100004077774924uLL);
      v19[51] = malloc_type_realloc(v19[51], v15, 0x100004077774924uLL);
      if (v4 > 4)
      {
        if (v4 == 5)
        {
          *(result + 496) = sub_1AF136770(*(result + 496), 80 * *(result + 132), 80 * v15, 0x10uLL);
        }

        else if (v4 == 6)
        {
          *(result + 480) = sub_1AF136770(*(result + 480), 16 * *(result + 136), 16 * v15, 0x10uLL);
        }
      }

      else if (v4 == 2)
      {
        *(result + 472) = sub_1AF136770(*(result + 472), 16 * *(result + 120), 16 * v15, 0x10uLL);
      }

      else if (v4 == 3)
      {
        *(result + 488) = sub_1AF136770(*(result + 488), 48 * *(result + 124), 48 * v15, 0x10uLL);
      }

      goto LABEL_30;
    }

    *(v16 + 8 * v4) = malloc_type_calloc(8uLL, v15, 0xD39594EDuLL);
    v20 = (result + 8 * v4);
    v20[35] = malloc_type_calloc(8 * v15, 1uLL, 0x84E5723FuLL);
    *(v18 + 8 * v4) = malloc_type_calloc(8uLL, v15, 0xB58ED6BBuLL);
    v20[43] = malloc_type_calloc(1uLL, v15, 0xAA3A7EEFuLL);
    v20[51] = malloc_type_calloc(1uLL, v15, 0x1A0495B3uLL);
    if (v4 > 4)
    {
      if (v4 == 5)
      {
        v21 = 80 * v15;
        v22 = 0x10000404247E4FDLL;
        v23 = (result + 496);
        goto LABEL_29;
      }

      if (v4 == 6)
      {
        v21 = 16 * v15;
        v22 = 0x1000040451B5BE8;
        v23 = (result + 480);
        goto LABEL_29;
      }
    }

    else
    {
      if (v4 == 2)
      {
        v21 = 16 * v15;
        v22 = 0x1000040451B5BE8;
        v23 = (result + 472);
        goto LABEL_29;
      }

      if (v4 == 3)
      {
        v21 = 48 * v15;
        v22 = 0x1000040EED21634;
        v23 = (result + 488);
LABEL_29:
        malloc_type_posix_memalign(v23, 0x10uLL, v21, v22);
      }
    }

LABEL_30:
    *(result + 112 + 4 * v4) = v15;
  }
}

void sub_1AF136B00(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, __n128 *a5)
{
  v8 = a2;
  v10 = sub_1AF1B9B04(a4, a2);
  v61 = *v10;
  v62 = v10[1];
  v64 = v10[2];
  v65 = v10[3];
  v63 = sub_1AF19C1FC(a5, v11);
  *(a1[v8 + 35] + 8 * a3) = sub_1AF19C3BC(a5, v12);
  if (sub_1AF19D63C(a5, v13) || sub_1AF19C244(a5, v14))
  {
    *(a1[v8 + 35] + 8 * a3) = 0;
  }

  if (v8 <= 3)
  {
    if (v8 == 2)
    {
      v60 = v65;
      v60.f32[3] = v63;
      *(a1[59] + 16 * a3) = v60;
    }

    else if (v8 == 3)
    {
      v16 = sub_1AF19BFD8(a5, v14) / 180.0 * 3.14159265 * 0.5;
      if (v63 <= 0.0)
      {
        v17 = INFINITY;
      }

      else
      {
        v17 = v63;
      }

      v18 = a1[61] + 48 * a3;
      v19 = tanf(v16);
      v20 = vmulq_f32(v64, v64);
      v21 = vaddv_f32(*v20.f32);
      *v20.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v20.f32[2] + v21));
      *v20.f32 = vmul_f32(*v20.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v20.f32[2] + v21), vmul_f32(*v20.f32, *v20.f32)));
      v22 = vmulq_n_f32(vnegq_f32(v64), vmul_f32(*v20.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v20.f32[2] + v21), vmul_f32(*v20.f32, *v20.f32))).f32[0]);
      *&v23 = (v19 * v19) + 1.0;
      v24 = vrsqrte_f32(v23);
      v25 = vmul_f32(v24, vrsqrts_f32(v23, vmul_f32(v24, v24)));
      *v18 = v65;
      *(v18 + 16) = v22;
      *(v18 + 32) = v17;
      *(v18 + 36) = v17 * v19;
      *(v18 + 40) = vmul_f32(v25, vrsqrts_f32(v23, vmul_f32(v25, v25))).u32[0];
      *(v18 + 44) = v19;
    }
  }

  else
  {
    switch(v8)
    {
      case 4:
        v26 = sub_1AF19D968(a5, v14);
        if (v26)
        {
          v28 = sub_1AF0D5194(v26, v27);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDD3B80(v28, v29, v30, v31, v32, v33, v34, v35);
          }
        }

        sub_1AF13B8A0(a1[3], a3, a4, a5);
        break;
      case 5:
        v36 = sub_1AF19D968(a5, v14);
        if (v36 != 1)
        {
          v38 = sub_1AF0D5194(v36, v37);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDD3B08(v38, v37, v39, v40, v41, v42, v43, v44);
          }
        }

        v45 = sub_1AF19DDEC(a5, v37);
        v46.i64[0] = 0x3F0000003F000000;
        v46.i64[1] = 0x3F0000003F000000;
        v47 = vmulq_f32(v45, v46);
        v48 = a1[62] + 80 * a3;
        v50 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v65, 0, v64), 0, v62), 0, v61);
        v49 = 1.0;
        v50.i32[3] = 1.0;
        v51 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL), vnegq_f32(v62)), v64, vextq_s8(vuzp1q_s32(v62, v62), v62, 0xCuLL));
        v52 = vmulq_f32(v61, vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL));
        if ((v52.f32[2] + vaddv_f32(*v52.f32)) < 0.0)
        {
          v49 = -1.0;
        }

        v53 = vmulq_f32(v61, v61);
        v54 = vmulq_f32(v62, v62);
        v55 = vadd_f32(vzip1_s32(*v53.i8, *v54.i8), vzip2_s32(*v53.i8, *v54.i8));
        v56 = vextq_s8(v53, v53, 8uLL);
        *v56.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v56.f32, *&vextq_s8(v54, v54, 8uLL)), v55));
        v57 = vmulq_f32(v64, v64);
        v56.i32[2] = sqrtf(v57.f32[2] + vaddv_f32(*v57.f32));
        v58 = vmulq_n_f32(v56, v49);
        v59 = vmulq_f32(v58, v47);
        v59.i32[3] = 0;
        *v48 = v50;
        *(v48 + 16) = vdivq_f32(v61, vdupq_lane_s32(*v58.f32, 0));
        *(v48 + 32) = vdivq_f32(v62, vdupq_lane_s32(*v58.f32, 1));
        *(v48 + 48) = vdivq_f32(v64, vdupq_laneq_s32(v58, 2));
        *(v48 + 64) = v59;
        break;
      case 6:
        v15 = v65;
        v15.i32[3] = 1120403456;
        *(a1[60] + 16 * a3) = v15;
        break;
    }
  }
}

uint64_t sub_1AF136E50(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *a3;
  v5 = sub_1AF1B75E8(*(a1 + 8 * *a2), a2);
  v7 = sub_1AF19C6A4(v5, v6);
  v8 = *&v7;
  v10 = sub_1AF1B75E8(*(a1 + 8 * v4), v9);
  v12 = sub_1AF19C6A4(v10, v11);
  return (*&v12 - v8);
}

char *sub_1AF136EA4(char *result)
{
  v64[3] = *MEMORY[0x1E69E9840];
  v1 = *(result + 29190);
  if (v1)
  {
    v2 = result;
    v3 = 0;
    v55 = result + 135520;
    v4 = vdupq_n_s64(v1 - 1);
    v5 = xmmword_1AFE21100;
    v6 = xmmword_1AFE21110;
    v7 = vdupq_n_s64(4uLL);
    v8 = v64;
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v4, v6));
      if (vuzp1_s16(v9, *v4.i8).u8[0])
      {
        *(v8 - 2) = v3;
      }

      if (vuzp1_s16(v9, *&v4).i8[2])
      {
        *(v8 - 1) = v3 + 1;
      }

      if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v5))).i32[1])
      {
        *v8 = v3 + 2;
        v8[1] = v3 + 3;
      }

      v3 += 4;
      v5 = vaddq_s64(v5, v7);
      v6 = vaddq_s64(v6, v7);
      v8 += 4;
    }

    while (((v1 + 3) & 0x1FFFFFFFCLL) != v3);
    v10 = result + 135456;
    qsort_r(__base, v1, 4uLL, result + 135456, sub_1AF136E50);
    v12 = sub_1AF1B75E8(*&v10[8 * __base[0]], v11);
    v15 = sub_1AF19C6A4(v12, v13);
    v16 = 0;
    v58 = *&v15;
    v17 = 0.0;
    do
    {
      v18 = sub_1AF1B75E8(*&v10[8 * __base[v16]], v14);
      v20 = sub_1AF19C6A4(v18, v19);
      v60 = *&v20;
      v22 = sub_1AF19CBB4(v18, v21);
      v23 = 6.0;
      if (v22 != 1)
      {
        v23 = sub_1AF19BAD0(v18, v14);
      }

      ++v16;
      v17 = v17 + (((v60 / v58) * v23) * (v60 / v58));
    }

    while (v1 != v16);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27.f32[0] = ceil(sqrt(vcvtps_u32_f32(v17)));
    v27.i32[1] = ceilf(ceilf(v17) / v27.f32[0]);
    *v28.f32 = vmul_n_f32(v27, v58);
    v59 = v2 + 116768;
    v57 = v28.i64[0];
    v28.i64[1] = v28.i64[0];
    __asm { FMOV            V1.4S, #1.0 }

    v34 = vdivq_f32(_Q1, v28);
    v56 = v34;
    v34.i64[0] = 0;
    v61 = v34;
    while (1)
    {
      v35 = sub_1AF1B75E8(*&v10[8 * __base[v24]], v14);
      v37 = sub_1AF19C6A4(v35, v36);
      v38 = *&v37;
      v39 = __base[v24];
      *&v59[2336 * v39 + 2332] = *&v37;
      v41 = sub_1AF1B75E8(*&v10[8 * v39], v40);
      if (sub_1AF19CBB4(v41, v42) == 1)
      {
        v45 = 6;
      }

      else
      {
        v45 = sub_1AF19BAD0(v41, v43);
        if (!v45)
        {
          goto LABEL_31;
        }
      }

      *v44.i32 = v38;
      v46 = vdup_lane_s32(v44, 0);
      v47 = v45;
      v48 = __src;
      v49 = v61;
      do
      {
        v50.i64[0] = v49.i64[0];
        *&v50.u32[2] = v46;
        *v48 = vmulq_f32(v56, v50);
        v51 = v49.f32[0] + *v44.i32;
        if (v25)
        {
          v52 = *&__src[8 * (v25 - 1) + 96];
          v53 = v49.f32[1] + *v44.i32;
          if (*(&v52 + 1) == (v49.f32[1] + *v44.i32))
          {
            *&v52 = v49.f32[0] + *v44.i32;
            *&__src[8 * (v25 - 1) + 96] = v52;
            goto LABEL_24;
          }
        }

        else
        {
          v53 = v49.f32[1] + *v44.i32;
        }

        *&__src[8 * v25++ + 96] = __PAIR64__(LODWORD(v53), LODWORD(v51));
LABEL_24:
        if (v51 == *&v57)
        {
          v54 = v49.f32[1] + *v44.i32;
          if (v25 == 1)
          {
            v25 = 0;
            v49.i32[0] = 0;
            v49.f32[1] = v49.f32[1] + *v44.i32;
          }

          else
          {
            v49.i64[0] = *&__src[8 * (v25 - 2) + 96];
            v49.f32[1] = v54;
            --v25;
          }
        }

        else
        {
          v49.f32[0] = v49.f32[0] + *v44.i32;
        }

        ++v48;
        --v47;
      }

      while (v47);
      v61 = v49;
LABEL_31:
      result = sub_1AF19EC60(v41, v45, __src);
      v26 += v45;
      if (++v24 == v1)
      {
        *v55 = v57;
        *(v55 + 2) = v26;
        return result;
      }
    }
  }

  return result;
}

void sub_1AF137248(uint64_t result, const void *a2)
{
  if (*(result + 116760) < 8u)
  {
    Value = CFDictionaryGetValue(*(result + 32), a2);
    if (Value)
    {
      v7 = *(result + 8 * (Value >> 28) + 408) + (Value & 0xFFFFFFF);
      if (!*(v7 - 1))
      {
        v8 = *(result + 116760);
        *(result + 116760) = v8 + 1;
        *(result + 8 * v8 + 135456) = a2;
        *(v7 - 1) = v8 + 1;

        sub_1AF136EA4(result);
      }
    }

    else
    {
      v9 = sub_1AF0D5194(0, v6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDD3BF8();
      }
    }
  }

  else if ((byte_1EB658480 & 1) == 0)
  {
    byte_1EB658480 = 1;
    v2 = sub_1AF0D5194(result, a2);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDD3C34();
    }
  }
}

void sub_1AF137348(uint64_t a1, const void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 32), a2);
  if (Value)
  {
    v5 = a1 + 408;
    v6 = Value >> 28;
    v7 = *(a1 + 408 + 8 * v6);
    v8 = (Value & 0xFFFFFFF) - 1;
    v9 = *(v7 + v8);
    if (*(v7 + v8))
    {
      v10 = *(a1 + 116760);
      *(a1 + 116760) = v10 - 1;
      if (v10 > v9)
      {
        v11 = *(a1 + 135456 + 8 * (v10 - 1));
        v12 = CFDictionaryGetValue(*(a1 + 32), v11);
        *(*(v5 + 8 * (v12 >> 28)) + (v12 & 0xFFFFFFF) - 1) = v9;
        *(a1 + 135456 + 8 * (v9 - 1)) = v11;
        v7 = *(v5 + 8 * v6);
      }

      *(v7 + v8) = 0;

      sub_1AF136EA4(a1);
    }
  }

  else
  {
    v13 = sub_1AF0D5194(0, v4);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDD3BF8();
    }
  }
}

void sub_1AF13744C(uint64_t a1, const void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 32), a2);
  if (Value)
  {
    v6 = Value;
    v7 = sub_1AF1B75E8(a2, v5);
    v8 = *(*(a1 + 8 * (v6 >> 28) + 408) + (v6 & 0xFFFFFFF) - 1);
    v10 = sub_1AF19B994(v7, v9);
    if (v8)
    {
      if (v10)
      {
        v13 = sub_1AF19C6A4(v7, v11);
        if (*(a1 + 2336 * (v8 - 1) + 119100) != *&v13 || (v14 = sub_1AF19ED10(v7, v12), v14 != sub_1AF19BAD0(v7, v15)))
        {

          sub_1AF136EA4(a1);
        }
      }

      else
      {

        sub_1AF137348(a1, a2);
      }
    }

    else if (v10)
    {

      sub_1AF137248(a1, a2);
    }
  }
}

void sub_1AF13757C(uint64_t a1)
{
  CFRelease(*(a1 + 24));
  CFRelease(*(a1 + 32));
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 56));
  CFRelease(*(a1 + 512));
  CFRelease(*(a1 + 504));
  v2 = (a1 + 408);
  v3 = 8;
  do
  {
    free(*(v2 - 32));
    free(*(v2 - 24));
    free(*(v2 - 16));
    free(*(v2 - 8));
    v4 = *v2++;
    free(v4);
    --v3;
  }

  while (v3);
  free(*(a1 + 472));
  free(*(a1 + 480));
  free(*(a1 + 488));
  free(*(a1 + 496));
  v5 = 0;
  v6 = a1 + 117008;
  do
  {
    for (i = 0; i != 1536; i += 384)
    {
      v8 = *(v6 + i);
      if (v8)
      {
        CFRelease(v8);
        *(v6 + i) = 0;
      }
    }

    ++v5;
    v6 += 2336;
  }

  while (v5 != 8);
}

uint64_t sub_1AF137670()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED7346D0 = result;
  return result;
}

uint64_t sub_1AF137698(uint64_t a1)
{
  if (qword_1ED7346D8 != -1)
  {
    sub_1AFDD3CB0();
  }

  v2 = sub_1AF0D160C(qword_1ED7346D0, 0x21160uLL);
  *(v2 + 16) = a1;
  *(v2 + 24) = sub_1AF13AFBC();
  v3 = *MEMORY[0x1E695E480];
  *(v2 + 32) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  *(v2 + 40) = CFDictionaryCreateMutable(v3, 0, 0, MEMORY[0x1E695E9E8]);
  *(v2 + 56) = CFDictionaryCreateMutable(v3, 0, 0, 0);
  v4 = MEMORY[0x1E695E9F8];
  *(v2 + 512) = CFSetCreateMutable(v3, 0, MEMORY[0x1E695E9F8]);
  Mutable = CFSetCreateMutable(v3, 0, v4);
  v6 = 0;
  *(v2 + 504) = Mutable;
  *(v2 + 116504) = -1;
  v7 = v2 + 117008;
  do
  {
    for (i = 0; i != 1536; i += 384)
    {
      Mutable = sub_1AF121B04(Mutable);
      *(v7 + i) = Mutable;
    }

    ++v6;
    v7 += 2336;
  }

  while (v6 != 8);
  return v2;
}

uint64_t sub_1AF1377CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF19CBB4(a1, a2);
  v7 = sub_1AF19C1FC(a1, v4);
  v9 = (LODWORD(v7) & 0x7FFFFFFF) == 0 || LODWORD(v7) == 2139095040;
  if (v3 <= 2)
  {
    switch(v3)
    {
      case 0:
        return v3;
      case 1:
        if (v9)
        {
          LOBYTE(v3) = 1;
        }

        else
        {
          LOBYTE(v3) = 2;
        }

        return v3;
      case 2:
        LOBYTE(v3) = 1;
        return v3;
    }
  }

  else if (v3 > 4)
  {
    if (v3 == 5)
    {
      LOBYTE(v3) = 7;
      return v3;
    }

    if (v3 == 6)
    {
      if (v9)
      {
        LOBYTE(v3) = 1;
      }

      else
      {
        LOBYTE(v3) = 6;
      }

      return v3;
    }
  }

  else
  {
    if (v3 == 3)
    {
      return v3;
    }

    v5 = sub_1AF19D968(a1, v6);
    if (!v5)
    {
      LOBYTE(v3) = 4;
      return v3;
    }

    if (v5 == 1)
    {
      LOBYTE(v3) = 5;
      return v3;
    }
  }

  v10 = sub_1AF0D5194(v5, v6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD3CC4(v10, v11, v12, v13, v14, v15, v16, v17);
  }

  LOBYTE(v3) = 8;
  return v3;
}

void sub_1AF1378D0(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    v4 = sub_1AF0D5194(a1, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD137C(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = sub_1AF1B75E8(a2, a2);
  if (v11)
  {
    v13 = v11;
    if (!sub_1AF1BA900(a2, v12))
    {
      Value = CFDictionaryGetValue(*(a1 + 32), a2);
      if (Value)
      {
        v16 = sub_1AF0D5194(Value, v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDD3D3C();
        }
      }

      else
      {
        v27 = sub_1AF1377CC(v13, v15);
        v28 = a1 + 4 * v27;
        v29 = *(v28 + 80);
        *(v28 + 80) = v29 + 1;
        sub_1AF1367D4(a1, v27, v29);
        v30 = a1 + 8 * v27;
        *(*(v30 + 152) + 8 * v29) = a2;
        *(*(v30 + 216) + 8 * v29) = v13;
        sub_1AF19DF08(v13, (v29 + 1));
        sub_1AF136B00(a1, v27, v29, a2, v13);
        CFDictionarySetValue(*(a1 + 32), a2, ((v29 + 1) & 0xFFFFFFF | (v27 << 28)));
        if (sub_1AF136394(v13, v31))
        {
          *(a1 + 584) = 0;
          *(a1 + 520) = 0u;
          *(a1 + 536) = 0u;
          CFDictionaryApplyFunction(*(a1 + 32), sub_1AF136450, a1);
        }

        else if (!*(a1 + 588))
        {
          v32 = *(a1 + 116440);
          if (v32)
          {
            sub_1AF132484(v32);
          }
        }

        sub_1AF137ACC(a1);
        if (sub_1AF19B994(v13, v33))
        {
          sub_1AF137248(a1, a2);
        }
      }
    }
  }

  else
  {
    v17 = sub_1AF0D5194(0, v12);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT);
    if (v18)
    {
      sub_1AFDD3D78(v17, v19, v20, v21, v22, v23, v24, v25);
    }

    v26 = sub_1AF0D5194(v18, v19);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 0;
      _os_log_impl(&dword_1AF0CE000, v26, OS_LOG_TYPE_DEFAULT, "Warning: Should not register a node without light to the light system", v34, 2u);
    }
  }
}

uint64_t sub_1AF137ACC(uint64_t result)
{
  v1 = result;
  *(result + 588) = 0;
  v2 = result + 80;
  v3 = result + 216;
  for (i = 2; i != 7; ++i)
  {
    v5 = *(v2 + 4 * i);
    if (v5)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        result = *(*(v3 + 8 * i) + v6);
        if (result)
        {
          result = sub_1AF1362F0(result);
          if (result)
          {
            ++*(v1 + 588);
          }
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  return result;
}

uint64_t sub_1AF137B54(uint64_t a1, const void *a2)
{
  result = CFDictionaryGetValue(*(a1 + 32), a2);
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = sub_1AF1B75E8(a2, v5);
  if (sub_1AF19B994(v7, v8))
  {
    sub_1AF137348(a1, a2);
  }

  v9 = (v6 & 0xFFFFFFF) - 1;
  v10 = a1 + 4 * (v6 >> 28);
  v11 = v6 >> 28;
  v12 = (*(v10 + 80) - 1);
  *(v10 + 80) = v12;
  if (v9 < v12)
  {
    v13 = (a1 + 8 * v11);
    v14 = v13[19];
    v15 = *(v14 + 8 * v12);
    v16 = *(v13[27] + 8 * v12);
    *(v14 + 8 * v9) = v15;
    *(v13[27] + 8 * v9) = v16;
    *(v13[43] + v9) = *(v13[43] + v12);
    *(v13[51] + v9) = *(v13[51] + v12);
    *(v13[51] + v12) = 0;
    if (v6 >> 28 > 3)
    {
      switch(v11)
      {
        case 4:
          sub_1AF13B8A0(*(a1 + 24), v9, v15, v16);
          break;
        case 5:
          v23 = *(a1 + 496);
          v24 = (v23 + 80 * v9);
          v25 = (v23 + 80 * v12);
          *v24 = *v25;
          v26 = v25[1];
          v27 = v25[2];
          v28 = v25[4];
          v24[3] = v25[3];
          v24[4] = v28;
          v24[1] = v26;
          v24[2] = v27;
          sub_1AF19DF08(v16, v6 & 0xFFFFFFF);
          break;
        case 6:
          v17 = *(a1 + 480);
LABEL_16:
          *(v17 + 16 * v9) = *(v17 + 16 * v12);
          break;
      }

LABEL_17:
      CFDictionarySetValue(*(a1 + 32), v15, v6);
      goto LABEL_18;
    }

    if (v11 != 2)
    {
      if (v11 == 3)
      {
        v18 = *(a1 + 488);
        v19 = (v18 + 48 * v12);
        v20 = *v19;
        v21 = v19[2];
        v22 = (v18 + 48 * v9);
        v22[1] = v19[1];
        v22[2] = v21;
        *v22 = v20;
      }

      goto LABEL_17;
    }

    v17 = *(a1 + 472);
    goto LABEL_16;
  }

LABEL_18:
  if (v11 == 4)
  {
    sub_1AF13B7E8(*(a1 + 24), v12);
  }

  CFDictionaryRemoveValue(*(a1 + 32), a2);
  if (v7 && sub_1AF136394(v7, v29))
  {
    *(a1 + 584) = 0;
    *(a1 + 520) = 0u;
    *(a1 + 536) = 0u;
    CFDictionaryApplyFunction(*(a1 + 32), sub_1AF136450, a1);
  }

  CFSetRemoveValue(*(a1 + 512), a2);
  result = sub_1AF137ACC(a1);
  if (!*(a1 + 588))
  {
    result = *(a1 + 116440);
    if (result)
    {

      return sub_1AF132484(result);
    }
  }

  return result;
}

void sub_1AF137D98(uint64_t a1, const void *a2)
{
  if (sub_1AF136394(a2, a2))
  {
    goto LABEL_2;
  }

  v4 = *(a1 + 584);
  if (v4)
  {
    if (*(*(a1 + 216 + ((*(a1 + 520) >> 25) & 0x78)) + 8 * ((*(a1 + 520) & 0xFFFFFFFu) - 1)) == a2)
    {
      goto LABEL_2;
    }

    v5 = (a1 + 524);
    v6 = 1;
    do
    {
      v7 = v6;
      if (v4 == v6)
      {
        break;
      }

      v8 = *v5++;
      ++v6;
    }

    while (*(*(a1 + 216 + ((v8 >> 25) & 0x78)) + 8 * ((v8 & 0xFFFFFFF) - 1)) != a2);
    if (v7 < v4)
    {
LABEL_2:
      *(a1 + 584) = 0;
      *(a1 + 520) = 0u;
      *(a1 + 536) = 0u;
      CFDictionaryApplyFunction(*(a1 + 32), sub_1AF136450, a1);
    }
  }

  v9 = *(a1 + 504);

  CFSetAddValue(v9, a2);
}

double sub_1AF137E84(uint64_t a1)
{
  v11 = 0uLL;
  sub_1AF163FFC(&v11, 0.0, 0.0, 0.0, 1.0);
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = 0;
    v6 = 8 * v4;
    do
    {
      v7 = *(*(a1 + 216) + v5);
      if (v7)
      {
        sub_1AF19D69C(v7, v2, v3);
        v3.f32[0] = v8;
        *v2.f32 = vadd_f32(*&v11, v9);
        *&v11 = v2.i64[0];
        v2.f32[0] = *(&v11 + 2) + v8;
        *(&v11 + 2) = *(&v11 + 2) + v8;
      }

      v5 += 8;
    }

    while (v6 != v5);
  }

  result = *&v11;
  *(a1 + 64) = v11;
  return result;
}

uint64_t sub_1AF137F24(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v13 = a1 + 80;
  v4 = a1 + 216;
  v5 = a1 + 152;
  do
  {
    v6 = *(v13 + 4 * v3);
    if (v6)
    {
      for (i = 0; i < v6; ++i)
      {
        v8 = *(*(v4 + 8 * v3) + 8 * i);
        if (CFSetContainsValue(*(a1 + 504), v8))
        {
          v10 = *(*(v5 + 8 * v3) + 8 * i);
          v11 = sub_1AF1377CC(v8, v9);
          if (v3 == v11)
          {
            sub_1AF136B00(a1, v3, i, v10, v8);
            sub_1AF13744C(a1, v10);
          }

          else
          {
            sub_1AF137B54(a1, v10);
            sub_1AF1378D0(a1, v10);
            v6 = *(v13 + 4 * v3);
            --i;
          }

          v2 |= v11 == 0;
          sub_1AF1B7390(v10);
        }
      }
    }

    ++v3;
  }

  while (v3 != 8);
  sub_1AF137ACC(a1);
  return v2 & 1;
}

const __CFDictionary *sub_1AF13804C(int32x4_t *a1, uint64_t a2)
{
  if (vaddvq_s32(a1[5]) + a1[6].i32[2] + a1[6].i32[3] + a1[6].i32[1] + a1[6].i32[0] || a1[37].i32[2])
  {
    return 1;
  }

  else
  {
    return sub_1AF13808C(a2, a2);
  }
}

const __CFDictionary *sub_1AF13808C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF12DDCC(a1, a2);
  v4 = sub_1AF1D005C(v3, 0);
  if (v4)
  {
    v6 = v4;
    if (sub_1AF166220(v4, v5) || sub_1AF1676A0(v6, v7))
    {
      return 0;
    }
  }

  if (sub_1AF1D131C(v3, v5))
  {
    return 0;
  }

  v9 = MEMORY[0x1E695E4D0];
  if (v3)
  {
    v10 = sub_1AF1CF60C(v3, @"triggerOptionsForRealtimeViewer");
    if (!v10)
    {
      v10 = *MEMORY[0x1E695E4C0];
    }

    v11 = *v9;
    v12 = CFEqual(v10, *v9);
    v13 = v11;
    if (v12)
    {
      if (!v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v13 = sub_1AF1CF60C(v3, @"defaultLight");
      if (!v13)
      {
        goto LABEL_16;
      }
    }

    if (CFEqual(v13, v11))
    {
      return 1;
    }
  }

LABEL_16:
  result = sub_1AF12E754(a1, @"defaultLight");
  if (result)
  {
    return (CFEqual(result, *v9) != 0);
  }

  return result;
}

void sub_1AF13819C(uint64_t a1)
{
  if (CFSetGetCount(*(a1 + 504)))
  {
    v2 = sub_1AF137F24(a1);
    CFSetRemoveAllValues(*(a1 + 504));
    if (v2)
    {
      v3 = sub_1AF163F54((a1 + 64));
      sub_1AF137E84(a1);
      if (v3 != sub_1AF163F54((a1 + 64)))
      {
        v4 = *(a1 + 116440);
        if (v4)
        {

          sub_1AF132484(v4);
        }
      }
    }
  }
}

void sub_1AF138230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 114688;
  if (!a2)
  {
    v7 = sub_1AF0D5194(a1, 0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD3DF0(v7, a2, v8, v9, v10, v11, v12, v13);
    }
  }

  *(v6 + 1744) = a3;
  v14 = sub_1AF12DDCC(a3, a2);
  *(v6 + 1752) = sub_1AF1D00B0(v14, v15);
  *(v6 + 1760) = 0;
  v16 = *(a2 + 48);
  v18 = *a2;
  v17 = *(a2 + 16);
  *(a1 + 116384) = *(a2 + 32);
  *(a1 + 116400) = v16;
  *(a1 + 116352) = v18;
  *(a1 + 116368) = v17;
  v19 = *(a2 + 16);
  v20 = *(a2 + 32);
  v21 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), vnegq_f32(v19)), v20, vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL));
  v22 = vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), *a2);
  v23 = (v22.f32[2] + vaddv_f32(*v22.f32)) < 0.0;
  v24 = 1.0;
  if (v23)
  {
    v24 = -1.0;
  }

  v25 = vmulq_f32(*a2, *a2);
  v26 = vmulq_f32(v19, v19);
  v27 = vadd_f32(vzip1_s32(*v25.i8, *v26.i8), vzip2_s32(*v25.i8, *v26.i8));
  v28 = vextq_s8(v25, v25, 8uLL);
  *v28.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v28.f32, *&vextq_s8(v26, v26, 8uLL)), v27));
  v29 = vmulq_f32(v20, v20);
  v28.i32[2] = sqrtf(v29.f32[2] + vaddv_f32(*v29.f32));
  v30 = vabsq_f32(vmulq_n_f32(v28, v24));
  *(v6 + 1728) = fmaxf(fmaxf(v30.f32[0], v30.f32[2]), v30.f32[1]);
  sub_1AF13819C(a1);
  for (i = 1; i != 8; ++i)
  {
    v32 = *(a1 + 80 + 4 * i);
    if (v32)
    {
      for (j = 0; j != v32; ++j)
      {
        sub_1AF136B00(a1, i, j, *(*(a1 + 152 + 8 * i) + 8 * j), *(*(a1 + 216 + 8 * i) + 8 * j));
      }
    }
  }

  for (k = 0; k != 7; ++k)
  {
    bzero(*(a1 + 8 * k + 352), *(a1 + 4 * k + 84));
  }

  bzero((a1 + 2680), 0x800uLL);
  bzero((a1 + 632), 0x800uLL);
  *(a1 + 624) = 0;
  v35 = sub_1AF12EE9C(a3, 0);
  *(v6 + 1768) = v35;
  if (v35)
  {
    v36 = sub_1AF12EE68(a3);
    v37 = *(v6 + 1768);
    *(v6 + 1812) = (v36 & 0x100000) != 0;
    if (v37)
    {
      *(a1 + 116496) = 0;
      *(a1 + 116464) = 0u;
      *(a1 + 116480) = 0u;
    }
  }

  else
  {
    *(v6 + 1812) = 0;
  }

  sub_1AF137E84(a1);
  if (sub_1AF13847C(a1, v38))
  {
    sub_1AF13BB64(*(a1 + 24), a3);
  }
}

uint64_t sub_1AF13847C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD3E68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 96);
}

uint64_t sub_1AF1384C4(uint64_t a1, void *a2, _DWORD *a3)
{
  *a2 = *(a1 + 592);
  *a3 = *(a1 + 600);
  return *(a1 + 604);
}

__n128 sub_1AF1384E8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x8000000000;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  sub_1AF137E84(a1);
  v19 = *(a1 + 64);
  v6 = sub_1AF163F54(&v19);
  *(v21 + 12) = v21[3] & 0xFFFE | v6 ^ 1;
  if (sub_1AF13847C(a1, v7))
  {
    v9 = 8 * (sub_1AF13D0B0(*(a1 + 24)) & 7);
  }

  else
  {
    v9 = 0;
  }

  v10 = v21;
  v11 = v21[3] & 0xFFC7 | v9;
  *(v21 + 12) = v11;
  *(v10 + 12) = v11 & 0xFFFD | (2 * (*(a1 + 588) != 0));
  v12 = sub_1AF138694(a1, v8) != 0;
  *(v21 + 12) = v21[3] & 0xFFFB | (4 * v12);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 0x40000000;
  v18[2] = sub_1AF1386DC;
  v18[3] = &unk_1E7A79E00;
  v18[4] = &v20;
  v18[5] = a1;
  sub_1AF13656C(a1, a2, v18);
  v13 = v21;
  v14 = *(v21 + 9);
  v15 = *(v21 + 13);
  *(a3 + 64) = *(v21 + 11);
  *(a3 + 80) = v15;
  *(a3 + 96) = v13[15];
  v16 = *(v13 + 5);
  *a3 = *(v13 + 3);
  *(a3 + 16) = v16;
  *(a3 + 32) = *(v13 + 7);
  *(a3 + 48) = v14;
  _Block_object_dispose(&v20, 8);
  return result;
}

uint64_t sub_1AF138694(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD3E68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 100);
}

uint64_t sub_1AF1386DC(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(result + 32) + 8);
  v6 = *(*(result + 40) + 552);
  *(v5 + 44) = *(*(result + 40) + 568);
  *(v5 + 28) = v6;
  *(*(*(result + 32) + 8) + 24) = *(*(*(result + 32) + 8) + 24) & 0xC03F | (a2 << 6);
  if (a2)
  {
    v8 = result;
    v9 = 0;
    v10 = 1;
    do
    {
      result = sub_1AF19C3BC(*(a4 + 8 * v9), a2);
      *(*(*(v8 + 32) + 8) + 8 * v9 + 64) = result;
      v9 = v10++;
    }

    while (v9 < a2);
  }

  return result;
}

uint64_t sub_1AF13877C(_BOOL8 a1, uint64_t a2, _OWORD *a3)
{
  v5 = a1;
  v6 = 0;
  *&v13[5] = *MEMORY[0x1E69E9840];
  *a3 = 0u;
  a3[1] = 0u;
  v7 = a1 + 4728;
  do
  {
    v8 = *(a2 + v6);
    if (!*(a2 + v6))
    {
      break;
    }

    if (v8 != 255 && *(v5 + 624) < v8)
    {
      v10 = sub_1AF0D5194(a1, a2);
      a1 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT);
      if (a1)
      {
        sub_1AFDD3EE0(v12, v13, v10);
      }
    }

    *(a3 + v6++) = *(v7 + 4 * v8);
  }

  while (v6 != 8);
  return v6;
}

void sub_1AF138864(_BOOL8 result, uint64_t a2, unint64_t *a3)
{
  v4 = result;
  v5 = 0;
  v6 = a3 + 9;
  v7 = result + 2680;
  v8 = result + 5760;
  while (1)
  {
    v9 = *(a2 + v5);
    if (!*(a2 + v5))
    {
      break;
    }

    if (v9 == 255 || *(v4 + 624) >= v9)
    {
      *(v6 - 8) = *(v7 + 8 * v9);
      v11 = v8 + 432 * v9;
    }

    else
    {
      if ((byte_1EB658488 & 1) == 0)
      {
        byte_1EB658488 = 1;
        v12 = sub_1AF0D5194(result, a2);
        result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
        if (result)
        {
          sub_1AFDD3F30(&buf, v16, v12);
        }
      }

      v11 = 0;
      *(v6 - 8) = 0;
    }

    *v6++ = v11;
    if (++v5 == 8)
    {
      *a3 = 8;
      return;
    }
  }

  *a3 = v5;
  if (v5 <= 7)
  {
    v13 = 8 - v5;
    do
    {
      *(v6 - 8) = 0;
      *v6++ = 0;
      --v13;
    }

    while (v13);
  }
}

uint64_t sub_1AF138988(_BOOL8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0;
  v5 = a1 + 5760;
  do
  {
    v6 = *(a2 + v4);
    if (!*(a2 + v4))
    {
      break;
    }

    if (v6 == 255 || *(v3 + 624) >= v6)
    {
      if ((*(v5 + 432 * *(a2 + v4) + 112) & 4) != 0)
      {
        return 1;
      }
    }

    else if ((byte_1EB658489 & 1) == 0)
    {
      byte_1EB658489 = 1;
      v8 = sub_1AF0D5194(a1, a2);
      a1 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      if (a1)
      {
        sub_1AFDD3F30(&v10, v11, v8);
      }
    }

    ++v4;
  }

  while (v4 != 8);
  return 0;
}

void sub_1AF138A68(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = a1 + 114688;
  v3 = *(a1 + 116456);
  if (v3)
  {
    if (*(a1 + 604) == 1)
    {
      v4 = *(a1 + 600);
      if (v4 >= 8)
      {
        v4 = 8;
      }

      *(a1 + 4 * v4 + 116464) = 666;
    }

    sub_1AF102998(v3, (a1 + 116464), 9u);
    if ((sub_1AF12EE68(*(v2 + 1744)) & 0x100000) != 0)
    {
      v50 = xmmword_1AFE21180;
      v51 = xmmword_1AFE21170;
      v33 = *(a1 + 84);
      if (v33)
      {
        for (i = 0; i != v33; ++i)
        {
          v10 = sub_1AF1B9B04(*(*(a1 + 160) + 8 * i), v5);
          v11 = *(a1 + 416);
          v12 = *(v11 + i);
          if (*(v11 + i))
          {
            v52[0] = *"fff?";
            v52[1] = unk_1AFE211B0;
            v52[2] = xmmword_1AFE211C0;
            v52[3] = unk_1AFE211D0;
            v13 = *(*(a1 + 224) + 8 * i);
            v14 = sub_1AF19BA80(v13, v9);
            if (!v14)
            {
              v16 = 1;
LABEL_14:
              v17 = a1 + 116768 + 2336 * (v12 - 1);
              v18 = v52;
              do
              {
                if (v14)
                {
                  v49[0] = *v18;
                  v49[0].i32[2] = 1056964608;
                  v19 = sub_1AF19E90C(v13, v9);
                  v20 = *(v2 + 1768);
                  if (v19)
                  {
                    sub_1AF0FFE04(v20, *(v17 + 240), 0, v49[0].f32);
                  }

                  else
                  {
                    sub_1AF0FE168(v20, 0, v49, *(v17 + 224));
                  }
                }

                sub_1AF0FEF00(*(v2 + 1768), v17 + 256, 0, v18->f32);
                v21 = *(v17 + 368);
                v49[0] = *(v17 + 352);
                v49[1] = v21;
                sub_1AF0FEDA4(*(v2 + 1768), v49, v17, v18);
                v17 += 384;
                ++v18;
                --v16;
              }

              while (v16);
              goto LABEL_20;
            }

            v15 = sub_1AF19BAD0(v13, v9);
            if (v15)
            {
              v16 = v15;
              goto LABEL_14;
            }
          }

LABEL_20:
          v22 = *(*(a1 + 352) + i);
          v23 = sub_1AF19CBB4(*(*(a1 + 224) + 8 * i), v9);
          v24 = *(v2 + 1768);
          if (v22)
          {
            v25 = &v50;
          }

          else
          {
            v25 = &v51;
          }

          if (v23 == 2)
          {
            sub_1AF0FDFAC(v24, v10, v25, 0, xmmword_1AFE21150);
          }

          else
          {
            sub_1AF0FE080(v24, v10, v25, 0, xmmword_1AFE20150, xmmword_1AFE20650);
            sub_1AF0FE080(*(v2 + 1768), v10, v25, 0, xmmword_1AFE20160, xmmword_1AFE20B60);
            sub_1AF0FE080(*(v2 + 1768), v10, v25, 0, xmmword_1AFE20180, xmmword_1AFE206C0);
          }
        }
      }

      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 0x40000000;
      v45[2] = sub_1AF138F0C;
      v45[3] = &unk_1E7A79E20;
      v48 = a1;
      v46 = v50;
      v47 = v51;
      v26 = *(a1 + 88);
      if (v26)
      {
        sub_1AF138F0C(v45, v26, v6, v7, *(a1 + 472));
      }

      v38 = MEMORY[0x1E69E9820];
      v39 = 0x40000000;
      v40 = sub_1AF138F9C;
      v41 = &unk_1E7A79E40;
      v44 = a1;
      v42 = v50;
      v43 = v51;
      v27 = *(a1 + 104);
      if (v27)
      {
        v28 = 0;
        v29 = *(a1 + 480);
        do
        {
          v30 = *(v29 + 16 * v28);
          v30.n128_u32[3] = sqrtf(v30.n128_f32[3]);
          if (*(*(v44 + 392) + v28))
          {
            v31 = &v42;
          }

          else
          {
            v31 = &v43;
          }

          sub_1AF0FE168(*(v44 + 116456), 0, v31, v30);
          ++v28;
        }

        while (v27 != v28);
      }

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 0x40000000;
      v34[2] = sub_1AF139064;
      v34[3] = &unk_1E7A79E60;
      v37 = a1;
      v35 = v50;
      v36 = v51;
      v32 = *(a1 + 92);
      if (v32)
      {
        sub_1AF139064(v34, v32, v6, v7, *(a1 + 488));
      }
    }
  }

  if (*(a1 + 96))
  {
    sub_1AF13C5A0(*(a1 + 24));
  }

  *(v2 + 1768) = 0;
  *(v2 + 1744) = 0;
}

uint64_t sub_1AF138EE0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 88);
  if (v2)
  {
    return (*(a2 + 16))(a2, v2, *(result + 168), *(result + 232), *(result + 472));
  }

  return result;
}

void sub_1AF138F0C(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = *(result + 64);
      v10 = *(v9 + 116456);
      if (*(*(v9 + 360) + v7))
      {
        v11 = 32;
      }

      else
      {
        v11 = 48;
      }

      sub_1AF0FE168(v10, 0, (result + v11), *(a5 + 16 * v7++));
    }

    while (v8 != v7);
  }
}

void sub_1AF138F9C(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = *(a5 + 16 * v7);
      v9.n128_u32[3] = sqrtf(v9.n128_f32[3]);
      v10 = *(result + 64);
      v11 = *(v10 + 116456);
      if (*(*(v10 + 392) + v7))
      {
        v12 = 32;
      }

      else
      {
        v12 = 48;
      }

      sub_1AF0FE168(v11, 0, (result + v12), v9);
      ++v7;
    }

    while (v8 != v7);
  }
}

uint64_t sub_1AF139038(uint64_t result, uint64_t a2)
{
  v2 = *(result + 92);
  if (v2)
  {
    return (*(a2 + 16))(a2, v2, *(result + 176), *(result + 240), *(result + 488));
  }

  return result;
}

void sub_1AF139064(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = 0;
    v7 = (a5 + 32);
    v8 = a2;
    do
    {
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;
      v12 = *(v7 + 1);
      v7 += 12;
      v16 = v10;
      v17 = v9;
      v13 = *(result + 64);
      v14 = *(v13 + 116456);
      if (*(*(v13 + 368) + v6))
      {
        v15 = 32;
      }

      else
      {
        v15 = 48;
      }

      sub_1AF10052C(v14, &v17, &v16, 0, result + v15, 0, v11, v12);
      ++v6;
    }

    while (v8 != v6);
  }
}

uint64_t sub_1AF139110(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD3E68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 24);
}

void sub_1AF139158(uint64_t a1)
{
  *(a1 + 48) = 0;
  CFDictionaryRemoveAllValues(*(a1 + 56));

  sub_1AF13819C(a1);
}

uint64_t sub_1AF139198(uint64_t result, _OWORD *a2, float a3, float a4, uint64_t a5, __int128 *a6, __int128 *a7)
{
  v7 = a2[1];
  *(result + 116512) = *a2;
  *(result + 116528) = v7;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[5];
  *(result + 116576) = a2[4];
  *(result + 116592) = v10;
  *(result + 116544) = v8;
  *(result + 116560) = v9;
  v11 = *a7;
  v12 = a7[1];
  v13 = a7[3];
  *(result + 116720) = a7[2];
  *(result + 116736) = v13;
  *(result + 116688) = v11;
  *(result + 116704) = v12;
  v14 = *a6;
  v15 = a6[1];
  v16 = a6[3];
  *(result + 116640) = a6[2];
  *(result + 116656) = v16;
  *(result + 116608) = v14;
  *(result + 116624) = v15;
  *(result + 116672) = a3;
  *(result + 116676) = a4;
  return result;
}

double sub_1AF13920C(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a17, __n128 a18, __n128 a19, __n128 a20)
{
  v20 = 0;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  v35 = a8;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  do
  {
    *(&v36 + v20) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE21120, COERCE_FLOAT(*(&v32 + v20))), xmmword_1AFE21130, v32.n128_u64[v20 / 8], 1), xmmword_1AFE20180, *(&v32 + v20), 2), xmmword_1AFE21140, *(&v32 + v20), 3);
    v20 += 16;
  }

  while (v20 != 64);
  v21 = 0;
  v22 = v36;
  v23 = v37;
  v24 = v38;
  v25 = v39;
  v32 = a1;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  do
  {
    *(&v36 + v21) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*(&v32 + v21))), v23, v32.n128_u64[v21 / 8], 1), v24, *(&v32 + v21), 2), v25, *(&v32 + v21), 3);
    v21 += 16;
  }

  while (v21 != 64);
  v26 = 0;
  v27 = v36;
  v28 = v37;
  v29 = v38;
  v30 = v39;
  v32 = a17;
  v33 = a18;
  v34 = a19;
  v35 = a20;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  do
  {
    *(&v36 + v26) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(*(&v32 + v26))), v28, v32.n128_u64[v26 / 8], 1), v29, *(&v32 + v26), 2), v30, *(&v32 + v26), 3);
    v26 += 16;
  }

  while (v26 != 64);
  return *v36.i64;
}

void sub_1AF139324(uint64_t a1, unsigned int a2, double a3, double a4, int32x2_t a5, int32x2_t a6)
{
  v7 = a2 + 1;
  if (a2 == -1)
  {
    LODWORD(v7) = 0;
LABEL_10:
    v21 = v7 + 0xFFFFFFFFLL;
    v22 = (a1 + 4 * v7);
    v23 = v7 + 1;
    do
    {
      *v22++ = *(a1 + 4 * v21++);
    }

    while (v23++ != 5);
    return;
  }

  a6.i32[0] = LODWORD(a3);
  v8 = *&a4 / *&a3;
  *&a3 = *&a4 - *&a3;
  *&a4 = a2;
  v26 = vdupq_n_s64(v7 - 1);
  v9 = vdup_lane_s32(*&a4, 0);
  v10 = vdup_lane_s32(*&a3, 0);
  v11 = vdup_lane_s32(a6, 0);
  v12 = (v7 + 1) & 0x1FFFFFFFELL;
  v13 = vdup_lane_s32(a5, 0);
  v14 = 0x100000000;
  v15 = xmmword_1AFE21110;
  v16 = (a1 + 4);
  v25 = vdupq_n_s64(2uLL);
  v27 = *a6.i32;
  do
  {
    v30 = vmovn_s64(vcgeq_u64(v26, v15));
    v31 = v15;
    v17 = vdiv_f32(vcvt_f32_u32(v14), v9);
    v28 = v17.f32[1];
    v18 = vmla_f32(v11, v17, v10);
    v29 = powf(v8, v17.f32[0]);
    v19 = vmul_n_f32(__PAIR64__(COERCE_UNSIGNED_INT(powf(v8, v28)), LODWORD(v29)), v27);
    v20 = vmla_f32(v19, vsub_f32(v18, v19), v13);
    if (v30.i8[0])
    {
      *(v16 - 1) = v20.i32[0];
    }

    if (v30.i8[4])
    {
      *v16 = v20.i32[1];
    }

    v15 = vaddq_s64(v31, v25);
    v14 = vadd_s32(v14, 0x200000002);
    v16 += 2;
    v12 -= 2;
  }

  while (v12);
  if (v7 <= 4)
  {
    goto LABEL_10;
  }
}

double sub_1AF1394A8(__n128 a1, __n128 a2)
{
  v2 = 0;
  v3 = -a2.n128_f32[2];
  if (a1.n128_f32[2] < a2.n128_f32[2])
  {
    v4 = -a1.n128_f32[2];
  }

  else
  {
    v4 = v3 + 1.0;
  }

  v5 = v3 - v4;
  *&v6 = 1.0 / v5;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  v8 = vcvtq_f64_f32(a1.n128_u64[0]);
  v9 = vcvtq_f64_f32(a2.n128_u64[0]);
  *&v8.f64[0] = vcvt_f32_f64(vdivq_f64(vnegq_f64(vaddq_f64(v8, v9)), vsubq_f64(v9, v8)));
  *v9.f64 = v3 / v5;
  *&v8.f64[1] = __PAIR64__(1.0, LODWORD(v9.f64[0]));
  v11[2] = v7;
  v11[3] = v8;
  memset(v12, 0, sizeof(v12));
  do
  {
    v12[v2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(v11[v2])), xmmword_1AFE20160, *&v11[v2], 1), xmmword_1AFE206C0, v11[v2], 2), xmmword_1AFE20BF0, v11[v2], 3);
    ++v2;
  }

  while (v2 != 4);
  return *v12;
}

void sub_1AF1395B0(uint64_t a1, uint64_t a2, float32x4_t a3, float32x4_t a4)
{
  v188 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 336);
  v8 = *(a1 + 272);
  v9 = *(a1 + 288);
  v10 = vextq_s8(vextq_s8(v9, v9, 0xCuLL), v9, 8uLL);
  v11 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
  v12 = vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL);
  v13 = vextq_s8(vextq_s8(v8, v8, 0xCuLL), v8, 8uLL);
  v14 = vmlaq_f32(vmulq_f32(v13, vnegq_f32(v12)), v11, v10);
  v15 = vmulq_f32(v7, v14);
  v15.f32[0] = v15.f32[2] + vaddv_f32(*v15.f32);
  if (v15.f32[0] != 0.0)
  {
    v16 = *(a1 + 336);
    v16.f32[0] = -v7.f32[3];
    v17 = *(a1 + 288);
    *v17.i32 = -*&v9.i32[3];
    v18 = *(a1 + 272);
    *v18.i32 = -*&v8.i32[3];
    v19 = vmulq_f32(v16, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v18, v18, 0xCuLL), v18, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL))), vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL)));
    v20 = *(a1 + 336);
    v20.f32[1] = -v7.f32[3];
    v21 = *(a1 + 288);
    *&v21.i32[1] = -*&v9.i32[3];
    v22 = *(a1 + 272);
    *&v22.i32[1] = -*&v8.i32[3];
    v19.f32[0] = v19.f32[2] + vaddv_f32(*v19.f32);
    v23 = vmulq_f32(v20, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v22, v22, 0xCuLL), v22, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL))), vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), vextq_s8(vextq_s8(v21, v21, 0xCuLL), v21, 8uLL)));
    v24 = *(a1 + 336);
    v24.f32[2] = -v7.f32[3];
    v25 = *(a1 + 288);
    *&v25.i32[2] = -*&v9.i32[3];
    v26 = *(a1 + 272);
    *&v26.i32[2] = -*&v8.i32[3];
    v27 = vmulq_f32(v24, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v26, v26, 0xCuLL), v26, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL))), vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vextq_s8(vextq_s8(v25, v25, 0xCuLL), v25, 8uLL)));
    v19.f32[1] = v23.f32[2] + vaddv_f32(*v23.f32);
    v19.f32[2] = v27.f32[2] + vaddv_f32(*v27.f32);
    v183[0] = vdivq_f32(v19, vdupq_lane_s32(*v15.f32, 0));
  }

  v28 = *(a1 + 256);
  v29 = vextq_s8(vextq_s8(v28, v28, 0xCuLL), v28, 8uLL);
  v30 = vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL);
  v31 = vmlaq_f32(vmulq_f32(v10, vnegq_f32(v30)), v12, v29);
  v32 = vmulq_f32(v7, v31);
  v12.f32[0] = v32.f32[2] + vaddv_f32(*v32.f32);
  if (v12.f32[0] != 0.0)
  {
    v33 = v7;
    v33.f32[0] = -v7.f32[3];
    v34 = *(a1 + 256);
    *v34.i32 = -*&v28.i32[3];
    v35 = v9;
    *v35.i32 = -*&v9.i32[3];
    v36 = vmulq_f32(v33, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v35, v35, 0xCuLL), v35, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL))), vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), vextq_s8(vextq_s8(v34, v34, 0xCuLL), v34, 8uLL)));
    v37 = v7;
    v37.f32[1] = -v7.f32[3];
    v38 = *(a1 + 256);
    *&v38.i32[1] = -*&v28.i32[3];
    v39 = v9;
    *&v39.i32[1] = -*&v9.i32[3];
    v36.f32[0] = v36.f32[2] + vaddv_f32(*v36.f32);
    v40 = vmulq_f32(v37, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v39, v39, 0xCuLL), v39, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL))), vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL), vextq_s8(vextq_s8(v38, v38, 0xCuLL), v38, 8uLL)));
    v41 = v7;
    v41.f32[2] = -v7.f32[3];
    v42 = *(a1 + 256);
    *&v42.i32[2] = -*&v28.i32[3];
    v43 = v9;
    *&v43.i32[2] = -*&v9.i32[3];
    v44 = vmulq_f32(v41, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v43, v43, 0xCuLL), v43, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL))), vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL), vextq_s8(vextq_s8(v42, v42, 0xCuLL), v42, 8uLL)));
    v36.f32[1] = v40.f32[2] + vaddv_f32(*v40.f32);
    v36.f32[2] = v44.f32[2] + vaddv_f32(*v44.f32);
    v183[1] = vdivq_f32(v36, vdupq_lane_s32(*v12.f32, 0));
  }

  v45 = *(a1 + 304);
  v46 = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
  v47 = vextq_s8(vextq_s8(v45, v45, 0xCuLL), v45, 8uLL);
  v48 = vmlaq_f32(vmulq_f32(v47, vnegq_f32(v11)), v46, v13);
  v49 = vmulq_f32(v7, v48);
  v13.f32[0] = v49.f32[2] + vaddv_f32(*v49.f32);
  if (v13.f32[0] != 0.0)
  {
    v50 = v7;
    v50.f32[0] = -v7.f32[3];
    v51 = v8;
    *v51.i32 = -*&v8.i32[3];
    v52 = *(a1 + 304);
    *v52.i32 = -*&v45.i32[3];
    v53 = vmulq_f32(v50, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v52, v52, 0xCuLL), v52, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL))), vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL), vextq_s8(vextq_s8(v51, v51, 0xCuLL), v51, 8uLL)));
    v54 = v7;
    v54.f32[1] = -v7.f32[3];
    v55 = v8;
    *&v55.i32[1] = -*&v8.i32[3];
    v56 = *(a1 + 304);
    *&v56.i32[1] = -*&v45.i32[3];
    v53.f32[0] = v53.f32[2] + vaddv_f32(*v53.f32);
    v57 = vmulq_f32(v54, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v56, v56, 0xCuLL), v56, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL))), vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL), vextq_s8(vextq_s8(v55, v55, 0xCuLL), v55, 8uLL)));
    v58 = v7;
    v58.f32[2] = -v7.f32[3];
    v59 = v8;
    *&v59.i32[2] = -*&v8.i32[3];
    v60 = *(a1 + 304);
    *&v60.i32[2] = -*&v45.i32[3];
    v61 = vmulq_f32(v58, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v60, v60, 0xCuLL), v60, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v59, v59), v59, 0xCuLL))), vextq_s8(vuzp1q_s32(v60, v60), v60, 0xCuLL), vextq_s8(vextq_s8(v59, v59, 0xCuLL), v59, 8uLL)));
    v53.f32[1] = v57.f32[2] + vaddv_f32(*v57.f32);
    v53.f32[2] = v61.f32[2] + vaddv_f32(*v61.f32);
    v183[2] = vdivq_f32(v53, vdupq_lane_s32(*v13.f32, 0));
  }

  v62 = vmlaq_f32(vmulq_f32(v29, vnegq_f32(v46)), v30, v47);
  v63 = vmulq_f32(v7, v62);
  v63.f32[0] = v63.f32[2] + vaddv_f32(*v63.f32);
  if (v63.f32[0] != 0.0)
  {
    v64 = v7;
    v64.f32[0] = -v7.f32[3];
    v65 = v45;
    *v65.i32 = -*&v45.i32[3];
    v66 = v28;
    *v66.i32 = -*&v28.i32[3];
    v67 = vmulq_f32(v64, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v66, v66, 0xCuLL), v66, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v65, v65), v65, 0xCuLL))), vextq_s8(vuzp1q_s32(v66, v66), v66, 0xCuLL), vextq_s8(vextq_s8(v65, v65, 0xCuLL), v65, 8uLL)));
    v67.f32[0] = v67.f32[2] + vaddv_f32(*v67.f32);
    v68 = v7;
    v68.f32[1] = -v7.f32[3];
    v69 = v45;
    *&v69.i32[1] = -*&v45.i32[3];
    v70 = v28;
    *&v70.i32[1] = -*&v28.i32[3];
    v71 = vmulq_f32(v68, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v70, v70, 0xCuLL), v70, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v69, v69), v69, 0xCuLL))), vextq_s8(vuzp1q_s32(v70, v70), v70, 0xCuLL), vextq_s8(vextq_s8(v69, v69, 0xCuLL), v69, 8uLL)));
    v7.f32[2] = -v7.f32[3];
    v72 = v45;
    *&v72.i32[2] = -*&v45.i32[3];
    v73 = v28;
    *&v73.i32[2] = -*&v28.i32[3];
    v4 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v73, v73, 0xCuLL), v73, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v72, v72), v72, 0xCuLL))), vextq_s8(vuzp1q_s32(v73, v73), v73, 0xCuLL), vextq_s8(vextq_s8(v72, v72, 0xCuLL), v72, 8uLL));
    v74 = vmulq_f32(v7, v4);
    v67.f32[1] = v71.f32[2] + vaddv_f32(*v71.f32);
    v67.f32[2] = v74.f32[2] + vaddv_f32(*v74.f32);
    v183[3] = vdivq_f32(v67, vdupq_lane_s32(*v63.f32, 0));
  }

  v75 = *(a1 + 320);
  v76 = vmulq_f32(v14, v75);
  v4.f32[0] = v76.f32[2] + vaddv_f32(*v76.f32);
  if (v4.f32[0] != 0.0)
  {
    v77 = *(a1 + 320);
    v77.f32[0] = -v75.f32[3];
    v78 = v9;
    *v78.i32 = -*&v9.i32[3];
    v79 = v8;
    *v79.i32 = -*&v8.i32[3];
    v80 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v79, v79, 0xCuLL), v79, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v78, v78), v78, 0xCuLL))), vextq_s8(vuzp1q_s32(v79, v79), v79, 0xCuLL), vextq_s8(vextq_s8(v78, v78, 0xCuLL), v78, 8uLL)), v77);
    v81 = *(a1 + 320);
    v81.f32[1] = -v75.f32[3];
    v82 = v9;
    *&v82.i32[1] = -*&v9.i32[3];
    v83 = v8;
    *&v83.i32[1] = -*&v8.i32[3];
    v80.f32[0] = v80.f32[2] + vaddv_f32(*v80.f32);
    v84 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v83, v83, 0xCuLL), v83, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v82, v82), v82, 0xCuLL))), vextq_s8(vuzp1q_s32(v83, v83), v83, 0xCuLL), vextq_s8(vextq_s8(v82, v82, 0xCuLL), v82, 8uLL)), v81);
    v85 = *(a1 + 320);
    v85.f32[2] = -v75.f32[3];
    v86 = v9;
    *&v86.i32[2] = -*&v9.i32[3];
    v87 = v8;
    *&v87.i32[2] = -*&v8.i32[3];
    v88 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v87, v87, 0xCuLL), v87, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v86, v86), v86, 0xCuLL))), vextq_s8(vuzp1q_s32(v87, v87), v87, 0xCuLL), vextq_s8(vextq_s8(v86, v86, 0xCuLL), v86, 8uLL)), v85);
    v80.f32[1] = v84.f32[2] + vaddv_f32(*v84.f32);
    v80.f32[2] = v88.f32[2] + vaddv_f32(*v88.f32);
    v183[4] = vdivq_f32(v80, vdupq_lane_s32(*v4.f32, 0));
  }

  v89 = vmulq_f32(v31, v75);
  v89.f32[0] = v89.f32[2] + vaddv_f32(*v89.f32);
  if (v89.f32[0] != 0.0)
  {
    v90 = v75;
    v90.f32[0] = -v75.f32[3];
    v91 = v28;
    *v91.i32 = -*&v28.i32[3];
    v92 = v9;
    *v92.i32 = -*&v9.i32[3];
    v93 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v92, v92, 0xCuLL), v92, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v91, v91), v91, 0xCuLL))), vextq_s8(vuzp1q_s32(v92, v92), v92, 0xCuLL), vextq_s8(vextq_s8(v91, v91, 0xCuLL), v91, 8uLL)), v90);
    v93.f32[0] = v93.f32[2] + vaddv_f32(*v93.f32);
    v94 = v75;
    v94.f32[1] = -v75.f32[3];
    v95 = v28;
    *&v95.i32[1] = -*&v28.i32[3];
    v96 = v9;
    *&v96.i32[1] = -*&v9.i32[3];
    v97 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v96, v96, 0xCuLL), v96, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v95, v95), v95, 0xCuLL))), vextq_s8(vuzp1q_s32(v96, v96), v96, 0xCuLL), vextq_s8(vextq_s8(v95, v95, 0xCuLL), v95, 8uLL)), v94);
    *v95.i32 = vaddv_f32(*v97.f32);
    v98 = v75;
    v98.f32[2] = -v75.f32[3];
    v99 = v97.f32[2];
    v100 = v28;
    *&v100.i32[2] = -*&v28.i32[3];
    *&v9.i32[2] = -*&v9.i32[3];
    v101 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v9, v9, 0xCuLL), v9, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v100, v100), v100, 0xCuLL))), vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), vextq_s8(vextq_s8(v100, v100, 0xCuLL), v100, 8uLL)), v98);
    v93.f32[1] = v99 + *v95.i32;
    v93.f32[2] = v101.f32[2] + vaddv_f32(*v101.f32);
    v183[5] = vdivq_f32(v93, vdupq_lane_s32(*v89.f32, 0));
  }

  v102 = vmulq_f32(v48, v75);
  v102.f32[0] = v102.f32[2] + vaddv_f32(*v102.f32);
  if (v102.f32[0] != 0.0)
  {
    v103 = v75;
    v103.f32[0] = -v75.f32[3];
    v104 = v8;
    *v104.i32 = -*&v8.i32[3];
    v105 = v45;
    *v105.i32 = -*&v45.i32[3];
    v106 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v105, v105, 0xCuLL), v105, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v104, v104), v104, 0xCuLL))), vextq_s8(vuzp1q_s32(v105, v105), v105, 0xCuLL), vextq_s8(vextq_s8(v104, v104, 0xCuLL), v104, 8uLL)), v103);
    v106.f32[0] = v106.f32[2] + vaddv_f32(*v106.f32);
    v107 = v75;
    v107.f32[1] = -v75.f32[3];
    v108 = v8;
    *&v108.i32[1] = -*&v8.i32[3];
    v109 = v45;
    *&v109.i32[1] = -*&v45.i32[3];
    v110 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v109, v109, 0xCuLL), v109, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v108, v108), v108, 0xCuLL))), vextq_s8(vuzp1q_s32(v109, v109), v109, 0xCuLL), vextq_s8(vextq_s8(v108, v108, 0xCuLL), v108, 8uLL)), v107);
    v111 = v75;
    v111.f32[2] = -v75.f32[3];
    *&v8.i32[2] = -*&v8.i32[3];
    v112 = v45;
    *&v112.i32[2] = -*&v45.i32[3];
    v113 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v112, v112, 0xCuLL), v112, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL))), vextq_s8(vuzp1q_s32(v112, v112), v112, 0xCuLL), vextq_s8(vextq_s8(v8, v8, 0xCuLL), v8, 8uLL)), v111);
    v106.f32[1] = v110.f32[2] + vaddv_f32(*v110.f32);
    v106.f32[2] = v113.f32[2] + vaddv_f32(*v113.f32);
    v183[6] = vdivq_f32(v106, vdupq_lane_s32(*v102.f32, 0));
  }

  v114 = vmulq_f32(v62, v75);
  v114.f32[0] = v114.f32[2] + vaddv_f32(*v114.f32);
  if (v114.f32[0] != 0.0)
  {
    v115 = v75;
    v115.f32[0] = -v75.f32[3];
    v116 = v45;
    *v116.i32 = -*&v45.i32[3];
    v117 = v28;
    *v117.i32 = -*&v28.i32[3];
    v118 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v117, v117, 0xCuLL), v117, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v116, v116), v116, 0xCuLL))), vextq_s8(vuzp1q_s32(v117, v117), v117, 0xCuLL), vextq_s8(vextq_s8(v116, v116, 0xCuLL), v116, 8uLL)), v115);
    v119 = v75;
    v119.f32[1] = -v75.f32[3];
    v120 = v45;
    *&v120.i32[1] = -*&v45.i32[3];
    v118.f32[0] = v118.f32[2] + vaddv_f32(*v118.f32);
    v121 = v28;
    *&v121.i32[1] = -*&v28.i32[3];
    v122 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v121, v121, 0xCuLL), v121, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v120, v120), v120, 0xCuLL))), vextq_s8(vuzp1q_s32(v121, v121), v121, 0xCuLL), vextq_s8(vextq_s8(v120, v120, 0xCuLL), v120, 8uLL)), v119);
    v75.f32[2] = -v75.f32[3];
    *&v45.i32[2] = -*&v45.i32[3];
    *&v28.i32[2] = -*&v28.i32[3];
    v123 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v28, v28, 0xCuLL), v28, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL))), vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL), vextq_s8(vextq_s8(v45, v45, 0xCuLL), v45, 8uLL)), v75);
    v118.f32[1] = v122.f32[2] + vaddv_f32(*v122.f32);
    v118.f32[2] = v123.f32[2] + vaddv_f32(*v123.f32);
    v183[7] = vdivq_f32(v118, vdupq_lane_s32(*v114.f32, 0));
  }

  v124 = 0;
  v125.columns[0] = 0uLL;
  do
  {
    v125.columns[0] = vaddq_f32(v125.columns[0], v183[v124++]);
  }

  while (v124 != 8);
  v126 = 0;
  v125.columns[1].i64[0] = 0x3E0000003E000000;
  v125.columns[1].i64[1] = 0x3E0000003E000000;
  v125.columns[3] = vmulq_f32(v125.columns[0], v125.columns[1]);
  v125.columns[0].i32[0] = 0;
  do
  {
    v125.columns[1] = vsubq_f32(v183[v126], v125.columns[3]);
    v125.columns[1] = vmulq_f32(v125.columns[1], v125.columns[1]);
    v125.columns[0].f32[0] = fmaxf(v125.columns[0].f32[0], sqrtf(v125.columns[1].f32[2] + vaddv_f32(*v125.columns[1].f32)));
    ++v126;
  }

  while (v126 != 8);
  v127 = ceilf(v125.columns[0].f32[0] * 16.0);
  v125.columns[1].f32[0] = v127 * 0.0625;
  v180 = v125.columns[1];
  v125.columns[0] = v125.columns[3];
  v125.columns[0].f32[3] = v127 * 0.0625;
  *(a1 + 224) = v125.columns[0];
  v125.columns[3].i32[3] = *(a1 + 60);
  *(a1 + 48) = v125.columns[3];
  v125.columns[0] = *a1;
  v125.columns[1] = *(a1 + 16);
  v125.columns[2] = *(a1 + 32);
  v189 = __invert_f4(v125);
  v129 = 0;
  v130 = *(a1 + 32);
  v131 = *(a1 + 48);
  v132 = vmulq_f32(v130, v130);
  *&v133 = v132.f32[2] + vaddv_f32(*v132.f32);
  v134 = vrsqrte_f32(v133);
  v135 = vmul_f32(v134, vrsqrts_f32(v133, vmul_f32(v134, v134)));
  v135.i32[0] = vmul_f32(v135, vrsqrts_f32(v133, vmul_f32(v135, v135))).u32[0];
  __asm { FMOV            V4.4S, #1.0 }

  v141 = _Q4;
  v145 = vdivq_f32(_Q4, vmulq_n_f32(v130, v135.f32[0]));
  _Q4.f32[0] = -(v127 * 0.0625);
  v142 = _Q4;
  v142.f32[1] = _Q4.f32[0];
  v175 = v189.columns[1];
  v176 = v189.columns[0];
  *(a1 + 64) = v189;
  v142.i32[2] = v180.i32[0];
  v141.i32[0] = v180.i32[0];
  v173 = v189.columns[3];
  v174 = v189.columns[2];
  v143 = v141;
  v143.f32[1] = _Q4.f32[0];
  v143.i32[2] = v180.i32[0];
  v184 = v142;
  v185 = v143;
  v141.i32[1] = v180.i32[0];
  v141.i32[2] = v180.i32[0];
  _Q4.i32[1] = v180.i32[0];
  v144 = v180;
  _Q4.i32[2] = v180.i32[0];
  v186 = v141;
  v187 = _Q4;
  v145.i32[3] = 1259902592;
  v146 = vsubq_f32(a3, a4);
  v147 = vaddq_f32(a3, a4);
  v148 = 0.0;
  do
  {
    v149 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a1, COERCE_FLOAT(*(&v184 + v129 * 4))), *(a1 + 16), *&v184.f32[v129], 1), v130, *(&v184 + v129 * 4), 2), v131, *(&v184 + v129 * 4), 3);
    v149.i32[3] = 1.0;
    v150 = vmulq_f32(v145, vsubq_f32(v146, v149));
    v151 = vmulq_f32(v145, vsubq_f32(v147, v149));
    v150.i32[3] = 0;
    v151.i32[3] = 0;
    v152 = vminnmq_f32(v150, v151);
    v153 = vmaxnmq_f32(v150, v151);
    v154 = fmaxf(fmaxf(v152.f32[0], v152.f32[2]), v152.f32[1]);
    v155 = fminf(fminf(v153.f32[0], v153.f32[2]), v153.f32[1]);
    if (v155 >= v154)
    {
      if (v154 > 0.0 && v154 < 10000000.0 || v155 > 0.0 && (v154 = v155, v155 < 10000000.0))
      {
        v148 = fmaxf(v148, v154);
      }
    }

    v129 += 4;
  }

  while (v129 != 16);
  *v128.i32 = -(v127 * 0.0625);
  v144.n128_u32[1] = v180.i32[0];
  v144.n128_f32[2] = v180.f32[0] + v148;
  v179 = vdupq_lane_s32(v128, 0);
  v181 = v144;
  *v157.i64 = sub_1AF1394A8(v179, v144);
  v161 = 0;
  *(a1 + 128) = v157;
  *(a1 + 144) = v158;
  *(a1 + 160) = v159;
  *(a1 + 176) = v160;
  v162 = v179;
  v163 = v181;
  v162.i32[3] = 1.0;
  v163.i32[3] = 1.0;
  v164 = vaddq_f32(v162, v163);
  v165 = v163;
  v166 = v162;
  v162.i64[0] = 0x3F0000003F000000;
  v162.i64[1] = 0x3F0000003F000000;
  *(a1 + 352) = vmulq_f32(v164, v162);
  *(a1 + 368) = vmulq_f32(vsubq_f32(v165, v166), v162);
  v182[0] = v176;
  v182[1] = v175;
  v182[2] = v174;
  v182[3] = v173;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  do
  {
    *(&v184 + v161 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v157, COERCE_FLOAT(v182[v161])), v158, *&v182[v161], 1), v159, v182[v161], 2), v160, v182[v161], 3);
    ++v161;
  }

  while (v161 != 4);
  v167 = vadd_f32(*v187.f32, *&vmlaq_f32(vmlaq_f32(vmulq_f32(v184, 0), 0, v185), 0, v186));
  v168 = sub_1AF19C6A4(a2, v156);
  v169 = vmul_n_f32(v167, 0.5 * *&v168);
  v170 = vmul_n_f32(vsub_f32(vrnda_f32(v169), v169), 2.0 / *&v168);
  v171 = *(a1 + 176);
  *&v172 = vadd_f32(*v171.i8, v170);
  *(&v172 + 1) = vextq_s8(v171, v171, 8uLL).u64[0];
  *(a1 + 176) = v172;
}

void sub_1AF13A368(uint64_t a1, void *a2, unsigned __int8 *a3, uint64_t a4)
{
  v155 = *MEMORY[0x1E69E9840];
  if (sub_1AF19BA80(a3, a2))
  {
    v9 = sub_1AF19BAD0(a3, v8);
  }

  else
  {
    v9 = 1;
  }

  v10 = sub_1AF19CBB4(a3, v8);
  v12 = sub_1AF19E958(a3, v11);
  if (v12)
  {
    if (v10 == 2)
    {
      v14 = sub_1AF1C3FAC(a2, v13);
      v16 = sub_1AF1D01D0(v14, v15);
      v135 = 0;
      v133 = 0u;
      v134 = 0u;
      sub_1AF1271CC(0, &v133);
      *&v134 = 0x200000014;
      *&v133 = sub_1AF19C3BC(a3, v17);
      DWORD2(v134) = 1;
      sub_1AF1288C0(v16, &v133);
      v130 = v19;
      v131 = v18;
      v21 = sub_1AF1B9B04(a2, v20);
      v156.columns[1] = *(v21 + 16);
      v156.columns[2] = *(v21 + 32);
      v147 = *v21;
      v156.columns[0] = v147;
      v148 = v156.columns[1];
      v156.columns[3] = xmmword_1AFE201A0;
      v149 = v156.columns[2];
      v150 = xmmword_1AFE201A0;
      v157 = __invert_f4(v156);
      v128 = v157.columns[1];
      v129 = v157.columns[0];
      v126 = v157.columns[3];
      v127 = v157.columns[2];
      v22 = *(a1 + 116672);
      v23 = fminf(*(a1 + 116676), sub_1AF19EAD4(a3));
      v25 = sub_1AF19E90C(a3, v24);
      v27 = v25;
      if (v25)
      {
        v28 = vmulq_f32(v130, v130);
        v29 = vsubq_f32(v131, *(a1 + 116656));
        v30 = vmulq_f32(v29, v29);
        *v28.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v28, v28, 8uLL), *&vextq_s8(v30, v30, 8uLL)), vadd_f32(vzip1_s32(*v28.i8, *v30.i8), vzip2_s32(*v28.i8, *v30.i8))));
        v22 = fmaxf(v22, *&v28.i32[1] - *v28.i32);
        v23 = fminf(v23, vaddv_f32(*v28.i8));
      }

      v31.i32[0] = sub_1AF19EB30(a3, v26);
      *&v32 = v22;
      *&v33 = v23;
      sub_1AF139324(a4 + 2304, v9, v32, v33, v31, v34);
      v35 = 0;
      if (v9)
      {
        v36 = *(a1 + 116640);
        v37 = vmulq_f32(v36, v36);
        *&v38 = v37.f32[2] + vaddv_f32(*v37.f32);
        *v37.f32 = vrsqrte_f32(v38);
        *v37.f32 = vmul_f32(*v37.f32, vrsqrts_f32(v38, vmul_f32(*v37.f32, *v37.f32)));
        v124 = vmulq_n_f32(v36, vmul_f32(*v37.f32, vrsqrts_f32(v38, vmul_f32(*v37.f32, *v37.f32))).f32[0]);
        v125 = *(a1 + 116656);
        v123 = vnegq_f32(v124);
        v39 = (a1 + 116512);
        v41 = v126;
        v40 = v127;
        v43 = v130;
        v42 = v131;
        v45 = v128;
        v44 = v129;
        v46 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v126, v127, v131, 2), v128, *v131.f32, 1), v129, v131.f32[0]);
        v46.i32[3] = v131.i32[3];
        v47 = v130;
        v47.i32[1] = v130.i32[0];
        v47.i32[2] = v130.i32[0];
        v48 = vmlaq_f32(vmlaq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*v130.f32, 1), v130), vabsq_f32(v128)), v47, vabsq_f32(v129)), vzip2q_s32(vtrn1q_s32(v43, v43), v130), vabsq_f32(v127));
        v48.i32[2] = fminf(v48.f32[2], 10000.0);
        v121 = vaddq_f32(v46, v48);
        v122 = vsubq_f32(v46, v48);
        v49 = v9;
        v50 = (a4 + 2308);
        do
        {
          v51 = a4 + 384 * v35;
          v52 = v148;
          *v51 = v147;
          *(v51 + 16) = v52;
          v53 = v150;
          *(v51 + 32) = v149;
          *(v51 + 48) = v53;
          *(v51 + 64) = v44;
          *(v51 + 80) = v45;
          *(v51 + 96) = v40;
          *(v51 + 112) = v41;
          v55 = v39[1];
          v151 = *v39;
          v54 = v151;
          v152 = v55;
          v56 = v39[3];
          v153 = v39[2];
          v154 = v56;
          v57 = vmulq_f32(vmlaq_n_f32(v125, v123, *(v50 - 1)), v123);
          *&v53 = -(v57.f32[2] + vaddv_f32(*v57.f32));
          v58 = v123;
          v58.i32[3] = v53;
          v59 = vmulq_f32(v124, vmlaq_n_f32(v125, v123, *v50));
          v60 = -(v59.f32[2] + vaddv_f32(*v59.f32));
          v61 = v124;
          v61.f32[3] = v60;
          *(v51 + 288) = v153;
          *(v51 + 304) = v56;
          *(v51 + 256) = v54;
          *(v51 + 272) = v55;
          *(v51 + 320) = v61;
          *(v51 + 336) = v58;
          if (v27)
          {
            v62 = *(v51 + 240);
            v136 = v151;
            v137 = v152;
            v138 = v153;
            v139 = v154;
            v140 = v61;
            v141 = v58;
            sub_1AF121DE4(v62, &v136);
            if (!sub_1AF122F04(v62, v131, v130) || (*v63.i64 = sub_1AF12308C(v62, v129, v128, v127, v126), v65 = vsubq_f32(v63, v64), v66 = vaddq_f32(v63, v64), v65.i32[2] = v122.i32[2], v66.i32[2] = v121.i32[2], v67.i64[0] = 0x3F0000003F000000, v67.i64[1] = 0x3F0000003F000000, sub_1AF121D38(v62, vmulq_f32(vaddq_f32(v66, v65), v67), vmulq_f32(vsubq_f32(v66, v65), v67)), sub_1AF123040(v62, &v147), !sub_1AF122F04(v62, v131, v130)))
            {
              v45 = v128;
              v44 = v129;
              v41 = v126;
              v40 = v127;
              goto LABEL_17;
            }

            *v68.i64 = sub_1AF12308C(v62, v129, v128, v127, v126);
            v70 = vmulq_f32(vaddq_f32(v69, vdupq_n_s32(0x3C23D70Au)), vdupq_n_s32(0x3F800054u));
            v70.i32[3] = v69.i32[3];
            *(v51 + 352) = v68;
            *(v51 + 368) = v70;
            *&v71 = sub_1AF1394A8(vsubq_f32(v68, v70), vaddq_f32(v68, v70));
            *(v51 + 128) = v71;
            *(v51 + 144) = v72;
            *(v51 + 160) = v73;
            *(v51 + 176) = v74;
          }

          else
          {
            sub_1AF1395B0(a4 + 384 * v35, a3, v42, v43);
          }

          ++v35;
          v45 = v128;
          v44 = v129;
          v41 = v126;
          v40 = v127;
LABEL_17:
          ++v50;
          --v49;
          v43 = v130;
          v42 = v131;
        }

        while (v49);
      }

      if (v9 > v35)
      {
        *&v75 = sub_1AF1394A8(vdupq_n_s32(0x47C34F80u), vdupq_n_s32(0x47C35000u));
        do
        {
          v79 = (a4 + 384 * v35);
          v79[8] = v75;
          v79[9] = v76;
          v79[10] = v77;
          v79[11] = v78;
          ++v35;
        }

        while (v9 > v35);
      }
    }

    else
    {
      v107 = sub_1AF0D5194(v12, v13);
      if (os_log_type_enabled(v107, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD3F70(v107, v108, v109, v110, v111, v112, v113, v114);
      }
    }
  }

  else
  {
    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v137 = 0u;
    v138 = 0u;
    v136 = 0u;
    sub_1AF19BC90(a3, &v136);
    v82 = sub_1AF19C6A4(a3, v80);
    if (v10 == 1)
    {
      v83 = sub_1AF19CC98(a3, v81);
      v84 = v83;
      v86 = sub_1AF19CBFC(a3, v85);
      v88 = __tanpi(0.25);
      v89 = 0;
      if (v88 == 0.0)
      {
        v90 = 1.0;
      }

      else
      {
        v90 = 1.0 / v88;
      }

      v91 = v90;
      v92 = v84 + 1.0;
      if (v86 > v83)
      {
        v92 = v86;
      }

      v93 = v92 / (v84 - v92);
      *&v94 = v93;
      v95 = v91;
      LODWORD(v96) = 0;
      *(&v96 + 1) = v91;
      *&v97 = v93 * v84;
      *&v98 = 0;
      *(&v98 + 1) = __PAIR64__(-1.0, v94);
      *&v99 = 0;
      *(&v99 + 1) = v97;
      v151 = LODWORD(v95);
      v152 = v96;
      v153 = v98;
      v154 = v99;
      v147 = 0u;
      v148 = 0u;
      v149 = 0u;
      v150 = 0u;
      do
      {
        *(&v147 + v89) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(&v151 + v89))), xmmword_1AFE20160, *(&v151 + v89), 1), xmmword_1AFE206C0, *(&v151 + v89), 2), xmmword_1AFE20BF0, *(&v151 + v89), 3);
        v89 += 16;
      }

      while (v89 != 64);
      v100 = v148;
      v101 = v149;
      v132 = DWORD2(v150);
      v102 = v150;
      *(a4 + 128) = v147;
      *(a4 + 144) = v100;
      *(a4 + 160) = v101;
      *(a4 + 176) = v102;
      v103 = v101.f32[2];
      v105 = sub_1AF19C608(a3, v87);
      *&v106 = -v103;
      DWORD1(v106) = v132;
      *(&v106 + 2) = v105 * 0.001;
      *(a4 + 192) = v106;
    }

    else
    {
      v115.i64[0] = 0;
      *&v115.i64[1] = v82;
      v147 = v115;
      v116 = sub_1AF15E62C(&v136, &v147);
      v117 = *(v116 + 3);
      v119 = *v116;
      v118 = *(v116 + 1);
      *(a4 + 160) = *(v116 + 2);
      *(a4 + 176) = v117;
      *(a4 + 128) = v119;
      *(a4 + 144) = v118;
    }

    v120 = sub_1AF1B9B04(a2, v104);
    v158 = *v120;
    *a4 = v120->columns[0];
    *(a4 + 16) = v158.columns[1];
    *(a4 + 32) = v158.columns[2];
    *(a4 + 48) = v158.columns[3];
    *(a4 + 64) = __invert_f4(v158);
  }
}

void sub_1AF13AA04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, simd_float4 *a5, uint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    v14 = sub_1AF0D5194(a1, 0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD3FE8(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  sub_1AF13819C(a1);
  Value = CFDictionaryGetValue(*(a1 + 32), a2);
  if (Value)
  {
    v24 = a1 + 8 * (Value >> 28);
    v25 = (Value & 0xFFFFFFF) - 1;
    v26 = *(*(v24 + 216) + 8 * v25);
    v27 = sub_1AF19B994(v26, v23);
    if (v27)
    {
      if (*(*(v24 + 408) + v25))
      {
        if (*(a1 + 116760) < 9u)
        {
          v97 = (a1 + 2336 * (*(*(v24 + 408) + v25) - 1) + 116768);
          sub_1AF13A368(a1, a2, v26, v97);
          v96 = *(a1 + 116688);
          v94 = *(a1 + 116720);
          v95 = *(a1 + 116704);
          v93 = *(a1 + 116736);
          v40 = sub_1AF19BA80(v26, v39);
          if (v40)
          {
            v40 = sub_1AF19BAD0(v26, v41);
            v48 = v40;
          }

          else
          {
            v48 = 1;
          }

          *v103.columns[0].i64 = sub_1AF13920C(v97[4], v97[5], v97[6], v97[7], v97[8], v97[9], v97[10], v97[11], v40, v41, v42, v43, v44, v45, v46, v47, v96, v95, v94, v93);
          v87 = v103.columns[1];
          v88 = v103.columns[0];
          v85 = v103.columns[3];
          v86 = v103.columns[2];
          v104 = __invert_f4(v103);
          v91 = v104.columns[1];
          v92 = v104.columns[0];
          v89 = v104.columns[3];
          v90 = v104.columns[2];
          if (v48)
          {
            v57 = 0;
            __asm { FMOV            V0.4S, #1.0 }

            v84 = _Q0;
            do
            {
              v63 = &v97[24 * v57];
              if (a3)
              {
                v64 = (a3 + (v57 << 6));
                v65 = *v63;
                v66 = v63[1];
                v67 = v63[3];
                v64[2] = v63[2];
                v64[3] = v67;
                *v64 = v65;
                v64[1] = v66;
              }

              if (a4)
              {
                v68 = (a4 + (v57 << 6));
                v69 = v63[8];
                v70 = v63[9];
                v71 = v63[11];
                v68[2] = v63[10];
                v68[3] = v71;
                *v68 = v69;
                v68[1] = v70;
              }

              if (v57)
              {
                *v72.i64 = sub_1AF13920C(v63[4], v63[5], v63[6], v63[7], v63[8], v63[9], v63[10], v63[11], v49, v50, v51, v52, v53, v54, v55, v56, v96, v95, v94, v93);
                v76 = 0;
                v98[0] = v92;
                v98[1] = v91;
                v98[2] = v90;
                v98[3] = v89;
                v99 = 0u;
                v100 = 0u;
                v101 = 0u;
                v102 = 0u;
                do
                {
                  *(&v99 + v76 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v72, COERCE_FLOAT(v98[v76])), v73, *&v98[v76], 1), v74, v98[v76], 2), v75, v98[v76], 3);
                  ++v76;
                }

                while (v76 != 4);
                v77 = v99;
                v78 = v102;
                v77.n128_u32[1] = DWORD1(v100);
                v77.n128_u32[2] = DWORD2(v101);
                v63[12] = v77;
                v63[13] = v78;
                if (a5)
                {
                  v79 = &a5[4 * v57];
                  *v79 = v72;
                  v79[1] = v73;
                  v79[2] = v74;
                  v79[3] = v75;
                }
              }

              else
              {
                v49 = sub_1AF19CBB4(v26, v50);
                if (v49 != 1)
                {
                  v63[12] = v84;
                  v63[13] = 0u;
                }

                if (a5)
                {
                  *a5 = v88;
                  a5[1] = v87;
                  a5[2] = v86;
                  a5[3] = v85;
                }
              }

              if (a6)
              {
                v80 = v63[12];
                v81 = (a6 + 16 * v57);
                v80.n128_u32[3] = v81->n128_u32[3];
                *v81 = v80;
              }

              if (a7)
              {
                v82 = v63[13];
                v83 = (a7 + 16 * v57);
                v82.n128_u32[3] = v83->n128_u32[3];
                *v83 = v82;
              }

              ++v57;
            }

            while (v57 != v48);
          }
        }

        else if ((byte_1EB65848A & 1) == 0)
        {
          byte_1EB65848A = 1;
          v29 = sub_1AF0D5194(v27, v28);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDD3C34();
          }
        }
      }
    }

    else
    {
      v31 = sub_1AF0D5194(v27, v28);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD4060(v31, v32, v33, v34, v35, v36, v37, v38);
      }
    }
  }

  else
  {
    v30 = sub_1AF0D5194(0, v23);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDD3BF8();
    }
  }
}

const __CFDictionary *sub_1AF13AD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AF13656C(a1, a2, a3);
  v6 = *(a1 + 88);
  if (v6)
  {
    result = (*(a3 + 16))(a3, v6, *(a1 + 168), *(a1 + 232));
  }

  v7 = *(a1 + 92);
  if (v7)
  {
    result = (*(a3 + 16))(a3, v7, *(a1 + 176), *(a1 + 240));
  }

  if (*(a1 + 80))
  {
    v8 = *(a3 + 16);

    return v8(a3);
  }

  return result;
}

uint64_t sub_1AF13AE20(uint64_t result, uint64_t a2)
{
  v2 = *(result + 100);
  if (v2)
  {
    return (*(a2 + 16))(a2, v2, *(result + 192), *(result + 256), *(result + 496));
  }

  return result;
}

const void *sub_1AF13AE5C(uint64_t a1, const void *a2)
{
  result = CFDictionaryGetValue(*(a1 + 32), a2);
  if (result)
  {
    return *(*(a1 + 8 * (result >> 28) + 408) + (result & 0xFFFFFFF) - 1);
  }

  return result;
}

uint64_t sub_1AF13AEA0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    if (a2 >= 9)
    {
      v4 = sub_1AF0D5194(a1, a2);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD40D8(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }
  }

  else
  {
    v12 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD4150(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  return a1 + 2336 * v2 + 114432;
}

void sub_1AF13AF48(void **a1)
{
  free(a1[3]);
  free(a1[2]);

  sub_1AF13B85C(a1);
}

uint64_t sub_1AF13AF94()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED7346E0 = result;
  return result;
}

uint64_t sub_1AF13AFBC()
{
  if (qword_1ED7346E8 != -1)
  {
    sub_1AFDD41C8();
  }

  result = sub_1AF0D160C(qword_1ED7346E0, 0xF0uLL);
  *(result + 232) = 3;
  return result;
}

void sub_1AF13B000(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 232);
  if (v4 == 2)
  {
    v5 = 48;
    goto LABEL_5;
  }

  if (v4 == 3)
  {
    v5 = 112;
LABEL_5:
    v6 = malloc_type_calloc((a2 + 4), v5, 0x416AE165uLL);
    v7 = malloc_type_calloc((v2 + 4), 0x10uLL, 0x1000040451B5BE8uLL);
    v9 = v7;
    if (*(a1 + 24))
    {
      if (!*(a1 + 36))
      {
        v10 = sub_1AF0D5194(v7, v8);
        v7 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT);
        if (v7)
        {
          sub_1AFDD41DC(v10, v8, v11, v12, v13, v14, v15, v16);
        }
      }

      if (!*(a1 + 16))
      {
        v17 = sub_1AF0D5194(v7, v8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDD4254(v17, v18, v19, v20, v21, v22, v23, v24);
        }
      }

      memcpy(v6, *(a1 + 24), (*(a1 + 36) + 4) * v5);
      free(*(a1 + 24));
      memcpy(v9, *(a1 + 16), 16 * (*(a1 + 36) + 4));
      free(*(a1 + 16));
    }

    *(a1 + 16) = v9;
    *(a1 + 24) = v6;
    *(a1 + 36) = v2;
    return;
  }

  v25 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDD42CC();
  }
}

void sub_1AF13B154(uint64_t a1, simd_float3x3 a2)
{
  v3 = *(a1 + 224);
  if (v3)
  {
    v4 = *(a1 + 16) + 64;
    v5 = *(a1 + 192);
    v6 = *(a1 + 64) + 32;
    v7 = (*(a1 + 48) + 8);
    do
    {
      v8 = v7[1];
      if (v8 == 0x7FFFFFFF)
      {
        v9 = *(v7 - 2);
        v10 = *(v7 - 1);
        v11 = *(v5 + 16 * v9);
        v12 = *v7;
        _Q4 = *(v5 + 16 * v12);
        v14 = *(v4 + 16 * v12);
        _Q16 = vsubq_f32(*(v4 + 16 * v9), v14);
        _Q18 = vsubq_f32(v11, _Q4);
        _Q25 = vsubq_f32(*(v4 + 16 * v10), v14);
        _Q5 = vsubq_f32(*(v5 + 16 * v10), _Q4);
        _Q19 = vnegq_f32(_Q4);
        v19 = _Q18.f32[1];
        _S29 = _Q5.i32[2];
        _S27 = _Q5.i32[1];
        _S20 = vmuls_lane_f32(-_Q18.f32[2], *_Q5.f32, 1);
        __asm { FMLA            S3, S29, V18.S[1] }

        v27 = -_Q18.f32[0];
        _S21 = vmuls_lane_f32(_Q5.f32[0], _Q18, 2);
        _Q3.f32[1] = _S21 - (_Q5.f32[2] * _Q18.f32[0]);
        _Q3.f32[2] = (-_Q18.f32[1] * _Q5.f32[0]) + (_Q18.f32[0] * _Q5.f32[1]);
        _S24 = vmuls_lane_f32(_Q16.f32[0], *_Q5.f32, 1);
        __asm { FMLS            S11, S24, V4.S[2] }

        _S24 = _Q25.f32[1];
        _S9 = vmuls_lane_f32(_Q18.f32[0], *_Q25.f32, 1);
        __asm { FMLS            S11, S9, V4.S[2] }

        _S26 = -_Q18.f32[1] * _Q25.f32[0];
        __asm { FMLS            S11, S26, V4.S[2] }

        _S26 = vmuls_lane_f32(_Q5.f32[0], _Q16, 2);
        __asm { FMLS            S11, S26, V4.S[1] }

        _S26 = vmuls_lane_f32(-_Q16.f32[2], *_Q5.f32, 1);
        __asm { FMLS            S11, S26, V4.S[0] }

        _S26 = vmuls_lane_f32(_Q25.f32[0], _Q18, 2);
        __asm { FMLS            S11, S26, V4.S[1] }

        _Q23.f32[0] = vmuls_lane_f32(-_Q18.f32[2], *_Q25.f32, 1);
        __asm { FMLS            S11, S23, V4.S[0] }

        _Q23.f32[0] = vmuls_lane_f32(-_Q16.f32[0], _Q5, 2);
        __asm { FMLS            S11, S23, V4.S[1] }

        _Q23.f32[0] = vmuls_lane_f32(_Q5.f32[2], *_Q16.f32, 1);
        __asm { FMLS            S11, S23, V4.S[0] }

        _S26 = _Q25.f32[2];
        _S14 = vmuls_lane_f32(-_Q18.f32[0], _Q25, 2);
        __asm { FMLS            S11, S14, V4.S[1] }

        _S15 = vmuls_lane_f32(_Q18.f32[1], _Q25, 2);
        __asm { FMLS            S11, S15, V4.S[0] }

        v50 = vmulq_f32(v14, _Q3);
        _Q3.f32[3] = _S11 - (v50.f32[2] + vaddv_f32(*v50.f32));
        __asm
        {
          FMLA            S23, S26, V18.S[1]
          FMLS            S23, S24, V18.S[2]
          FMLS            S23, S27, V16.S[2]
        }

        _Q23.f32[1] = ((_S14 - (_Q5.f32[2] * _Q16.f32[0])) + (_Q16.f32[2] * _Q5.f32[0])) + (_Q18.f32[2] * _Q25.f32[0]);
        _Q23.f32[2] = (((-_Q16.f32[1] * _Q5.f32[0]) + (_Q16.f32[0] * _Q5.f32[1])) + (_Q18.f32[0] * _Q25.f32[1])) - (_Q25.f32[0] * _Q18.f32[1]);
        _S27 = vmuls_lane_f32(_Q16.f32[0], *_Q25.f32, 1);
        v53 = -_Q16.f32[1] * _Q25.f32[0];
        __asm { FMLS            S29, S27, V4.S[2] }

        _S27 = vmuls_lane_f32(-_Q16.f32[0], _Q25, 2);
        __asm { FMLS            S29, S27, V4.S[1] }

        _S27 = vmuls_lane_f32(_Q16.f32[1], _Q25, 2);
        __asm { FMLS            S29, S27, V4.S[0] }

        _S30 = vmuls_lane_f32(_Q25.f32[0], _Q16, 2);
        __asm { FMLS            S29, S30, V4.S[1] }

        _Q25.f32[0] = vmuls_lane_f32(-_Q16.f32[2], *_Q25.f32, 1);
        __asm { FMLS            S29, S25, V4.S[0] }

        v62 = vmulq_f32(v14, _Q23);
        _Q23.f32[3] = _S29 - (v62.f32[2] + vaddv_f32(*v62.f32));
        _Q18.f32[0] = vmuls_lane_f32(_Q18.f32[0], *_Q5.f32, 1);
        __asm
        {
          FMLS            S19, S18, V4.S[2]
          FMLS            S19, S21, V4.S[1]
          FMLS            S19, S20, V4.S[0]
          FMLS            S27, S24, V16.S[2]
        }

        _Q18.i32[3] = 0;
        v65.i32[0] = _S27;
        v65.f32[1] = _S30 - (_S26 * _Q16.f32[0]);
        v65.f32[2] = v53 + (_Q16.f32[0] * _S24);
        _Q6 = vmulq_f32(v14, v65);
        v65.f32[3] = -(_Q6.f32[2] + vaddv_f32(*_Q6.f32));
        _Q6.f32[0] = vmuls_lane_f32(v19, _Q5, 2);
        __asm { FMLS            S19, S6, V4.S[0] }

        _Q5.f32[0] = vmuls_lane_f32(v27, _Q5, 2);
        __asm { FMLS            S19, S5, V4.S[1] }

        if (fabsf(_Q19.f32[0]) > 0.0001)
        {
          v67 = vdupq_lane_s32(*_Q19.f32, 0);
          _Q3 = vdivq_f32(_Q3, v67);
          _Q23 = vdivq_f32(_Q23, v67);
          v65 = vdivq_f32(v65, v67);
        }

        *(v6 - 32) = _Q3;
        *(v6 - 16) = _Q23;
        *v6 = v65;
      }

      else
      {
        v68 = *(v4 + 16 * v8);
        a2.columns[0] = vsubq_f32(*(v4 + 16 * *(v7 - 2)), v68);
        v69 = vsubq_f32(*(v4 + 16 * *(v7 - 1)), v68);
        a2.columns[2] = vsubq_f32(*(v4 + 16 * *v7), v68);
        a2.columns[0].i32[3] = a2.columns[1].i32[3];
        v69.i32[3] = v71;
        v70 = a2.columns[1].i32[3];
        a2.columns[2].i32[3] = v72;
        a2.columns[1] = v69;
        a2 = __invert_f3(a2);
        *(v6 - 16) = 0u;
        *v6 = 0u;
        a2.columns[0].i32[3] = 0;
        a2.columns[1].i32[3] = *(v6 - 4);
        a2.columns[2].i32[3] = *(v6 + 12);
        *(v6 - 32) = a2;
        a2.columns[1].i32[3] = v70;
      }

      v6 += 48;
      v7 += 12;
      --v3;
    }

    while (v3);
  }
}

void sub_1AF13B464(uint64_t a1, unsigned int a2)
{
  *&v61[5] = *MEMORY[0x1E69E9840];
  v57 = malloc_type_calloc(8uLL, (*(a1 + 32) + 4), 0x2004093837F09uLL);
  if (a2)
  {
    v4 = 0;
    v5 = *(a1 + 48);
    v54 = a2;
    v6 = v5 + 16;
    do
    {
      v7 = 0;
      v8 = v5 + 48 * v4;
      v9 = &dword_1AFE21298;
      do
      {
        *(v6 + v7) = -1;
        v10 = *(v8 + 4 * *(v9 - 2));
        if (v10 >= *(v8 + 4 * *(v9 - 1)))
        {
          v10 = *(v8 + 4 * *(v9 - 1));
        }

        if (v10 >= *(v8 + 4 * *v9))
        {
          v11 = *(v8 + 4 * *v9);
        }

        else
        {
          v11 = v10;
        }

        v12 = v57[v11];
        if (!v12)
        {
          v12 = sub_1AF1D2E60(0);
          v57[v11] = v12;
        }

        v9 += 3;
        *v3.i64 = sub_1AF1D3E90(v12, v4, v3);
        v7 += 4;
      }

      while (v7 != 16);
      ++v4;
      v6 += 48;
    }

    while (v4 != a2);
    for (i = 0; i != v54; ++i)
    {
      v16 = 0;
      v55 = v5 + 48 * i;
      v56 = v55 + 16;
      do
      {
        if (*(v56 + 4 * v16) == -1)
        {
          v17 = &dword_1AFE21290[3 * v16];
          v18 = *(v55 + 4 * *v17);
          v19 = *(v55 + 4 * v17[1]);
          v20 = *(v55 + 4 * v17[2]);
          if (v18 >= v19)
          {
            v21 = v19;
          }

          else
          {
            v21 = v18;
          }

          if (v18 <= v19)
          {
            v22 = v19;
          }

          else
          {
            v22 = v18;
          }

          if (v21 >= v20)
          {
            v23 = v20;
          }

          else
          {
            v23 = v21;
          }

          if (v22 <= v20)
          {
            v24 = v20;
          }

          else
          {
            v24 = v22;
          }

          if (v23 != v19 && v24 != v19)
          {
            v20 = v19;
          }

          if (v23 == v18 || v24 == v18)
          {
            v27 = v20;
          }

          else
          {
            v27 = v18;
          }

          v28 = v57[v23];
          if (!v28)
          {
            v29 = sub_1AF0D5194(v13, v14);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
            {
              sub_1AFDD430C(v60, v61, v29);
            }
          }

          v13 = sub_1AF1D2EB4(v28);
          if (v13 != -1)
          {
            v14 = v13;
            v30 = -1;
            do
            {
              if (v14 == i)
              {
                v31 = -1;
              }

              else
              {
                v32 = 0;
                v33 = v5 + 48 * v14;
                v34 = &dword_1AFE21298;
                do
                {
                  v35 = *(v33 + 4 * *(v34 - 2));
                  v36 = *(v33 + 4 * *(v34 - 1));
                  v37 = *(v33 + 4 * *v34);
                  if (v35 >= v36)
                  {
                    v38 = *(v33 + 4 * *(v34 - 1));
                  }

                  else
                  {
                    v38 = *(v33 + 4 * *(v34 - 2));
                  }

                  if (v35 <= v36)
                  {
                    v39 = *(v33 + 4 * *(v34 - 1));
                  }

                  else
                  {
                    v39 = *(v33 + 4 * *(v34 - 2));
                  }

                  if (v38 >= v37)
                  {
                    v38 = *(v33 + 4 * *v34);
                  }

                  if (v39 <= v37)
                  {
                    v39 = *(v33 + 4 * *v34);
                  }

                  if (v38 == v36 || v39 == v36)
                  {
                    v36 = *(v33 + 4 * *v34);
                  }

                  if (v38 == v35 || v39 == v35)
                  {
                    v35 = v36;
                  }

                  v43 = v38 == v23 && v35 == v27;
                  v44 = v39 == v24;
                  if (v43 && v44)
                  {
                    v31 = v14;
                  }

                  else
                  {
                    v31 = -1;
                  }

                  if (v43 && v44)
                  {
                    v30 = v32;
                  }

                  v45 = v31 != -1 || v32++ >= 3;
                  v34 += 3;
                }

                while (!v45);
              }

              v13 = sub_1AF1D2F28(v28, v14);
              if (v31 != -1)
              {
                break;
              }

              v14 = v13;
            }

            while (v13 != -1);
            if (v31 != -1)
            {
              v46 = v5 + 48 * v31 + 4 * v30;
              v48 = *(v46 + 16);
              v47 = (v46 + 16);
              if (v48 != -1)
              {
                v49 = sub_1AF0D5194(v13, v14);
                v13 = os_log_type_enabled(v49, OS_LOG_TYPE_FAULT);
                if (v13)
                {
                  sub_1AFDD4350(v58, &v59, v49);
                }
              }

              *(v56 + 4 * v16) = v31;
              *v47 = i;
            }
          }
        }

        ++v16;
      }

      while (v16 != 4);
    }
  }

  v50 = *(a1 + 32);
  if (v50)
  {
    for (j = 0; j < v50; ++j)
    {
      v52 = v57[j];
      if (v52)
      {
        CFRelease(v52);
        v57[j] = 0;
        v50 = *(a1 + 32);
      }
    }
  }

  free(v57);
}

void sub_1AF13B7E8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    if (*(a1 + 36) < a2)
    {
      sub_1AF13B000(a1, a2);
    }
  }

  else
  {
    free(*(a1 + 24));
    *(a1 + 24) = 0;
    free(*(a1 + 16));
    *(a1 + 16) = 0;
    sub_1AF13B85C(a1);
    *(a1 + 36) = 0;
  }

  *(a1 + 32) = v2;
  *(a1 + 228) = 1;
}

void sub_1AF13B85C(void **a1)
{
  free(a1[6]);
  a1[6] = 0;
  free(a1[8]);
  a1[8] = 0;
  free(a1[24]);
  a1[24] = 0;
}

void sub_1AF13B8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a2 + 4;
  *(*(a1 + 16) + 16 * (a2 + 4)) = sub_1AF1B9AB4(a3, a2);
  v7 = *(a1 + 232);
  v9 = sub_1AF19D8B8(a4, v8);
  if (v9)
  {
    v10 = v9;
    v11 = v7 * v7;
    Length = CFDataGetLength(v9);
    if (12 * v7 * v7 != Length)
    {
      v14 = sub_1AF0D5194(Length, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD4394(v14, v15, v16, v17, v18, v19, v20, v21);
      }
    }

    BytePtr = CFDataGetBytePtr(v10);
    v24 = &BytePtr[4 * v11];
    v46[0] = BytePtr;
    v46[1] = v24;
    v25 = &BytePtr[8 * v11];
    v46[2] = v25;
    if (v7 == 3)
    {
      v29 = 0;
      v30 = *(a1 + 24);
      v31 = vdup_n_s32(0xBEA6C6BC);
      do
      {
        v32 = v46[v29];
        v33.i32[0] = *(v32 + 12);
        v33.i32[1] = *(v32 + 4);
        *&v34 = vmul_f32(v33, v31);
        *(&v34 + 2) = *(v32 + 8) * 0.32573;
        *(&v34 + 3) = (*(v32 + 24) * -0.078848) + (*v32 * 0.28209);
        *(&v47 + v29++) = v34;
      }

      while (v29 != 3);
      v35 = 0;
      v36 = (v30 + 112 * v6);
      v37 = v48;
      *v36 = v47;
      v36[1] = v37;
      v36[2] = v49;
      do
      {
        *(&v47 + v35) = vmulq_f32(*(v46[v35] + 16), xmmword_1AFE21250);
        ++v35;
      }

      while (v35 != 3);
      v38 = v48;
      v36[3] = v47;
      v36[4] = v38;
      v36[5] = v49;
      v39.i32[0] = *(BytePtr + 8);
      v39.i32[1] = v24[2].i32[0];
      *v40.f32 = vmul_f32(v39, vdup_n_s32(0x3E0BD8A0u));
      v40.i64[1] = __PAIR64__(1.0, v25[2].f32[0] * 0.13657);
      v36[6] = v40;
      v41 = sub_1AF19C46C(a4, v23);
      v42 = vmulq_n_f32(v36[1], v41);
      *v36 = vmulq_n_f32(*v36, v41);
      v36[1] = v42;
      v43 = vmulq_n_f32(v36[3], v41);
      v36[2] = vmulq_n_f32(v36[2], v41);
      v36[3] = v43;
      v44 = vmulq_n_f32(v36[5], v41);
      v36[4] = vmulq_n_f32(v36[4], v41);
      v36[5] = v44;
      v36[6] = vmulq_n_f32(v36[6], v41);
    }

    else if (v7 == 2)
    {
      v26 = (*(a1 + 24) + 48 * v6);
      *v26 = *BytePtr;
      v26[1] = *v24;
      v26[2] = *v25;
      v27 = sub_1AF19C46C(a4, v23);
      v28 = vmulq_n_f32(v26[1], v27);
      *v26 = vmulq_n_f32(*v26, v27);
      v26[1] = v28;
      v26[2] = vmulq_n_f32(v26[2], v27);
    }

    else
    {
      v45 = sub_1AF0D5194(BytePtr, v23);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDD440C();
      }
    }
  }
}

void sub_1AF13BB64(uint64_t a1, uint64_t x1_0)
{
  *(&v167[1] + 4) = *MEMORY[0x1E69E9840];
  *(a1 + 240) = x1_0;
  *(a1 + 248) = 0;
  if (*(a1 + 228) != 1)
  {
    return;
  }

  *(a1 + 228) = 0;
  if (*(a1 + 32) <= 3u)
  {
    *(a1 + 224) = 0;
    return;
  }

  sub_1AF13B85C(a1);
  v2 = (100 * *(a1 + 32) + 400);
  *(a1 + 48) = malloc_type_valloc(16 * (v2 + 2 * v2), 0x1000040EED21634uLL);
  *(a1 + 64) = malloc_type_valloc(16 * (v2 + 2 * v2), 0x1000040EED21634uLL);
  v3 = malloc_type_calloc(8uLL, v2, 0x100004000313F17uLL);
  v159 = malloc_type_calloc(0xCuLL, v2, 0x10000403E1C8BA9uLL);
  v148 = malloc_type_calloc(8uLL, v2, 0x100004000313F17uLL);
  v146 = v2;
  v4 = malloc_type_calloc(v2, 1uLL, 0x100004077774924uLL);
  v5 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v149 = *(a1 + 16);
  if (v7)
  {
    v8 = (*(a1 + 16) + 64);
    v9 = 0uLL;
    v10 = v8;
    v11 = *(a1 + 32);
    do
    {
      v12 = *v10++;
      v13.i32[1] = v12.i32[1];
      v9 = vaddq_f32(v9, v12);
      --v11;
    }

    while (v11);
    *v13.i32 = v7;
    v14 = vdivq_f32(v9, vdupq_lane_s32(v13, 0));
    v15 = 0;
    v16 = *(a1 + 32);
    do
    {
      v17 = *v8++;
      v18 = vsubq_f32(v14, v17);
      v19 = vmulq_f32(v18, v18);
      v20 = vaddv_f32(*v19.f32);
      if (*v15.i32 <= (v19.f32[2] + v20))
      {
        *v15.i32 = v19.f32[2] + v20;
      }

      --v16;
    }

    while (v16);
  }

  else
  {
    v21.i64[0] = 0x3F0000003FLL;
    v21.i64[1] = 0x3F0000003FLL;
    v14 = vnegq_f32(v21);
    v15 = 0;
  }

  v22 = 0;
  *v15.i32 = (sqrtf(*v15.i32) * 9.0) / 2.4495;
  v23 = vdupq_lane_s32(v15, 0);
  do
  {
    *(v149 + v22 * 16) = vmlaq_f32(v14, v23, xmmword_1AFE212D0[v22]);
    ++v22;
  }

  while (v22 != 4);
  *v6 = xmmword_1AFE202E0;
  *v4 = 1;
  v24 = sub_1AF13D0B8(v6, v149);
  if ((v24 & 1) == 0)
  {
    v26 = sub_1AF0D5194(v24, v25);
    v24 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (v24)
    {
      sub_1AFDD4480();
      if (v7)
      {
        goto LABEL_18;
      }

LABEL_152:
      LODWORD(v27) = 1;
      goto LABEL_153;
    }
  }

  if (!v7)
  {
    goto LABEL_152;
  }

LABEL_18:
  v145 = 0;
  v142 = v6 + 2;
  LODWORD(v27) = 1;
  v151 = v5;
  v152 = v3;
  v150 = v6;
  v143 = v7;
  do
  {
    while (!v27)
    {
      v25 = 0;
      if (++v145 == v7)
      {
        goto LABEL_168;
      }
    }

    v28 = 0;
    v147 = 0;
    v29 = *(v149 + 16 * (v145 + 4));
    v144 = v27;
    v30 = v27;
    v31 = v142;
    do
    {
      v32 = vsubq_f32(v29, *v31);
      v33 = vmulq_f32(v32, v32);
      if (COERCE_FLOAT(HIDWORD(*v31)) + 0.00001 >= (v33.f32[2] + vaddv_f32(*v33.f32)))
      {
        v3[v147] = v28;
        v5[v28] = 0;
        ++v147;
      }

      ++v28;
      v31 += 3;
    }

    while (v30 != v28);
    if (!v147)
    {
      LODWORD(v27) = v144;
      goto LABEL_148;
    }

    v34 = 0;
    v35 = 0;
    v36 = v147;
    do
    {
      v37 = 0;
      v38 = v3[v34];
      v156 = &v6[3 * v38];
      v153 = v38;
      v154 = v34;
      do
      {
        v39 = 0;
        v40 = &dword_1AFE21290[3 * v37];
        v41 = v40[1];
        v42 = v156->i32[*v40];
        v43 = v156->i32[v41];
        v44 = v40[2];
        v45 = v156->i32[v44];
        if (v42 >= v43)
        {
          v46 = v156->i32[v41];
        }

        else
        {
          v46 = v42;
        }

        if (v42 <= v43)
        {
          v47 = v156->i32[v41];
        }

        else
        {
          v47 = v42;
        }

        if (v46 >= v45)
        {
          v46 = v156->i32[v44];
        }

        if (v47 <= v45)
        {
          v47 = v156->i32[v44];
        }

        if (v46 == v43 || v47 == v43)
        {
          v43 = v156->i32[v44];
        }

        if (v46 != v42 && v47 != v42)
        {
          v43 = v42;
        }

        v50 = 1;
        while (1)
        {
          v51 = v3[v39];
          if (v51 != v38)
          {
            break;
          }

LABEL_78:
          v50 = ++v39 < v36;
          if (v39 == v36)
          {
            goto LABEL_81;
          }
        }

        v52 = &v6[3 * v51];
        v53 = &dword_1AFE21298;
        v54 = 4;
        while (1)
        {
          v24 = v52->i32[*(v53 - 2)];
          v25 = v52->i32[*(v53 - 1)];
          v55 = v52->i32[*v53];
          if (v24 >= v25)
          {
            v56 = v52->i32[*(v53 - 1)];
          }

          else
          {
            v56 = v52->i32[*(v53 - 2)];
          }

          if (v24 <= v25)
          {
            v57 = v52->i32[*(v53 - 1)];
          }

          else
          {
            v57 = v52->i32[*(v53 - 2)];
          }

          if (v56 >= v55)
          {
            v56 = v52->i32[*v53];
          }

          if (v57 <= v55)
          {
            v57 = v52->i32[*v53];
          }

          if (v56 == v25 || v57 == v25)
          {
            v25 = v52->i32[*v53];
          }

          if (v56 == v24 || v57 == v24)
          {
            v24 = v25;
          }

          v60 = v56 == v46 && v24 == v43;
          if (v60 && v57 == v47)
          {
            break;
          }

          v53 += 3;
          if (!--v54)
          {
            goto LABEL_78;
          }
        }

        if (v50)
        {
          goto LABEL_113;
        }

LABEL_81:
        v155 = v37;
        v62 = 0;
        v63 = v35;
        v64 = &v159[3 * v35];
        *v64 = v42;
        v64[1] = v156->i32[v41];
        v64[2] = v156->i32[v44];
        v158 = v35;
        v157 = v64;
        while (1)
        {
          v65 = v62 == 2 ? 0 : v62 + 1;
          if (v35)
          {
            break;
          }

          if (v62 == 2)
          {
            v76 = 1;
            goto LABEL_112;
          }

LABEL_104:
          LODWORD(v42) = v64[++v62];
        }

        v66 = 0;
        v67 = 0;
        v68 = v64[v65];
        v69 = v159;
        do
        {
          v70 = 0;
          v71 = 0;
          do
          {
            v72 = v69[v70];
            if (v72 == v42 || v72 == v68)
            {
              ++v71;
            }

            ++v70;
          }

          while (v70 != 3);
          if (v71 >= 3)
          {
            v74 = sub_1AF0D5194(v24, v25);
            v24 = os_log_type_enabled(v74, OS_LOG_TYPE_FAULT);
            if (v24)
            {
              sub_1AFDD44C0(v166, v167, v74);
            }
          }

          if (v71 == 2)
          {
            ++v67;
          }

          ++v66;
          v69 += 3;
        }

        while (v66 != v63);
        v35 = v158;
        v64 = v157;
        if (v62 != 2 && v67 <= 1)
        {
          goto LABEL_104;
        }

        v76 = v62 > 2 || v67 < 2;
LABEL_112:
        v6 = v150;
        v5 = v151;
        v34 = v154;
        v37 = v155;
        v35 += v76;
        v3 = v152;
        v36 = v147;
        v38 = v153;
LABEL_113:
        ++v37;
      }

      while (v37 != 4);
      v148[v34++] = v38;
    }

    while (v34 != v36);
    if (v35)
    {
      v77 = v35;
      v78 = v159 + 2;
      v27 = v144;
      v79 = v147;
      do
      {
        if (v79)
        {
          v80 = v27;
          v81 = v79 - 1;
          v82 = v148[v79 - 1];
        }

        else
        {
          v83 = (v27 + 1);
          v82 = v27;
          if (v27 >= v146)
          {
            v84 = sub_1AF0D5194(v24, v25);
            if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDD4504(&buf, v161, v84);
            }
          }

          v81 = 0;
          v80 = v83;
        }

        v5[v82] = 1;
        v85 = *v78;
        v86 = &v6[3 * v82];
        v86->i64[0] = *(v78 - 1);
        v86->i32[2] = v85;
        v86->i32[3] = v145 + 4;
        v24 = sub_1AF13D0B8(v86, v149);
        if (v24)
        {
          v79 = v81;
        }

        else
        {
          v5[v82] = 0;
          v148[v81] = v82;
          v79 = v81 + 1;
        }

        v78 += 3;
        --v77;
        v27 = v80;
      }

      while (v77);
    }

    else
    {
      LODWORD(v27) = v144;
      v79 = v147;
    }

    if (v79)
    {
      v87 = 0;
      v88 = v79;
      v89 = v27 - 1;
      do
      {
        v90 = v148[v87];
        v91 = v89;
        do
        {
          v92 = v91;
          v93 = v5[v91--];
          if (v93)
          {
            v94 = 0;
          }

          else
          {
            v94 = v90 < v92;
          }
        }

        while (v94);
        LODWORD(v27) = v27 - 1;
        if (v90 >= v92)
        {
          if (v27 > v90)
          {
            v102 = v27;
            v103 = sub_1AF0D5194(v24, v25);
            v24 = os_log_type_enabled(v103, OS_LOG_TYPE_FAULT);
            LODWORD(v27) = v102;
            if (v24)
            {
              sub_1AFDD4544(v162, &v163, v103);
              LODWORD(v27) = v102;
            }
          }
        }

        else
        {
          if (!v93)
          {
            v95 = v27;
            v96 = sub_1AF0D5194(v24, v25);
            v24 = os_log_type_enabled(v96, OS_LOG_TYPE_FAULT);
            LODWORD(v27) = v95;
            if (v24)
            {
              sub_1AFDD4588(v164, &v165, v96);
              LODWORD(v27) = v95;
            }
          }

          v97 = &v6[3 * v92];
          v98 = *v97;
          v99 = v97[1];
          v100 = v97[2];
          f32 = v6[3 * v90].f32;
          f32[1] = v99;
          f32[2] = v100;
          *f32 = v98;
          v5[v90] = 1;
          v5[v92] = 0;
        }

        ++v87;
        --v89;
      }

      while (v87 != v88);
    }

LABEL_148:
    v7 = v143;
    ++v145;
  }

  while (v145 != v143);
  if (!v27)
  {
    LODWORD(v25) = 0;
    goto LABEL_168;
  }

LABEL_153:
  v104 = 0;
  __asm { FMOV            V0.4S, #0.25 }

  do
  {
    v108 = &v6[3 * v104];
    v109 = vmulq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*(v149 + 16 * *v108), *(v149 + 16 * v108[1])), *(v149 + 16 * v108[2])), *(v149 + 16 * v108[3])), _Q0);
    v110 = &dword_1AFE21298;
    v111 = 4;
    do
    {
      v112 = *(v110 - 2);
      v113 = *(v110 - 1);
      v114 = v108[v112];
      v115 = *(v149 + 16 * v114);
      v116 = v108[v113];
      v117 = vsubq_f32(*(v149 + 16 * v116), v115);
      v118 = vsubq_f32(*(v149 + 16 * v108[*v110]), v115);
      v119 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v118, v118), v118, 0xCuLL), vnegq_f32(v117)), v118, vextq_s8(vuzp1q_s32(v117, v117), v117, 0xCuLL));
      v120 = vextq_s8(vuzp1q_s32(v119, v119), v119, 0xCuLL);
      v121 = vmulq_f32(v119, v119);
      v121.f32[0] = v121.f32[1] + (v121.f32[2] + v121.f32[0]);
      v122 = vdupq_lane_s32(*v121.f32, 0);
      v122.i32[3] = 0;
      v123 = vrsqrteq_f32(v122);
      v124 = vmulq_f32(v123, vrsqrtsq_f32(v122, vmulq_f32(v123, v123)));
      v125 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v121.f32[0] != 0.0)), 0x1FuLL));
      v125.i32[3] = 0;
      v126 = vbslq_s8(vcltzq_s32(v125), vmulq_f32(v120, vmulq_f32(v124, vrsqrtsq_f32(v122, vmulq_f32(v124, v124)))), v120);
      v127 = vmulq_f32(v115, v126);
      v128 = vmulq_f32(v109, v126);
      *v127.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v128, v128, 8uLL), *&vextq_s8(v127, v127, 8uLL)), vadd_f32(vzip1_s32(*v128.i8, *v127.i8), vzip2_s32(*v128.i8, *v127.i8)));
      if (vcgt_f32(*v127.i8, vdup_lane_s32(*v127.i8, 1)).u8[0])
      {
        v108[v112] = v116;
        v108[v113] = v114;
      }

      v110 += 3;
      --v111;
    }

    while (v111);
    ++v104;
  }

  while (v104 != v27);
  v129 = 0;
  LODWORD(v25) = 0;
  v130.i64[0] = 0x300000003;
  v130.i64[1] = 0x300000003;
  v131 = v6;
  do
  {
    if (v131->i32[0] >= 4 && v131->i32[1] >= 4 && v131->i32[2] >= 4 && v131->i32[3] >= 4)
    {
      if (v129 != v25)
      {
        v132 = &v6[3 * v25];
        v133 = *v131;
        v134 = v131[2];
        v132[1] = v131[1];
        v132[2] = v134;
        *v132 = v133;
      }

      v6[3 * v25] = vaddq_s32(v6[3 * v25], v130);
      LODWORD(v25) = v25 + 1;
    }

    ++v129;
    v131 += 3;
  }

  while (v27 != v129);
LABEL_168:
  *(a1 + 224) = v25;
  sub_1AF13B464(a1, v25);
  sub_1AF13B154(a1, v168);
  v136 = *(a1 + 224);
  if (v136)
  {
    v137 = (*(a1 + 48) + 32);
    v138 = 0uLL;
    v139 = *(a1 + 224);
    do
    {
      v140 = *v137;
      v137 += 3;
      v135.i32[1] = v140.i32[1];
      v138 = vaddq_f32(v138, v140);
      --v139;
    }

    while (v139);
  }

  else
  {
    v138 = 0uLL;
  }

  *v135.i32 = v136;
  *(a1 + 208) = vdivq_f32(v138, vdupq_lane_s32(v135, 0));
  free(v3);
  free(v159);
  free(v148);
  free(v5);
}

void sub_1AF13C5A8(float a1, float a2, float a3)
{
  v3 = (((a3 * -27.0) + ((a1 * 9.0) * a2)) + (((a1 * -2.0) * a1) * a1)) / 54.0;
  v4 = (((a2 * 3.0) - (a1 * a1)) / 9.0) * ((((a2 * 3.0) - (a1 * a1)) / 9.0) * (((a2 * 3.0) - (a1 * a1)) / 9.0));
  v5 = v4 + (v3 * v3);
  if (v5 >= 0.0)
  {
    v10 = sqrtf(v5);
    cbrtf(v3 + v10);
    cbrtf(v3 - v10);
  }

  else
  {
    v6 = acosf(v3 / sqrtf(-v4));
    cosf(v6 / 3.0);
    v7 = v6;
    v8 = (v7 + 6.28318531) / 3.0;
    cosf(v8);
    v9 = (v7 + 12.5663706) / 3.0;
    cosf(v9);
  }
}

__n128 sub_1AF13C6D4(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = vsubq_f32(a2, a1);
  v5 = vsubq_f32(a3, a1);
  v6 = vsubq_f32(a4, a1);
  v7 = vmulq_f32(v4, v4);
  v8 = vmulq_f32(v4, v5);
  v8.f32[0] = v8.f32[2] + vaddv_f32(*v8.f32);
  v9 = vmulq_f32(v5, v5);
  v10 = vmulq_f32(v4, v6);
  v11 = vmulq_f32(v5, v6);
  *v7.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v9, v9, 8uLL), *&vextq_s8(v7, v7, 8uLL)), vadd_f32(vzip1_s32(*v9.i8, *v7.i8), vzip2_s32(*v9.i8, *v7.i8)));
  *v9.i8 = vadd_f32(vzip1_s32(*v10.i8, *v11.i8), vzip2_s32(*v10.i8, *v11.i8));
  v10.i64[0] = vextq_s8(v10, v10, 8uLL).u64[0];
  *v11.i8 = vadd_f32(vzip1_s32(*v10.i8, *&vextq_s8(v11, v11, 8uLL)), *v9.i8);
  *v10.i32 = (*&v7.i32[1] * *v7.i32) - (v8.f32[0] * v8.f32[0]);
  *v10.i8 = vdiv_f32(vmla_f32(vrev64_s32(vmul_n_f32(*v11.i8, -v8.f32[0])), *v11.i8, *v7.i8), vdup_lane_s32(*v10.i8, 0));
  result.n128_f32[0] = (1.0 - *v10.i32) - *&v10.i32[1];
  *(result.n128_u64 + 4) = v10.i64[0];
  return result;
}

BOOL sub_1AF13C778(uint64_t a1, unsigned int *a2, float32x4_t *a3, float32x4_t a4, float a5)
{
  v5 = *(a1 + 224);
  if (!v5)
  {
    return 0;
  }

  v7 = a4;
  v8 = *(a1 + 16) + 64;
  v9 = *(a1 + 48);
  v47 = *(a1 + 64);
  v10 = *(a1 + 192);
  v42 = vdupq_laneq_s32(a4, 2);
  v43 = vdupq_lane_s32(*a4.f32, 1);
  if (*a2 >= v5)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a2;
  }

  v48 = vdupq_n_s32(0xB8D1B717);
  while (1)
  {
    v12 = (v9 + 48 * v11);
    v13 = *(v12 + 3);
    if (v13 == 0x7FFFFFFF)
    {
      v15 = *v12;
      v14 = *(v12 + 1);
      v16 = *(v8 + 16 * v15);
      v17 = *(v12 + 2);
      v18 = vsubq_f32(*(v8 + 16 * v14), v16);
      v19 = vsubq_f32(*(v8 + 16 * v17), v16);
      v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), vnegq_f32(v18)), v19, vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL));
      v21 = vmulq_f32(vsubq_f32(v7, v16), vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL));
      v22 = xmmword_1AFE21260;
      if ((v21.f32[2] + vaddv_f32(*v21.f32)) >= 0.0)
      {
        v23 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(*(v47 + 48 * v11), v7.f32[0]), v43, *(v47 + 48 * v11 + 16)), v42, *(v47 + 48 * v11 + 32));
        v44 = *(v8 + 16 * v15);
        v45 = *(v8 + 16 * v14);
        v46 = *(v8 + 16 * v17);
        sub_1AF13C5A8(v23.f32[0], v23.f32[1], v23.f32[2]);
        v25 = sub_1AF13C6D4(vmlaq_n_f32(v44, *(v10 + 16 * v15), v24), vmlaq_n_f32(v45, *(v10 + 16 * v14), v24), vmlaq_n_f32(v46, *(v10 + 16 * v17), v24), a4);
        v7 = a4;
        v22 = v25;
        v22.i32[3] = 0;
      }
    }

    else
    {
      *v26.i64 = sub_1AF13CA14(*(v47 + 48 * v11), *(v47 + 48 * v11 + 16), *(v47 + 48 * v11 + 32), *(v8 + 16 * v13), v7);
      v7 = a4;
      v22 = v26;
    }

    if ((vminvq_u32(vcgtq_f32(v22, v48)) & 0x80000000) != 0)
    {
      *a3 = v22;
      *a2 = v11;
      return v12[11] >= a5;
    }

    v27 = v22.f32[1];
    v28 = v22.f32[1] < v22.f32[0];
    if (v22.f32[1] >= v22.f32[0])
    {
      v27 = v22.f32[0];
    }

    if (v22.f32[2] < v27)
    {
      v27 = v22.f32[2];
      v28 = 2;
    }

    if (v22.f32[3] < v27)
    {
      v28 = 3;
    }

    v29 = LODWORD(v12[dword_1AFE212C0[v28] + 4]);
    if (v29 == -1)
    {
      break;
    }

    v11 = v29;
    if (!--v5)
    {
      return 0;
    }
  }

  if (v11 == -1)
  {
    v50 = v22;
    v31 = sub_1AF0D5194(a1, a2);
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_FAULT);
    v22 = v50;
    if (v32)
    {
      sub_1AFDD45CC(v31, v33, v34, v35, v36, v37, v38, v39);
      v22 = v50;
    }
  }

  *a3 = v22;
  *a2 = v11;
  return 1;
}

double sub_1AF13CA14(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v5 = vsubq_f32(a5, a4);
  *&result = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a1, v5.f32[0]), a2, *v5.f32, 1), a3, v5, 2).u64[0];
  return result;
}

void sub_1AF13CA44(void *a1, unsigned int a2, float32x4_t a3, float a4)
{
  v5 = a1[2] + 64;
  v6 = (a1[6] + 48 * a2);
  v8 = xmmword_1AFE21270;
  *(&v8 + 2) = 0.25098 * a4;
  sub_1AF0FE080(a1[31], 0, &v8, 0, *(v5 + 16 * *v6), a3);
  sub_1AF0FE080(a1[31], 0, &v8, 0, *(v5 + 16 * v6[1]), a3);
  sub_1AF0FE080(a1[31], 0, &v8, 0, *(v5 + 16 * v6[2]), a3);
  sub_1AF0FE080(a1[31], 0, &v8, 0, *(v5 + 16 * v6[3]), a3);
}

float32x4_t sub_1AF13CB2C(uint64_t a1, unsigned int *a2, float32x4_t *a3, float32x4_t a4)
{
  if (!a2)
  {
    v35 = a4;
    v7 = sub_1AF0D5194(a1, 0);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT);
    a4 = v35;
    if (v8)
    {
      sub_1AFDD4644(v7, v9, v10, v11, v12, v13, v14, v15);
      a4 = v35;
    }
  }

  v36 = 0uLL;
  v16 = sub_1AF13C778(a1, a2, &v36, a4, 0.0);
  v17 = (*(a1 + 48) + 48 * *a2);
  v18 = *(a1 + 24) + 192;
  if (v16)
  {
    v19 = (v18 + 48 * *v17);
    result = v36;
    v21 = vmulq_n_f32(*v19, v36.f32[0]);
    *a3 = v21;
    v22 = vmulq_n_f32(v19[1], result.f32[0]);
    a3[1] = v22;
    v23 = vmulq_n_f32(v19[2], result.f32[0]);
    a3[2] = v23;
    v24 = (v18 + 48 * v17[1]);
    v25 = vmlaq_lane_f32(v21, *v24, *result.f32, 1);
    *a3 = v25;
    v26 = vmlaq_lane_f32(v22, v24[1], *result.f32, 1);
    a3[1] = v26;
    v27 = vmlaq_lane_f32(v23, v24[2], *result.f32, 1);
    a3[2] = v27;
    v28 = (v18 + 48 * v17[2]);
    v29 = vmlaq_laneq_f32(v25, *v28, result, 2);
    *a3 = v29;
    v30 = vmlaq_laneq_f32(v26, v28[1], result, 2);
    a3[1] = v30;
    v31 = vmlaq_laneq_f32(v27, v28[2], result, 2);
    a3[2] = v31;
    v32 = (v18 + 48 * v17[3]);
    *a3 = vmlaq_laneq_f32(v29, *v32, result, 3);
    a3[1] = vmlaq_laneq_f32(v30, v32[1], result, 3);
    a3[2] = vmlaq_laneq_f32(v31, v32[2], result, 3);
  }

  else
  {
    v33 = (v18 + 48 * *v17);
    result = *v33;
    v34 = v33[2];
    a3[1] = v33[1];
    a3[2] = v34;
    *a3 = result;
  }

  return result;
}

float32x4_t sub_1AF13CCA0(void *a1, unsigned int *a2, float32x4_t *a3, float32x4_t a4)
{
  v51 = a4;
  if (!a2)
  {
    v7 = sub_1AF0D5194(a1, 0);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT);
    a4 = v51;
    if (v8)
    {
      sub_1AFDD4644(v7, v9, v10, v11, v12, v13, v14, v15);
      a4 = v51;
    }
  }

  v53 = 0uLL;
  if (sub_1AF13C778(a1, a2, &v53, a4, 0.0))
  {
    v16 = v53;
    if (a1[31])
    {
      v17 = v51;
      v52 = v53;
      sub_1AF13CA44(a1, *a2, v17, v53.f32[0]);
      v16 = v52;
    }

    v18 = (a1[6] + 48 * *a2);
    v19 = a1[3] + 448;
    v20 = (v19 + 112 * *v18);
    v21 = vmulq_n_f32(*v20, v16.f32[0]);
    *a3 = v21;
    v22 = vmulq_n_f32(v20[1], v16.f32[0]);
    a3[1] = v22;
    v23 = vmulq_n_f32(v20[2], v16.f32[0]);
    a3[2] = v23;
    v24 = vmulq_n_f32(v20[3], v16.f32[0]);
    a3[3] = v24;
    v25 = vmulq_n_f32(v20[4], v16.f32[0]);
    a3[4] = v25;
    v26 = vmulq_n_f32(v20[5], v16.f32[0]);
    a3[5] = v26;
    v27 = vmulq_n_f32(v20[6], v16.f32[0]);
    a3[6] = v27;
    v28 = (v19 + 112 * v18[1]);
    v29 = vmlaq_lane_f32(v21, *v28, *v16.f32, 1);
    *a3 = v29;
    v30 = vmlaq_lane_f32(v22, v28[1], *v16.f32, 1);
    a3[1] = v30;
    v31 = vmlaq_lane_f32(v23, v28[2], *v16.f32, 1);
    a3[2] = v31;
    v32 = vmlaq_lane_f32(v24, v28[3], *v16.f32, 1);
    a3[3] = v32;
    v33 = vmlaq_lane_f32(v25, v28[4], *v16.f32, 1);
    a3[4] = v33;
    v34 = vmlaq_lane_f32(v26, v28[5], *v16.f32, 1);
    a3[5] = v34;
    v35 = vmlaq_lane_f32(v27, v28[6], *v16.f32, 1);
    a3[6] = v35;
    v36 = (v19 + 112 * v18[2]);
    v37 = vmlaq_laneq_f32(v29, *v36, v16, 2);
    *a3 = v37;
    v38 = vmlaq_laneq_f32(v30, v36[1], v16, 2);
    a3[1] = v38;
    v39 = vmlaq_laneq_f32(v31, v36[2], v16, 2);
    a3[2] = v39;
    v40 = vmlaq_laneq_f32(v32, v36[3], v16, 2);
    a3[3] = v40;
    v41 = vmlaq_laneq_f32(v33, v36[4], v16, 2);
    a3[4] = v41;
    v42 = vmlaq_laneq_f32(v34, v36[5], v16, 2);
    a3[5] = v42;
    result = vmlaq_laneq_f32(v35, v36[6], v16, 2);
    a3[6] = result;
    v44 = v18[3];
    if (v44 <= 2147483645)
    {
      v45 = (v19 + 112 * v44);
      *a3 = vmlaq_laneq_f32(v37, *v45, v16, 3);
      a3[1] = vmlaq_laneq_f32(v38, v45[1], v16, 3);
      a3[2] = vmlaq_laneq_f32(v39, v45[2], v16, 3);
      a3[3] = vmlaq_laneq_f32(v40, v45[3], v16, 3);
      a3[4] = vmlaq_laneq_f32(v41, v45[4], v16, 3);
      a3[5] = vmlaq_laneq_f32(v42, v45[5], v16, 3);
      result = vmlaq_laneq_f32(result, v45[6], v16, 3);
      a3[6] = result;
    }
  }

  else
  {
    v46 = a1[3];
    v47 = v46[28];
    v48 = v46[30];
    a3[1] = v46[29];
    a3[2] = v48;
    *a3 = v47;
    result = v46[31];
    v49 = v46[32];
    v50 = v46[34];
    a3[5] = v46[33];
    a3[6] = v50;
    a3[3] = result;
    a3[4] = v49;
  }

  return result;
}

__n128 sub_1AF13CF10(uint64_t a1, uint64_t a2, uint64_t a3, __n128 result)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 232) == 3)
  {
    if (a3 != 108)
    {
      v6 = sub_1AF0D5194(a1, a2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD46BC(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }

    v14 = 0;
    v23[0] = a2;
    v23[1] = a2 + 36;
    v23[2] = a2 + 72;
    v15 = vdup_n_s32(0xBEA6C6BC);
    do
    {
      v16 = v23[v14];
      v17.i32[0] = *(v16 + 12);
      v17.i32[1] = *(v16 + 4);
      *&v18 = vmul_f32(v17, v15);
      *(&v18 + 2) = *(v16 + 8) * 0.32573;
      *(&v18 + 3) = (*(v16 + 24) * -0.078848) + (*v16 * 0.28209);
      *(&v24 + v14++) = v18;
    }

    while (v14 != 3);
    v19 = 0;
    v20 = v25;
    *(a1 + 80) = v24;
    *(a1 + 96) = v20;
    *(a1 + 112) = v26;
    do
    {
      *(&v24 + v19) = vmulq_f32(*(v23[v19] + 16), xmmword_1AFE21250);
      ++v19;
    }

    while (v19 != 3);
    v21 = v25;
    *(a1 + 128) = v24;
    *(a1 + 144) = v21;
    *(a1 + 160) = v26;
    v22.i32[0] = *(a2 + 32);
    v22.i32[1] = *(a2 + 68);
    result.n128_u64[0] = vmul_f32(v22, vdup_n_s32(0x3E0BD8A0u));
    result.n128_f32[2] = *(a2 + 104) * 0.13657;
    result.n128_u32[3] = 1.0;
    *(a1 + 176) = result;
  }

  return result;
}

BOOL sub_1AF13D0B8(float32x4_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16 * a1->i32[0]);
  v3 = *(a2 + 16 * a1->i32[1]);
  v4 = *(a2 + 16 * a1->i32[2]);
  v5 = *(a2 + 16 * a1->i32[3]);
  v6 = vsubq_f32(v3, v2);
  v7 = *v6.i32;
  v8 = vsubq_f32(v4, v2);
  v9 = *&v8.i32[1];
  v10 = vsubq_f32(v5, v2);
  _D21 = *&v10.i32[1];
  v12.i32[0] = vextq_s8(v8, v8, 8uLL).u32[0];
  v12.i32[1] = v8.i32[0];
  v8.i32[0] = vextq_s8(v10, v10, 8uLL).u32[0];
  v8.i32[1] = v10.i32[0];
  _Q4 = vcvtq_f64_f32(*&vextq_s8(v6, v6, 4uLL));
  v14 = vcvtq_f64_f32(*v8.i8);
  v15 = vdupq_lane_s64(*&v14.f64[0], 0);
  v15.f64[0] = _D21;
  _Q18 = vcvtq_f64_f32(v12);
  v17 = vdupq_lane_s64(*&_Q18.f64[0], 0);
  v17.f64[0] = v9;
  v18 = vmlaq_f64(vmulq_f64(_Q18, vnegq_f64(v15)), v14, v17);
  __asm
  {
    FMLA            D22, D21, V18.D[1]
    FMLA            D23, D22, V4.D[1]
  }

  v25 = fabs(_D23);
  if (v25 < 0.00001)
  {
    __asm { FMOV            V4.4S, #0.25 }

    v34 = vsubq_f32(vmulq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v2, v3), v4), v5), _Q4), v2);
  }

  else
  {
    v26 = -_Q18.f64[1] * *_Q4.i64 + v7 * v9;
    v27 = v14.f64[1] * *_Q4.i64 - v7 * _D21;
    v28 = _D21 * _D21 + v14.f64[1] * v14.f64[1] + v14.f64[0] * v14.f64[0];
    v29 = v9 * v9 + _Q18.f64[1] * _Q18.f64[1] + _Q18.f64[0] * _Q18.f64[0];
    v30 = vmulq_f64(_Q4, _Q4).f64[0] + v7 * v7 + *&_Q4.i64[1] * *&_Q4.i64[1];
    v31 = (v29 * v27 + v30 * _D22 + v28 * v26) * (0.5 / _D23);
    *&v32.f64[0] = vdupq_laneq_s64(_Q4, 1).u64[0];
    v32.f64[1] = v7;
    v34 = vmulq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmlaq_f64(vmulq_f64(vnegq_f64(_Q4), v14), v32, v15), v29), v18, v30), vmlaq_f64(vmulq_f64(v32, vnegq_f64(v17)), _Q18, _Q4), v28), 0.5 / _D23);
    *v34.f32 = vcvt_f32_f64(v34);
    v33 = v31;
    v34.f32[2] = v33;
  }

  v36 = vaddq_f32(v2, v34);
  v37 = vmulq_f32(v34, v34);
  v36.f32[3] = v37.f32[2] + vaddv_f32(*v37.f32);
  a1[2] = v36;
  return v25 >= 0.00001;
}

void sub_1AF13D234(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, a5, 0xCu);
}

void *sub_1AF13D250(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AF10A1D0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

BOOL sub_1AF13D308(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_1AF10A1D0();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void *sub_1AF13D384(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_1AF10A1D0();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_1AF13D428(uint64_t ***a1, char *a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = a2[23];
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    v6 = *(a2 + 1);
  }

  return sub_1AF13D460(a1, v2, v5, v6);
}

uint64_t sub_1AF13D460(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

void sub_1AF13D4C4(uint64_t a1)
{
  sub_1AF1BE334(@"kCFXNotificationProgramHashCodeWillDie", a1, 0, 0);
  v2 = CFDictionaryContainsKey(qword_1ED731618, *(a1 + 200));
  if (!v2)
  {
    v4 = sub_1AF0D5194(v2, v3);
    v2 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (v2)
    {
      sub_1AFDD4734(v4, v3, v5, v6, v7, v8, v9, v10);
    }
  }

  if (!*(a1 + 200))
  {
    v11 = sub_1AF0D5194(v2, v3);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD47AC(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  CFDictionaryRemoveValue(qword_1ED731618, *(a1 + 200));
  v19 = *(a1 + 200);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 200) = 0;
  }

  v20 = 0;
  v21 = a1 + 216;
  v22 = 1;
  do
  {
    v23 = v22;
    v24 = *(v21 + 8 * v20);
    if (v24)
    {
      CFRelease(v24);
      *(v21 + 8 * v20) = 0;
    }

    v22 = 0;
    v20 = 1;
  }

  while ((v23 & 1) != 0);
  v25 = *(a1 + 146);
  if (*(a1 + 146))
  {
    v26 = 0;
    v27 = a1 + 232;
    do
    {
      v28 = *(v27 + 8 * v26);
      if (v28)
      {
        CFRelease(v28);
        *(v27 + 8 * v26) = 0;
        v25 = *(a1 + 146);
      }

      ++v26;
    }

    while (v26 < v25);
  }
}

__CFString *sub_1AF13D5E0(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = sub_1AF3753A8(a1);
  CFStringAppendFormat(Mutable, 0, @"<%s %p | ", v4, a1);
  v5 = (a1 + 216);
  if (*(a1 + 216))
  {
    CFStringAppend(Mutable, @"SM_Mat,");
  }

  if (*(a1 + 224))
  {
    CFStringAppend(Mutable, @"SM_Model,");
  }

  if (*v5 || *(a1 + 224))
  {
    alloc = v2;
    memset(&c, 0, sizeof(c));
    CC_SHA256_Init(&c);
    v6 = 0;
    v7 = MEMORY[0x1E69E9820];
    v8 = 1;
    do
    {
      v9 = 0;
      v10 = v8;
      v11 = v5[v6];
      do
      {
        v46[0] = v7;
        v46[1] = 3221225472;
        v46[2] = sub_1AF13FE84;
        v46[3] = &unk_1E7A79FE0;
        v47 = v9;
        v46[4] = &c;
        sub_1AF28A5FC(v11, v46);
      }

      while (v9++ < 3);
      v8 = 0;
      v6 = 1;
    }

    while ((v10 & 1) != 0);
    for (i = 0; i != 64; i += 8)
    {
      v14 = *(a1 + 232 + i);
      if (v14)
      {
        sub_1AF148DA8(v14);
      }
    }

    data = 2;
    CC_SHA256_Update(&c, &data, 4u);
    CC_SHA256_Final(md, &c);
    v15 = 0;
    v16 = cStr;
    v17.i64[0] = 0xA0A0A0A0A0A0A0A0;
    v17.i64[1] = 0xA0A0A0A0A0A0A0A0;
    v18.i64[0] = 0x3737373737373737;
    v18.i64[1] = 0x3737373737373737;
    v19.i64[0] = 0x3030303030303030;
    v19.i64[1] = 0x3030303030303030;
    v20.i64[0] = 0xF0F0F0F0F0F0F0FLL;
    v20.i64[1] = 0xF0F0F0F0F0F0F0FLL;
    v21.i64[0] = 0xA0A0A0A0A0A0A0ALL;
    v21.i64[1] = 0xA0A0A0A0A0A0A0ALL;
    do
    {
      v22 = *&md[v15];
      v23.i64[0] = 0x3737373737373737;
      v23.i64[1] = 0x3737373737373737;
      v24.i64[0] = 0x3030303030303030;
      v24.i64[1] = 0x3030303030303030;
      v52.val[0] = vbslq_s8(vcgtq_u8(v17, v22), vsraq_n_u8(v24, v22, 4uLL), vsraq_n_u8(v23, v22, 4uLL));
      v25 = vandq_s8(v22, v20);
      v52.val[1] = vbslq_s8(vcgtq_u8(v21, v25), vorrq_s8(v25, v19), vaddq_s8(v25, v18));
      vst2q_s8(v16, v52);
      v16 += 32;
      v15 += 16;
    }

    while (v15 != 32);
    cStr[64] = 0;
    v26 = CFStringCreateWithCString(alloc, cStr, 0x600u);
    CFStringAppendFormat(Mutable, 0, @"SM(%@),", v26);
    CFRelease(v26);
  }

  v27 = *(a1 + 184);
  if (v27)
  {
    CFStringAppend(Mutable, @"Aone,");
    v27 = *(a1 + 184);
    if ((v27 & 2) == 0)
    {
LABEL_21:
      if ((v27 & 8) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_47;
    }
  }

  else if ((v27 & 2) == 0)
  {
    goto LABEL_21;
  }

  CFStringAppend(Mutable, @"Acst,");
  v27 = *(a1 + 184);
  if ((v27 & 8) == 0)
  {
LABEL_22:
    if ((v27 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  CFStringAppend(Mutable, @"opq,");
  v27 = *(a1 + 184);
  if ((v27 & 0x20) == 0)
  {
LABEL_23:
    if ((v27 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  CFStringAppend(Mutable, @"tgt,");
  v27 = *(a1 + 184);
  if ((v27 & 0x40) == 0)
  {
LABEL_24:
    if ((v27 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_50;
  }

LABEL_49:
  CFStringAppend(Mutable, @"lgh,");
  v27 = *(a1 + 184);
  if ((v27 & 0x80) == 0)
  {
LABEL_25:
    if ((v27 & 0x1000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_51;
  }

LABEL_50:
  CFStringAppend(Mutable, @"amb,");
  v27 = *(a1 + 184);
  if ((v27 & 0x1000) == 0)
  {
LABEL_26:
    if ((v27 & 0x100) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_52;
  }

LABEL_51:
  CFStringAppend(Mutable, @"prob,");
  v27 = *(a1 + 184);
  if ((v27 & 0x100) == 0)
  {
LABEL_27:
    if ((v27 & 0x400) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_53;
  }

LABEL_52:
  CFStringAppend(Mutable, @"fog,");
  v27 = *(a1 + 184);
  if ((v27 & 0x400) == 0)
  {
LABEL_28:
    if ((v27 & 0x800) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_54;
  }

LABEL_53:
  CFStringAppend(Mutable, @"dynB,");
  v27 = *(a1 + 184);
  if ((v27 & 0x800) == 0)
  {
LABEL_29:
    if ((v27 & 0x200) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_54:
  CFStringAppend(Mutable, @"pntR,");
  if ((*(a1 + 184) & 0x200) != 0)
  {
LABEL_30:
    CFStringAppend(Mutable, @"iblTr,");
  }

LABEL_31:
  CFStringAppendFormat(Mutable, 0, @"[%@:", off_1E7A79F08[*(a1 + 104) & 0xF]);
  v28 = *(a1 + 104);
  if ((v28 & 0x10) != 0)
  {
    CFStringAppend(Mutable, @"PerPix|");
    v28 = *(a1 + 104);
    if ((v28 & 0x20) == 0)
    {
LABEL_33:
      if ((v28 & 0x40) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_58;
    }
  }

  else if ((v28 & 0x20) == 0)
  {
    goto LABEL_33;
  }

  CFStringAppend(Mutable, @"Double|");
  v28 = *(a1 + 104);
  if ((v28 & 0x40) == 0)
  {
LABEL_34:
    if ((v28 & 0x80) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_59;
  }

LABEL_58:
  CFStringAppend(Mutable, @"OverLght|");
  v28 = *(a1 + 104);
  if ((v28 & 0x80) == 0)
  {
LABEL_35:
    if ((v28 & 0x100) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_60;
  }

LABEL_59:
  CFStringAppend(Mutable, @"WrNrm|");
  v28 = *(a1 + 104);
  if ((v28 & 0x100) == 0)
  {
LABEL_36:
    if ((v28 & 0x200) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_61;
  }

LABEL_60:
  CFStringAppend(Mutable, @"Nrmliz|");
  v28 = *(a1 + 104);
  if ((v28 & 0x200) == 0)
  {
LABEL_37:
    if ((v28 & 0x400) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_61:
  CFStringAppend(Mutable, @"WriteDepth|");
  v28 = *(a1 + 104);
  if ((v28 & 0x400) != 0)
  {
LABEL_38:
    CFStringAppend(Mutable, @"LinDepth|");
    v28 = *(a1 + 104);
  }

LABEL_39:
  v29 = (v28 >> 11) & 0xF;
  if (v29 <= 2)
  {
    CFStringAppend(Mutable, off_1E7A7A000[v29]);
  }

  CFStringAppend(Mutable, @"]");
  CFStringAppend(Mutable, @"[Node:");
  v30 = *(a1 + 108);
  if (v30)
  {
    CFStringAppend(Mutable, @"LightMap|");
    v30 = *(a1 + 108);
    if ((v30 & 2) == 0)
    {
LABEL_43:
      if ((v30 & 4) == 0)
      {
        goto LABEL_76;
      }

LABEL_65:
      CFStringAppend(Mutable, @"Tess|");
      v31 = *(a1 + 108);
      if ((v31 & 8) != 0)
      {
        v32 = @"PNTriangles|";
      }

      else
      {
        if ((v31 & 0x10) == 0)
        {
          goto LABEL_70;
        }

        v32 = @"Phong|";
      }

      CFStringAppend(Mutable, v32);
LABEL_70:
      v30 = *(a1 + 108);
      if ((v30 & 0x20) != 0)
      {
        CFStringAppend(Mutable, @"OSD|");
        v33 = *(a1 + 108);
        if ((v33 & 0x40) != 0)
        {
          CFStringAppend(Mutable, @"SingleCrease|");
          v33 = *(a1 + 108);
        }

        if ((v33 & 0x80) != 0)
        {
          CFStringAppend(Mutable, @"ScreenSpace|");
          v33 = *(a1 + 108);
        }

        CFStringAppendFormat(Mutable, 0, @"PrimvarData=%d|", (v33 >> 8) & 0x7FFFF);
        v30 = *(a1 + 108);
      }

      goto LABEL_76;
    }
  }

  else if ((v30 & 2) == 0)
  {
    goto LABEL_43;
  }

  CFStringAppend(Mutable, @"VrtCol|");
  v30 = *(a1 + 108);
  if ((v30 & 4) != 0)
  {
    goto LABEL_65;
  }

LABEL_76:
  if ((v30 & 0x8000000) != 0)
  {
    CFStringAppend(Mutable, @"Bézier|");
  }

  CFStringAppend(Mutable, @"]");
  for (j = 0; j != 22; ++j)
  {
    v35 = *(a1 + 16 + 4 * j);
    if ((v35 & 0x400) == 0)
    {
      continue;
    }

    CFStringAppendFormat(Mutable, 0, @"[%@:", off_1E7A79F30[j]);
    if (v35)
    {
      CFStringAppend(Mutable, @"Tex|");
      if ((v35 & 2) == 0)
      {
LABEL_82:
        if ((v35 & 4) == 0)
        {
          goto LABEL_83;
        }

        goto LABEL_98;
      }
    }

    else if ((v35 & 2) == 0)
    {
      goto LABEL_82;
    }

    CFStringAppend(Mutable, @"rgb0|");
    if ((v35 & 4) == 0)
    {
LABEL_83:
      if ((v35 & 8) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_99;
    }

LABEL_98:
    CFStringAppend(Mutable, @"rgb1|");
    if ((v35 & 8) == 0)
    {
LABEL_84:
      if ((v35 & 0x10) != 0)
      {
        goto LABEL_100;
      }

      goto LABEL_85;
    }

LABEL_99:
    CFStringAppend(Mutable, @"a1|");
    if ((v35 & 0x10) != 0)
    {
LABEL_100:
      CFStringAppend(Mutable, @"flt0|");
      if ((v35 & 0x1000) == 0)
      {
        goto LABEL_87;
      }

LABEL_86:
      CFStringAppend(Mutable, @"int|");
      goto LABEL_87;
    }

LABEL_85:
    if ((v35 & 0x1000) != 0)
    {
      goto LABEL_86;
    }

LABEL_87:
    if ((v35 & 0xE000) != 0)
    {
      CFStringAppend(Mutable, @"comp|");
    }

    if ((v35 & 0x800) != 0)
    {
      CFStringAppend(Mutable, @"mat|");
    }

    v36 = ((v35 >> 5) & 0xF) - 1;
    if (v36 <= 3)
    {
      CFStringAppend(Mutable, off_1E7A7A018[v36]);
    }

    CFStringAppend(Mutable, @"]");
  }

  if (*(a1 + 144))
  {
    CFStringAppend(Mutable, @"[Lighting:");
    if (*(a1 + 144))
    {
      for (k = 0; k < *(a1 + 144); ++k)
      {
        if (k)
        {
          CFStringAppend(Mutable, @",");
        }

        v38 = *(a1 + 112 + 4 * k);
        v39 = v38 & 7;
        if (v39 > 3)
        {
          if ((v38 & 7) > 5)
          {
            if (v39 != 6)
            {
              if ((v38 & 8) != 0)
              {
                goto LABEL_131;
              }

              goto LABEL_121;
            }

            v42 = @"I";
          }

          else if (v39 == 4)
          {
            v42 = @"P";
          }

          else
          {
            v42 = @"R";
          }
        }

        else
        {
          v40 = @"D";
          if (v39 != 2)
          {
            v40 = @"S";
          }

          v41 = @"A";
          if ((v38 & 7) != 0)
          {
            v41 = @"O";
          }

          if ((v38 & 7) <= 1)
          {
            v42 = v41;
          }

          else
          {
            v42 = v40;
          }
        }

        CFStringAppend(Mutable, v42);
        if ((v38 & 8) != 0)
        {
LABEL_131:
          CFStringAppend(Mutable, @"g");
          if ((v38 & 0x10) == 0)
          {
            goto LABEL_123;
          }

LABEL_122:
          CFStringAppend(Mutable, @"s");
          goto LABEL_123;
        }

LABEL_121:
        if ((v38 & 0x10) != 0)
        {
          goto LABEL_122;
        }

LABEL_123:
        if (((v38 >> 9) & 0x1F) >= 2)
        {
          CFStringAppendFormat(Mutable, 0, @"Soft(%d)", (v38 >> 9) & 0x1F);
        }

        if ((v38 & 0x20) != 0)
        {
          CFStringAppend(Mutable, @"c");
        }
      }
    }

    CFStringAppend(Mutable, @"]");
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

uint64_t sub_1AF13DEAC()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB654D08 = result;
  return result;
}

uint64_t sub_1AF13DED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6)
{
  v12 = sub_1AF166C80(a3, a4);
  v13 = sub_1AF1656E4(a3, a4, 0);
  v14 = 0;
  if (a4 != 3 && v13)
  {
    v14 = sub_1AF167434(v13);
  }

  if (!a3 || a4 == 3)
  {
    v17 = a5 & 0xFFFFFFFE | v12;
    if (!v12)
    {
      return v17;
    }
  }

  else
  {
    v15 = sub_1AF16664C(a3, a4);
    if (v15 == -1)
    {
      v15 = sub_1AF165588(a4);
    }

    if (((v15 != -1) & v12) == 1)
    {
      if (sub_1AF1A4604(a2, 3, v15, 0))
      {
        v16 = 1;
        goto LABEL_18;
      }

LABEL_15:
      if (v15 == -1 || (a6 & 1) == 0)
      {
        return a5 & 0xFFE1FFFE | ((v15 & 0xF) << 17);
      }

      v16 = 0;
LABEL_18:
      v17 = a5 & 0xFFE1FFFE | v16 & 0xFFE1FFFF | ((sub_1AF13E0D8(a1, v15, v14, a4) & 0xF) << 17);
      if ((v16 & 1) == 0)
      {
        return v17;
      }

      goto LABEL_19;
    }

    if (((v15 == -1) & v12) != 1)
    {
      goto LABEL_15;
    }

    LODWORD(v17) = a5 | 0x1E0001;
  }

LABEL_19:
  v33 = 0;
  v32 = 1;
  v18 = sub_1AF1656E4(a3, a4, 0);
  if (!v18 || (v18 = sub_1AF1677F4(v18, &v33, &v32), (v20 = v33) == 0))
  {
    v20 = 2;
    v33 = 2;
  }

  if (v14)
  {
    v21 = 2048;
  }

  else
  {
    v21 = 0;
  }

  v22 = v17 & 0xFFFFF41F | (v32 << 9) | v21;
  if (v20 >= 7)
  {
    v23 = sub_1AF0D5194(v18, v19);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD4824(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  return v22 | (32 * v33);
}

uint64_t sub_1AF13E0D8(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v4 = *(a1 + 147);
  if (a3)
  {
LABEL_7:
    LODWORD(v5) = *(a1 + 147);
LABEL_8:
    v7 = (a1 + 148 + 2 * *(a1 + 147));
    *v7 = a2;
    if (!a3)
    {
      a4 = -1;
    }

    v7[1] = a4;
    *(a1 + 147) = v4 + 1;
    return v5;
  }

  if (*(a1 + 147))
  {
    v5 = 0;
    v6 = (a1 + 149);
    while (*(v6 - 1) != a2 || *v6 != 255)
    {
      ++v5;
      v6 += 2;
      if (v4 == v5)
      {
        goto LABEL_7;
      }
    }

    v10 = *(a1 + 147);
  }

  else
  {
    v10 = 0;
    LODWORD(v5) = 0;
  }

  if (v5 == v10)
  {
    goto LABEL_8;
  }

  return v5;
}

uint64_t sub_1AF13E15C(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, _DWORD *a5)
{
  v10 = sub_1AF16E098(a2, a2);
  v11 = a1 + 216;
  v12 = *(a1 + 216 + 8 * a3);
  if (!(v10 | v12))
  {
    goto LABEL_27;
  }

  v13 = v10;
  if (v10)
  {
    if (v12 && CFEqual(v10, v12))
    {
      goto LABEL_27;
    }
  }

  Count = CFArrayGetCount(v13);
  if (v13)
  {
    v15 = Count;
    if (Count)
    {
      Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], v13);
      v17 = *(v11 + 8 * a3);
      if (v17 != Copy)
      {
        if (v17)
        {
          CFRelease(v17);
          *(v11 + 8 * a3) = 0;
        }

        if (Copy)
        {
          v18 = CFRetain(Copy);
        }

        else
        {
          v18 = 0;
        }

        *(v11 + 8 * a3) = v18;
      }

      CFRelease(Copy);
      v22 = sub_1AF16E1F8(a2, v21);
      if (v22)
      {
        valuePtr = 0;
        CFNumberGetValue(v22, kCFNumberNSIntegerType, &valuePtr);
        v23 = *(a1 + 208);
        if (valuePtr > v23)
        {
          LODWORD(v23) = valuePtr;
        }

        *(a1 + 208) = v23;
      }

      if (v15 >= 1)
      {
        v24 = 0;
        v20 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v13, v24);
          v20 |= sub_1AF148C40(ValueAtIndex, v26);
          *a4 |= sub_1AF148C88(ValueAtIndex, v27);
          *a5 |= sub_1AF148CD0(ValueAtIndex, v28);
          v30 = sub_1AF148D60(ValueAtIndex, v29);
          v31 = *(a1 + 208);
          if (v31 <= v30)
          {
            v31 = v30;
          }

          *(a1 + 208) = v31;
          ++v24;
        }

        while (v15 != v24);
        return v20;
      }

LABEL_27:
      LOBYTE(v20) = 0;
      return v20;
    }
  }

  v19 = *(v11 + 8 * a3);
  if (v19)
  {
    CFRelease(v19);
    *(v11 + 8 * a3) = 0;
  }

  LOBYTE(v20) = 0;
  *(a1 + 208) = 0;
  return v20;
}

void sub_1AF13E314(uint64_t a1, const void *a2, CFTypeRef cf)
{
  v3 = cf;
  v6 = CFGetTypeID(cf);
  v8 = sub_1AF1CD8D8(v6, v7);
  if (v6 == v8)
  {
    if (sub_1AF1CDAF4(v3, v9) != 1)
    {
      return;
    }

    v11 = sub_1AF1CDA60(v3, v10);
    v3 = *v11;
  }

  else
  {
    v11 = sub_1AF167C2C(v8, v9);
    if (v6 != v11)
    {
      return;
    }
  }

  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = *(v13 + 146);
    if (v14 == 8)
    {
      v15 = sub_1AF0D5194(v11, v12);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDD489C(v15);
      }
    }

    else
    {
      *(v13 + 8 * v14 + 232) = a2;
      CFRetain(a2);
      v17 = sub_1AF1666D4(v3, v16);
      if (v17 == -1)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17;
      }

      v19 = sub_1AF167434(v3);
      *(*(a1 + 32) + v14 + 187) = sub_1AF13E0D8(*(a1 + 32), v18, v19, v14 + 28);
      ++*(*(a1 + 32) + 146);
    }
  }
}

uint64_t sub_1AF13E594(uint64_t a1, uint64_t a2)
{
  if (a2 >= 16)
  {
    v4 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD491C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return *(a1 + 2 * a2 + 148);
}

__CFString *sub_1AF13E5F0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 146) > a2)
  {
    return *(a1 + 8 * a2 + 232);
  }

  v3 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDD4994(v3);
  }

  return @"unknown";
}

uint64_t sub_1AF13E650(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 146) > a2)
  {
    return *(a1 + a2 + 187);
  }

  v3 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDD4994(v3);
  }

  return -1;
}

uint64_t sub_1AF13E6B4(uint64_t a1, uint64_t a2)
{
  result = sub_1AF148D18(a1, a2);
  if (*(a2 + 24) == result && *a2)
  {
    v5 = *(a2 + 16);
    if (v5 < *(a2 + 8))
    {
      *(*a2 + 8 * v5) = a1;
      *(a2 + 16) = v5 + 1;
    }
  }

  return result;
}

uint64_t sub_1AF13E708(unsigned __int16 *a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = sub_1AF1BAF14(a2, a2);
  v6 = *a1;
  v7 = (v6 >> 6);
  if (!(v6 >> 6))
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = *&a1[4 * v8 + 20];
    v11 = v9 | (1 << v8);
    if ((v10 & v5) == 0)
    {
      v11 = v9;
    }

    if (a3 != 3)
    {
      v9 |= 1 << v8;
    }

    if (v10 != 0xDEFA017DEFA017)
    {
      v9 = v11;
    }

    ++v8;
  }

  while (v7 != v8);
  return v9;
}

uint64_t sub_1AF13E7BC(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v10[0] = a3;
  v10[1] = a4;
  v11 = 0;
  v5 = a1 + 216;
  v6 = 1;
  v12 = a2;
  do
  {
    v7 = v6;
    v8 = *(v5 + 8 * v4);
    if (v8)
    {
      v13.length = CFArrayGetCount(*(v5 + 8 * v4));
      v13.location = 0;
      CFArrayApplyFunction(v8, v13, sub_1AF13E6B4, v10);
    }

    v6 = 0;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
  return v11;
}

BOOL sub_1AF13E850(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  if (!a3)
  {
    return 1;
  }

  v5 = *(a2 + 104);
  v6 = v5 & 0xF;
  if (v6 == 3)
  {
    v7 = *(a2 + 184);
    v8 = *a3;
    if ((v7 & 0x1000) != 0 && ((v8 >> 3) & 7) != v7 >> 13)
    {
      return 0;
    }
  }

  else if ((v5 & 0xD) != 0)
  {
    v10 = *(a2 + 184);
    if ((v10 & 0x40) == 0)
    {
      return 0;
    }

    v8 = *a3;
    if ((v8 ^ (v10 >> 7)))
    {
      return 0;
    }
  }

  else
  {
    v8 = *a3;
  }

  if (*(a2 + 144) == (v8 >> 6) && ((v8 >> 2) & 1) == ((*(a2 + 186) >> 4) & 1))
  {
    v11 = (v8 >> 6);
    if (v11)
    {
      v12 = (a2 + 112);
      v13 = a3 + 2;
      while (1)
      {
        v15 = *v12++;
        v14 = v15;
        v16 = *v13;
        v13 += 2;
        if (v14 != v16)
        {
          break;
        }

        if (!--v11)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_18:
      v17 = *(a2 + 145);
      if (sub_1AF13E708(a3, a1, v6) == v17)
      {
        return ((*a3 >> 1) & 1) == ((*(a2 + 186) >> 3) & 1);
      }
    }
  }

  return 0;
}

uint64_t sub_1AF13E964(void *a1, uint64_t a2, const void *a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, unint64_t a7)
{
  v136[11] = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    return 0;
  }

  if (a3)
  {
    v13 = sub_1AF170740(a3);
  }

  else
  {
    v13 = 0;
  }

  if (a5)
  {
    v15 = *a5;
    v112 = v15 & 1;
    v109 = (v15 >> 3) & 7;
  }

  else
  {
    v112 = 0;
    LOWORD(v109) = 0;
  }

  v135 = 0u;
  memset(v136, 0, 88);
  v134 = 0u;
  v132 = 0u;
  memset(v133, 0, sizeof(v133));
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v127 = 0u;
  memset(v126, 0, sizeof(v126));
  v125 = 0u;
  WORD4(v134) = 11;
  WORD2(v134) = a7;
  BYTE6(v134) = BYTE2(a7);
  v106 = a7;
  BYTE7(v134) = BYTE3(a7) & 0x7F;
  v118 = 0;
  v107 = sub_1AF13E15C(&v125, a6, 0, &v118 + 1, &v118);
  v16 = sub_1AF13E15C(&v125, a2, 1u, &v118 + 1, &v118);
  sub_1AF1BA79C(a1, v17);
  v19 = v18;
  v21 = sub_1AF1A1270(a6, v20);
  v23 = sub_1AF165AE4(v21, v22);
  v25 = v23;
  if (a5)
  {
    v26 = v23 == 2;
  }

  else
  {
    v26 = 1;
  }

  v28 = !v26 || v23 == 3;
  v113 = v28;
  if ((v23 | 2) == 2)
  {
    v112 = 0;
  }

  v115 = a5;
  if (a1)
  {
    v29 = sub_1AF1BB464(a1, v24) != 0;
  }

  else
  {
    v29 = 0;
  }

  v114 = a6;
  if (v13)
  {
    if (sub_1AF1A4F70(v13, 2))
    {
      v30 = 2;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  v116 = a2;
  v110 = a1;
  if (!a2)
  {
LABEL_33:
    v31 = 0;
    if (!a3)
    {
      goto LABEL_31;
    }

LABEL_34:
    v33 = CFGetTypeID(a3);
    v32 = (v33 == sub_1AF15B134(v33, v34)) << 27;
    goto LABEL_35;
  }

  if (!sub_1AF1B402C(a2, v24))
  {
    LODWORD(a2) = 0;
    goto LABEL_33;
  }

  sub_1AF1B40F0(a2, v24, &v117);
  v31 = 8 * v117.n128_u8[12];
  LODWORD(a2) = 4;
  if (a3)
  {
    goto LABEL_34;
  }

LABEL_31:
  v32 = 0;
LABEL_35:
  HIDWORD(v130) = v30 | v29 | a2 | v31 | v32;
  WORD4(v130) = sub_1AF166854(v21, v24);
  if (sub_1AF170D38(v116, v35))
  {
    v119 = 0uLL;
    v120 = 0;
    sub_1AF1B40F0(v116, v36, &v119);
    if (BYTE1(v120))
    {
      v37 = 32;
      if (sub_1AF1715F0(v116))
      {
        if (sub_1AF171610((v106 >> 24) & 7))
        {
          v37 = 96;
        }

        else
        {
          v37 = 32;
        }
      }
    }

    else
    {
      v37 = 32;
    }

    v39 = BYTE1(v120);
    v40 = sub_1AF176290(v116);
    HIDWORD(v130) |= v37 | ((v40 & 0x7FFFF) << 8) | (v39 << 6) & 0x80;
    v38 = BYTE10(v134) & 0xF8 | BYTE3(v106) & 7;
  }

  else
  {
    v38 = BYTE10(v134) & 0xF8;
  }

  BYTE10(v134) = v38;
  if (v115)
  {
    v41 = *v115;
    v42 = (*v115 >> 6);
    if ((*v115 >> 6))
    {
      __memcpy_chk();
      bzero(&v131 + 4 * v42, (32 - (4 * v42)) & 0x3FFFFFFFCLL);
    }

    else
    {
      v131 = 0u;
      v132 = 0u;
    }

    v43 = v41 >> 6;
  }

  else
  {
    v43 = 0;
    v131 = 0u;
    v132 = 0u;
  }

  v44 = 0;
  v108 = v16 | v107;
  LOBYTE(v133[0]) = v43;
  v45 = HIDWORD(v118);
  if (v113)
  {
    v46 = v25;
  }

  else
  {
    v46 = 2;
  }

  do
  {
    v47 = sub_1AF16690C(v21, v44);
    if (v47 & 1) != 0 || ((v45 >> v44))
    {
      v47 = sub_1AF13DED4(&v125, v13, v21, v44, v47, v45 != 0);
    }

    v48 = sub_1AF165594(v46, v44);
    if (!v48)
    {
      goto LABEL_109;
    }

    if (v44 > 12)
    {
      if (v44 <= 18)
      {
        if (v44 == 13)
        {
          v50 = v47 & ((BYTE13(v127) & 4) >> 2);
          if ((v47 & 0x1000) == 0)
          {
            goto LABEL_96;
          }

          goto LABEL_72;
        }

        if (v44 == 18)
        {
          v50 = v47 & 1;
          if ((v47 & 0x1000) == 0)
          {
            goto LABEL_96;
          }

          goto LABEL_72;
        }

        goto LABEL_94;
      }

      switch(v44)
      {
        case 19:
          v50 = (BYTE9(v126[0]) >> 2) & 1;
          if ((v47 & 0x1000) == 0)
          {
            goto LABEL_96;
          }

          goto LABEL_72;
        case 20:
          v51 = (v47 & 0x10) == 0;
          goto LABEL_87;
        case 21:
          if ((v47 & 0x10) != 0)
          {
            LODWORD(v130) = 0;
LABEL_109:
            *(v126 + v44) = 0;
            goto LABEL_110;
          }

LABEL_95:
          v50 = 1;
          if ((v47 & 0x1000) == 0)
          {
            goto LABEL_96;
          }

          goto LABEL_72;
      }
    }

    else
    {
      v50 = 1;
      if (v44 > 8)
      {
        if ((v44 - 9) < 2)
        {
LABEL_71:
          if ((v47 & 0x1000) == 0)
          {
            goto LABEL_96;
          }

          goto LABEL_72;
        }

        if (v44 == 12)
        {
          v50 = ((v47 & 3) != 2) & (BYTE13(v127) >> 2);
          if ((v47 & 0x1000) == 0)
          {
            goto LABEL_96;
          }

          goto LABEL_72;
        }
      }

      else
      {
        switch(v44)
        {
          case 1:
            goto LABEL_71;
          case 4:
            v51 = (v47 & 8) == 0;
LABEL_87:
            v50 = v51;
            if ((v47 & 0x1000) == 0)
            {
              goto LABEL_96;
            }

            goto LABEL_72;
          case 5:
            if (v47)
            {
              goto LABEL_71;
            }

            v51 = (v47 & 4) == 0;
            goto LABEL_87;
        }
      }
    }

LABEL_94:
    if (v47)
    {
      goto LABEL_95;
    }

    if ((v47 & 2) != 0)
    {
      goto LABEL_109;
    }

    v48 = sub_1AF166CB8(v21, v49);
    v50 = v48 ^ 1;
    if (v25 != 2)
    {
      v50 = 1;
    }

    if ((v47 & 0x1000) == 0)
    {
      goto LABEL_96;
    }

LABEL_72:
    if (v44 != 1 && v50)
    {
      v52 = sub_1AF1662B4(v21, v44);
      if (v52 == 0.0)
      {
        goto LABEL_109;
      }

      v53 = v47 & 0xFFFFFBFF | ((v52 != 0.0) << 10);
      goto LABEL_101;
    }

LABEL_96:
    if (v50)
    {
      v54 = 1024;
    }

    else
    {
      v54 = 0;
    }

    if ((v50 & 1) == 0)
    {
      goto LABEL_109;
    }

    v53 = v54 | v47 & 0xFFFFFBFF;
LABEL_101:
    *(v126 + v44) = v53;
    if (v53 >= 0x200000)
    {
      v55 = sub_1AF0D5194(v48, v49);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD49D8(buf, &v124, v55);
      }
    }

LABEL_110:
    ++v44;
  }

  while (v44 != 22);
  v119.n128_u64[0] = MEMORY[0x1E69E9820];
  v119.n128_u64[1] = 3221225472;
  v120 = sub_1AF13E314;
  v121 = &unk_1E7A79EA0;
  v122 = &v125;
  sub_1AF16E4FC(v114, &v119);
  v119.n128_u64[0] = MEMORY[0x1E69E9820];
  v119.n128_u64[1] = 3221225472;
  v120 = sub_1AF13E314;
  v121 = &unk_1E7A79EA0;
  v122 = &v125;
  sub_1AF16E4FC(v116, &v119);
  v56 = 0;
  v57 = v118;
  v58 = HIBYTE(v133[1]);
  do
  {
    if ((v57 >> v56))
    {
      if (v58)
      {
        v59 = v58;
        v60 = &v133[2];
        v61 = v58;
        while (1)
        {
          v62 = *v60;
          v60 += 2;
          if (v56 == v62)
          {
            break;
          }

          if (!--v61)
          {
            goto LABEL_119;
          }
        }
      }

      else
      {
        v59 = 0;
LABEL_119:
        v63 = &v133[v59 + 2];
        *v63 = v56;
        v63[1] = -1;
        HIBYTE(v133[1]) = ++v58;
      }
    }

    ++v56;
  }

  while (v56 != 16);
  v64 = sub_1AF1656E4(v21, 6, 0);
  v65 = sub_1AF1656E4(v21, 13, 0);
  v67 = sub_1AF1656E4(v21, 18, 0);
  if (v64)
  {
    if (sub_1AF166220(v64, v66))
    {
      v68 = 32;
    }

    else
    {
      v68 = 0;
    }

    WORD4(v134) = WORD4(v134) & 0xFFDF | v68;
  }

  if (v67)
  {
    v69 = sub_1AF166220(v67, v66);
    v70 = BYTE8(v134) & 0x20;
    if (v69)
    {
      v70 = 32;
    }

    WORD4(v134) = v70 | WORD4(v134) & 0xFFDF;
  }

  if (v65)
  {
    v71 = sub_1AF166220(v65, v66);
    v72 = BYTE8(v134) & 0x20;
    if (v71)
    {
      v72 = 32;
    }

    v73 = v72 | WORD4(v134) & 0xFFDF;
  }

  else
  {
    v73 = WORD4(v134);
  }

  WORD4(v134) = v73 | (16 * v108) & 0x20;
  if (v73 & 0x20 | (16 * v108) & 0x20)
  {
    v74 = sub_1AF1A4DBC(v13, 3) > 0;
    WORD4(v134) = WORD4(v134) & 0xFFDF | (32 * v74);
  }

  v75 = sub_1AF1B40A0(v116, v66);
  if (v13)
  {
    v77 = 16 * (sub_1AF1A4604(v13, 1, 0, v75) != 0);
  }

  else
  {
    v77 = 0;
  }

  WORD4(v134) = WORD4(v134) & 0xFFEF | v77;
  if (v110)
  {
    v78 = sub_1AF1C3FAC(v110, v76);
    if (v78)
    {
      v79 = v78;
      if (sub_1AF1D02FC(v78, v76) > 0.0 && (v106 & 0x100) == 0)
      {
        WORD4(v134) |= 0x100u;
      }

      if (sub_1AF1D12B4(v79, v80))
      {
        WORD4(v134) |= 0x200u;
      }
    }
  }

  if (v13)
  {
    v81 = sub_1AF1A4F64(v13);
  }

  else
  {
    v81 = 0;
  }

  v83 = (sub_1AF1A1408(v114, v76) == 0) & (((v25 == 4) | v81) ^ 1);
  v84 = WORD4(v134) & 0xFFF4;
  if (v19 >= 1.0)
  {
    ++v84;
  }

  if (((v19 >= 1.0) & v83) != 0)
  {
    v85 = 8;
  }

  else
  {
    v85 = 0;
  }

  if ((v25 == 3) | (v25 == 4) | v81 & 1)
  {
    v86 = 0;
  }

  else
  {
    v86 = 2;
  }

  WORD4(v134) = v84 | v86 | v85;
  if (sub_1AF1A1498(v114, v82))
  {
    v87 = 4;
  }

  else
  {
    v87 = 0;
  }

  if (v113)
  {
    v88 = 64;
  }

  else
  {
    v88 = 0;
  }

  if (v112)
  {
    v89 = 128;
  }

  else
  {
    v89 = 0;
  }

  WORD4(v134) = v89 | v88 | v87 | WORD4(v134) & 0xFF3B;
  if (v115)
  {
    v90 = *v115;
    v91 = 4 * v90;
    v92 = BYTE10(v134) & 0xF7 | (8 * ((v90 >> 1) & 1));
    v93 = v91 & 0x10;
  }

  else
  {
    v93 = 0;
    LOBYTE(v92) = BYTE10(v134) & 0xF7;
  }

  BYTE10(v134) = v93 | v92 & 0xEF;
  HIBYTE(v133[0]) = sub_1AF13E708(v115, v110, v25);
  v94 = v109;
  if (v25 != 3)
  {
    v94 = 0;
  }

  WORD4(v134) = WORD4(v134) & 0xFFF | ((v25 == 3) << 12) | (v94 << 13);
  if ((sub_1AF1B3F80(v116) & (v19 >= 1.0)) != 0)
  {
    v96 = 1024;
  }

  else
  {
    v96 = 0;
  }

  WORD4(v134) = WORD4(v134) & 0xF3FF | v96;
  if (a4)
  {
    v97 = sub_1AF1A7034(a4, v95) == 3;
    WORD4(v134) = WORD4(v134) & 0xF7FF | (v97 << 11);
  }

  v14 = sub_1AF13F3D8(&v125);
  v98 = 0;
  v99 = 1;
  do
  {
    v100 = v99;
    v101 = v136[v98 + 1];
    if (v101)
    {
      CFRelease(v101);
      v136[v98 + 1] = 0;
    }

    v99 = 0;
    v98 = 1;
  }

  while ((v100 & 1) != 0);
  v102 = LOBYTE(v133[1]);
  if (LOBYTE(v133[1]))
  {
    v103 = 0;
    do
    {
      v104 = v136[v103 + 3];
      if (v104)
      {
        CFRelease(v104);
        v136[v103 + 3] = 0;
        v102 = LOBYTE(v133[1]);
      }

      ++v103;
    }

    while (v103 < v102);
  }

  return v14;
}

uint64_t sub_1AF13F3D8(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  v2 = 0;
  v3 = MEMORY[0x1E69E9820];
  v4 = 1;
  do
  {
    v5 = 0;
    v6 = v4;
    v7 = *(a1 + 216 + 8 * v2);
    do
    {
      v27[0] = v3;
      v27[1] = 3221225472;
      v27[2] = sub_1AF13FEE0;
      v27[3] = &unk_1E7A79FE0;
      v28 = v5;
      v27[4] = &c;
      sub_1AF28A5FC(v7, v27);
    }

    while (v5++ < 3);
    v4 = 0;
    v2 = 1;
  }

  while ((v6 & 1) != 0);
  for (i = 232; i != 296; i += 8)
  {
    v10 = *(a1 + i);
    if (v10)
    {
      sub_1AF148DA8(v10);
    }
  }

  CC_SHA256_Update(&c, (a1 + 16), 0xB4u);
  data = 2;
  CC_SHA256_Update(&c, &data, 4u);
  CC_SHA256_Final(md, &c);
  v11 = 0;
  v12 = cStr;
  v13.i64[0] = 0xA0A0A0A0A0A0A0A0;
  v13.i64[1] = 0xA0A0A0A0A0A0A0A0;
  v14.i64[0] = 0x3737373737373737;
  v14.i64[1] = 0x3737373737373737;
  v15.i64[0] = 0x3030303030303030;
  v15.i64[1] = 0x3030303030303030;
  v16.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v16.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v17.i64[0] = 0xA0A0A0A0A0A0A0ALL;
  v17.i64[1] = 0xA0A0A0A0A0A0A0ALL;
  do
  {
    v18 = *&md[v11];
    v19.i64[0] = 0x3737373737373737;
    v19.i64[1] = 0x3737373737373737;
    v20.i64[0] = 0x3030303030303030;
    v20.i64[1] = 0x3030303030303030;
    v37.val[0] = vbslq_s8(vcgtq_u8(v13, v18), vsraq_n_u8(v20, v18, 4uLL), vsraq_n_u8(v19, v18, 4uLL));
    v21 = vandq_s8(v18, v16);
    v37.val[1] = vbslq_s8(vcgtq_u8(v17, v21), vorrq_s8(v21, v15), vaddq_s8(v21, v14));
    vst2q_s8(v12, v37);
    v12 += 32;
    v11 += 16;
  }

  while (v11 != 32);
  v34 = 0;
  v22 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x600u);
  if (qword_1EB654CD0 != -1)
  {
    sub_1AFDD4A28();
  }

  *c.count = 0;
  *c.hash = &c;
  *&c.hash[2] = 0x2020000000;
  *&c.hash[4] = 0;
  *cStr = 0;
  v31 = cStr;
  v32 = 0x2020000000;
  v33 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF13F720;
  block[3] = &unk_1E7A79EC8;
  block[4] = cStr;
  block[5] = &c;
  block[6] = v22;
  block[7] = a1;
  dispatch_sync(qword_1ED731610, block);
  CFRelease(v22);
  v23 = *(*c.hash + 24);
  _Block_object_dispose(cStr, 8);
  _Block_object_dispose(&c, 8);
  return v23;
}

void sub_1AF13F6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose((v24 - 208), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

dispatch_queue_t sub_1AF13F6D4()
{
  qword_1ED731618 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], 0);
  result = dispatch_queue_create("com.apple.vfx.programHashCodeQueue", 0);
  qword_1ED731610 = result;
  return result;
}

void sub_1AF13F720(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = CFDictionaryGetValue(qword_1ED731618, *(a1 + 48));
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2)
  {
    *(*(*(a1 + 40) + 8) + 24) = CFRetain(v2);
  }

  else
  {
    if (qword_1EB654D10 != -1)
    {
      sub_1AFDD4A50();
    }

    *(*(*(a1 + 40) + 8) + 24) = sub_1AF0D160C(qword_1EB654D08, 0x118uLL);
    v3 = *(*(*(a1 + 40) + 8) + 24);
    v4 = *(a1 + 56);
    v5 = *(v4 + 64);
    v7 = *(v4 + 16);
    v6 = *(v4 + 32);
    *(v3 + 48) = *(v4 + 48);
    *(v3 + 64) = v5;
    *(v3 + 16) = v7;
    *(v3 + 32) = v6;
    v8 = *(v4 + 128);
    v10 = *(v4 + 80);
    v9 = *(v4 + 96);
    *(v3 + 112) = *(v4 + 112);
    *(v3 + 128) = v8;
    *(v3 + 80) = v10;
    *(v3 + 96) = v9;
    v11 = *(v4 + 144);
    v12 = *(v4 + 160);
    v13 = *(v4 + 176);
    *(v3 + 192) = *(v4 + 192);
    *(v3 + 160) = v12;
    *(v3 + 176) = v13;
    *(v3 + 144) = v11;
    v14 = *(a1 + 56);
    *(*(*(*(a1 + 40) + 8) + 24) + 208) = *(v14 + 208);
    *(*(*(*(a1 + 40) + 8) + 24) + 216) = *(v14 + 216);
    v15 = *(*(*(a1 + 40) + 8) + 24);
    v16 = *(a1 + 56);
    v18 = *(v16 + 264);
    v17 = *(v16 + 280);
    v19 = *(v16 + 248);
    *(v15 + 232) = *(v16 + 232);
    *(v15 + 248) = v19;
    *(v15 + 264) = v18;
    *(v15 + 280) = v17;
    v20 = *(a1 + 56);
    *(v20 + 16) = 0u;
    *(v20 + 32) = 0u;
    *(v20 + 48) = 0u;
    *(v20 + 64) = 0u;
    *(v20 + 80) = 0u;
    *(v20 + 96) = 0u;
    *(v20 + 112) = 0u;
    *(v20 + 128) = 0u;
    *(v20 + 144) = 0u;
    *(v20 + 160) = 0u;
    *(v20 + 176) = 0u;
    *(v20 + 192) = 0;
    v21 = *(a1 + 56);
    *(v21 + 216) = 0;
    *(v21 + 224) = 0;
    v22 = *(a1 + 56);
    *(v22 + 232) = 0u;
    v22 = (v22 + 232);
    v22[1] = 0u;
    v22[2] = 0u;
    v22[3] = 0u;
    v23 = *(a1 + 48);
    v24 = *(*(*(a1 + 40) + 8) + 24);
    v25 = v24[25];
    if (v25 != v23)
    {
      if (v25)
      {
        CFRelease(v25);
        *(*(*(*(a1 + 40) + 8) + 24) + 200) = 0;
        v23 = *(a1 + 48);
      }

      if (v23)
      {
        v26 = CFRetain(v23);
      }

      else
      {
        v26 = 0;
      }

      *(*(*(*(a1 + 40) + 8) + 24) + 200) = v26;
      v23 = *(a1 + 48);
      v24 = *(*(*(a1 + 40) + 8) + 24);
    }

    v27 = qword_1ED731618;

    CFDictionarySetValue(v27, v23, v24);
  }
}

void sub_1AF13F914(uint64_t a1)
{
  if (a1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1AF13F994;
    block[3] = &unk_1E7A79EE8;
    block[4] = a1;
    dispatch_sync(qword_1ED731610, block);
  }
}

uint64_t sub_1AF13FE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AF148D18(a3, a2);
  if (*(a1 + 40) == result)
  {
    v6 = *(a1 + 32);

    return sub_1AF148F54(a3, v6);
  }

  return result;
}

uint64_t sub_1AF13FEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AF148D18(a3, a2);
  if (*(a1 + 40) == result)
  {
    v6 = *(a1 + 32);

    return sub_1AF148F54(a3, v6);
  }

  return result;
}

void sub_1AF13FF40(uint64_t a1)
{
  sub_1AF1400B8(a1);
  sub_1AF14087C(a1 + 16);
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 48) = 0;
  }
}

uint64_t sub_1AF13FF84()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED7398D8 = result;
  return result;
}

uint64_t sub_1AF13FFAC()
{
  if (qword_1ED7398D0 != -1)
  {
    sub_1AFDD4ADC();
  }

  v0 = sub_1AF0D160C(qword_1ED7398D8, 0x30uLL);
  sub_1AF140928(v0 + 16, 32);
  *(v0 + 48) = sub_1AF1D4138(0x7FFFFFFFLL);
  return v0;
}

void sub_1AF140010(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 56) < a2)
  {
    v4 = *(a1 + 44);
    if (v4 != -15)
    {
      v5 = 0;
      do
      {
        if (*(*(a1 + 32) + 2 * v5))
        {
          v6 = *(a1 + 24);
          sub_1AF159B7C(*(v6 + 8 * v5), a2);
          v8 = sub_1AF159AF0(*(v6 + 8 * v5), v7);
          bzero((v8 + 8 * *(a1 + 56)), 8 * (a2 - *(a1 + 56)));
          v4 = *(a1 + 44);
        }

        ++v5;
      }

      while (v5 < (v4 + 15));
    }

    *(a1 + 56) = a2;
  }
}

void sub_1AF1400B8(uint64_t a1)
{
  sub_1AF1400FC(a1 + 16, &unk_1F24E6F98);
  sub_1AF1401A0(a1 + 16);
  sub_1AF1D4480(*(a1 + 48), v2);
  *(a1 + 56) = 0;
}

uint64_t sub_1AF1400FC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 28);
  if (v2 != -15)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    do
    {
      if (*(*(v4 + 16) + 2 * v6))
      {
        result = (*(a2 + 16))(a2, *(*v4 + 8 * v6), *(v4 + 8) + v5);
        v2 = *(v4 + 28);
      }

      ++v6;
      v5 += 8;
    }

    while (v6 < (v2 + 15));
  }

  return result;
}

void sub_1AF1401A0(uint64_t a1)
{
  sub_1AF1408D0(*(a1 + 8), *(a1 + 16), *(a1 + 28) + 15);
  memset(*a1, 255, 8 * (*(a1 + 28) + 15));
  bzero(*(a1 + 16), 2 * (*(a1 + 28) + 15));
  *(a1 + 24) = 0;
}

void sub_1AF140204(uint64_t a1, unint64_t a2)
{
  v2 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    v3 = a2;
    v5 = 0;
    v6 = WORD1(a2);
    do
    {
      v7 = sub_1AF146408(v3, (v5 + v6));
      if (*(a1 + 44) != -15)
      {
        v9 = 0;
        v10 = v7;
        do
        {
          if (*(*(a1 + 32) + 2 * v9))
          {
            v11 = *(a1 + 24);
            if (sub_1AF1599D4(*(v11 + 8 * v9), v8) > v10)
            {
              v12 = sub_1AF159A64(*(v11 + 8 * v9), v10);
              v8 = *v12;
              if (*v12)
              {
                v13 = v12;
                sub_1AF1D4364(*(a1 + 48), v8);
                sub_1AF13F914(*v13);
                *v13 = 0;
              }
            }
          }

          ++v9;
        }

        while (v9 < (*(a1 + 44) + 15));
      }

      ++v5;
    }

    while (v5 != v2);
  }
}

uint64_t sub_1AF1402E0(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  if (!sub_1AF145EB0(a2))
  {
    result = sub_1AF146138(a2);
    if (!result)
    {
      return result;
    }

    if (!sub_1AF1A1828(result, v8))
    {
      v10 = (*(a1 + 44) - 1) & a4;
      v11 = *(*(a1 + 32) + 2 * v10);
      if (v11 >= 2)
      {
        v12 = *a2;
        while ((v11 & 2) == 0 || *(*(a1 + 16) + 8 * v10) != a4)
        {
          ++v10;
          v13 = v11 >= 4;
          v11 >>= 1;
          if (!v13)
          {
            return 0;
          }
        }

        v14 = *(a1 + 24);
        if (v14)
        {
          v15 = (v14 + 8 * v10);
          v16 = sub_1AF1403B4(v15, v9);
          if (sub_1AF1599D4(v16, v17) > v12)
          {
            return *sub_1AF159A64(*v15, v12);
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1AF1403B4(uint64_t a1, uint64_t a2)
{
  if (!*a1)
  {
    v3 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD4AF0(v3);
    }
  }

  return *a1;
}

uint64_t sub_1AF140400(uint64_t a1, void *a2)
{
  if (a2)
  {
    return sub_1AF1D41CC(*(a1 + 48), a2);
  }

  else
  {
    return 0;
  }
}

void sub_1AF14041C(uint64_t result, unsigned int *a2)
{
  if (*(result + 44) != -15)
  {
    v3 = 0;
    v4 = *a2;
    do
    {
      if (*(*(result + 32) + 2 * v3))
      {
        v5 = *(result + 24);
        if (sub_1AF1599D4(*(v5 + 8 * v3), a2) > v4)
        {
          v6 = sub_1AF159A64(*(v5 + 8 * v3), v4);
          a2 = *v6;
          if (*v6)
          {
            v7 = v6;
            sub_1AF1D4364(*(result + 48), a2);
            *v7 = 0;
          }
        }
      }

      ++v3;
    }

    while (v3 < (*(result + 44) + 15));
  }
}

void sub_1AF1404B4(uint64_t a1, unsigned int *a2, const void *a3, uint64_t a4)
{
  v7 = *a2;
  v8 = (*(a1 + 44) - 1) & a4;
  v9 = *(*(a1 + 32) + 2 * v8);
  if (v9 < 2)
  {
    goto LABEL_5;
  }

  while ((v9 & 2) == 0 || *(*(a1 + 16) + 8 * v8) != a4)
  {
    ++v8;
    v10 = v9 >= 4;
    v9 >>= 1;
    if (!v10)
    {
      goto LABEL_5;
    }
  }

  v18 = *(a1 + 24);
  if (!v18 || (v11 = *(v18 + 8 * v8)) == 0)
  {
LABEL_5:
    v11 = sub_1AF159954(8, *(a1 + 56));
    cf = 0;
    sub_1AF140A04(&cf, v11);
    sub_1AF140654((a1 + 16), a4, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    sub_1AF159B7C(v11, *(a1 + 56));
    v13 = sub_1AF159AF0(v11, v12);
    bzero(v13, 8 * *(a1 + 56));
  }

  v14 = (a1 + 56);
  if (v7 >= *(a1 + 56))
  {
    v17 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDD4B74(v14, v7, v17);
    }
  }

  else
  {
    v15 = sub_1AF159A64(v11, v7);
    if (*v15 != a3)
    {
      sub_1AF13F914(*v15);
      if (a3)
      {
        v16 = CFRetain(a3);
      }

      else
      {
        v16 = 0;
      }

      *v15 = v16;
      v19 = sub_1AF1D4238(*(a1 + 48), v16);
      if (v19 >= 0xFFFFFFFFLL)
      {
        v21 = sub_1AF0D5194(v19, v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDD4C00(v21);
        }
      }
    }
  }
}

uint64_t sub_1AF140654(uint64_t *a1, uint64_t a2, void *a3)
{
  while (1)
  {
    v6 = *(a1 + 7);
    v7 = (v6 - 1) & a2;
    v8 = a1[2];
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v7 + 496;
    v13 = v6 + 15;
    if (v13 < v7 + 496)
    {
      v12 = v13;
    }

    LODWORD(v14) = v7;
    v15 = v12 - v7;
    if (v12 > v7)
    {
      v14 = v7;
      while ((*(v8 + 2 * v14) & 1) != 0)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_32;
        }
      }
    }

    if (v14 != v12)
    {
      v16 = *(v8 + 2 * v14) | 1;
      *(v8 + 2 * v14) = v16;
      if (v14 <= v7 + 14)
      {
        v32 = v14;
        v27 = *a1;
        v28 = a1[1];
        LOBYTE(v21) = v14;
      }

      else
      {
        while (2)
        {
          if (v14 >= 0xF)
          {
            v17 = v14 - 14;
          }

          else
          {
            v17 = 0;
          }

          v18 = v17 - 1;
          if (v17 <= v14)
          {
            v19 = v14;
          }

          else
          {
            v19 = v17;
          }

          v20 = 1;
          while (1)
          {
            v21 = v18 + 1;
            if (v17 <= v21)
            {
              break;
            }

LABEL_26:
            ++v20;
            v18 = v21;
            if (v21 == v19)
            {
              goto LABEL_31;
            }
          }

          v22 = 1 << (v18 - v17 + 2);
          v23 = v20;
          v24 = v17;
          while (1)
          {
            v25 = v24;
            v26 = *(v8 + 2 * v24);
            if ((v22 & v26) != 0)
            {
              break;
            }

            v24 = v25 + 1;
            v22 = v22 >> 1;
            --v23;
            if (v25 + 1 > v21)
            {
              goto LABEL_26;
            }
          }

          if (v21 >= v14)
          {
LABEL_31:
            *(v8 + 2 * v14) ^= 1u;
            goto LABEL_32;
          }

          v27 = *a1;
          v28 = a1[1];
          *(*a1 + 8 * v14) = *(*a1 + 8 * v21);
          *(v28 + 8 * v14) = *(v28 + 8 * v21);
          *(v28 + 8 * v21) = 0;
          *(v8 + 2 * v25) = (v26 | (1 << (v14 - v25 + 1))) ^ (1 << v23);
          LODWORD(v14) = v21;
          if (v21 > v7 + 14)
          {
            continue;
          }

          break;
        }

        v16 = *(v8 + 2 * v21) | 1;
        v32 = v21;
      }

      *(v28 + 8 * v32) = *a3;
      *a3 = 0;
      *(v27 + 8 * v32) = a2;
      *(v8 + 2 * v32) = v16;
      result = 1;
      *(v8 + 2 * v7) |= 1 << (v21 - v7 + 1);
      ++*(a1 + 6);
      return result;
    }

LABEL_32:
    sub_1AF140A74(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*a1 + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v29 = a1[1];
  v30 = *a3;
  *a3 = 0;
  result = *(v29 + 8 * v10);
  *(v29 + 8 * v10) = v30;
  if (result)
  {
    CFRelease(result);
    return 0;
  }

  return result;
}

uint64_t sub_1AF14087C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_1AF1408D0(v2, *(a1 + 16), *(a1 + 28) + 15);
    free(*(a1 + 8));
  }

  free(*a1);
  free(*(a1 + 16));
  return a1;
}

void sub_1AF1408D0(CFTypeRef *a1, __int16 *a2, unsigned int a3)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v6 = *a2++;
      if (v6)
      {
        if (*a1)
        {
          CFRelease(*a1);
        }
      }

      ++a1;
      --v5;
    }

    while (v5);
  }
}

void sub_1AF140928(uint64_t a1, int a2)
{
  *(a1 + 24) = 0;
  *(a1 + 28) = a2;
  v3 = a2 + 15;
  v4 = 2 * (a2 + 15);
  v5 = malloc_type_malloc(v4, 0xBBD05BDCuLL);
  memset(v5, 255, v4);
  *(a1 + 16) = v5;
  v6 = 8 * v3;
  v7 = 8 * v3;
  v8 = malloc_type_malloc(v7, 0xBBD05BDCuLL);
  memset(v8, 255, v7);
  *a1 = v8;
  v9 = malloc_type_malloc(v7, 0xBBD05BDCuLL);
  memset(v9, 255, v7);
  *(a1 + 8) = v9;
  memset(*a1, 255, v6);
  v10 = *(a1 + 16);

  bzero(v10, v4);
}

void sub_1AF140A04(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4 == a2)
  {
    v5 = sub_1AF0D5194(v4, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDD4C84(v5);
      if (!a2)
      {
        return;
      }
    }

    else if (!a2)
    {
      return;
    }

    CFRelease(a2);
  }

  else
  {
    if (v4)
    {
      CFRelease(v4);
    }

    *a1 = a2;
  }
}

void sub_1AF140A74(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 28);
  sub_1AF140928(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v5 != -15)
  {
    v7 = v3;
    v8 = v2;
    v9 = v4;
    do
    {
      v10 = *v9++;
      if (v10)
      {
        sub_1AF140654(a1, *v8, v7);
        if (*v7)
        {
          CFRelease(*v7);
        }
      }

      ++v8;
      ++v7;
      --v6;
    }

    while (v6);
  }

  free(v3);
  free(v2);

  free(v4);
}

double sub_1AF140B2C(uint64_t a1)
{
  for (i = *(a1 + 168); i; i = *i)
  {
    v3 = *(i[3] + 8);
    if (v3)
    {
      --*(v3 + 20);
    }

    MEMORY[0x1B271C6B0]();
  }

  for (j = *(a1 + 128); j; j = *j)
  {
    sub_1AF140CE8(a1, j[2], 0);
  }

  for (k = *(a1 + 208); k; k = *k)
  {
    v6 = k[3];
    if (v6)
    {
      MEMORY[0x1B271C6B0](v6, 0x20C40A4A59CD2);
    }
  }

  for (m = *(a1 + 88); m; m = *m)
  {
    sub_1AF140E90(a1, m[2], 0);
  }

  sub_1AF144C9C((a1 + 152));
  sub_1AF144C9C((a1 + 112));
  sub_1AF144C9C((a1 + 192));
  sub_1AF144C9C((a1 + 232));
  *(a1 + 280) = *(a1 + 272);
  *(a1 + 304) = *(a1 + 296);
  *(a1 + 328) = *(a1 + 320);
  *(a1 + 352) = *(a1 + 344);
  *(a1 + 376) = *(a1 + 368);
  sub_1AF144C9C((a1 + 72));
  v8 = 0;
  v9 = a1 + 440;
  do
  {

    *(v9 + v8) = 0;
    v8 += 8;
  }

  while (v8 != 24);

  objc_msgSend_removeAllObjects(*(a1 + 416), v10, v11);
  objc_msgSend_removeAllObjects(*(a1 + 424), v12, v13);
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 392) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 512) = 0u;
  return result;
}

uint64_t *sub_1AF140CE8(uint64_t *result, uint64_t a2, int a3)
{
  v19 = a2;
  if (a2)
  {
    v4 = result;
    result = sub_1AF144D08(result + 14, &v19);
    if (result)
    {
      v6 = result;
      v7 = result[3];
      v8 = *(v7 + 20) - 1;
      *(v7 + 20) = v8;
      if (!v8)
      {
        if (*(v7 + 25) == 1)
        {
          --*(v4 + 64);
        }

        v9 = *(v7 + 32);
        if (v9)
        {
          objc_msgSend_removeObject_(*(v4 + 416), v5, *(v7 + 32));

          *(v7 + 32) = 0;
        }

        v10 = *(v7 + 40);
        if (v10)
        {
          objc_msgSend_removeObject_(*(v4 + 416), v5, *(v7 + 40));

          *(v7 + 40) = 0;
        }

        v11 = *(v7 + 48);
        if (v11)
        {
          objc_msgSend_removeObject_(*(v4 + 416), v5, *(v7 + 48));

          *(v7 + 48) = 0;
        }

        v12 = *(v7 + 56);
        if (v12)
        {
          objc_msgSend_removeObject_(*(v4 + 416), v5, *(v7 + 56));

          *(v7 + 56) = 0;
        }

        v13 = *(v7 + 64);
        if (v13)
        {
          objc_msgSend_removeObject_(*(v4 + 416), v5, *(v7 + 64));

          *(v7 + 64) = 0;
        }

        v14 = *(v7 + 72);
        if (*(v7 + 80) != v14)
        {
          v15 = 0;
          v16 = 1;
          do
          {
            v17 = v14[v15];
            v18 = *(v17 + 8);
            if (v18)
            {
              objc_msgSend_removeObject_(*(v4 + 416), v5, *(v17 + 8));

              *(v17 + 8) = 0;
            }

            sub_1AF140E90(v4, *(v17 + 16), 1);
            v15 = v16;
            v14 = *(v7 + 72);
            ++v16;
          }

          while (v15 < (*(v7 + 80) - v14) >> 3);
        }

        if (v14)
        {
          *(v7 + 80) = v14;
          operator delete(v14);
        }

        result = MEMORY[0x1B271C6B0](v7, 0x10A0C402566960ELL);
        if (a3)
        {
          return sub_1AF145C50((v4 + 112), v6);
        }
      }
    }
  }

  return result;
}

void *sub_1AF140E90(void *result, uint64_t a2, int a3)
{
  v12 = a2;
  if (a2)
  {
    v4 = result;
    result = sub_1AF144D08(result + 9, &v12);
    if (result)
    {
      v6 = result;
      v7 = result[3];
      v8 = *(v7 + 8) - 1;
      *(v7 + 8) = v8;
      if (!v8)
      {
        v9 = *(v7 + 448);
        if (v9)
        {
          objc_msgSend_removeObject_(v4[52], v5, *(v7 + 448));

          *(v7 + 448) = 0;
        }

        for (i = 48; i != 480; i += 48)
        {
          v11 = *(v7 + i);
          if (v11)
          {
            objc_msgSend_removeObject_(v4[52], v5, v11);
          }
        }

        result = MEMORY[0x1B271C6B0](v7, 0x10A0C404B0B3037);
        if (a3)
        {
          return sub_1AF145C50(v4 + 9, v6);
        }
      }
    }
  }

  return result;
}

void *sub_1AF140F64(void *a1)
{
  sub_1AF140B2C(a1);
  sub_1AF1412C8(a1, 0);
  v2 = a1[52];
  if (v2)
  {
    CFRelease(v2);
    a1[52] = 0;
  }

  v3 = a1[53];
  if (v3)
  {
    CFRelease(v3);
    a1[53] = 0;
  }

  v4 = a1[54];
  if (v4)
  {
    MEMORY[0x1B271C690](v4, 0x80C80B8603338);
    a1[54] = 0;
  }

  v5 = a1[63];
  if (v5)
  {
    CFRelease(v5);
    a1[63] = 0;
  }

  return sub_1AF144A38(a1);
}

uint64_t sub_1AF141000()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED734630 = result;
  return result;
}

uint64_t sub_1AF141028()
{
  if (qword_1ED734628 != -1)
  {
    sub_1AFDD4CC8();
  }

  v0 = sub_1AF0D160C(qword_1ED734630, 0x228uLL);
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 1065353216;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 1065353216;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 1065353216;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 1065353216;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0u;
  *(v0 + 264) = 1065353216;
  *(v0 + 560) = 0;
  *(v0 + 544) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 0u;
  *(v0 + 368) = 0u;
  *(v0 + 56) = 0xBFF0000000000000;
  *(v0 + 64) = 0;
  *(v0 + 384) = 0;
  *(v0 + 392) = 0;
  *(v0 + 400) = 0;
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0u;
  *(v0 + 480) = 0u;
  *(v0 + 496) = 0u;
  *(v0 + 512) = 0u;
  *(v0 + 536) = 0x101010101010101;
  *(v0 + 416) = objc_opt_new();
  *(v0 + 424) = objc_opt_new();
  return v0;
}

uint64_t sub_1AF141118(uint64_t result, unsigned int a2)
{
  v2 = 0;
  *(result + 40) = vadd_s16(*(result + 40), vand_s8(vmovn_s32(vshlq_u32(vdupq_n_s32(a2), xmmword_1AFE21310)), 0x1000100010001));
  *(result + 48) = 0;
  while (!*(result + 40 + v2))
  {
    v2 += 2;
    if (v2 == 8)
    {
      goto LABEL_6;
    }
  }

  *(result + 536) = 1;
  *(result + 48) = 1;
LABEL_6:
  *(result + 537) = 257;
  *(result + 539) = 1;
  *(result + 541) = 1;
  return result;
}

int16x4_t *sub_1AF14118C(int16x4_t *result, unsigned int a2)
{
  v2 = 0;
  result[5] = vadd_s16(result[5], vmovn_s32(vcltzq_s32(vshlq_u32(vdupq_n_s32(a2), xmmword_1AFE21320))));
  result[6].i8[0] = 0;
  while (!result[5].i16[v2])
  {
    if (++v2 == 4)
    {
      return result;
    }
  }

  result[67].i8[0] = 1;
  result[6].i8[0] = 1;
  return result;
}