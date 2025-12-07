BOOL sub_1AF16B6E4(void *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1D08(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return !a1[4] && !a1[5] && a1[6] == 0;
}

BOOL sub_1AF16B74C(void *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1D08(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  if (sub_1AF16B6E4(a1, a2))
  {
    return 0;
  }

  if (a1[4])
  {
    return 1;
  }

  v11 = a1[5];
  if (!v11)
  {
    return 1;
  }

  return !sub_1AF1C9420(v11);
}

uint64_t sub_1AF16B7C8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a1)
  {
    v3 = sub_1AF1B7558(a1, a2);
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = 0;
  if (a2)
  {
LABEL_3:
    v2 = sub_1AF1B7558(v2, a2);
  }

LABEL_4:
  if (!(v3 | v2))
  {
    v4 = 1;
    return v4 & 1;
  }

  if (v3)
  {
    v5 = *(v3 + 24);
    if (v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    if (v2)
    {
LABEL_8:
      v6 = *(v2 + 24);
      if (v5)
      {
        goto LABEL_9;
      }

LABEL_15:
      v7 = 0;
      if (v6)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }
  }

  v6 = 0;
  if (!v5)
  {
    goto LABEL_15;
  }

LABEL_9:
  v7 = sub_1AF170740(v5);
  if (v6)
  {
LABEL_10:
    v8 = sub_1AF170740(v6);
    goto LABEL_17;
  }

LABEL_16:
  v8 = 0;
LABEL_17:
  if (v7 != v8)
  {
LABEL_24:
    v4 = 0;
    return v4 & 1;
  }

  if (v3)
  {
    v9 = *(v3 + 32);
    if (v2)
    {
LABEL_20:
      v10 = *(v2 + 32);
      goto LABEL_23;
    }
  }

  else
  {
    v9 = 0;
    if (v2)
    {
      goto LABEL_20;
    }
  }

  v10 = 0;
LABEL_23:
  if (v9 != v10)
  {
    goto LABEL_24;
  }

  if (v3)
  {
    v12 = *(v3 + 40);
    if (v2)
    {
LABEL_28:
      v13 = *(v2 + 40);
      goto LABEL_31;
    }
  }

  else
  {
    v12 = 0;
    if (v2)
    {
      goto LABEL_28;
    }
  }

  v13 = 0;
LABEL_31:
  if (v12 == v13)
  {
    goto LABEL_38;
  }

  if (v12)
  {
    v14 = !sub_1AF1C9420(v12);
    if (v13)
    {
LABEL_34:
      v15 = !sub_1AF1C9420(v13);
      goto LABEL_37;
    }
  }

  else
  {
    v14 = 0;
    if (v13)
    {
      goto LABEL_34;
    }
  }

  v15 = 0;
LABEL_37:
  if (v14 || v15)
  {
    goto LABEL_24;
  }

LABEL_38:
  if (v3)
  {
    v16 = *(v3 + 48);
    if (v16)
    {
      LOBYTE(v3) = CFArrayGetCount(v16) > 0;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  v18 = v2 && (v17 = *(v2 + 48)) != 0 && CFArrayGetCount(v17) > 0;
  v4 = (v3 | v18) ^ 1;
  return v4 & 1;
}

uint64_t sub_1AF16B950(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1D08(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 24);
}

void sub_1AF16B998(void *a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1D08(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[3];
  if (v12 != cf)
  {
    if (v12)
    {
      CFRelease(v12);
      a1[3] = 0;
    }

    if (cf)
    {
      v13 = CFRetain(cf);
    }

    else
    {
      v13 = 0;
    }

    a1[3] = v13;
    v14 = a1[4];
    if (v14)
    {
      sub_1AF1B66E4(v14, cf);
    }

    v15 = a1[5];
    if (v15)
    {
      sub_1AF1CA4DC(v15);
    }

    sub_1AF1BE334(@"kCFXNotificationDeformerStackDidChange", a1, 0, 1u);
  }
}

uint64_t sub_1AF16BA50(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1D08(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 32);
}

void sub_1AF16BA98(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1D08(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 32);
  if (v12 != cf)
  {
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 32) = 0;
    }

    if (cf)
    {
      *(a1 + 32) = CFRetain(cf);
      sub_1AF1B66E4(cf, *(a1 + 24));
    }

    else
    {
      *(a1 + 32) = 0;
    }

    v13 = *(a1 + 40);
    if (v13)
    {
      sub_1AF1CA4DC(v13);
    }

    sub_1AF1BE334(@"kCFXNotificationDeformerStackDidChange", a1, 0, 1u);
  }
}

uint64_t sub_1AF16BB4C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1D08(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 40);
}

void sub_1AF16BB94(void *a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1D08(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[5];
  if (v12 != cf)
  {
    if (v12)
    {
      CFRelease(v12);
      a1[5] = 0;
    }

    if (cf)
    {
      a1[5] = CFRetain(cf);
      sub_1AF1CA4DC(cf);
    }

    else
    {
      a1[5] = 0;
    }

    sub_1AF1BE334(@"kCFXNotificationDeformerStackDidChange", a1, 0, 1u);
  }
}

uint64_t sub_1AF16BC38(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1D08(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 48);
}

void sub_1AF16BC80(void *a1, const __CFArray *cf)
{
  v2 = cf;
  if (cf && !CFArrayGetCount(cf))
  {
    v2 = 0;
  }

  v4 = a1[6];
  if (v4 != v2)
  {
    if (v4)
    {
      CFRelease(v4);
      a1[6] = 0;
    }

    if (v2)
    {
      v5 = CFRetain(v2);
    }

    else
    {
      v5 = 0;
    }

    a1[6] = v5;
    sub_1AF1BE334(@"kCFXNotificationDeformerStackDidChange", a1, 0, 1u);
    v7 = a1[2];

    sub_1AF1B78DC(v7, v6);
  }
}

void sub_1AF16BD24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF16BD94;
  v3[3] = &unk_1E7A7AE68;
  v3[4] = a2;
  sub_1AF28A5FC(v2, v3);
}

uint64_t sub_1AF16BD94(uint64_t a1, const char *a2, void *a3)
{
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF16C160;
  v5[3] = &unk_1E7A7AEB8;
  v5[4] = v3;
  v6 = 0;
  return objc_msgSend__enumerateDependencyNodesUsingBlock_(a3, a2, v5);
}

uint64_t sub_1AF16BE10(void *a1, _OWORD *a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = a1[6];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF16BEFC;
  v8[3] = &unk_1E7A7AE90;
  v8[4] = &v9;
  v8[5] = a2;
  sub_1AF28A5FC(v4, v8);
  if ((v10[3] & 1) == 0)
  {
    v5 = a1[5];
    if (!v5)
    {
      v6 = 0;
      goto LABEL_5;
    }

    sub_1AF1C9DE4(v5, a1[2], a2);
  }

  v6 = 1;
LABEL_5:
  _Block_object_dispose(&v9, 8);
  return v6;
}

void sub_1AF16BEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1AF16BEFC(void *result, const char *a2, void *a3)
{
  if ((*(*(result[4] + 8) + 24) & 1) == 0)
  {
    v3 = result;
    result = objc_msgSend__getDeformedMeshBoundingBox_(a3, a2, result[5]);
    *(*(v3[4] + 8) + 24) = result;
  }

  return result;
}

void sub_1AF16BF50(void *a1)
{
  sub_1AF1BE334(@"kCFXNotificationDeformerStackWillDie", a1, 0, 1u);
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
    a1[6] = 0;
  }
}

CFStringRef sub_1AF16BFD0(void *a1, uint64_t a2)
{
  if (sub_1AF16B6E4(a1, a2))
  {

    return sub_1AF375358(a1);
  }

  else
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    v5 = sub_1AF3753A8(a1);
    CFStringAppendFormat(Mutable, 0, @"<%s %p | geometry: %p\n", v5, a1, a1[3]);
    if (a1[4])
    {
      CFStringAppendFormat(Mutable, 0, @"  morpher: %p\n", a1[4]);
    }

    if (a1[5])
    {
      CFStringAppendFormat(Mutable, 0, @"  skinner: %p\n", a1[5]);
    }

    v6 = a1[6];
    if (v6)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_1AF16C110;
      v7[3] = &unk_1E7A79918;
      v7[4] = Mutable;
      sub_1AF28A5FC(v6, v7);
    }

    CFStringAppend(Mutable, @">");
    return Mutable;
  }
}

void sub_1AF16C110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  CFStringAppendFormat(v4, 0, @"  %@: %p\n", v6, a3);
}

uint64_t sub_1AF16C160(uint64_t a1, const char *a2, void *a3)
{
  v4 = objc_msgSend_nodeRef(a3, a2, a3);
  result = sub_1AF1B7558(v4, v5);
  if (result)
  {
    v7 = *(*(a1 + 32) + 16);

    return v7();
  }

  return result;
}

void sub_1AF16C1CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    free(v1);
  }
}

uint64_t sub_1AF16C1E4()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB658568 = result;
  return result;
}

void *sub_1AF16C20C(uint64_t a1, CFIndex a2)
{
  if (qword_1EB658570 != -1)
  {
    sub_1AFDD7AA4();
  }

  v5 = sub_1AF0D160C(qword_1EB658568, 0x18uLL);
  if (!v5)
  {
    v6 = sub_1AF0D5194(0, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7AB8(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v5[3] = 0;
  v5[2] = 0;
  v44 = v5 + 2;
  v14 = sub_1AF1A3D1C(a1, a2, 1);
  v15 = sub_1AF1A7674(v14);
  v16 = sub_1AF1A4CE8(a1, 1);
  v18 = sub_1AF1AE6EC(v16, v17);
  v19 = (v18 * v18);
  v20 = malloc_type_calloc(1uLL, v19, 0xF2156364uLL);
  if (v15 < 1)
  {
    v5[3] = 0;
  }

  else
  {
    v42 = v5 + 3;
    v43 = v5;
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = sub_1AF1A7C24(v14, v21, 0, 0);
      v24 = sub_1AF1A7C24(v14, v21, 1, 0);
      v25 = sub_1AF1A7C24(v14, v21, 2, 0);
      if (v23 >= v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = v23;
      }

      if (v23 <= v24)
      {
        v27 = v24;
      }

      else
      {
        v27 = v23;
      }

      v28 = &v20[v26 * v18];
      if ((v28[v27] & 1) == 0)
      {
        v28[v27] = 1;
        ++v22;
      }

      if (v24 >= v25)
      {
        v29 = v25;
      }

      else
      {
        v29 = v24;
      }

      if (v24 <= v25)
      {
        v30 = v25;
      }

      else
      {
        v30 = v24;
      }

      v31 = &v20[v29 * v18];
      if ((v31[v30] & 1) == 0)
      {
        v31[v30] = 1;
        ++v22;
      }

      if (v25 >= v23)
      {
        v32 = v23;
      }

      else
      {
        v32 = v25;
      }

      if (v25 <= v23)
      {
        v33 = v23;
      }

      else
      {
        v33 = v25;
      }

      v34 = &v20[v32 * v18];
      if ((v34[v33] & 1) == 0)
      {
        v34[v33] = 1;
        ++v22;
      }

      ++v21;
    }

    while (v15 != v21);
    v5 = v43;
    *v42 = v22;
    if (v22)
    {
      v35 = malloc_type_malloc(16 * v22, 0x1000040451B5BE8uLL);
      *v44 = v35;
      if (v19 < 1)
      {
        v38 = 0;
      }

      else
      {
        v37 = 0;
        v38 = 0;
        do
        {
          if (v20[v37] == 1)
          {
            v39 = &v35[16 * v38];
            *v39 = v37 / v18;
            v39[1] = v37 + -v18 * (v37 / v18);
            ++v38;
          }

          ++v37;
        }

        while (v19 != v37);
      }

      if (v38 != *v42)
      {
        v40 = sub_1AF0D5194(v35, v36);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDD7B30(v42, v38, v40);
        }
      }
    }
  }

  free(v20);
  v5[4] = v5[3];
  return v5;
}

uint64_t sub_1AF16C49C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7AB8(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 24);
}

uint64_t sub_1AF16C4E4(_BOOL8 a1, uint64_t a2)
{
  v3 = a1;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDD7AB8(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(v3 + 24) <= a2)
  {
    v11 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7BCC(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  return *(v3 + 16) + 16 * a2;
}

void sub_1AF16C56C(void *a1)
{
  v2 = a1[6];
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(a1[3] + 8 * i);
      if (v4)
      {
        CFRelease(v4);
        *(a1[3] + 8 * i) = 0;
        v2 = a1[6];
      }
    }
  }

  v5 = a1[5];
  if (v5 >= 1)
  {
    for (j = 0; j < v5; ++j)
    {
      v7 = *(a1[2] + 8 * j);
      if (v7)
      {
        CFRelease(v7);
        *(a1[2] + 8 * j) = 0;
        v5 = a1[5];
      }
    }
  }

  v8 = a1[3];
  if (v8)
  {
    free(v8);
  }

  v9 = a1[2];
  if (v9)
  {
    free(v9);
  }

  v10 = a1[4];
  if (v10)
  {

    free(v10);
  }
}

uint64_t sub_1AF16C640()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB658578 = result;
  return result;
}

void *sub_1AF16C668(_BOOL8 a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  *&v42[5] = *MEMORY[0x1E69E9840];
  if (!a1 && (v6 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD7C44(v6, a2, v7, v8, v9, v10, v11, v12);
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
    sub_1AFDD7CBC(v13, a2, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = sub_1AF1AE6EC(a2, a2);
  if (a3)
  {
    v21 = *(a3 + 24);
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_1AF1A7674(v5);
  if (!v20)
  {
    return 0;
  }

  v23 = v22;
  if (qword_1EB658580 != -1)
  {
    sub_1AFDD7D34();
  }

  v24 = sub_1AF0D160C(qword_1EB658578, 0x30uLL);
  v24[2] = malloc_type_calloc(8uLL, v20, 0x2004093837F09uLL);
  v24[5] = v20;
  v24[7] = v23;
  if (v23 >= 1)
  {
    for (i = 0; i != v23; ++i)
    {
      for (j = 0; j != 3; ++j)
      {
        v27 = sub_1AF1A7C24(v5, i, j, 0);
        v29 = *(v24[2] + 8 * v27);
        if (!v29)
        {
          *(v24[2] + 8 * v27) = sub_1AF1D2E60(0);
          v29 = *(v24[2] + 8 * v27);
        }

        sub_1AF1D3E90(v29, i, v28);
      }
    }
  }

  if (v21)
  {
    v24[3] = malloc_type_calloc(8uLL, v21, 0x2004093837F09uLL);
    v24[6] = v21;
    v24[4] = malloc_type_calloc(0x18uLL, v23, 0xD6F6AC48uLL);
    v30 = malloc_type_calloc(1uLL, v23, 0x100004077774924uLL);
    if (v21 >= 1)
    {
      for (k = 0; k != v21; ++k)
      {
        v32 = sub_1AF16C4E4(a3, k);
        v33 = sub_1AF1D3EA0(*(v24[2] + 8 * *v32), *(v24[2] + 8 * v32[1]));
        *(v24[3] + 8 * k) = v33;
        v34 = sub_1AF1D2EB4(v33);
        if (v34 != -1)
        {
          v36 = v34;
          do
          {
            if (v30[v36] >= 3u)
            {
              v37 = sub_1AF0D5194(v34, v35);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
              {
                sub_1AFDD7D5C(v41, v42, v37);
              }
            }

            v38 = v30[v36];
            v39 = v24[4] + 24 * v36;
            v30[v36] = v38 + 1;
            *(v39 + 8 * v38) = k;
            v34 = sub_1AF1D2F28(v33, v36);
            v36 = v34;
          }

          while (v34 != -1);
        }
      }
    }

    free(v30);
  }

  return v24;
}

uint64_t sub_1AF16C948(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7DAC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return *(a1 + 32) + 24 * a2;
}

id sub_1AF16C9A4(uint64_t a1, uint64_t a2)
{
  sub_1AF16CA10(a1, a2);
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 40) = 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 24) = 0;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 32) = 0;
  }

  return objc_storeWeak((a1 + 16), 0);
}

const __CFDictionary *sub_1AF16CA10(void *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF1C3F64(a1, a2);
  v12 = v10;
  if (v10)
  {
    v13 = sub_1AF1CF830(v10, v11);
    if (v13)
    {
      sub_1AF1183E0(v13, a1);
    }
  }

  result = sub_1AF16D670(a1, @"kAnimationsKey", 0);
  if (result)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1AF16D99C;
    v15[3] = &unk_1E7A79EA0;
    v15[4] = v12;
    return sub_1AF375240(result, v15);
  }

  return result;
}

void sub_1AF16CAEC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDD7E9C(v2);
  }
}

void sub_1AF16CB28(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDD7EE0(v2);
  }
}

uint64_t sub_1AF16CB64(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73ACE8 != -1)
  {
    sub_1AFDD7F24();
  }

  return qword_1ED73ACE0;
}

double sub_1AF16CB9C()
{
  qword_1ED73ACE0 = _CFRuntimeRegisterClass();
  result = *&xmmword_1F24E7A68;
  unk_1ED72F3A8 = xmmword_1F24E7A68;
  unk_1ED72F3B8 = *off_1F24E7A78;
  qword_1ED72F3C8 = qword_1F24E7A88;
  return result;
}

uint64_t sub_1AF16CBEC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 32);
}

CFStringRef sub_1AF16CC34(uint64_t a1, CFStringRef theString)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, theString);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 32);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 32) = 0;
    }

    if (theString)
    {
      result = CFStringCreateCopy(*MEMORY[0x1E695E480], theString);
    }

    else
    {
      result = 0;
    }

    *(a1 + 32) = result;
  }

  return result;
}

uint64_t sub_1AF16CCC0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 24);
}

id sub_1AF16CD08(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v4, a2, a3, v5, v6, v7, v8, v9);
    }
  }

  result = *(a1 + 24);
  if (!result)
  {
    v11 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, a3);
    result = objc_msgSend_UUIDString(v11, v12, v13);
    *(a1 + 24) = result;
  }

  return result;
}

CFTypeRef sub_1AF16CD6C(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 24);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 24) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 24) = result;
  }

  return result;
}

id *sub_1AF16CDEC(id *result)
{
  if (result)
  {
    return objc_loadWeak(result + 2);
  }

  return result;
}

id sub_1AF16CDFC(uint64_t a1, id obj)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, obj);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return objc_storeWeak((a1 + 16), obj);
}

uint64_t sub_1AF16CE58(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 40);
}

const __CFDictionary *sub_1AF16CEA0(_BOOL8 a1, void *key)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, key), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD7E24(v4, key, v5, v6, v7, v8, v9, v10);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v11 = sub_1AF0D5194(a1, key);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD7F38(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  result = *(v3 + 40);
  if (result)
  {
    return CFDictionaryGetValue(result, key);
  }

  return result;
}

void sub_1AF16CF28(_BOOL8 a1, void *key, const __CFDictionary *a3, int a4)
{
  v7 = a1;
  if (!a1 && (v8 = sub_1AF0D5194(0, key), a1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD7E24(v8, key, v9, v10, v11, v12, v13, v14);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v15 = sub_1AF0D5194(a1, key);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD7F38(v15, v16, v17, v18, v19, v20, v21, v22);
  }

LABEL_6:
  if (sub_1AF16CEA0(v7, key) != a3)
  {
    Mutable = v7[5];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v7[5] = Mutable;
    }

    if (a3)
    {
      CFDictionarySetValue(Mutable, key, a3);
    }

    else
    {
      CFDictionaryRemoveValue(Mutable, key);
      if (!CFDictionaryGetCount(v7[5]))
      {
        CFRelease(v7[5]);
        v7[5] = 0;
      }
    }

    if (a4)
    {
      sub_1AF1BE334(@"kCFXNotificationEntityAttributeDidChange", v7, key, 1u);
    }
  }
}

const __CFDictionary *sub_1AF16D04C(_BOOL8 a1, void *key)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, key), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD7E24(v4, key, v5, v6, v7, v8, v9, v10);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v11 = sub_1AF0D5194(a1, key);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD7F38(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  result = *(v3 + 40);
  if (result)
  {
    return (CFDictionaryContainsKey(result, key) != 0);
  }

  return result;
}

void sub_1AF16D0DC(uint64_t a1, CFDictionaryRef theDict)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, theDict);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 40) = 0;
  }

  if (theDict)
  {
    if (CFDictionaryGetCount(theDict))
    {
      *(a1 + 40) = CFDictionaryCreateMutableCopy(0, 0, theDict);
    }
  }
}

void sub_1AF16D160(_BOOL8 a1, uint64_t a2)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD7FB0(v4, a2, v5, v6, v7, v8, v9, v10);
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
    sub_1AFDD8028(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  v18 = sub_1AF16CBEC(v3, a2);
  sub_1AF16CC34(a2, v18);
  v20 = sub_1AF16CE58(v3, v19);
  sub_1AF16D0DC(a2, v20);
  sub_1AF16CF28(a2, @"_kvc", 0, 1);
  sub_1AF16CF28(a2, @"kAnimationsKey", 0, 1);
}

const void *sub_1AF16D234(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    if (qword_1ED73AE80 != -1)
    {
      sub_1AFDD80A0();
    }

    return (CFDictionaryGetValue(qword_1ED73AE88, v1) != 0);
  }

  return result;
}

CFDictionaryRef sub_1AF16D290(_BOOL8 a1, uint64_t a2)
{
  v117 = *MEMORY[0x1E69E9840];
  if (qword_1ED73AE88)
  {
    v2 = sub_1AF0D5194(a1, a2);
    a1 = os_log_type_enabled(v2, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDD80B4(v2, a2, v3, v4, v5, v6, v7, v8);
    }
  }

  keys[0] = sub_1AF1B2A04(a1, a2);
  keys[1] = sub_1AF1A2D3C(keys[0], v9);
  v68 = sub_1AF11AF8C(keys[1], v10);
  v69 = sub_1AF1157BC(v68, v11);
  v70 = sub_1AF1142BC(v69, v12);
  v71 = sub_1AF11D778(v70, v13);
  v72 = sub_1AF1A0AD8(v71, v14);
  v73 = sub_1AF195EF4(v72, v15);
  v74 = sub_1AF1A67B8(v73, v16);
  v75 = sub_1AF1B846C(v74, v17);
  v76 = sub_1AF15BEA8(v75, v18);
  v77 = sub_1AF19AF4C(v76, v19);
  v78 = sub_1AF1C6EF0(v77, v20);
  v79 = sub_1AF1C8B10(v78, v21);
  v80 = sub_1AF16FA20(v79, v22);
  v81 = sub_1AF1ADB18(v80, v23);
  v82 = sub_1AF1B42EC(v81, v24);
  v83 = sub_1AF1B630C(v82, v25);
  v84 = sub_1AF1CF31C(v83, v26);
  v85 = sub_1AF1BE9BC(v84, v27);
  v86 = sub_1AF1C611C(v85, v28);
  v87 = sub_1AF1C621C(v86, v29);
  v88 = sub_1AF15B134(v87, v30);
  v89 = sub_1AF16EA90(v88, v31);
  v90 = sub_1AF1D5200(v89, v32);
  v91 = sub_1AF1A0878(v90, v33);
  v92 = sub_1AF14F01C(v91, v34);
  v93 = sub_1AF14EF74(v92, v35);
  v94 = sub_1AF14F0C4(v93, v36);
  v95 = sub_1AF14EFE4(v94, v37);
  v96 = sub_1AF15146C(v95, v38);
  v97 = sub_1AF14EFAC(v96, v39);
  v98 = sub_1AF14F054(v97, v40);
  v99 = sub_1AF155A40(v98, v41);
  v100 = sub_1AF14F08C(v99, v42);
  v101 = sub_1AF1571B4(v100, v43);
  v102 = sub_1AF16A528(v101, v44);
  v103 = sub_1AF135A30(v102, v45);
  v104 = sub_1AF350138(v103, v46);
  v105 = sub_1AF1608E8(v104, v47);
  v106 = sub_1AF160EF4(v105, v48);
  v107 = sub_1AF1610AC(v106, v49);
  v108 = sub_1AF161324(v107, v50);
  v109 = sub_1AF161760(v108, v51);
  v110 = sub_1AF162244(v109, v52);
  v111 = sub_1AF162C38(v110, v53);
  v112 = sub_1AF162D7C(v111, v54);
  v113 = sub_1AF162694(v112, v55);
  v114 = sub_1AF162F04(v113, v56);
  v115 = sub_1AF163130(v114, v57);
  v59 = sub_1AF163954(v115, v58);
  v60 = 0;
  v116 = v59;
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  v61 = xmmword_1AFE21110;
  v62 = vdupq_n_s64(2uLL);
  v63 = vdupq_n_s64(0x33uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v63, v61)).u8[0])
    {
      *&v65[v60] = 1;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x33uLL), *&v61)).i32[1])
    {
      *(&v65[v60] + 1) = 1;
    }

    v61 = vaddq_s64(v61, v62);
    ++v60;
  }

  while (v60 != 26);
  result = CFDictionaryCreate(0, keys, v65, 51, 0, 0);
  qword_1ED73AE88 = result;
  return result;
}

BOOL sub_1AF16D5A8(CFTypeRef cf, uint64_t a2)
{
  if (!cf)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = CFGetTypeID(cf);
  v13 = sub_1AF1B3A08(v11, v12);
  return v13 || v11 == sub_1AF1A0AD8(v13, v14);
}

const __CFDictionary *sub_1AF16D614(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return sub_1AF16D670(a1, @"kAnimationsKey", 0);
}

const __CFDictionary *sub_1AF16D670(uint64_t a1, void *key, int a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, key);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    Value = CFDictionaryGetValue(v14, key);
    if (Value)
    {
      return Value;
    }
  }

  else
  {
    Value = 0;
  }

  if (a3)
  {
    Value = sub_1AF375248();
    sub_1AF16CF28(a1, key, Value, 1);
    v16 = CFGetRetainCount(Value);
    if (v16 <= 1)
    {
      v18 = sub_1AF0D5194(v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD812C(v18, v19, v20, v21, v22, v23, v24, v25);
      }
    }

    CFRelease(Value);
  }

  return Value;
}

void sub_1AF16D744(_BOOL8 a1, uint64_t *a2, const void *a3, const void *a4, double a5)
{
  v9 = a1;
  if (!a1 && (v10 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD7E24(v10, a2, v11, v12, v13, v14, v15, v16);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v17 = sub_1AF0D5194(a1, a2);
  a1 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT);
  if (a1)
  {
    sub_1AFDCFFDC(v17, a2, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  if (!a3)
  {
    v24 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0D34(v24, v25, v26, v27, v28, v29, v30, v31);
    }
  }

  sub_1AF16D870(v9, a3, 1);
  v32 = sub_1AF16D670(v9, @"kAnimationsKey", 1);
  sub_1AF375230(v32, a3, a2);
  v34 = sub_1AF1C3FAC(v9, v33);
  if (v34)
  {
    v36 = v34;
    v37 = sub_1AF1CF830(v34, v35);
    sub_1AF1C3CB4(a2, v36);
    sub_1AF117C30(v37, a2, v9, a3, a4, a5);
  }
}

void sub_1AF16D870(_BOOL8 a1, const void *a2, int a3)
{
  v5 = a1;
  if (!a1 && (v6 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD7E24(v6, a2, v7, v8, v9, v10, v11, v12);
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
    sub_1AFDD0D34(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  v21 = sub_1AF16D670(v5, @"kAnimationsKey", 0);
  if (v21)
  {
    v22 = v21;
    CFRetain(v21);
    v24 = sub_1AF1C3FAC(v5, v23);
    v26 = v24;
    if (v24)
    {
      v27 = sub_1AF1CF830(v24, v25);
      if (a3)
      {
        sub_1AF118354(v27, v5, a2);
      }

      else
      {
        sub_1AF116774(v27, v5);
      }
    }

    v28 = sub_1AF375228(v22, a2);
    if (v28)
    {
      sub_1AF1C3A90(v28, v26);
      sub_1AF375238(v22, a2);
      if ((a3 & 1) == 0 && ![(__CFDictionary *)v22 count])
      {
        sub_1AF16CF28(v5, @"kAnimationsKey", 0, 1);
      }
    }

    CFRelease(v22);
  }
}

void sub_1AF16D9A8(void *a1, uint64_t a2, double a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = sub_1AF1C3F64(a1, a2);
  v15 = v13;
  if (v13)
  {
    v16 = sub_1AF1CF830(v13, v14);
    if (v16)
    {
      sub_1AF1187D4(v16, a1, a2, a3);
    }
  }

  v17 = sub_1AF16D670(a1, @"kAnimationsKey", 0);
  if (v17)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1AF16DABC;
    v18[3] = &unk_1E7A79EA0;
    v18[4] = v15;
    sub_1AF375240(v17, v18);
    sub_1AF16CF28(a1, @"kAnimationsKey", 0, 1);
  }
}

void sub_1AF16DAC8(_BOOL8 a1, const void *a2, const void *a3, double a4)
{
  v7 = a1;
  if (!a1 && (v8 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD7E24(v8, a2, v9, v10, v11, v12, v13, v14);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v15 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD0D34(v15, v16, v17, v18, v19, v20, v21, v22);
  }

LABEL_6:
  v23 = sub_1AF16D670(v7, @"kAnimationsKey", 0);
  if (v23)
  {
    v24 = v23;
    CFRetain(v23);
    v26 = sub_1AF1C3FAC(v7, v25);
    v28 = v26;
    if (v26)
    {
      v29 = sub_1AF1CF830(v26, v27);
      sub_1AF1189A8(v29, v7, a2, a3, a4);
    }

    v30 = sub_1AF375228(v24, a2);
    if (v30)
    {
      sub_1AF1C3A90(v30, v28);
      sub_1AF375238(v24, a2);
      if (![(__CFDictionary *)v24 count])
      {
        sub_1AF16CF28(v7, @"kAnimationsKey", 0, 1);
      }
    }

    CFRelease(v24);
  }
}

uint64_t sub_1AF16DBF8(_BOOL8 a1, void *a2)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD7E24(v4, a2, v5, v6, v7, v8, v9, v10);
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
    sub_1AFDD81A4(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  v19 = sub_1AF16DCF4(v3, @"kBindingsKey", 1);
  CFArrayAppendValue(v19, a2);
  result = sub_1AF1C3FAC(v3, v20);
  if (result)
  {
    v23 = sub_1AF1CF830(result, v22);
    v26 = objc_msgSend_keyPathDst(a2, v24, v25);
    v29 = objc_msgSend_sourceObject(a2, v27, v28);
    v32 = objc_msgSend_keyPathSrc(a2, v30, v31);
    v35 = objc_msgSend_options(a2, v33, v34);
    return sub_1AF119208(v23, v3, v26, v29, v32, v35);
  }

  return result;
}

const __CFDictionary *sub_1AF16DCF4(uint64_t a1, void *key, int a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, key);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    Value = CFDictionaryGetValue(v14, key);
    if (Value)
    {
      return Value;
    }
  }

  else
  {
    Value = 0;
  }

  if (a3)
  {
    Value = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    sub_1AF16CF28(a1, key, Value, 1);
    CFRelease(Value);
  }

  return Value;
}

void sub_1AF16DDA8(void *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF1C3FAC(a1, a2);
  if (v10)
  {
    v12 = sub_1AF1CF830(v10, v11);
    if (v12)
    {
      sub_1AF11960C(v12, a1);
    }
  }

  sub_1AF16CF28(a1, @"kBindingsKey", 0, 1);
}

void sub_1AF16DE24(_BOOL8 a1, const __CFString *a2)
{
  v3 = a1;
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 && (v4 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD7E24(v4, a2, v5, v6, v7, v8, v9, v10);
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
    sub_1AFDD821C(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  v19 = sub_1AF16DCF4(v3, @"kBindingsKey", 0);
  if (v19)
  {
    v20 = v19;
    v21 = v19;
    v23 = sub_1AF1C3FAC(v3, v22);
    if (v23)
    {
      v26 = sub_1AF1CF830(v23, v24);
      sub_1AF1194EC(v26, v3, a2);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v27 = objc_msgSend_copy(v20, v24, v25, 0);
    v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v38, v42, 16);
    if (v29)
    {
      v32 = v29;
      v33 = *v39;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v39 != v33)
          {
            objc_enumerationMutation(v27);
          }

          v35 = *(*(&v38 + 1) + 8 * i);
          v36 = objc_msgSend_keyPathDst(v35, v30, v31);
          if (objc_msgSend_isEqualToString_(v36, v37, a2))
          {
            objc_msgSend_removeObject_(v20, v30, v35);
          }
        }

        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v30, &v38, v42, 16);
      }

      while (v32);
    }

    if (!objc_msgSend_count(v20, v30, v31))
    {
      sub_1AF16CF28(v3, @"kBindingsKey", 0, 1);
    }
  }
}

void sub_1AF16DFF8(void *a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  sub_1AF16CF28(a1, @"kShaderModifiers", a2, 1);
  v12 = CFGetTypeID(a1);
  v14 = sub_1AF1B3A08(v12, v13);
  if (v14)
  {
    sub_1AF1B38E8(a1, v15);
  }

  else if (v12 == sub_1AF1A0AD8(v14, v15))
  {
    sub_1AF1A1A4C(a1, v16);
  }
}

const __CFDictionary *sub_1AF16E098(_BOOL8 a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return sub_1AF16CEA0(a1, @"kShaderModifiers");
}

const __CFArray *sub_1AF16E0F0(_BOOL8 a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  result = sub_1AF16E098(a1, a2);
  if (result)
  {
    v12 = result;
    Count = CFArrayGetCount(result);
    v14 = Count - 1;
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v15 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v12, v15);
        v18 = sub_1AF148D18(ValueAtIndex, v17) == v2;
        result = v18;
        v18 = v18 || v14 == v15++;
      }

      while (!v18);
    }
  }

  return result;
}

void sub_1AF16E18C(_BOOL8 a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  sub_1AF16CF28(a1, @"kShadableMinimumMTLLanguageVersionKey", a2, 1);
}

const __CFDictionary *sub_1AF16E1F8(_BOOL8 a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return sub_1AF16CEA0(a1, @"kShadableMinimumMTLLanguageVersionKey");
}

const __CFDictionary *sub_1AF16E250(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  Value = *(a1 + 40);
  if (Value)
  {
    Value = CFDictionaryGetValue(Value, @"_kvc");
    v5 = Value;
    if (Value)
    {
      return v5;
    }
  }

  else
  {
    v5 = 0;
  }

  if (v2)
  {
    v5 = sub_1AF135AAC(Value, a2);
    sub_1AF16CF28(a1, @"_kvc", v5, 1);
    CFRelease(v5);
  }

  return v5;
}

void sub_1AF16E2D4(_BOOL8 a1, void *a2, __int16 *a3)
{
  v5 = a1;
  if (!a1 && (v6 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD7E24(v6, a2, v7, v8, v9, v10, v11, v12);
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
    sub_1AFDD8294(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  v21 = sub_1AF16E250(v5, 1);
  sub_1AF135E2C(v21, a2, a3);
}

void sub_1AF16E368(_BOOL8 a1, const void *a2)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD7E24(v4, a2, v5, v6, v7, v8, v9, v10);
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
    sub_1AFDD8294(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  v19 = sub_1AF16E250(v3, 1);
  sub_1AF135D68(v19, a2);
}

const __CFDictionary *sub_1AF16E3F4(_BOOL8 a1, const void *a2)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD7E24(v4, a2, v5, v6, v7, v8, v9, v10);
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
    sub_1AFDD8294(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  result = *(v3 + 40);
  if (result)
  {
    result = CFDictionaryGetValue(result, @"_kvc");
    if (result)
    {
      return sub_1AF135D60(result, a2);
    }
  }

  return result;
}

const __CFDictionary *sub_1AF16E48C(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    result = CFDictionaryGetValue(result, @"_kvc");
    if (result)
    {
      return sub_1AF136048(result, a2);
    }
  }

  return result;
}

const __CFDictionary *sub_1AF16E4FC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD7E24(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    result = CFDictionaryGetValue(result, @"_kvc");
    if (result)
    {
      return sub_1AF1360C8(result, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1AF16E56C(uint64_t a1, const __CFArray *a2, int a3, uint64_t a4)
{
  v4 = *(a1 + 40);
  if (!v4)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v4, @"_kvc");
  if (!Value)
  {
    return 0;
  }

  return sub_1AF135B18(Value, a2, a3, a4);
}

uint64_t sub_1AF16E5E4(void *a1)
{
  v2 = a1[5];
  if (v2 && (Value = CFDictionaryGetValue(v2, @"_kvc")) != 0)
  {
    v4 = sub_1AF136040(Value);
  }

  else
  {
    v4 = 0;
  }

  v5 = CFGetTypeID(a1);
  if (v5 == sub_1AF1A0AD8(v5, v6))
  {
    return sub_1AF1A1B38(a1, v7) + v4;
  }

  return v4;
}

const __CFDictionary *sub_1AF16E66C(uint64_t a1, uint64_t a2)
{
  result = sub_1AF16D670(a1, @"kAnimationsKey", 0);
  if (result)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1AF16E91C;
    v4[3] = &unk_1E7A79EA0;
    v4[4] = a2;
    return sub_1AF375240(result, v4);
  }

  return result;
}

const __CFDictionary *sub_1AF16E6FC(_BOOL8 a1, uint64_t a2)
{
  v3 = a1;
  v45 = *MEMORY[0x1E69E9840];
  if (!a1 && (v4 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD7E24(v4, a2, v5, v6, v7, v8, v9, v10);
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
    sub_1AFDD830C(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  v18 = sub_1AF1CF830(a2, a2);
  v19 = sub_1AF16D670(v3, @"kAnimationsKey", 0);
  if (v19)
  {
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = sub_1AF16E928;
    v43[3] = &unk_1E7A7AF18;
    v43[4] = a2;
    v43[5] = v18;
    v43[6] = v3;
    sub_1AF375240(v19, v43);
  }

  result = sub_1AF16DCF4(v3, @"kBindingsKey", 0);
  if (result)
  {
    v22 = result;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    result = objc_msgSend_countByEnumeratingWithState_objects_count_(result, v21, &v39, v44, 16);
    if (result)
    {
      v25 = result;
      v26 = *v40;
      do
      {
        v27 = 0;
        do
        {
          if (*v40 != v26)
          {
            objc_enumerationMutation(v22);
          }

          v28 = *(*(&v39 + 1) + 8 * v27);
          v29 = objc_msgSend_keyPathDst(v28, v23, v24);
          v32 = objc_msgSend_sourceObject(v28, v30, v31);
          v35 = objc_msgSend_keyPathSrc(v28, v33, v34);
          v38 = objc_msgSend_options(v28, v36, v37);
          sub_1AF119208(v18, v3, v29, v32, v35, v38);
          v27 = (v27 + 1);
        }

        while (v25 != v27);
        result = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v39, v44, 16);
        v25 = result;
      }

      while (result);
    }
  }

  return result;
}

void sub_1AF16E928(uint64_t *a1, const void *a2, uint64_t *cf)
{
  sub_1AF1C3CB4(cf, a1[4]);
  v6 = a1[5];
  v7 = a1[6];

  sub_1AF117C30(v6, cf, v7, a2, 0, 0.0);
}

uint64_t sub_1AF16E988(uint64_t a1, float32x4_t *a2, int32x4_t *a3, int32x2_t a4)
{
  v7 = sub_1AF1C3FAC(a1, a2);
  if (v7)
  {
    v10 = sub_1AF1CFC48(v7, v8);
  }

  else
  {
    v10 = xmmword_1AFE20160;
  }

  *v9.i8 = vbsl_s8(vceqz_f32(*(a1 + 228)), vdup_lane_s32(a4, 0), *(a1 + 228));
  if (v10.n128_f32[1] == 0.0)
  {
    if (v10.n128_f32[2] == 0.0)
    {
      v14.i32[0] = 0;
      v14.i32[3] = 0;
      v14.f32[1] = -*v9.i32;
      v14.f32[2] = -*&v9.i32[1];
      *a2 = v14;
      v10.n128_u32[0] = 925353388;
      *(v10.n128_u64 + 4) = v9.i64[0];
      v9 = v10;
    }

    else
    {
      *&v13 = -*v9.i32;
      *(&v13 + 1) = -*&v9.i32[1];
      *a2 = v13;
      v9.i32[2] = 925353388;
    }
  }

  else
  {
    v11 = vnegq_f32(vzip1q_s32(v9, v10));
    v11.i32[1] = 0;
    *a2 = v11;
    v12 = vdupq_n_s32(0x3727C5ACu);
    v9 = vtrn2q_s32(vzip1q_s32(v12, v9), v12);
  }

  *a3 = v9;
  return 1;
}

uint64_t sub_1AF16EA90(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73ACD8 != -1)
  {
    sub_1AFDD8384();
  }

  return qword_1ED73ACD0;
}

double sub_1AF16EAC8()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73ACD0 = v0;
  v2 = sub_1AF1B2A04(v0, v1);
  sub_1AF1DCFAC(v0, v2);
  sub_1AF1DD02C(@"reflectionFalloffEnd", 216, 1, 0);
  sub_1AF1DD02C(@"reflectionFalloffStart", 212, 1, 0);
  sub_1AF1DD02C(@"reflectivity", 208, 1, 0);
  sub_1AF1DD02C(@"width", 228, 1, 0);
  sub_1AF1DD02C(@"length", 232, 1, 0);
  sub_1AF1DD018();
  unk_1ED72F2C0 = xmmword_1F24E7AB0;
  unk_1ED72F2D0 = xmmword_1F24E7AC0;
  qword_1ED72F2B8 = sub_1AF16F0F8;
  unk_1ED72F2E0 = *algn_1F24E7AD0;
  qword_1ED72F2F0 = qword_1F24E7AE0;
  unk_1ED72F2F8 = sub_1AF16F940;
  result = *&xmmword_1F24E7AE8;
  xmmword_1ED72F2A8 = xmmword_1F24E7AE8;
  return result;
}

float sub_1AF16EC88(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8398(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 208);
}

void sub_1AF16ECD0(void *a1, uint64_t a2)
{
  sub_1AF1B38E8(a1, a2);
  v4 = sub_1AF1C3FAC(a1, v3);

  sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v4, 0, 1u);
}

void sub_1AF16ED28(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8398(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(result + 208);
  if (a3 != 0.0 && v12 == 0.0)
  {
    *(result + 208) = a3;
LABEL_9:
    sub_1AF16ECD0(result, a2);
    return;
  }

  *(result + 208) = a3;
  if (a3 == 0.0 && v12 != 0.0)
  {
    goto LABEL_9;
  }
}

float sub_1AF16EDB0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8398(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 212);
}

void sub_1AF16EDF8(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8398(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(result + 212);
  if (a3 != 0.0 && v12 == 0.0)
  {
    *(result + 212) = a3;
LABEL_9:
    sub_1AF16ECD0(result, a2);
    return;
  }

  *(result + 212) = a3;
  if (a3 == 0.0 && v12 != 0.0)
  {
    goto LABEL_9;
  }
}

float sub_1AF16EE80(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8398(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 216);
}

void sub_1AF16EEC8(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8398(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(result + 216);
  if (a3 != 0.0 && v12 == 0.0)
  {
    *(result + 216) = a3;
LABEL_9:
    sub_1AF16ECD0(result, a2);
    return;
  }

  *(result + 216) = a3;
  if (a3 == 0.0 && v12 != 0.0)
  {
    goto LABEL_9;
  }
}

float sub_1AF16EF50(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8398(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 220);
}

void sub_1AF16EF98(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8398(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a3 != 0.0 && *(result + 220) != a3)
  {
    *(result + 220) = a3;
    sub_1AF16ECD0(result, a2);
  }
}

uint64_t sub_1AF16F008(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8398(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 224);
}

void sub_1AF16F050(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8398(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(result + 224) != v2)
  {
    *(result + 224) = v2;
    sub_1AF16ECD0(result, a2);
  }
}

__CFArray *sub_1AF16F0F8(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v41 = 0;
  valuePtr = 1;
  v40 = a1 + 208;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v5, @"name", @"reflectivity");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v41 = 0;
  valuePtr = 1;
  v40 = a1 + 212;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v9, @"name", @"reflectionFalloffStart");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v41 = 0;
  valuePtr = 1;
  v40 = a1 + 216;
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v16 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v13, @"name", @"reflectionFalloffEnd");
  CFDictionarySetValue(v13, @"type", v14);
  CFDictionarySetValue(v13, @"address", v16);
  CFDictionarySetValue(v13, @"semantic", v15);
  CFArrayAppendValue(Mutable, v13);
  CFRelease(v15);
  CFRelease(v13);
  CFRelease(v16);
  CFRelease(v14);
  v17 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v41 = 0;
  valuePtr = 1;
  v40 = a1 + 220;
  v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v20 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v17, @"name", @"resolutionScaleFactor");
  CFDictionarySetValue(v17, @"type", v18);
  CFDictionarySetValue(v17, @"address", v20);
  CFDictionarySetValue(v17, @"semantic", v19);
  CFArrayAppendValue(Mutable, v17);
  CFRelease(v19);
  CFRelease(v17);
  CFRelease(v20);
  CFRelease(v18);
  v21 = MEMORY[0x1E695E9E8];
  v22 = CFDictionaryCreateMutable(0, 4, v3, MEMORY[0x1E695E9E8]);
  v41 = 0;
  valuePtr = 1;
  v40 = a1 + 224;
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v25 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v22, @"name", @"sampleCount");
  CFDictionarySetValue(v22, @"type", v23);
  CFDictionarySetValue(v22, @"address", v25);
  CFDictionarySetValue(v22, @"semantic", v24);
  CFArrayAppendValue(Mutable, v22);
  CFRelease(v24);
  CFRelease(v22);
  CFRelease(v25);
  CFRelease(v23);
  v26 = CFDictionaryCreateMutable(0, 4, v3, v21);
  v41 = 0;
  valuePtr = 45;
  v40 = a1 + 240;
  v27 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v28 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v29 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v26, @"name", @"reflectionBitMask");
  CFDictionarySetValue(v26, @"type", v27);
  CFDictionarySetValue(v26, @"address", v29);
  CFDictionarySetValue(v26, @"semantic", v28);
  CFArrayAppendValue(Mutable, v26);
  CFRelease(v28);
  CFRelease(v26);
  CFRelease(v29);
  CFRelease(v27);
  v30 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v41 = 0;
  valuePtr = 1;
  v40 = a1 + 228;
  v31 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v32 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v33 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v30, @"name", @"width");
  CFDictionarySetValue(v30, @"type", v31);
  CFDictionarySetValue(v30, @"address", v33);
  CFDictionarySetValue(v30, @"semantic", v32);
  CFArrayAppendValue(Mutable, v30);
  CFRelease(v32);
  CFRelease(v30);
  CFRelease(v33);
  CFRelease(v31);
  v34 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v41 = 0;
  valuePtr = 1;
  v40 = a1 + 232;
  v35 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v36 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v37 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v34, @"name", @"length");
  CFDictionarySetValue(v34, @"type", v35);
  CFDictionarySetValue(v34, @"address", v37);
  CFDictionarySetValue(v34, @"semantic", v36);
  CFArrayAppendValue(Mutable, v34);
  CFRelease(v36);
  CFRelease(v34);
  CFRelease(v37);
  CFRelease(v35);
  v38 = sub_1AF1B2210(a1);
  v43.length = CFArrayGetCount(v38);
  v43.location = 0;
  CFArrayAppendArray(Mutable, v38, v43);
  CFRelease(v38);
  return Mutable;
}

uint64_t sub_1AF16F8C0(uint64_t a1, int32x2_t a2, uint64_t a3, float32x4_t *a4, int32x4_t *a5)
{
  a2.i32[0] = *"(knN";
  sub_1AF16E988(a1, a4, a5, a2);
  return 1;
}

const void *sub_1AF16F8EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AF1B2C1C(a1, a2);
  if (result)
  {

    return sub_1AF1C39FC(result, a2, a3);
  }

  return result;
}

uint64_t sub_1AF16F940(uint64_t a1, const void *a2)
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

void sub_1AF16F978(uint64_t a1, void *__dst, float *__src, size_t __n)
{
  if ((a1 + 208) == __dst)
  {
    sub_1AF16ED28(a1, __dst, *__src);
  }

  else if ((a1 + 216) == __dst)
  {
    sub_1AF16EEC8(a1, __dst, *__src);
  }

  else
  {
    memcpy(__dst, __src, __n);
  }
}

id sub_1AF16F9B4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) || (*(a1 + 88) & 4) == 0)
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 72) = 0;
    }
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 64) = 0;
  }

  return sub_1AF16C9A4(a1, a2);
}

uint64_t sub_1AF16FA20(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73ACB8 != -1)
  {
    sub_1AFDD8410();
  }

  return qword_1ED73ACB0;
}

double sub_1AF16FA58()
{
  qword_1ED73ACB0 = _CFRuntimeRegisterClass();
  qword_1ED72F148 = sub_1AF170528;
  result = *&xmmword_1F24E7B18;
  xmmword_1ED72F0F8 = xmmword_1F24E7B18;
  return result;
}

uint64_t sub_1AF16FAAC(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73ACB8 != -1)
  {
    sub_1AFDD8410();
  }

  v3 = qword_1ED73ACB0;

  return sub_1AF0D160C(v3, 0x50uLL);
}

uint64_t sub_1AF16FAF4(_BOOL8 a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDD8424(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v11 = sub_1AF16FAAC(a1, a2);
  if (!v11)
  {
    v12 = sub_1AF0D5194(0, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD849C(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  sub_1AF16FB7C(v11, v2);
  return v11;
}

CFTypeRef sub_1AF16FB7C(_BOOL8 a1, CFTypeRef cf)
{
  v3 = a1;
  if (!cf && (v4 = sub_1AF0D5194(a1, 0), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD8424(v4, cf, v5, v6, v7, v8, v9, v10);
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else if (v3)
  {
    goto LABEL_6;
  }

  v11 = sub_1AF0D5194(a1, cf);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD0208(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  *(v3 + 64) = cf;
  return CFRetain(cf);
}

uint64_t sub_1AF16FC00(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8424(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v12 = sub_1AF16FAF4(a1, a2);
  *(v12 + 88) |= 1u;
  if (v2)
  {
    v13 = sub_1AF1CB65C(a1, v11);
    Mutable = CFDataCreateMutable(0, v13);
    v16 = sub_1AF1CB65C(a1, v15);
    CFDataSetLength(Mutable, v16);
    sub_1AF16FCB0(v12, Mutable);
    CFRelease(Mutable);
  }

  return v12;
}

CFTypeRef sub_1AF16FCB0(_BOOL8 a1, CFTypeRef cf)
{
  v3 = a1;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, cf);
    a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDD849C(v4, cf, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((*(v3 + 88) & 4) != 0)
  {
    v11 = sub_1AF0D5194(a1, cf);
    a1 = os_log_type_enabled(v11, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDD8514(v11, cf, v12, v13, v14, v15, v16, v17);
    }
  }

  if (*(v3 + 80))
  {
    v18 = sub_1AF0D5194(a1, cf);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD858C(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  result = *(v3 + 72);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(v3 + 72) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(v3 + 72) = result;
  }

  return result;
}

void sub_1AF16FD80(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    v6 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD849C(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  *(result + 72) = a2;
  *(result + 80) = a3;
}

void sub_1AF16FDD8(void *a1, const char *a2)
{
  if (sub_1AF1CB35C(a1[8], a2))
  {
    v6 = sub_1AF170020(a1, v4, v5);
    v8 = v7;
    v9 = v7;
    v10 = sub_1AF1CAE64(BYTE6(v7), HIBYTE(v7), v7, 0, 0);
    sub_1AF112944(a2, v10);
    sub_1AF1CB108(v10, a2, v11);
    CFRelease(v10);
    if (!v6)
    {
      return;
    }

    v13 = sub_1AF1CB6A8(a1[8], v12);
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v13 * v8);
    CFDataSetLength(Mutable, v13 * v8);
    BytePtr = CFDataGetBytePtr(Mutable);
    if (v8)
    {
      v16 = BytePtr;
      v17 = 0;
      do
      {
        memcpy(v16, &v6[v17], v13);
        v17 += BYTE5(v8);
        v16 += v13;
        --v9;
      }

      while (v9);
    }

    sub_1AF16FCB0(a2, Mutable);
    v18 = Mutable;
LABEL_14:

    CFRelease(v18);
    return;
  }

  v19 = sub_1AF1CB2E4(a1[8]);
  sub_1AF112944(a2, v19);
  sub_1AF1CB108(v19, a2, v20);
  CFRelease(v19);
  if (!a1[10])
  {
    v28 = a1[9];
    if (!v28)
    {
      return;
    }

    MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x1E695E480], 0, v28);
    sub_1AF16FCB0(a2, MutableCopy);
    v18 = MutableCopy;
    goto LABEL_14;
  }

  v23 = sub_1AF0D5194(v21, v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AF0CE000, v23, OS_LOG_TYPE_DEFAULT, "Warning: Cannot duplicate a Metal Buffer source. Create an empty data instead.", buf, 2u);
  }

  capacity = 0;
  v25 = sub_1AF289F78(a1[9], &capacity, v24);
  v26 = CFDataCreateMutable(*MEMORY[0x1E695E480], capacity);
  CFDataSetLength(v26, capacity);
  MutableBytePtr = CFDataGetMutableBytePtr(v26);
  memcpy(MutableBytePtr, v25, capacity);
  sub_1AF16FCB0(a2, v26);
  CFRelease(v26);
}

const UInt8 *sub_1AF170020(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 64);
  if (sub_1AF1CAEF0(v3, a2, a3))
  {
    v5 = sub_1AF1CAF40(v3, 0, v4);
  }

  else
  {
    v5 = 0;
  }

  sub_1AF12DB9C(v3);
  sub_1AF121B74(v3);
  v6 = sub_1AF1CAED8(v3);
  v7 = sub_1AF1CAED0(v3);
  if (v6 != sub_1AF28844C(v6, v8))
  {
    sub_1AF2884B4(v6, v9);
  }

  sub_1AF2885E4(v6, v7);
  return v5;
}

const char *sub_1AF170120(_BOOL8 a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDD849C(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF16FAAC(a1, a2);
  sub_1AF16FDD8(v2, v10);
  return v10;
}

void *sub_1AF17017C(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD849C(v4, a2, a3, v5, v6, v7, v8, v9);
    }
  }

  result = *(a1 + 72);
  if (*(a1 + 80))
  {
    return sub_1AF289FB8(result, a2, a3);
  }

  return result;
}

void *sub_1AF1701CC(void *a1, const char *a2, uint64_t a3)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD849C(v4, a2, a3, v5, v6, v7, v8, v9);
    }
  }

  result = a1[9];
  if (a1[10])
  {
    return sub_1AF289FB8(result, a2, a3);
  }

  if (!result)
  {
    result = a1[8];
    if (result)
    {
      return sub_1AF1CAEF0(result, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1AF170230(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD849C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 80))
  {
    return *(a1 + 72);
  }

  else
  {
    return 0;
  }
}

void sub_1AF170288(_BOOL8 result, uint64_t a2)
{
  v3 = result;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    result = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (result)
    {
      sub_1AFDD849C(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((*(v3 + 88) & 4) == 0)
  {
    v11 = sub_1AF0D5194(result, a2);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_FAULT);
    if (result)
    {
      sub_1AFDD8604(v11, a2, v12, v13, v14, v15, v16, v17);
    }
  }

  if (*(v3 + 80))
  {
    v18 = sub_1AF0D5194(result, a2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD867C(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  *(v3 + 72) = a2;
}

uint64_t sub_1AF17032C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0208(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 64);
}

BOOL sub_1AF17039C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80))
  {
    return 0;
  }

  if (!*(a1 + 72))
  {
    return 0;
  }

  v4 = sub_1AF17032C(a1, a2);
  return sub_1AF1CAEF0(v4, v5, v6) == *(a1 + 72);
}

void sub_1AF1703F8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0208(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  *(a1 + 88) = *(a1 + 88) & 0xFD | (2 * (a2 != 0));
  if (a2)
  {
    v11 = sub_1AF1CD9FC(5, a2);
    *sub_1AF1CDA60(v11, v12) = a2;
    sub_1AF16D044(a1, @"listener", v11);
    if (v11)
    {
      CFRelease(v11);
    }
  }

  else
  {
    sub_1AF16D044(a1, @"listener", 0);
  }
}

const __CFDictionary *sub_1AF1704B0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0208(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((*(a1 + 88) & 2) == 0)
  {
    return 0;
  }

  result = sub_1AF16CEA0(a1, @"listener");
  if (result)
  {
    result = sub_1AF1CDA60(result, v12);
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t sub_1AF170528(uint64_t a1, const void *a2)
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

const __CFDictionary *sub_1AF170560(uint64_t a1, void *__s1, void *__s2, size_t __n)
{
  result = memcmp(__s1, __s2, __n);
  if (result)
  {
    memcpy(__s1, __s2, __n);
    result = sub_1AF1704B0(a1, v9);
    if (result)
    {

      return sub_1AF1C37D4(result, a1);
    }
  }

  return result;
}

CFStringRef sub_1AF1705F0(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = sub_1AF3753A8(a1);
  v5 = sub_1AF170658(a1, v4);
  return CFStringCreateWithFormat(v2, 0, @"<%s %p | %@>", v3, a1, v5);
}

uint64_t sub_1AF170658(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD86F4(v3);
    }
  }

  return sub_1AF16CBEC(a1, a2);
}

uint64_t sub_1AF1706B8(const void *a1)
{
  v1 = CFGetTypeID(a1);
  v3 = sub_1AF1A2D3C(v1, v2);
  if (v1 == v3)
  {
    return 1;
  }

  if (v1 == sub_1AF15B134(v3, v4))
  {
    return 2;
  }

  v6 = CFCopyTypeIDDescription(v1);
  v8 = sub_1AF0D5194(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDD8778(v6, v8);
  }

  CFRelease(v6);
  return 0;
}

const void *sub_1AF170740(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == sub_1AF1A2D3C(v2, v3))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_1AF17079C(uint64_t a1)
{
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 133) = 1;
  *&result = 83951873;
  *(a1 + 129) = 83951873;
  return result;
}

void sub_1AF1707C0(void *a1)
{
  sub_1AF174F04(a1);
  sub_1AF18053C(a1);
  v2 = a1[19];
  if (v2)
  {
    CFRelease(v2);
    a1[19] = 0;
  }

  v3 = a1[18];
  if (v3)
  {
    CFRelease(v3);
    a1[18] = 0;
  }

  v4 = a1[17];
  if (v4)
  {
    CFRelease(v4);
    a1[17] = 0;
  }
}

CFTypeRef sub_1AF17081C(uint64_t a1, uint64_t a2)
{
  *(a2 + 133) = *(a1 + 133);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 132) = *(a1 + 132);
  sub_1AF174F04(a2);
  sub_1AF18053C(a2);
  v4 = *(a2 + 152);
  if (v4)
  {
    CFRelease(v4);
    *(a2 + 152) = 0;
  }

  v5 = *(a2 + 144);
  v6 = *(a1 + 144);
  if (v5 != v6)
  {
    if (v5)
    {
      CFRelease(*(a2 + 144));
      *(a2 + 144) = 0;
      v6 = *(a1 + 144);
    }

    if (v6)
    {
      v6 = CFRetain(v6);
    }

    *(a2 + 144) = v6;
  }

  v7 = *(a2 + 136);
  result = *(a1 + 136);
  if (v7 != result)
  {
    if (v7)
    {
      CFRelease(*(a2 + 136));
      *(a2 + 136) = 0;
      result = *(a1 + 136);
    }

    if (result)
    {
      result = CFRetain(result);
    }

    *(a2 + 136) = result;
  }

  return result;
}

BOOL sub_1AF1708D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 200);
  v3 = v2 & 0xC;
  if ((v2 & 0xC) == 0)
  {
    v5 = sub_1AF1B2C1C(a1, a2);
    v6 = sub_1AF1A516C(v5, 0);
    Count = CFArrayGetCount(v6);
    if (Count < 1)
    {
LABEL_6:
      v3 = 4;
    }

    else
    {
      v8 = Count;
      v9 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
        v12 = sub_1AF1A7034(ValueAtIndex, v11);
        if (!sub_1AF1A72E0(v12))
        {
          break;
        }

        if (v8 == ++v9)
        {
          goto LABEL_6;
        }
      }

      v3 = 8;
    }

    *(a1 + 200) = v3 | v2;
  }

  return v3 == 4;
}

void sub_1AF1709B8(__n128 *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a1[8].n128_u8[0];
  if (v4 != a2)
  {
    a1[8].n128_u8[0] = a2;
    v5 = a1[9].n128_u64[1];
    if (v5)
    {
      CFRelease(v5);
      a1[9].n128_u64[1] = 0;
    }

    sub_1AF1B1D38(a1);
  }

  v6 = a1[11].n128_u8[0];
  v7 = a1[11].n128_u8[0];

  sub_1AF170A30(a1, v6, v7, v4, v2);
}

void sub_1AF170A30(__n128 *a1, uint64_t a2, int a3, int a4, int a5)
{
  v8 = a2;
  if ((sub_1AF174E14(a1, a2) & 1) == 0 && (a3 == 4 ? (v11 = a5 == 0) : (v11 = 1), v11 ? (v12 = 0) : (v12 = 1), v8 == 4 ? (v13 = a4 == 0) : (v13 = 1), v13 ? (v14 = 0) : (v14 = 1), v14 == v12))
  {
    if ((v8 != 0) != (a3 == 0))
    {
      return;
    }

    v15 = 6;
  }

  else
  {
    v15 = 7;
  }

  v16 = sub_1AF1C3FAC(a1, v10);

  sub_1AF1CF760(v16, v15, a1, 0);
}

void sub_1AF170AFC(__n128 *a1, int a2)
{
  if (a1[8].n128_u8[1] != a2)
  {
    a1[8].n128_u8[1] = a2;
    v3 = a1[9].n128_u64[1];
    if (v3)
    {
      CFRelease(v3);
      a1[9].n128_u64[1] = 0;
    }

    sub_1AF1B1D38(a1);
  }

  v4 = a1[11].n128_u8[0];
  v5 = a1[8].n128_u8[0];
  v6 = a1[11].n128_u8[0];

  sub_1AF170A30(a1, v4, v6, v5, v5);
}

void sub_1AF170B70(uint64_t result, int a2)
{
  if (a2 != *(result + 130))
  {
    *(result + 130) = a2;
    v3 = *(result + 152);
    if (v3)
    {
      CFRelease(v3);
      *(result + 152) = 0;
    }

    sub_1AF1B1D38(result);
    v4 = *(result + 176);
    v5 = *(result + 128);
    v6 = *(result + 176);

    sub_1AF170A30(result, v4, v6, v5, v5);
  }
}

void sub_1AF170C00(__n128 *a1, CFTypeRef cf)
{
  v3 = a1[9].n128_u64[0];
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
      a1[9].n128_u64[0] = 0;
    }

    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = 0;
    }

    a1[9].n128_u64[0] = v5;
    v6 = a1[9].n128_u64[1];
    if (v6)
    {
      CFRelease(v6);
      a1[9].n128_u64[1] = 0;
    }

    sub_1AF1B1D38(a1);
  }

  sub_1AF1804E8(a1);
  v7 = a1[11].n128_u8[0];
  v8 = a1[8].n128_u8[0];
  v9 = a1[11].n128_u8[0];

  sub_1AF170A30(a1, v7, v9, v8, v8);
}

void sub_1AF170CA0(__n128 *a1, CFTypeRef cf)
{
  v3 = a1[8].n128_u64[1];
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
      a1[8].n128_u64[1] = 0;
    }

    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = 0;
    }

    a1[8].n128_u64[1] = v5;
    v6 = a1[9].n128_u64[1];
    if (v6)
    {
      CFRelease(v6);
      a1[9].n128_u64[1] = 0;
    }

    sub_1AF1B1D38(a1);
  }

  sub_1AF1804E8(a1);
  v7 = a1[11].n128_u8[0];
  v8 = a1[8].n128_u8[0];
  v9 = a1[11].n128_u8[0];

  sub_1AF170A30(a1, v7, v9, v8, v8);
}

unint64_t sub_1AF170D58(float a1)
{
  v1 = a1 * 0.5;
  if ((a1 * 0.5) > 1.0)
  {
    v1 = 1.0;
  }

  v2 = 2.0 - (a1 * 0.5);
  if (v2 > 1.0)
  {
    v2 = 1.0;
  }

  return LODWORD(v1) | (LODWORD(v2) << 32);
}

void sub_1AF170D90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF1B2C1C(a1, a2);
  v5 = sub_1AF1A4C6C(v4, 0, 0);
  v8 = a1 + 136;
  v6 = *(a1 + 136);
  v7 = *(v8 + 8);
  if (v7)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = v5;
    v11 = sub_1AF1A7634(v6);
    if (v11 != 1)
    {
      v13 = sub_1AF0D5194(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD87F0(v13);
      }
    }

    v14 = sub_1AF1AF080(v7, v12);
    v15 = sub_1AF1A7674(v6);
    v17 = sub_1AF1A3CCC(v4, v16);
    if (v17 >= 1)
    {
      v18 = v17;
      for (i = 0; i != v18; ++i)
      {
        v20 = sub_1AF1A3D1C(v4, i, 0);
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        sub_1AF1A767C(v20, v10, &v23);
        v22[0] = v23;
        v22[1] = v24;
        v22[2] = v25;
        v22[3] = v26;
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 0x40000000;
        v21[2] = sub_1AF170F14;
        v21[3] = &unk_1E7A7AF80;
        v21[6] = v6;
        v21[7] = 0;
        v21[8] = v14;
        v21[4] = a2;
        v21[5] = v15;
        sub_1AF1A80E4(v22, v21, v25);
      }
    }
  }
}

uint64_t sub_1AF170F14(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4)
  {
    v5 = result;
    v6 = 0;
    v7 = a4;
    do
    {
      v8 = *(a3 + 4 * v6++);
      v9 = v6;
      if (v6 == v7)
      {
        v9 = 0;
      }

      v10 = *(a3 + 4 * v9);
      v11 = 0.0;
      if (*(v5 + 40) >= 1)
      {
        v12 = 0;
        while (1)
        {
          v13 = sub_1AF1A7C24(*(v5 + 48), v12, 0, *(v5 + 56));
          v14 = sub_1AF1A7C24(*(v5 + 48), v12, 1, *(v5 + 56));
          if (v8 == v13 && v10 == v14)
          {
            break;
          }

          if (v8 == v14 && v10 == v13)
          {
            break;
          }

          if (++v12 >= *(v5 + 40))
          {
            goto LABEL_18;
          }
        }

        v11 = *sub_1AF1CAF40(*(v5 + 64), v12, v15);
      }

LABEL_18:
      result = (*(*(v5 + 32) + 16))(v11);
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t sub_1AF171018(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF1B2C1C(a1, a2);
  v4 = sub_1AF1A4604(v3, 0, 0, 0);
  result = sub_1AF1A4604(v3, 7, 0, 0);
  if (result)
  {
    v7 = sub_1AF1AF080(result, v6);
    result = sub_1AF1AE6EC(v4, v8);
    if (result >= 1)
    {
      v10 = result;
      for (i = 0; i != v10; ++i)
      {
        v12 = sub_1AF1CAF40(v7, i, v9);
        result = (*(a2 + 16))(a2, i, *v12);
      }
    }
  }

  return result;
}

const void *sub_1AF1710CC(uint64_t a1, uint64_t a2)
{
  sub_1AF17CA14(a1, a2);
  v4 = *(a1 + 152);
  if (!v4)
  {
    v5 = sub_1AF1B2C1C(a1, v3);
    v4 = v5;
    if (*(a1 + 128))
    {
      v7 = sub_1AF0D5194(v5, v6);
      v8 = os_signpost_id_generate(v7);
      v10 = sub_1AF0D5194(v8, v9);
      if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v12 = v10;
        if (os_signpost_enabled(v10))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v8, "Subdivision", &unk_1AFF70A1D, buf, 2u);
        }
      }

      if (sub_1AF17D0F0(a1, v11))
      {
        sub_1AF17D98C((a1 + 128), v4);
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
        *buf = 0u;
        sub_1AF17E078(buf, a1 + 128, v4);
        sub_1AF17DF0C(a1 + 128, v13);
      }

      v14 = CFRetain(v4);
    }

    else
    {
      v14 = CFRetain(v5);
      v4 = v14;
    }

    *(a1 + 152) = v14;
  }

  return v4;
}

uint64_t sub_1AF1712E4(uint64_t a1)
{
  v5 = (a1 + 216);
  sub_1AF1713B0(&v5);
  v5 = (a1 + 192);
  sub_1AF171480(&v5);
  v5 = (a1 + 168);
  sub_1AF171480(&v5);
  v5 = (a1 + 144);
  sub_1AF171480(&v5);
  v5 = (a1 + 120);
  sub_1AF171480(&v5);
  v5 = (a1 + 96);
  sub_1AF171480(&v5);
  v5 = (a1 + 72);
  sub_1AF171480(&v5);
  v5 = (a1 + 48);
  sub_1AF17154C(&v5);
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1AF1713B0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1AF171404(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1AF171404(void *result)
{
  v2 = *result;
  v3 = result[1];
  if (v3 != *result)
  {
    do
    {
      v4 = (v3 - 24);
      sub_1AF171480(&v4);
      v4 = (v3 - 48);
      sub_1AF171480(&v4);
      v4 = (v3 - 72);
      sub_1AF171480(&v4);
      v3 -= 72;
    }

    while (v3 != v2);
  }

  result[1] = v2;
}

void sub_1AF171480(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1AF1714D4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1AF1714D4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = *(v3 - 64);
      if (v4)
      {
        *(v3 - 56) = v4;
        operator delete(v4);
      }

      v5 = *(v3 - 88);
      if (v5)
      {
        *(v3 - 80) = v5;
        operator delete(v5);
      }

      v6 = v3 - 112;
      v7 = *(v3 - 112);
      if (v7)
      {
        *(v3 - 104) = v7;
        operator delete(v7);
      }

      v3 -= 112;
    }

    while (v6 != v2);
  }

  a1[1] = v2;
}

void sub_1AF17154C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1AF1715A0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1AF1715A0(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

uint64_t sub_1AF171620(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF17163C(uint64_t a1, int a2)
{
  result = *(*(a1 + 160) + 24);
  if (result)
  {
    return sub_1AF171650(result, a2);
  }

  return result;
}

BOOL sub_1AF171650(uint64_t a1, int a2)
{
  if ((a2 - 2) > 4)
  {
    v2 = 3;
  }

  else
  {
    v2 = dword_1AFE21784[(a2 - 2)];
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = *(a1 + 40);
  v6 = 1;
  do
  {
    v7 = *(v5 + 16 * v4) == v2;
    result = v7;
    v4 = v6++;
  }

  while (!v7 && v3 > v4);
  return result;
}

void *sub_1AF1716B4(void *result)
{
  result[11] = 0;
  result[12] = 0;
  result[13] = 0;
  return result;
}

void sub_1AF1716C0(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    v10 = *(a1 + 120);
    sub_1AF179DE8(&v10);
    MEMORY[0x1B271C6B0](v2, 0x20C40960023A9);
  }

  sub_1AF179D9C(a1 + 32);
  v3 = *(a1 + 88);
  if (v3)
  {
    v4 = *v3;
    v5 = v3[1];
    if (*v3 == v5)
    {
      goto LABEL_7;
    }

    do
    {
      sub_1AF179D9C(v4);
      v4 += 56;
    }

    while (v4 != v5);
    v3 = *(a1 + 88);
    if (v3)
    {
LABEL_7:
      v6 = *v3;
      if (*v3)
      {
        v3[1] = v6;
        operator delete(v6);
      }

      MEMORY[0x1B271C6B0](v3, 0x20C40960023A9);
    }
  }

  sub_1AF179D38(a1 + 144);
  for (i = 0; i != 80; i += 8)
  {
  }

  v8 = (a1 + 408);
  v9 = 10;
  do
  {

    ++v8;
    --v9;
  }

  while (v9);
}

__CFString *sub_1AF171850(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = sub_1AF3753A8(a1);
  CFStringAppendFormat(Mutable, 0, @"<%s %p>", v3, a1);
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = 0;
  v6 = objc_msgSend_length(*(a1 + 64), v4, v5);
  v7 = *(a1 + 32);
  v10 = objc_msgSend_length(*(a1 + 48), v8, v9);
  v73 = a1;
  v13 = objc_msgSend_length(*(a1 + 56), v11, v12);
  v76[3] += 16 * v7 + v6 + v10 + v13;
  CFStringAppend(Mutable, @"\nVertex patch table:");
  v14 = sub_1AF2891D8(16 * v7);
  CFStringAppendFormat(Mutable, 0, @"\n  - Patch arrays (%@):", v14);
  v15 = v73;
  if (*(v73 + 32))
  {
    v16 = 0;
    v17 = 1;
    do
    {
      v18 = (*(v15 + 40) + 16 * v16);
      v19 = *v18 - 4;
      v20 = @"QUADS";
      if (v19 <= 5)
      {
        v20 = off_1E7A7B138[v19];
      }

      CFStringAppendFormat(Mutable, 0, @"\n    - %d x %@", v18[1], v20);
      v16 = v17;
      v15 = v73;
      v21 = *(v73 + 32) > v17++;
    }

    while (v21);
  }

  v22 = *(v15 + 64);
  v23 = sub_1AF2891D8(v6);
  CFStringAppendFormat(Mutable, 0, @"\n  - Data buffer: %p (%@)", v22, v23);
  v24 = *(v73 + 48);
  v25 = sub_1AF2891D8(v10);
  CFStringAppendFormat(Mutable, 0, @"\n  - Patch index buffer: %p (%@)", v24, v25);
  v26 = *(v73 + 56);
  v27 = sub_1AF2891D8(v13);
  CFStringAppendFormat(Mutable, 0, @"\n  - Patch param buffer: %p (%@)", v26, v27);
  v28 = *(v73 + 88);
  if (v28)
  {
    v29 = *(*(v73 + 88) + 8) - *v28;
    if (v29)
    {
      v30 = 0;
      v72 = 0x6DB6DB6DB6DB6DB7 * (v29 >> 3);
      do
      {
        CFStringAppendFormat(Mutable, 0, @"\nFVar patch table (channel %zu):", v30);
        v33 = **(v73 + 88);
        if (0x6DB6DB6DB6DB6DB7 * ((*(*(v73 + 88) + 8) - v33) >> 3) <= v30)
        {
          sub_1AF10A1D0();
        }

        v34 = (v33 + 56 * v30);
        v35 = objc_msgSend_length(v34[4], v31, v32);
        v36 = *v34;
        v39 = objc_msgSend_length(v34[2], v37, v38);
        v42 = objc_msgSend_length(v34[3], v40, v41);
        v76[3] += 16 * v36 + v35 + v39 + v42;
        v43 = sub_1AF2891D8(16 * v36);
        CFStringAppendFormat(Mutable, 0, @"\n  - Patch arrays (%@):", v43);
        if (*v34)
        {
          v44 = 0;
          v45 = 1;
          do
          {
            v46 = (v34[1] + 16 * v44);
            v47 = *v46 - 4;
            v48 = @"QUADS";
            if (v47 <= 5)
            {
              v48 = off_1E7A7B138[v47];
            }

            CFStringAppendFormat(Mutable, 0, @"\n    - %d x %@", v46[1], v48);
            v44 = v45;
            v21 = *v34 > v45++;
          }

          while (v21);
        }

        v49 = v34[4];
        v50 = sub_1AF2891D8(v35);
        CFStringAppendFormat(Mutable, 0, @"\n  - Data buffer: %p (%@)", v49, v50);
        v51 = v34[2];
        v52 = sub_1AF2891D8(v39);
        CFStringAppendFormat(Mutable, 0, @"\n  - Patch index buffer: %p (%@)", v51, v52);
        v53 = v34[3];
        v54 = sub_1AF2891D8(v42);
        CFStringAppendFormat(Mutable, 0, @"\n  - Patch param buffer: %p (%@)", v53, v54);
        ++v30;
      }

      while (v30 != v72);
    }
  }

  if (*(v73 + 96) && *(v73 + 104))
  {
    CFStringAppend(Mutable, @"\nLegacy Gregory patch table:");
    v57 = objc_msgSend_length(*(v73 + 96), v55, v56);
    v60 = objc_msgSend_length(*(v73 + 104), v58, v59);
    v76[3] += v60 + v57;
    v61 = *(v73 + 96);
    v62 = sub_1AF2891D8(v57);
    CFStringAppendFormat(Mutable, 0, @"\n  - Vertex valence buffer: %p (%@)", v61, v62);
    v63 = *(v73 + 104);
    v64 = sub_1AF2891D8(v60);
    CFStringAppendFormat(Mutable, 0, @"\n  - Quad offsets buffer: %p (%@)", v63, v64);
  }

  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = sub_1AF1794E8;
  v74[3] = &unk_1E7A7B038;
  v74[4] = &v75;
  v74[5] = Mutable;
  CFStringAppend(Mutable, @"\nVertex Refiner:");
  (sub_1AF1794E8)(v74, v73 + 144);
  v67 = objc_msgSend_length(*(v73 + 352), v65, v66);
  v76[3] += v67;
  v68 = *(v73 + 352);
  v69 = sub_1AF2891D8(v67);
  CFStringAppendFormat(Mutable, 0, @"\n  - Skin/morph indexing table: %p (%@)", v68, v69);
  v70 = sub_1AF2891D8(v76[3]);
  CFStringAppendFormat(Mutable, 0, @"\nTotal memory usage: %@", v70);
  _Block_object_dispose(&v75, 8);
  return Mutable;
}

void sub_1AF171DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF171E08()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB64FB68 = result;
  return result;
}

void sub_1AF171E30(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 80))
  {
    v4 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8874(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v23 = 0;
  v24 = 0;
  v12 = sub_1AFDE323C(*(a1 + 80));
  v13 = sub_1AFDBB5E8(v12, *(a1 + 40), (a1 + 56), *(a1 + 48), (a1 + 68), 0, &v23, 0, &v23, *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), 0, 0, 0, *(a1 + 32), a2);
  if (!v13)
  {
    v15 = sub_1AF0D5194(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD88EC(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  nullsub_106();
}

void sub_1AF171F0C(uint64_t a1, uint64_t a2, void *a3, id *a4)
{
  if (sub_1AF1B40A0(a2, a2))
  {
    *(a1 + 360) = objc_msgSend_computePipelineStateForKernel_(a3, v8, @"vfx_osd_synchronize_coarse_positions_no_argument_buffer");
    v10 = sub_1AF1B2C1C(a2, v9);
    v11 = sub_1AF1A4FA8(v10);
    v13 = v11;
    v14 = *(a2 + 168);
    if (!v14)
    {
      v15 = sub_1AF0D5194(v11, v12);
      v11 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);
      if (v11)
      {
        sub_1AFDD8964(v15, v12, v16, v17, v18, v19, v20, v21);
      }
    }

    v23 = *(v14 + 32);
    v22 = *(v14 + 40);
    __p = 0;
    v37 = 0;
    v38 = 0;
    v24 = (v22 - v23) >> 2;
    if (v22 != v23)
    {
      sub_1AF17C384(&__p, (v22 - v23) >> 2);
    }

    if (v24 != *(a1 + 28))
    {
      v25 = sub_1AF0D5194(v11, v12);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD89DC(v25, v12, v26, v27, v28, v29, v30, v31);
      }
    }

    v32 = __p;
    if (v22 != v23)
    {
      v33 = 0;
      v34 = *(v14 + 32);
      do
      {
        v35 = *(v34 + 4 * v33);
        if (v13)
        {
          v35 = *(v13 + 4 * v35);
        }

        v32[v33++] = v35;
      }

      while (v24 > v33);
    }

    *(a1 + 352) = objc_msgSend_newBufferWithBytes_length_options_(*a4, v12, v32, v37 - v32, 0);
    if (__p)
    {
      v37 = __p;
      operator delete(__p);
    }
  }

  else
  {
    *(a1 + 352) = 0;
    *(a1 + 360) = objc_msgSend_computePipelineStateForKernel_(a3, v8, @"vfx_osd_synchronize_indexed_coarse_positions_no_argument_buffer");
  }
}

void sub_1AF1720A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF1720C0(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, void *a5, uint64_t a6)
{
  v10 = objc_alloc(MEMORY[0x1E696ACD0]);
  v12 = objc_msgSend_initForReadingFromData_error_(v10, v11, a1, 0);
  v14 = objc_msgSend_decodeInt32ForKey_(v12, v13, @"version");
  v17 = 0;
  if (v14 >= 3)
  {
    if (!a5)
    {
      v18 = sub_1AF0D5194(v14, v15);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD8A54(v18, v15, v16, v19, v20, v21, v22, v23);
      }
    }

    v24 = objc_msgSend_commandBuffer(a5, v15, v16);
    v27 = objc_msgSend_computeCommandEncoder(v24, v25, v26);
    v85[0] = objc_msgSend_device(a5, v28, v29);
    v85[1] = a5;
    v86 = v24;
    v87 = v27;
    if (qword_1EB64FB60 != -1)
    {
      sub_1AFDD8ACC();
    }

    v17 = sub_1AF0D160C(qword_1EB64FB68, 0x2F0uLL);
    v83 = 0;
    v84 = 0;
    v31 = objc_msgSend_decodeBytesForKey_returnedLength_(v12, v30, @"primvarDataTypeHash", &v83);
    if (v83 == 4)
    {
      *(v17 + 24) = *v31;
    }

    *(v17 + 28) = objc_msgSend_decodeInt32ForKey_(v12, v32, @"coarseVertexCount");
    sub_1AF172A2C(v12, @"vertexPatchTable", v85, size);
    v33 = v89;
    *(v17 + 32) = *size;
    *(v17 + 48) = v33;
    *(v17 + 64) = v90;
    *(v17 + 80) = v91;
    v35 = objc_msgSend_stringByAppendingString_(@"fvarPatchTables", v34, @".count");
    if (objc_msgSend_decodeInt32ForKey_(v12, v36, v35))
    {
      operator new();
    }

    *(v17 + 88) = 0;
    v81 = a3;
    if (a3[6] == 2)
    {
      v38 = objc_msgSend_stringByAppendingString_(@"legacyGregoryPatchTable", v37, @".vertexValenceBuffer");
      v39 = sub_1AF173244(v12, v38, v85, 0);
      v41 = objc_msgSend_stringByAppendingString_(@"legacyGregoryPatchTable", v40, @".quadOffsetsBuffer");
      v42 = sub_1AF173244(v12, v41, v85, 0);
      v44 = objc_msgSend_stringByAppendingString_(@"legacyGregoryPatchTable", v43, @".quadOffsetsBaseGregory");
      v46 = objc_msgSend_decodeInt32ForKey_(v12, v45, v44);
      v48 = objc_msgSend_stringByAppendingString_(@"legacyGregoryPatchTable", v47, @".quadOffsetsBaseGregoryBoundary");
      v50 = objc_msgSend_decodeInt32ForKey_(v12, v49, v48);
    }

    else
    {
      v39 = 0;
      v42 = 0;
      v46 = -1;
      v50 = -1;
    }

    *(v17 + 96) = v39;
    *(v17 + 104) = v42;
    *(v17 + 112) = v46;
    *(v17 + 116) = v50;
    v51 = objc_msgSend_stringByAppendingString_(@"patchRangesTable", v37, @".elementCount");
    v53 = objc_msgSend_decodeInt32ForKey_(v12, v52, v51);
    v55 = objc_msgSend_stringByAppendingString_(@"patchRangesTable", v54, @".patchArrayCount");
    v57 = objc_msgSend_decodeInt32ForKey_(v12, v56, v55);
    if (v53 && v57)
    {
      operator new();
    }

    *(v17 + 120) = 0;
    sub_1AF172BA8(v12, @"vertexRefiner", a4, v85, size);
    v58 = v91;
    *(v17 + 176) = v90;
    *(v17 + 192) = v58;
    *(v17 + 208) = v92;
    *(v17 + 224) = v93;
    v59 = v89;
    *(v17 + 144) = *size;
    *(v17 + 160) = v59;
    *(v17 + 184) = *(v17 + 64);
    *(v17 + 192) = *(v17 + 64);
    sub_1AF171E30(v17 + 144, v85);
    *(v17 + 16) = 0;
    v61 = objc_msgSend_stringByAppendingString_(@"fvarRefiners", v60, @".count");
    if (objc_msgSend_decodeInt32ForKey_(v12, v62, v61))
    {
      operator new();
    }

    v84 = 0;
    sub_1AF172DA0(v17, v81, a4, v85);
    *(v17 + 352) = sub_1AF173244(v12, @"skinMorphSubdivIndexToMetalIndexBuffer", v85, 0);
    if (objc_msgSend_containsValueForKey_(v12, v63, @"synchronizeCoarsePositionsPipeline.functionName"))
    {
      v64 = objc_opt_class();
      v66 = objc_msgSend_decodeObjectOfClass_forKey_(v12, v65, v64, @"synchronizeCoarsePositionsPipeline.functionName");
      *(v17 + 360) = objc_msgSend_computePipelineStateForKernel_(a4, v67, v66);
    }

    *(v17 + 128) = sub_1AF173244(v12, @"fvarChannelDescriptorsBuffer", v85, 0);
    *(v17 + 136) = sub_1AF173244(v12, @"fvarChannelsPackedDataBuffer", v85, 0);
    objc_msgSend_endEncoding(v87, v68, v69);
    objc_msgSend_commit(v86, v70, v71);
    objc_msgSend_waitUntilCompleted(v86, v72, v73);
    v76 = objc_msgSend_status(v86, v74, v75);
    if (v76 == 4)
    {
      goto LABEL_26;
    }

    v78 = sub_1AF0D5194(v76, v77);
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDD8AF4(&v86, v78, v79);
      if (!a6)
      {
        goto LABEL_25;
      }
    }

    else if (!a6)
    {
LABEL_25:
      CFRelease(v17);
      v17 = 0;
LABEL_26:
      sub_1AF17332C(&v84);
      goto LABEL_27;
    }

    (*(a6 + 16))(a6, v86, 1);
    goto LABEL_25;
  }

LABEL_27:
  objc_msgSend_finishDecoding(v12, v15, v16);

  return v17;
}

void sub_1AF1729E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1AF179AF8(&a28);
  MEMORY[0x1B271C6B0](a19, 0x20C40960023A9);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF172A2C@<X0>(void *a1@<X0>, void *a2@<X1>, id *a3@<X2>, size_t *a4@<X8>)
{
  size = 0;
  v8 = objc_msgSend_stringByAppendingString_(a2, a2, @".patchArrays");
  v10 = objc_msgSend_decodeBytesForKey_returnedLength_(a1, v9, v8, &size);
  v11 = size;
  *a4 = size >> 4;
  v12 = malloc_type_malloc(v11, 0x1000040451B5BE8uLL);
  a4[1] = v12;
  memcpy(v12, v10, size);
  v14 = objc_msgSend_stringByAppendingString_(a2, v13, @".dataBufferOffset");
  a4[5] = objc_msgSend_decodeInt32ForKey_(a1, v15, v14);
  v17 = objc_msgSend_stringByAppendingString_(a2, v16, @".dataBufferCoarseDataSize");
  a4[6] = objc_msgSend_decodeInt32ForKey_(a1, v18, v17);
  v20 = objc_msgSend_stringByAppendingString_(a2, v19, @".dataBufferFullDataSize");
  v22 = objc_msgSend_decodeInt32ForKey_(a1, v21, v20);
  v24 = objc_msgSend_stringByAppendingString_(a2, v23, @".patchIndexBuffer");
  a4[2] = sub_1AF173244(a1, v24, a3, 0);
  v26 = objc_msgSend_stringByAppendingString_(a2, v25, @".patchParamBuffer");
  a4[3] = sub_1AF173244(a1, v26, a3, 0);
  v28 = objc_msgSend_stringByAppendingString_(a2, v27, @".dataBuffer");
  result = sub_1AF173244(a1, v28, a3, v22);
  a4[4] = result;
  return result;
}

id sub_1AF172BA8@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, id *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = objc_msgSend_stringByAppendingString_(a2, a2, @".stencilTable");
  v12 = objc_msgSend_stringByAppendingString_(v10, v11, @".sizesBuffer");
  v13 = sub_1AF173244(a1, v12, a4, 0);
  v15 = objc_msgSend_stringByAppendingString_(v10, v14, @".offsetsBuffer");
  v16 = sub_1AF173244(a1, v15, a4, 0);
  v18 = objc_msgSend_stringByAppendingString_(v10, v17, @".indicesBuffer");
  v19 = sub_1AF173244(a1, v18, a4, 0);
  v21 = objc_msgSend_stringByAppendingString_(v10, v20, @".weightsBuffer");
  v22 = sub_1AF173244(a1, v21, a4, 0);
  v24 = objc_msgSend_stringByAppendingString_(v10, v23, @".numStencils");
  v26 = objc_msgSend_decodeInt32ForKey_(a1, v25, v24);
  *a5 = v13;
  *(a5 + 8) = v16;
  *(a5 + 16) = v19;
  *(a5 + 24) = v22;
  *(a5 + 32) = v26;
  v28 = objc_msgSend_stringByAppendingString_(a2, v27, @".evaluatorInput");
  v40 = 0;
  __dst = 0uLL;
  v41 = 0;
  __n = 0;
  v30 = objc_msgSend_stringByAppendingString_(v28, v29, @".srcDesc");
  v32 = objc_msgSend_decodeBytesForKey_returnedLength_(a1, v31, v30, &__n);
  v34 = objc_msgSend_stringByAppendingString_(v28, v33, @".dstDesc");
  v36 = objc_msgSend_decodeBytesForKey_returnedLength_(a1, v35, v34, &v41);
  memcpy(&__dst, v32, __n);
  memcpy(&__dst + 12, v36, v41);
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 56) = __dst;
  *(a5 + 72) = v40;
  *&__dst = 0;
  DWORD2(__dst) = 0;
  result = objc_msgSend_computeEvaluatorWithContext_srcDesc_dstDesc_duDesc_dvDesc_(a3, v37, a4, a5 + 56, a5 + 68, &__dst, &__dst);
  *(a5 + 80) = result;
  return result;
}

void sub_1AF172DA0(uint64_t a1, _BYTE *a2, void *a3, id *a4)
{
  v5 = a2;
  *&v66[5] = *MEMORY[0x1E69E9840];
  v7 = a2[4];
  v8 = sub_1AF17CF8C(*(a1 + 24));
  v9 = sub_1AF17CF9C(*(a1 + 24));
  if (v8)
  {
    v11 = 16;
  }

  else
  {
    v11 = 0;
  }

  if (!*(a1 + 32))
  {
    v14 = 0;
    v27 = 0;
    goto LABEL_31;
  }

  v59 = v7;
  v62 = a4;
  v12 = v5;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 1;
  v17 = v11 + 8 * v9;
  do
  {
    v18 = (*(a1 + 40) + 16 * v13);
    v20 = v18[1];
    v65 = *v18;
    v19 = v65;
    v21 = sub_1AF174B38(&v65);
    if (v19 <= 5)
    {
      if (v19 < 3 || v19 == 5)
      {
        v23 = sub_1AF0D5194(v21, v10);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDD8BB8(&v63, v64);
        }
      }

      goto LABEL_25;
    }

    if (v19 > 7)
    {
      if (v19 == 8)
      {
        *(a1 + 244) = 12 * v14;
        *(a1 + 260) = v15;
        goto LABEL_24;
      }

      if (v19 == 9)
      {
        *(a1 + 246) = 12 * v14;
        *(a1 + 262) = v15;
        v15 += v20 * v17 * v21 + 12 * v20 * v21;
      }
    }

    else
    {
      if (v19 != 6)
      {
        *(a1 + 242) = 12 * v14;
        *(a1 + 258) = v15;
LABEL_24:
        v15 += v20 * v17 * v21 + 60 * v20 * v21;
        goto LABEL_25;
      }

      v24 = v12[3];
      *(a1 + 240) = 12 * v14;
      v25 = 36.0;
      if (!v24)
      {
        v25 = 12.0;
      }

      *(a1 + 256) = v15;
      v15 = (v15 + ((v25 * v20) * v21)) + v20 * v17 * v21;
    }

LABEL_25:
    v14 += v20;
    v13 = v16;
    v26 = *(a1 + 32) > v16++;
  }

  while (v26);
  if (v15)
  {
    a4 = v62;
    v27 = objc_msgSend_newBufferWithLength_options_(*v62, v10, v15, 32);
    v5 = v12;
  }

  else
  {
    v27 = 0;
    v5 = v12;
    a4 = v62;
  }

  v7 = v59;
LABEL_31:
  *(a1 + 248) = v27;
  if (v7)
  {
    v28 = objc_msgSend_newBufferWithLength_options_(*a4, v10, 80 * v14, 32);
  }

  else
  {
    v28 = 0;
  }

  *(a1 + 264) = v28;
  v29 = objc_msgSend_newBufferWithLength_options_(*a4, v10, 12 * v14, 32);
  *(a1 + 232) = v29;
  if (*(a1 + 32))
  {
    v31 = 0;
    v32 = a1 + 272;
    v58 = *(a1 + 24);
    v60 = v5[4] << 16;
    v33 = 1;
    do
    {
      v34 = *(*(a1 + 40) + 16 * v31);
      v35 = v34 - 4;
      if ((v34 - 4) > 5)
      {
        LOBYTE(v37) = 1;
        v36 = 256;
      }

      else
      {
        v36 = qword_1AFE21740[v35];
        v37 = 0x60504030102uLL >> (8 * v35);
      }

      if (*(v32 + 8 * v34))
      {
        v38 = sub_1AF0D5194(v29, v30);
        v29 = os_log_type_enabled(v38, OS_LOG_TYPE_FAULT);
        if (v29)
        {
          sub_1AFDD8BE4(&v65, v66, v38);
        }
      }

      if (v5[2] == 1)
      {
        v39 = v5;
        if (!v5[3])
        {
          v36 = 0;
        }

        v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v62 = v62 & 0xFFFFFFFF00000000 | v58;
        v41 = sub_1AF1735B8(v36 | v60 | v37 | 0x2000000000, v58, v40);
        v42 = objc_alloc_init(MEMORY[0x1E6974020]);
        v44 = sub_1AF1F32F0(v42, v43);
        objc_msgSend_setLanguageVersion_(v42, v45, v44);
        objc_msgSend_setFastMathEnabled_(v42, v46, 1);
        objc_msgSend_setPreprocessorMacros_(v42, v47, v40);
        objc_msgSend_setAdditionalCompilerArguments_(v42, v48, @" -w ");

        v49 = objc_alloc(MEMORY[0x1E696AEC0]);
        v52 = sub_1AF173490(v37, v50);
        if (qword_1EB64FB50 != -1)
        {
          sub_1AFDD8C28();
        }

        v53 = objc_msgSend_initWithFormat_(v49, v51, @"%@%@%@", v41, v52, qword_1EB64FB58);
        v54 = sub_1AFDE868C(a3);
        v56 = objc_msgSend_libraryForSourceCode_options_(v54, v55, v53, v42);
        *(v32 + 8 * v34) = objc_msgSend_newComputePipelineStateWithFunctionName_library_(a3, v57, @"compute_opensubdiv", v56);

        v5 = v39;
      }

      v31 = v33;
      v26 = *(a1 + 32) > v33++;
    }

    while (v26);
  }
}

uint64_t sub_1AF173244(void *a1, const char *a2, id *a3, size_t a4)
{
  if (!objc_msgSend_containsValueForKey_(a1, a2, a2))
  {
    return 0;
  }

  __n = 0;
  v10 = objc_msgSend_decodeBytesForKey_returnedLength_(a1, v8, a2, &__n);
  if (__n >= a4)
  {
    return objc_msgSend_newBufferWithBytes_length_options_(*a3, v9, v10);
  }

  v11 = malloc_type_malloc(a4, 0x100004077774924uLL);
  memcpy(v11, v10, __n);
  v13 = objc_msgSend_newBufferWithBytes_length_options_(*a3, v12, v11, a4, 0);
  free(v11);
  return v13;
}

void sub_1AF17332C(void ***result)
{
  v1 = *result;
  if (*result)
  {
    v2 = *v1;
    v3 = v1[1];
    if (*v1 == v3)
    {
      goto LABEL_5;
    }

    do
    {
      sub_1AF179D38(v2);
      v2 += 88;
    }

    while (v2 != v3);
    v1 = *result;
    if (*result)
    {
LABEL_5:
      v5 = *v1;
      if (*v1)
      {
        v1[1] = v5;
        operator delete(v5);
      }

      JUMPOUT(0x1B271C6B0);
    }
  }
}

uint64_t sub_1AF1733C8(uint64_t a1, uint64_t a2)
{
  if (qword_1EB64FB70 != -1)
  {
    sub_1AFDD8C50();
  }

  return qword_1EB64FB78;
}

void sub_1AF173400()
{
  v0 = objc_alloc(MEMORY[0x1E696AEC0]);
  sub_1AFDC6184();
  if (v4 >= 0)
  {
    v2 = objc_msgSend_initWithCString_encoding_(v0, v1, &__p, 4);
  }

  else
  {
    v2 = objc_msgSend_initWithCString_encoding_(v0, v1, __p, 4);
  }

  qword_1EB64FB78 = v2;
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_1AF173474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF173490@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        if (qword_1EB6585B0 != -1)
        {
          sub_1AFDD8C8C();
        }

        v2 = &qword_1EB6585A8;
        return *v2;
      case 5:
        if (qword_1EB6585C0 != -1)
        {
          sub_1AFDD8C78();
        }

        v2 = &qword_1EB6585B8;
        return *v2;
      case 6:
        if (qword_1EB6585D0 != -1)
        {
          sub_1AFDD8C64();
        }

        v2 = &qword_1EB6585C8;
        return *v2;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        if (qword_1EB658590 != -1)
        {
          sub_1AFDD8CC8();
        }

        v2 = &qword_1EB658588;
        return *v2;
      case 2:
        if (qword_1EB6585A0 != -1)
        {
          sub_1AFDD8CB4();
        }

        v2 = &qword_1EB658598;
        return *v2;
      case 3:
        if (qword_1EB64FB40 != -1)
        {
          sub_1AFDD8CA0();
        }

        v2 = &qword_1EB64FB48;
        return *v2;
    }
  }

  return a2;
}

uint64_t sub_1AF1735B8(unint64_t a1, unsigned int a2, void *a3)
{
  if ((a1 - 2) > 4u)
  {
    v6 = 3;
  }

  else
  {
    v6 = dword_1AFE21784[(a1 - 2)];
  }

  v231[0] = v6;
  v7 = sub_1AF174B38(v231);
  objc_msgSend_setObject_forKeyedSubscript_(a3, v8, MEMORY[0x1E695E118], @"USE_OPENSUBDIV");
  v10 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v9, (v231[0] - 5) < 5);
  objc_msgSend_setObject_forKeyedSubscript_(a3, v11, v10, @"OSD_IS_ADAPTIVE");
  v214 = a1;
  if (v6 > 6)
  {
    switch(v6)
    {
      case 7:
        objc_msgSend_setObject_forKeyedSubscript_(a3, v12, MEMORY[0x1E695E118], @"OSD_PATCH_GREGORY");
        break;
      case 8:
        objc_msgSend_setObject_forKeyedSubscript_(a3, v12, MEMORY[0x1E695E118], @"OSD_PATCH_GREGORY_BOUNDARY");
        break;
      case 9:
        objc_msgSend_setObject_forKeyedSubscript_(a3, v12, MEMORY[0x1E695E118], @"OSD_PATCH_GREGORY_BASIS");
        break;
      default:
        goto LABEL_18;
    }

    objc_msgSend_setObject_forKeyedSubscript_(a3, v14, &unk_1F25D4168, @"CONTROL_POINTS_PER_PATCH");
    v7 = 4;
  }

  else
  {
    switch(v6)
    {
      case 3:
        objc_msgSend_setObject_forKeyedSubscript_(a3, v12, MEMORY[0x1E695E118], @"OSD_PATCH_QUADS");
        break;
      case 4:
        objc_msgSend_setObject_forKeyedSubscript_(a3, v12, MEMORY[0x1E695E118], @"OSD_PATCH_TRIANGLES");
        break;
      case 6:
        objc_msgSend_setObject_forKeyedSubscript_(a3, v12, MEMORY[0x1E695E118], @"OSD_PATCH_REGULAR");
        objc_msgSend_setObject_forKeyedSubscript_(a3, v13, &unk_1F25D4150, @"CONTROL_POINTS_PER_PATCH");
        break;
    }
  }

LABEL_18:
  v215 = a3;
  v15 = a2;
  v16 = sub_1AF17CF8C(a2);
  v17 = sub_1AF17CF9C(v15);
  if (v16)
  {
    v18 = 4;
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_1AF17D020(v15);
  v20 = sub_1AF17D030(v15);
  if (v19)
  {
    v21 = 4;
  }

  else
  {
    v21 = 0;
  }

  v211 = v21;
  v212 = v20;
  v210 = sub_1AF17D0AC(v15);
  sub_1AF174B64(v221);
  sub_1AF17C688(&v222, "#define OSD_UV_CORRECTION if (t > 0.5) { ti += 0.01f; } else { ti += 0.01f; }\n", 78);
  v213 = v18 + 2 * v17;
  if (v213)
  {
    sub_1AF17C688(&v222, "struct OsdInputVertexType { \n", 29);
    sub_1AF17C688(&v222, "    metal::packed_float3 position; \n", 36);
    for (i = 0; i != 8; ++i)
    {
      if (sub_1AF17CEB0(v15, i) == 2)
      {
        v23 = sub_1AF17C688(&v222, "    metal::packed_float2 texcoord", 33);
        std::to_string(&__dst, i);
        v24 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
        v25 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__dst.__r_.__value_.__r.__words[2]) : __dst.__r_.__value_.__l.__size_;
        v26 = sub_1AF17C688(v23, v24, v25);
        sub_1AF17C688(v26, "; \n", 3);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }
    }

    if (sub_1AF17CEA8(v15) == 2)
    {
      sub_1AF17C688(&v222, "    metal::packed_float4 color; \n", 33);
    }

    sub_1AF17C688(&v222, "}; \n", 4);
    sub_1AF17C688(&v222, "#define OSD_USER_VARYING_DECLARE                             ", 61);
    for (j = 0; j != 8; ++j)
    {
      if (sub_1AF17CEB0(v15, j) == 2)
      {
        v28 = sub_1AF17C688(&v222, "float2 texcoord", 15);
        std::to_string(&__dst, j);
        v29 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
        v30 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__dst.__r_.__value_.__r.__words[2]) : __dst.__r_.__value_.__l.__size_;
        v31 = sub_1AF17C688(v28, v29, v30);
        sub_1AF17C688(v31, "; ", 2);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }
    }

    if (sub_1AF17CEA8(v15) == 2)
    {
      sub_1AF17C688(&v222, "float4 color; ", 14);
    }

    sub_1AF17C688(&v222, "\n", 1);
    sub_1AF17C688(&v222, "#define OSD_USER_VARYING_DECLARE_PACKED                             ", 68);
    for (k = 0; k != 8; ++k)
    {
      if (sub_1AF17CEB0(v15, k) == 2)
      {
        v33 = sub_1AF17C688(&v222, "metal::packed_float2 texcoord", 29);
        std::to_string(&__dst, k);
        v34 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
        v35 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__dst.__r_.__value_.__r.__words[2]) : __dst.__r_.__value_.__l.__size_;
        v36 = sub_1AF17C688(v33, v34, v35);
        sub_1AF17C688(v36, "; ", 2);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }
    }

    if (sub_1AF17CEA8(v15) == 2)
    {
      sub_1AF17C688(&v222, "metal::packed_float4 color; ", 28);
    }

    sub_1AF17C688(&v222, "\n", 1);
    sub_1AF17C688(&v222, "#define OSD_USER_VARYING_PER_VERTEX(in, out)                 ", 61);
    for (m = 0; m != 8; ++m)
    {
      if (sub_1AF17CEB0(v15, m) == 2)
      {
        v38 = sub_1AF17C688(&v222, "out.texcoord", 12);
        std::to_string(&__dst, m);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __dst.__r_.__value_.__l.__size_;
        }

        v41 = sub_1AF17C688(v38, p_dst, size);
        v42 = sub_1AF17C688(v41, " = in.texcoord", 14);
        std::to_string(&v219, m);
        if ((v219.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v43 = &v219;
        }

        else
        {
          v43 = v219.__r_.__value_.__r.__words[0];
        }

        if ((v219.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44 = HIBYTE(v219.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v44 = v219.__r_.__value_.__l.__size_;
        }

        v45 = sub_1AF17C688(v42, v43, v44);
        sub_1AF17C688(v45, "; ", 2);
        if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v219.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }
    }

    if (sub_1AF17CEA8(v15) == 2)
    {
      sub_1AF17C688(&v222, "out.color = in.color; ", 22);
    }

    sub_1AF17C688(&v222, "\n", 1);
    sub_1AF17C688(&v222, "#define OSD_USER_VARYING_PER_CONTROL_POINT(in, out)          ", 61);
    for (n = 0; n != 8; ++n)
    {
      if (sub_1AF17CEB0(v15, n) == 2)
      {
        v47 = sub_1AF17C688(&v222, "out.texcoord", 12);
        std::to_string(&__dst, n);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v48 = &__dst;
        }

        else
        {
          v48 = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v49 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v49 = __dst.__r_.__value_.__l.__size_;
        }

        v50 = sub_1AF17C688(v47, v48, v49);
        v51 = sub_1AF17C688(v50, " = in.texcoord", 14);
        std::to_string(&v219, n);
        if ((v219.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v52 = &v219;
        }

        else
        {
          v52 = v219.__r_.__value_.__r.__words[0];
        }

        if ((v219.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v53 = HIBYTE(v219.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v53 = v219.__r_.__value_.__l.__size_;
        }

        v54 = sub_1AF17C688(v51, v52, v53);
        sub_1AF17C688(v54, "; ", 2);
        if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v219.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }
    }

    if (sub_1AF17CEA8(v15) == 2)
    {
      sub_1AF17C688(&v222, "out.color = in.color; ", 22);
    }

    sub_1AF17C688(&v222, "\n", 1);
    sub_1AF17C688(&v222, "#define OSD_USER_VARYING_PER_EVAL_POINT(UV, a, b, c, d, out) ", 61);
    for (ii = 0; ii != 8; ++ii)
    {
      if (sub_1AF17CEB0(v15, ii) == 2)
      {
        v56 = sub_1AF17C688(&v222, "out.texcoord", 12);
        std::to_string(&__dst, ii);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v57 = &__dst;
        }

        else
        {
          v57 = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v58 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v58 = __dst.__r_.__value_.__l.__size_;
        }

        v59 = sub_1AF17C688(v56, v57, v58);
        v60 = sub_1AF17C688(v59, " = mix(mix(a.texcoord", 21);
        std::to_string(&v219, ii);
        if ((v219.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v61 = &v219;
        }

        else
        {
          v61 = v219.__r_.__value_.__r.__words[0];
        }

        if ((v219.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v62 = HIBYTE(v219.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v62 = v219.__r_.__value_.__l.__size_;
        }

        v63 = sub_1AF17C688(v60, v61, v62);
        v64 = sub_1AF17C688(v63, ", b.texcoord", 12);
        std::to_string(&v218, ii);
        if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v65 = &v218;
        }

        else
        {
          v65 = v218.__r_.__value_.__r.__words[0];
        }

        if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v66 = HIBYTE(v218.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v66 = v218.__r_.__value_.__l.__size_;
        }

        v67 = sub_1AF17C688(v64, v65, v66);
        v68 = sub_1AF17C688(v67, ", UV.x), mix(c.texcoord", 23);
        std::to_string(&v217, ii);
        if ((v217.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v69 = &v217;
        }

        else
        {
          v69 = v217.__r_.__value_.__r.__words[0];
        }

        if ((v217.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v70 = HIBYTE(v217.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v70 = v217.__r_.__value_.__l.__size_;
        }

        v71 = sub_1AF17C688(v68, v69, v70);
        v72 = sub_1AF17C688(v71, ", d.texcoord", 12);
        std::to_string(&v216, ii);
        if ((v216.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v73 = &v216;
        }

        else
        {
          v73 = v216.__r_.__value_.__r.__words[0];
        }

        if ((v216.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v74 = HIBYTE(v216.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v74 = v216.__r_.__value_.__l.__size_;
        }

        v75 = sub_1AF17C688(v72, v73, v74);
        sub_1AF17C688(v75, ", UV.x), UV.y); ", 16);
        if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v216.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v217.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v218.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v219.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }
    }

    if (sub_1AF17CEA8(v15) == 2)
    {
      sub_1AF17C688(&v222, "out.color = mix(mix(a.color, b.color, UV.x), mix(c.color, d.color, UV.x), UV.y); ", 81);
    }

    sub_1AF17C688(&v222, "\n", 1);
    sub_1AF17C688(&v222, "#define OSD_USER_VARYING_DECLARE_ATTRIBUTE                   ", 61);
    v76 = 0;
    v77 = 11;
    do
    {
      if (sub_1AF17CEB0(v15, v76) == 2)
      {
        v78 = sub_1AF17C688(&v222, "float2 texcoord", 15);
        std::to_string(&__dst, v76);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v79 = &__dst;
        }

        else
        {
          v79 = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v80 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v80 = __dst.__r_.__value_.__l.__size_;
        }

        v81 = sub_1AF17C688(v78, v79, v80);
        v82 = sub_1AF17C688(v81, " [[attribute(", 13);
        std::to_string(&v219, v77);
        if ((v219.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v83 = &v219;
        }

        else
        {
          v83 = v219.__r_.__value_.__r.__words[0];
        }

        if ((v219.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v84 = HIBYTE(v219.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v84 = v219.__r_.__value_.__l.__size_;
        }

        v85 = sub_1AF17C688(v82, v83, v84);
        sub_1AF17C688(v85, ")]]; ", 5);
        if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v219.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        ++v77;
      }

      ++v76;
    }

    while (v76 != 8);
    if (sub_1AF17CEA8(v15) == 2)
    {
      v86 = sub_1AF17C688(&v222, "float4 color [[attribute(", 25);
      std::to_string(&__dst, v77);
      v87 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
      v88 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__dst.__r_.__value_.__r.__words[2]) : __dst.__r_.__value_.__l.__size_;
      v89 = sub_1AF17C688(v86, v87, v88);
      sub_1AF17C688(v89, ")]]; ", 5);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

    sub_1AF17C688(&v222, "\n", 1);
  }

  else
  {
    sub_1AF17C688(&v222, "struct OsdInputVertexType { \n", 29);
    sub_1AF17C688(&v222, "    metal::packed_float3 position; \n", 36);
    sub_1AF17C688(&v222, "}; \n", 4);
  }

  objc_msgSend_setObject_forKeyedSubscript_(v215, v90, &unk_1F25D4180, @"VERTEX_BUFFER_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v215, v91, &unk_1F25D4198, @"PATCH_INDICES_BUFFER_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v215, v92, &unk_1F25D41B0, @"CONTROL_INDICES_BUFFER_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v215, v93, &unk_1F25D41C8, @"OSD_PATCHPARAM_BUFFER_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v215, v94, &unk_1F25D41E0, @"OSD_PERPATCHVERTEXBEZIER_BUFFER_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v215, v95, &unk_1F25D41F8, @"OSD_PERPATCHTESSFACTORS_BUFFER_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v215, v96, &unk_1F25D4210, @"OSD_VALENCE_BUFFER_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v215, v97, &unk_1F25D4228, @"OSD_QUADOFFSET_BUFFER_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v215, v98, &unk_1F25D4240, @"TRANSFORMS_BUFFER_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v215, v99, &unk_1F25D4258, @"TESSELLATION_LEVEL_BUFFER_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v215, v100, &unk_1F25D41B0, @"INDICES_BUFFER_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v215, v101, &unk_1F25D4270, @"QUAD_TESSFACTORS_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v215, v102, &unk_1F25D41E0, @"OSD_PERPATCHVERTEXGREGORY_BUFFER_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v215, v103, &unk_1F25D4288, @"OSD_PATCH_INDEX_BUFFER_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v215, v104, &unk_1F25D42A0, @"OSD_DRAWINDIRECT_BUFFER_INDEX");
  objc_msgSend_setObject_forKeyedSubscript_(v215, v105, &unk_1F25D42B8, @"OSD_KERNELLIMIT_BUFFER_INDEX");
  v107 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v106, (v214 >> 8) & 1);
  objc_msgSend_setObject_forKeyedSubscript_(v215, v108, v107, @"OSD_PATCH_ENABLE_SINGLE_CREASE");
  v110 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v109, 0);
  objc_msgSend_setObject_forKeyedSubscript_(v215, v111, v110, @"OSD_FRACTIONAL_EVEN_SPACING");
  v113 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v112, (v214 >> 16) & 1);
  objc_msgSend_setObject_forKeyedSubscript_(v215, v114, v113, @"OSD_FRACTIONAL_ODD_SPACING");
  objc_msgSend_setObject_forKeyedSubscript_(v215, v115, &unk_1F25D4150, @"OSD_MAX_TESS_LEVEL");
  objc_msgSend_setObject_forKeyedSubscript_(v215, v116, &unk_1F25D42D0, @"USE_STAGE_IN");
  v118 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v117, (v214 & 0x10000) == 0);
  objc_msgSend_setObject_forKeyedSubscript_(v215, v119, v118, @"USE_PTVS_FACTORS");
  objc_msgSend_setObject_forKeyedSubscript_(v215, v120, &unk_1F25D42E8, @"USE_PTVS_SHARPNESS");
  v122 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v121, WORD2(v214));
  objc_msgSend_setObject_forKeyedSubscript_(v215, v123, v122, @"THREADS_PER_THREADGROUP");
  if (v7 / WORD2(v214) <= 1)
  {
    v125 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v124, 1);
  }

  else
  {
    v125 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v124, v7 / WORD2(v214));
  }

  objc_msgSend_setObject_forKeyedSubscript_(v215, v126, v125, @"CONTROL_POINTS_PER_THREAD");
  v128 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v127, v7);
  objc_msgSend_setObject_forKeyedSubscript_(v215, v129, v128, @"VERTEX_CONTROL_POINTS_PER_PATCH");
  objc_msgSend_setObject_forKeyedSubscript_(v215, v130, &unk_1F25D42B8, @"OSD_MAX_VALENCE");
  v132 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v131, (v213 + 3));
  objc_msgSend_setObject_forKeyedSubscript_(v215, v133, v132, @"OSD_NUM_ELEMENTS");
  objc_msgSend_setObject_forKeyedSubscript_(v215, v134, &unk_1F25D42D0, @"OSD_ENABLE_BACKPATCH_CULL");
  objc_msgSend_setObject_forKeyedSubscript_(v215, v135, &unk_1F25D42D0, @"OSD_USE_PATCH_INDEX_BUFFER");
  v137 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v136, (v214 >> 16) & 1);
  objc_msgSend_setObject_forKeyedSubscript_(v215, v138, v137, @"OSD_ENABLE_SCREENSPACE_TESSELLATION");
  objc_msgSend_setObject_forKeyedSubscript_(v215, v139, &unk_1F25D42D0, @"OSD_ENABLE_PATCH_CULL");
  objc_msgSend_setObject_forKeyedSubscript_(v215, v140, &unk_1F25D42E8, @"NEEDS_BARRIER");
  if (v211 + 2 * v212)
  {
    v142 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v141, (v211 + 2 * v212));
    objc_msgSend_setObject_forKeyedSubscript_(v215, v143, v142, @"OSD_FVAR_WIDTH");
    v145 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v144, v210);
    objc_msgSend_setObject_forKeyedSubscript_(v215, v146, v145, @"OSD_FVAR_USES_MULTIPLE_CHANNELS");
    objc_msgSend_setObject_forKeyedSubscript_(v215, v147, &unk_1F25D4300, @"OSD_FVAR_DATA_BUFFER_INDEX");
    objc_msgSend_setObject_forKeyedSubscript_(v215, v148, &unk_1F25D4318, @"OSD_FVAR_INDICES_BUFFER_INDEX");
    if ((v231[0] - 5) <= 4)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v215, v149, &unk_1F25D4150, @"OSD_FVAR_PATCHPARAM_BUFFER_INDEX");
      objc_msgSend_setObject_forKeyedSubscript_(v215, v150, &unk_1F25D4330, @"OSD_FVAR_PATCH_ARRAY_BUFFER_INDEX");
    }

    objc_msgSend_setObject_forKeyedSubscript_(v215, v149, &unk_1F25D4300, @"OSD_FVAR_CHANNELS_CHANNEL_COUNT_INDEX");
    objc_msgSend_setObject_forKeyedSubscript_(v215, v151, &unk_1F25D4318, @"OSD_FVAR_CHANNELS_CHANNEL_DESCRIPTORS_INDEX");
    objc_msgSend_setObject_forKeyedSubscript_(v215, v152, &unk_1F25D4150, @"OSD_FVAR_CHANNELS_PACKED_DATA_BUFFER_INDEX");
    objc_msgSend_setObject_forKeyedSubscript_(v215, v153, &unk_1F25D4330, @"OSD_FVAR_CHANNELS_PATCH_ARRAY_INDEX_BUFFER_INDEX");
  }

  objc_msgSend_setObject_forKeyedSubscript_(v215, v141, &unk_1F25D4348, @"OSD_PRIMVAR_INTERPOLATION_MODE_USER_VARYING");
  objc_msgSend_setObject_forKeyedSubscript_(v215, v154, &unk_1F25D4360, @"OSD_PRIMVAR_INTERPOLATION_MODE_FACE_VARYING");
  v155 = MEMORY[0x1E696AD98];
  v156 = sub_1AF17CEA8(v15);
  v158 = objc_msgSend_numberWithUnsignedInt_(v155, v157, v156);
  objc_msgSend_setObject_forKeyedSubscript_(v215, v159, v158, @"OSD_COLOR_INTERPOLATION_MODE");
  v160 = MEMORY[0x1E696AD98];
  v161 = sub_1AF17CEB0(v15, 0);
  v163 = objc_msgSend_numberWithUnsignedInt_(v160, v162, v161);
  objc_msgSend_setObject_forKeyedSubscript_(v215, v164, v163, @"OSD_TEXCOORD0_INTERPOLATION_MODE");
  v165 = MEMORY[0x1E696AD98];
  v166 = sub_1AF17CEB0(v15, 1);
  v168 = objc_msgSend_numberWithUnsignedInt_(v165, v167, v166);
  objc_msgSend_setObject_forKeyedSubscript_(v215, v169, v168, @"OSD_TEXCOORD1_INTERPOLATION_MODE");
  v170 = MEMORY[0x1E696AD98];
  v171 = sub_1AF17CEB0(v15, 2);
  v173 = objc_msgSend_numberWithUnsignedInt_(v170, v172, v171);
  objc_msgSend_setObject_forKeyedSubscript_(v215, v174, v173, @"OSD_TEXCOORD2_INTERPOLATION_MODE");
  v175 = MEMORY[0x1E696AD98];
  v176 = sub_1AF17CEB0(v15, 3);
  v178 = objc_msgSend_numberWithUnsignedInt_(v175, v177, v176);
  objc_msgSend_setObject_forKeyedSubscript_(v215, v179, v178, @"OSD_TEXCOORD3_INTERPOLATION_MODE");
  v180 = MEMORY[0x1E696AD98];
  v181 = sub_1AF17CEB0(v15, 4);
  v183 = objc_msgSend_numberWithUnsignedInt_(v180, v182, v181);
  objc_msgSend_setObject_forKeyedSubscript_(v215, v184, v183, @"OSD_TEXCOORD4_INTERPOLATION_MODE");
  v185 = MEMORY[0x1E696AD98];
  v186 = sub_1AF17CEB0(v15, 5);
  v188 = objc_msgSend_numberWithUnsignedInt_(v185, v187, v186);
  objc_msgSend_setObject_forKeyedSubscript_(v215, v189, v188, @"OSD_TEXCOORD5_INTERPOLATION_MODE");
  v190 = MEMORY[0x1E696AD98];
  v191 = sub_1AF17CEB0(v15, 6);
  v193 = objc_msgSend_numberWithUnsignedInt_(v190, v192, v191);
  objc_msgSend_setObject_forKeyedSubscript_(v215, v194, v193, @"OSD_TEXCOORD6_INTERPOLATION_MODE");
  v195 = MEMORY[0x1E696AD98];
  v196 = sub_1AF17CEB0(v15, 7);
  v198 = objc_msgSend_numberWithUnsignedInt_(v195, v197, v196);
  objc_msgSend_setObject_forKeyedSubscript_(v215, v199, v198, @"OSD_TEXCOORD7_INTERPOLATION_MODE");
  objc_msgSend_setObject_forKeyedSubscript_(v215, v200, &unk_1F25D42D0, @"CFX_OPTIMIZE_OPENSUBDIV_STORAGE");
  v202 = MEMORY[0x1E696AEC0];
  if ((v229 & 0x10) != 0)
  {
    v204 = v228;
    if (v228 < v225)
    {
      v228 = v225;
      v204 = v225;
    }

    locale = v224[4].__locale_;
  }

  else
  {
    if ((v229 & 8) == 0)
    {
      v203 = 0;
      *(&__dst.__r_.__value_.__s + 23) = 0;
      goto LABEL_202;
    }

    locale = v224[1].__locale_;
    v204 = v224[3].__locale_;
  }

  v203 = v204 - locale;
  if ((v204 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AF10A1D0();
  }

  if (v203 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v204 - locale;
  if (v203)
  {
    memmove(&__dst, locale, v203);
  }

LABEL_202:
  __dst.__r_.__value_.__s.__data_[v203] = 0;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v206 = objc_msgSend_stringWithCString_encoding_(v202, v201, &__dst, 4);
  }

  else
  {
    v206 = objc_msgSend_stringWithCString_encoding_(v202, v201, __dst.__r_.__value_.__l.__data_, 4);
  }

  v207 = v206;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v221[0] = *MEMORY[0x1E69E54D8];
  v208 = *(MEMORY[0x1E69E54D8] + 72);
  *(v221 + *(v221[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v222 = v208;
  v223 = MEMORY[0x1E69E5548] + 16;
  if (v227 < 0)
  {
    operator delete(__p);
  }

  v223 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v224);
  std::iostream::~basic_iostream();
  MEMORY[0x1B271C650](&v230);
  return v207;
}

void sub_1AF174A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  sub_1AF17A1D4(&a45, MEMORY[0x1E69E54D8]);
  MEMORY[0x1B271C650](&a61);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF174B38(_DWORD *a1)
{
  v1 = *a1 - 1;
  if (v1 > 8)
  {
    return -1;
  }

  else
  {
    return word_1AFE21770[v1];
  }
}

uint64_t *sub_1AF174B64(uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  sub_1AF17C4C4((a1 + 3), 24);
  return a1;
}

void sub_1AF174DE0(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1B271C650](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF174E14(__n128 *a1, uint64_t a2)
{
  v2 = a1[10].n128_u64[0];
  if (!v2)
  {
    return 0;
  }

  v6 = 0uLL;
  v7 = 0;
  sub_1AF1B40F0(a1, a2, &v6);
  if ((v7 & 0x100) != 0)
  {
    v4 = a1[8].n128_u64[1];
    if (v4)
    {
      LODWORD(v4) = a1[9].n128_u64[0] != 0;
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (*(v2 + 3) && v2[4] == ((BYTE1(v7) >> 1) & 1) && v2[2] == a1[8].n128_u8[1] && v4 == v2[3] && *v2 == a1[8].n128_u8[0] && v2[7] == a1[8].n128_u8[3] && v2[8] == a1[8].n128_u8[4] && *(v2 + 2) == (a1[9].n128_u64[0] ^ a1[8].n128_u64[1]))
  {
    return 0;
  }

  sub_1AF174F04(a1);
  return 1;
}

void sub_1AF174F04(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (v1)
  {
    v3 = v1[3];
    if (v3)
    {
      CFRelease(v3);
    }

    free(v1);
    *(a1 + 160) = 0;
  }
}

char *sub_1AF174F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  sub_1AF17CA14(a1, a2);
  v8 = *(a1 + 160);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v4 == 0;
  }

  if (v9)
  {
    if (!v8)
    {
      return v8;
    }

    v41 = a3;
    v10 = *(v8 + 3) == 0;
  }

  else
  {
    if (!*(a1 + 128))
    {
      v11 = sub_1AF0D5194(v6, v7);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD8CDC(v11, v7, v12, v13, v14, v15, v16, v17);
      }
    }

    v43 = 0uLL;
    v44 = 0;
    sub_1AF1B40F0(a1, v7, &v43);
    v18 = (v44 & 0x100) != 0 && *(a1 + 136) && *(a1 + 144) != 0;
    v19 = *(a1 + 128);
    v20 = *(a1 + 129);
    v21 = (BYTE1(v44) >> 1) & 1;
    v41 = a3;
    v22 = sub_1AF1305F8(a3, 64);
    v23 = *(a1 + 131);
    v24 = *(a1 + 144) ^ *(a1 + 136);
    v6 = malloc_type_malloc(0x20uLL, 0x10200404C916D5DuLL);
    v8 = v6;
    *(a1 + 160) = v6;
    *v6 = v19;
    v6[1] = 0;
    v6[2] = v20;
    v6[3] = v18;
    v6[4] = v21;
    v6[5] = v22;
    v6[6] = 0;
    *(v6 + 7) = v23;
    *(v6 + 3) = 0;
    *(v6 + 9) = 0;
    v10 = 1;
    *(v6 + 2) = v24;
    *(v6 + 3) = 0;
  }

  if (v10 && v4 != 0)
  {
    if (!v41)
    {
      v26 = sub_1AF0D5194(v6, v7);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD2B48(v26, v7, v27, v28, v29, v30, v31, v32);
      }
    }

    v33 = sub_1AF12E2AC(v41, v7);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = sub_1AF17515C;
    v42[3] = &unk_1E7A7AFA8;
    v42[4] = v33;
    v42[5] = a1;
    v42[6] = v8;
    v36 = objc_msgSend_resourceManager(v33, v34, v35);
    v39 = objc_msgSend_commandQueue(v33, v37, v38);
    *(v8 + 3) = sub_1AF1751D0(a1, v41, v8, v36, v39, v42);
  }

  return v8;
}

void sub_1AF17515C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_commandBufferStatusMonitor(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_renderContext_commandBufferDidCompleteWithError_(v5, v6, *(a1 + 32), a2);
  v9 = sub_1AF0D5194(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDD8D54(a1, v9);
  }

  v10 = *(*(a1 + 48) + 24);
  if (v10)
  {
    CFRelease(v10);
    *(*(a1 + 48) + 24) = 0;
  }
}

uint64_t sub_1AF1751D0(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, void *a5, uint64_t a6)
{
  v54[5] = *MEMORY[0x1E69E9840];
  sub_1AF16CBEC(a1, a2);
  if (!a2 || (v9 = sub_1AF12F398(a2, v8), !*(v9 + 16)) || (v10 = v9, v11 = sub_1AF17A324(a1), (v12 = (*(v10 + 16))(a2, v11)) == 0) || (v13 = sub_1AF1720C0(v12, v8, a3, a4, a5, a6)) == 0)
  {
    v14 = sub_1AF17D0F0(a1, v8);
    if (v14)
    {
      if (!a5)
      {
        v16 = sub_1AF0D5194(v14, v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDD8A54(v16, v17, v18, v19, v20, v21, v22, v23);
        }
      }

      os_variant_has_internal_diagnostics();
      v26 = objc_msgSend_commandBuffer(a5, v24, v25);
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = sub_1AF17A588;
      v54[3] = &unk_1E7A7B060;
      v54[4] = a6;
      objc_msgSend_addCompletedHandler_(v26, v27, v54);
      v30 = objc_msgSend_computeCommandEncoder(v26, v28, v29);
      v50 = objc_msgSend_device(a5, v31, v32);
      v51 = a5;
      v52 = v26;
      v53 = v30;
      v34 = sub_1AF1B2C1C(a1, v33);
      sub_1AF17D98C((a1 + 128), v34);
      sub_1AF17CBA0(a1 + 128, v34);
      v44 = 0u;
      v43 = 0u;
      v42 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0;
      sub_1AF17EC80(&v41, a1 + 128, v34);
      sub_1AF17DF0C(a1 + 128, v35);
    }

    return 0;
  }

  return v13;
}

void sub_1AF176168(_Unwind_Exception *a1)
{
  sub_1AF17C11C((v1 + 320));
  sub_1AF17C22C((v1 + 432));
  _Unwind_Resume(a1);
}

uint64_t sub_1AF176290(uint64_t a1)
{
  v1 = *(*(a1 + 160) + 24);
  if (v1)
  {
    return *(v1 + 24);
  }

  else
  {
    return 0;
  }
}

void sub_1AF1762AC(uint64_t a1, const char *a2, void *a3, int a4)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (!v5 || v5 != a4)
    {
      *(v4 + 16) = a4;
      v34 = *(v4 + 28);
      if (!*(v4 + 360))
      {
        v9 = sub_1AF0D5194(a1, a2);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDD8EE0(v9, a2, a3, v10, v11, v12, v13, v14);
        }
      }

      v15 = objc_msgSend_commandQueue(a3, a2, a3);
      v18 = objc_msgSend_resourceComputeEncoder(a3, v16, v17);
      v19 = sub_1AFDE323C(*(v4 + 360));
      objc_msgSend_setComputePipelineState_(v18, v20, v19);
      v21 = sub_1AF17CF8C(*(v4 + 24));
      v22 = sub_1AF17CF9C(*(v4 + 24));
      if (v21)
      {
        v24 = 4;
      }

      else
      {
        v24 = 0;
      }

      v33 = ((v24 + 2 * v22) & 0xFE) + 3;
      objc_msgSend_setBuffer_offset_atIndex_(v18, v23, a2, 0, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v18, v25, *(v4 + 64), 0, 1);
      objc_msgSend_setBuffer_offset_atIndex_(v18, v26, *(v4 + 352), 0, 2);
      objc_msgSend_setBytes_length_atIndex_(v18, v27, &v33, 4, 3);
      objc_msgSend_setBytes_length_atIndex_(v18, v28, &v34, 4, 4);
      objc_msgSend_dispatchOnGrid1D_(v18, v29, v34);
      v32[0] = objc_msgSend_device(v15, v30, v31);
      v32[1] = v15;
      v32[2] = 0;
      v32[3] = v18;
      sub_1AF171E30(v4 + 144, v32);
    }
  }
}

BOOL sub_1AF17641C(uint64_t a1)
{
  result = 0;
  if (*(a1 + 2) == 1)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      if (!*(v1 + 20))
      {
        return 1;
      }
    }
  }

  return result;
}

void *sub_1AF176448(void *result, void *a2, uint64_t a3, int a4, float a5)
{
  if (*(result + 2) == 1)
  {
    v62 = v5;
    v63 = v6;
    v7 = result;
    v8 = result[3];
    if (v8)
    {
      v9 = *(v8 + 20);
      if (!v9 || v9 != a4)
      {
        *(v8 + 20) = a4;
        LOBYTE(a5) = *(result + 1);
        v61 = LODWORD(a5);
        v12 = objc_msgSend_resourceComputeEncoder(a2, a2, a3);
        objc_msgSend_setBuffer_offset_atIndex_(v12, v13, *(v8 + 64), *(v8 + 72), 5);
        objc_msgSend_setBuffer_offset_atIndex_(v12, v14, *(v8 + 48), 0, 6);
        objc_msgSend_setBuffer_offset_atIndex_(v12, v15, *(v8 + 56), 0, 8);
        objc_msgSend_setBuffer_offset_atIndex_(v12, v16, *(v8 + 264), 0, 11);
        objc_msgSend_setBuffer_offset_atIndex_(v12, v17, *(v8 + 232), 0, 19);
        objc_msgSend_setBytes_length_atIndex_(v12, v18, &v61, 4, 13);
        result = objc_msgSend_setBytes_length_atIndex_(v12, v19, a3, 192, 22);
        if (*(v7 + 6) == 2)
        {
          objc_msgSend_setBuffer_offset_atIndex_(v12, v20, *(v8 + 104), 0, 10);
          result = objc_msgSend_setBuffer_offset_atIndex_(v12, v21, *(v8 + 96), 0, 9);
        }

        if (*(v8 + 32))
        {
          v22 = 0;
          v49 = xmmword_1AFE21730;
          v23 = 1;
          do
          {
            v24 = (*(v8 + 40) + 16 * v22);
            v26 = *v24;
            v25 = v24[1];
            v28 = v24[2];
            v27 = v24[3];
            v60 = v26;
            if ((v26 - 6) <= 2)
            {
              objc_msgSend_setBuffer_offset_atIndex_(v12, v20, *(v8 + 248), 0, 7);
            }

            v29 = sub_1AF174B38(&v60);
            v31 = v29;
            if (v26 == 9)
            {
              v32 = 4;
            }

            else
            {
              v32 = v29;
            }

            v33 = v32 >> 5;
            if (v33 <= 1)
            {
              v33 = 1;
            }

            v50 = v33;
            objc_msgSend_setBufferOffset_atIndex_(v12, v30, 12 * v27, 8, v49);
            objc_msgSend_setBufferOffset_atIndex_(v12, v34, 4 * v28, 6);
            v35 = sub_1AFDE323C(*(v8 + 272 + 8 * v26));
            v37 = objc_msgSend_setComputePipelineState_(v12, v36, v35);
            v39 = 0;
            if (v26 > 4)
            {
              if (v26 > 6)
              {
                switch(v26)
                {
                  case 7:
                    v39 = 4 * v25;
                    objc_msgSend_setBufferOffset_atIndex_(v12, v38, *(v8 + 242), 19);
                    objc_msgSend_setBufferOffset_atIndex_(v12, v43, *(v8 + 258), 7);
                    objc_msgSend_setBufferOffset_atIndex_(v12, v44, 4 * *(v8 + 112), 10);
                    break;
                  case 8:
                    v39 = 4 * v25;
                    objc_msgSend_setBufferOffset_atIndex_(v12, v38, *(v8 + 244), 19);
                    objc_msgSend_setBufferOffset_atIndex_(v12, v45, *(v8 + 260), 7);
                    objc_msgSend_setBufferOffset_atIndex_(v12, v46, 4 * *(v8 + 116), 10);
                    break;
                  case 9:
                    v39 = 4 * v25;
                    objc_msgSend_setBufferOffset_atIndex_(v12, v38, *(v8 + 246), 19);
                    break;
                }

                goto LABEL_36;
              }

              if (v26 == 5)
              {
LABEL_30:
                v42 = sub_1AF0D5194(v37, v38);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  sub_1AFDD8BB8(&v58, v59);
                }

                goto LABEL_32;
              }

              v39 = v25 * v31;
              objc_msgSend_setBufferOffset_atIndex_(v12, v38, *(v8 + 240), 19);
              objc_msgSend_setBufferOffset_atIndex_(v12, v41, *(v8 + 256), 7);
            }

            else
            {
              if (v26 < 3)
              {
                goto LABEL_30;
              }

              if ((v26 - 3) < 2)
              {
                v40 = sub_1AF0D5194(v37, v38);
                if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                {
                  sub_1AFDD8BB8(&v56, v57);
                }

LABEL_32:
                v39 = 0;
              }
            }

LABEL_36:
            v55 = v39;
            objc_msgSend_setBytes_length_atIndex_(v12, v38, &v55, 4, 12);
            if (*(v7 + 5) == 1)
            {
              v53 = v25 * v32;
              v54 = vdupq_n_s64(1uLL);
              v51 = v49;
              v52 = 1;
              result = objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v12, v47, &v53, &v51);
            }

            else
            {
              v53 = ((v25 * v32 / v50) + 31) >> 5;
              v54 = vdupq_n_s64(1uLL);
              v51 = v49;
              v52 = 1;
              result = objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v12, v47, &v53, &v51);
            }

            v22 = v23;
          }

          while (*(v8 + 32) > v23++);
        }
      }
    }
  }

  return result;
}

void sub_1AF176848(uint64_t a1, void *a2, int a3, unsigned int a4, unsigned int a5)
{
  v5 = *(a1 + 24);
  if (!v5)
  {
    return;
  }

  v11 = sub_1AF171650(*(a1 + 24), a3);
  if (!v11)
  {
    v14 = sub_1AF0D5194(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8F58(v14);
    }
  }

  if ((a3 - 2) > 4)
  {
    v15 = 3;
  }

  else
  {
    v15 = dword_1AFE21784[(a3 - 2)];
  }

  v16 = v5[11];
  if (v16)
  {
    v17 = -1227133513 * ((v16[1] - *v16) >> 3);
  }

  else
  {
    v17 = 0;
  }

  v77 = v17;
  v88 = v17;
  v18 = objc_msgSend_renderEncoder(a2, v12, v13);
  LODWORD(v19) = 1.0;
  v22 = objc_msgSend_setTessellationFactorScale_(*(v18 + 2), v20, v21, v19);
  v25 = v5[8];
  v26 = v5[6];
  if (!v25)
  {
    v27 = sub_1AF0D5194(v22, v23);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8FF0(v27, v23, v28, v29, v30, v31, v32, v33);
    }
  }

  v76 = v15 - 5;
  LOBYTE(v24) = *(a1 + 1);
  v87 = v24;
  objc_msgSend_setVertexBuffer_offset_atIndex_(*(v18 + 2), v23, v25, 0, 5);
  objc_msgSend_setVertexBuffer_offset_atIndex_(*(v18 + 2), v34, v26, 0, 6);
  sub_1AF176E98(v18, &v87, 4uLL, 13);
  objc_msgSend_setVertexBuffer_offset_atIndex_(*(v18 + 2), v35, v5[33], 0, 11);
  objc_msgSend_setVertexBuffer_offset_atIndex_(*(v18 + 2), v36, v5[7], 0, 8);
  if (v16)
  {
    if (v77 >= 2)
    {
      sub_1AF176E98(v18, &v88, 4uLL, 14);
      objc_msgSend_setVertexBuffer_offset_atIndex_(*(v18 + 2), v38, v5[16], 0, 15);
      v39 = v5 + 17;
LABEL_20:
      objc_msgSend_setVertexBuffer_offset_atIndex_(*(v18 + 2), v37, *v39, 0, 16);
      goto LABEL_21;
    }

    v40 = v5[11];
    v41 = *v40;
    if (v40[1] == *v40)
    {
LABEL_78:
      sub_1AF10A1D0();
    }

    objc_msgSend_setVertexBuffer_offset_atIndex_(*(v18 + 2), v37, v41[4], v41[5], 14);
    objc_msgSend_setVertexBuffer_offset_atIndex_(*(v18 + 2), v42, v41[2], 0, 15);
    if (v76 <= 4)
    {
      v39 = v41 + 3;
      goto LABEL_20;
    }
  }

LABEL_21:
  if (*(a1 + 6) == 2)
  {
    objc_msgSend_setVertexBuffer_offset_atIndex_(*(v18 + 2), v37, v5[13], 0, 10);
    objc_msgSend_setVertexBuffer_offset_atIndex_(*(v18 + 2), v43, v5[12], 0, 9);
  }

  v86 = 0;
  v44 = v5[4];
  if (v44)
  {
    LODWORD(v45) = 0;
    v46 = 0;
    v47 = v15 - 6;
    v48 = a4;
    v49 = a5;
    while (1)
    {
      v50 = (v5[5] + 16 * v46);
      v85 = *v50;
      if (v85 == v15)
      {
        break;
      }

LABEL_67:
      v45 = (v45 + 1);
      v86 = v45;
      v46 = v45;
      if (v44 <= v45)
      {
        return;
      }
    }

    if (v47 <= 2)
    {
      objc_msgSend_setVertexBuffer_offset_atIndex_(*(v18 + 2), v37, v5[31], 0, 7);
    }

    objc_msgSend_setVertexBufferOffset_atIndex_(*(v18 + 2), v37, 12 * v50[3], 8);
    v52 = objc_msgSend_setVertexBufferOffset_atIndex_(*(v18 + 2), v51, 4 * v50[2], 6);
    if (v16)
    {
      if (v77 >= 2)
      {
        v54 = &v86;
        v55 = v18;
        v56 = 4;
LABEL_34:
        v52 = sub_1AF176E98(v55, v54, v56, 17);
        goto LABEL_35;
      }

      v57 = *v5[11];
      if (*(v5[11] + 8) == v57)
      {
        goto LABEL_78;
      }

      v58 = *(v57 + 8) + 16 * v86;
      v52 = objc_msgSend_setVertexBufferOffset_atIndex_(*(v18 + 2), v53, 4 * *(v58 + 8), 15);
      if (v76 <= 4)
      {
        objc_msgSend_setVertexBufferOffset_atIndex_(*(v18 + 2), v53, 12 * *(v58 + 12), 16);
        v55 = v18;
        v54 = v58;
        v56 = 16;
        goto LABEL_34;
      }
    }

LABEL_35:
    if (v15 > 9)
    {
      goto LABEL_43;
    }

    if (((1 << v15) & 0x27) != 0)
    {
      v59 = sub_1AF0D5194(v52, v53);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDD8BB8(&v83, v84);
      }
    }

    else
    {
      if (((1 << v15) & 0x1C0) != 0)
      {
        objc_msgSend_setVertexBufferOffset_atIndex_(*(v18 + 2), v53, *(v5 + v47 + 128), 7);
      }

      else if (v15 != 9)
      {
        goto LABEL_43;
      }

      objc_msgSend_setTessellationFactorBuffer_offset_instanceStride_(*(v18 + 2), v53, v5[29], *(v5 + v47 + 120), 0);
    }

LABEL_43:
    v60 = sub_1AF174B38(&v85);
    v61 = v5[15];
    if (!v61)
    {
      v80 = 0;
      v81 = 0;
      v82 = 0;
      operator new();
    }

    v62 = *v61;
    if (0xAAAAAAAAAAAAAAABLL * ((*(v5[15] + 8) - v62) >> 3) <= v48)
    {
      sub_1AF10A1D0();
    }

    v63 = *(v62 + 24 * v48);
    if (0xAAAAAAAAAAAAAAABLL * ((*(v62 + 24 * v48 + 8) - v63) >> 3) <= v86)
    {
      sub_1AF10A1D0();
    }

    v64 = sub_1AF17C3C0(&v80, (v63 + 24 * v86));
    if (v15 > 4)
    {
      if ((v15 - 6) < 4)
      {
        v65 = v80;
        v70 = v81;
        if (v80 != v81)
        {
          do
          {
            objc_msgSend_drawPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_instanceCount_baseInstance_(*(v18 + 2), v37, v60, *v65, v65[1], 0, 0, *v18 * v49, 0);
            v65 += 2;
          }

          while (v65 != v70);
LABEL_63:
          v65 = v80;
        }

LABEL_64:
        if (v65)
        {
          v81 = v65;
          operator delete(v65);
        }

        LODWORD(v45) = v86;
        v44 = v5[4];
        goto LABEL_67;
      }
    }

    else if (v15 >= 3)
    {
      if (v15 != 3)
      {
        v65 = v80;
        v72 = v81;
        if (v80 == v81)
        {
          goto LABEL_64;
        }

        do
        {
          v73 = 3 * *v65;
          v74 = 3 * v65[1];
          v75 = *(v18 + 2);
          if (*v18 * v49 < 2)
          {
            objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v75, v37, 3, v73, v74);
          }

          else
          {
            objc_msgSend_drawPrimitives_vertexStart_vertexCount_instanceCount_(v75, v37, 3, v73, v74);
          }

          v65 += 2;
        }

        while (v65 != v72);
        goto LABEL_63;
      }

      v65 = v80;
      v66 = v81;
      if (v80 != v81)
      {
        do
        {
          v67 = 6 * *v65;
          v68 = 6 * v65[1];
          v69 = *(v18 + 2);
          if (*v18 * v49 < 2)
          {
            objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v69, v37, 3, v67, v68);
          }

          else
          {
            objc_msgSend_drawPrimitives_vertexStart_vertexCount_instanceCount_(v69, v37, 3, v67, v68);
          }

          v65 += 2;
        }

        while (v65 != v66);
        goto LABEL_63;
      }

      goto LABEL_64;
    }

    v71 = sub_1AF0D5194(v64, v37);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDD8BB8(&v78, v79);
    }

    goto LABEL_63;
  }
}

void sub_1AF176E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF176E98(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  CFXBufferAllocatorPerFrameAllocateWithBytes(**(a1 + 32), a2, a3);
  v7 = v6;
  CFXBufferSliceGetMTLBuffer();
  v10 = v9;
  v11 = *(a1 + 16);

  return objc_msgSend_setVertexBuffer_offset_atIndex_(v11, v8, v10, v7, a4);
}

void *sub_1AF176F00(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v8 = *(*(a1 + 160) + 24);
  v9 = sub_1AF170BF8(a1);
  result = sub_1AF170C98(a1);
  if (v9 && result)
  {
    result = sub_1AFDEA180(a2, 0, v11);
    v13 = result;
    if (*(v8 + 752))
    {
      if (!a4)
      {
        return result;
      }
    }

    else
    {
      v147 = result;
      v14 = sub_1AF1B2C1C(a1, v12);
      v15 = sub_1AF1A4C6C(v14, 0, 0);
      *(v8 + 728) = 0;
      v17 = sub_1AF1A3CCC(v14, v16);
      if (v17 >= 1)
      {
        v18 = v17;
        for (i = 0; i != v18; ++i)
        {
          v20 = sub_1AF1A3D1C(v14, i, 0);
          v154 = 0u;
          v155 = 0u;
          v152 = 0u;
          v153 = 0u;
          sub_1AF1A767C(v20, v15, &v152);
          v151[0] = v152;
          v151[1] = v153;
          v151[2] = v154;
          v151[3] = v155;
          v150[0] = MEMORY[0x1E69E9820];
          v150[1] = 3221225472;
          v150[2] = sub_1AF1774C0;
          v150[3] = &unk_1E7A7AFC8;
          v150[4] = v8;
          sub_1AF1A80E4(v151, v150, v154);
        }
      }

      v21 = *(v8 + 728) << 6;
      v22 = malloc_type_malloc(v21, 0x1000040E0EAB150uLL);
      sub_1AF1B40A0(a1, v23);
      v24 = 8 * *(v8 + 728);
      v25 = malloc_type_malloc(v24, 0x100004052888210uLL);
      *&v152 = 0;
      *(&v152 + 1) = &v152;
      *&v153 = 0x2020000000;
      DWORD2(v153) = 0;
      v149[0] = MEMORY[0x1E69E9820];
      v149[1] = 3221225472;
      v149[2] = sub_1AF1774D4;
      v149[3] = &unk_1E7A7AFF0;
      v149[4] = &v152;
      v149[5] = v22;
      v149[6] = v25;
      sub_1AF170D90(a1, v149);
      v28 = objc_msgSend_device(v147, v26, v27);
      *(v8 + 736) = objc_msgSend_newBufferWithBytes_length_options_(v28, v29, v22, v21, 0);
      *(v8 + 744) = objc_msgSend_newBufferWithBytes_length_options_(v28, v30, v25, v24, 0);
      free(v22);
      free(v25);
      v31 = objc_alloc_init(MEMORY[0x1E69741E0]);
      v34 = objc_msgSend_attributes(v31, v32, v33);
      v36 = objc_msgSend_objectAtIndexedSubscript_(v34, v35, 0);
      objc_msgSend_setFormat_(v36, v37, 30);
      v40 = objc_msgSend_attributes(v31, v38, v39);
      v42 = objc_msgSend_objectAtIndexedSubscript_(v40, v41, 0);
      objc_msgSend_setOffset_(v42, v43, 0);
      v46 = objc_msgSend_attributes(v31, v44, v45);
      v48 = objc_msgSend_objectAtIndexedSubscript_(v46, v47, 0);
      objc_msgSend_setBufferIndex_(v48, v49, 18);
      v52 = objc_msgSend_attributes(v31, v50, v51);
      v54 = objc_msgSend_objectAtIndexedSubscript_(v52, v53, 3);
      objc_msgSend_setFormat_(v54, v55, 31);
      v58 = objc_msgSend_attributes(v31, v56, v57);
      v60 = objc_msgSend_objectAtIndexedSubscript_(v58, v59, 3);
      objc_msgSend_setOffset_(v60, v61, 16);
      v64 = objc_msgSend_attributes(v31, v62, v63);
      v66 = objc_msgSend_objectAtIndexedSubscript_(v64, v65, 3);
      objc_msgSend_setBufferIndex_(v66, v67, 19);
      v70 = objc_msgSend_layouts(v31, v68, v69);
      v72 = objc_msgSend_objectAtIndexedSubscript_(v70, v71, 18);
      objc_msgSend_setStride_(v72, v73, 32);
      v76 = objc_msgSend_layouts(v31, v74, v75);
      v78 = objc_msgSend_objectAtIndexedSubscript_(v76, v77, 18);
      objc_msgSend_setStepFunction_(v78, v79, 1);
      v82 = objc_msgSend_layouts(v31, v80, v81);
      v84 = objc_msgSend_objectAtIndexedSubscript_(v82, v83, 19);
      objc_msgSend_setStride_(v84, v85, 32);
      v88 = objc_msgSend_layouts(v31, v86, v87);
      v90 = objc_msgSend_objectAtIndexedSubscript_(v88, v89, 19);
      objc_msgSend_setStepFunction_(v90, v91, 1);
      *(v8 + 752) = v31;
      _Block_object_dispose(&v152, 8);
      v13 = v147;
    }

    v92 = sub_1AFDEA004(a2);
    v95 = objc_msgSend_attributes(v92, v93, v94);
    v97 = objc_msgSend_objectAtIndexedSubscript_(v95, v96, 0);
    v100 = objc_msgSend_attributes(*(v8 + 752), v98, v99);
    v102 = objc_msgSend_objectAtIndexedSubscript_(v100, v101, 0);
    v105 = objc_msgSend_format(v97, v103, v104);
    v108 = v105 - 26;
    if (v105 - 26) < 6 && ((0x33u >> v108))
    {
      v109 = qword_1AFE21798[v108];
    }

    else
    {
      v110 = sub_1AF0D5194(v105, v106);
      if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDD9068(v97, v110, v107);
      }

      v109 = 0;
    }

    if (!*(v8 + 760))
    {
      LODWORD(v152) = v109;
      v111 = objc_alloc_init(MEMORY[0x1E6974060]);
      objc_msgSend_setConstantValue_type_withName_(v111, v112, &v152, 33, @"src_type_size");
      v115 = objc_msgSend_resourceManager(a3, v113, v114);
      v117 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v116, @"%d", v152);
      v119 = objc_msgSend_computePipelineStateForKernel_constants_constantsHash_(v115, v118, @"vfx_osd_synchronize_coarse_positions_authoring", v111, v117);

      *(v8 + 760) = v119;
    }

    v120 = objc_msgSend_offset(v97, v106, v107);
    v121 = sub_1AFDEA004(a2);
    v124 = objc_msgSend_layouts(v121, v122, v123);
    v127 = objc_msgSend_bufferIndex(v97, v125, v126);
    v129 = objc_msgSend_objectAtIndexedSubscript_(v124, v128, v127);
    LODWORD(v152) = objc_msgSend_stride(v129, v130, v131) / v109;
    LODWORD(v124) = objc_msgSend_offset(v102, v132, v133);
    LODWORD(v151[0]) = 8;
    v148 = 2 * *(v8 + 728);
    v136 = objc_msgSend_resourceComputeEncoder(a3, v134, v135);
    objc_msgSend_resetCache(v136, v137, v138);
    objc_msgSend_setBuffer_offset_atIndex_(v136, v139, v13, v120, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v136, v140, *(v8 + 736), v124, 1);
    objc_msgSend_setBuffer_offset_atIndex_(v136, v141, *(v8 + 744), 0, 2);
    objc_msgSend_setBytes_length_atIndex_(v136, v142, &v152, 4, 3);
    objc_msgSend_setBytes_length_atIndex_(v136, v143, v151, 4, 4);
    objc_msgSend_setBytes_length_atIndex_(v136, v144, &v148, 4, 5);
    v145 = sub_1AFDE323C(*(v8 + 760));
    return objc_msgSend_dispatchOnVertices_vertexCount_(v136, v146, v145, v148);
  }

  return result;
}

unint64_t sub_1AF1774D4(void *a1, int a2, int a3, float a4)
{
  result = sub_1AF170D58(a4);
  v8 = a1[5] + 32 * (2 * *(*(a1[4] + 8) + 24));
  *(v8 + 16) = result;
  *(v8 + 24) = v9;
  v10 = a1[5] + 32 * ((2 * *(*(a1[4] + 8) + 24)) | 1u);
  *(v10 + 16) = result;
  *(v10 + 24) = v9;
  v11 = a1[6];
  *(v11 + 4 * (2 * *(*(a1[4] + 8) + 24))) = a2;
  *(v11 + 4 * ((2 * (*(*(a1[4] + 8) + 24))++) | 1u)) = a3;
  return result;
}

void *sub_1AF17757C(void *result, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v6 = *(*(a2 + 160) + 24);
  v7 = v6[94];
  if (v7)
  {
    v9[0] = v6[92];
    v9[1] = v9[0];
    v8 = 0u;
    return sub_1AF100354(result, 1, 2 * v6[91], v9, &v8, 18, 2, v7, a3, a4, a5, a6, 0, 0);
  }

  return result;
}

BOOL sub_1AF177608(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = *(a1 + 120);
  if (!v4)
  {
    return 1;
  }

  v5 = *v4;
  v6 = *(*(a1 + 120) + 8) - v5;
  if (v6 == 24)
  {
    return 1;
  }

  if (0xAAAAAAAAAAAAAAABLL * (v6 >> 3) <= a2)
  {
    sub_1AF10A1D0();
  }

  v9 = (v5 + 24 * a2);
  v8 = *v9;
  if (0xAAAAAAAAAAAAAAABLL * ((v9[1] - *v9) >> 3) <= a3)
  {
    sub_1AF10A1D0();
  }

  v10 = v8 + 24 * a3;
  v11 = *v10;
  v12 = *(v10 + 8);
  if (v11 == v12)
  {
    return 0;
  }

  do
  {
    v13 = *v11 > a4 || v11[1] + *v11 <= a4;
    result = !v13;
    if (!v13)
    {
      break;
    }

    v11 += 2;
  }

  while (v11 != v12);
  return result;
}

uint64_t sub_1AF1776C8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = result;
  v5 = *(result + 120);
  if (v5)
  {
    v6 = -1431655765 * ((v5[1] - *v5) >> 3);
    if (v6)
    {
      v7 = 0;
      v8 = a2;
      do
      {
        v9 = **(v4 + 120);
        if (0xAAAAAAAAAAAAAAABLL * ((*(*(v4 + 120) + 8) - v9) >> 3) <= v7)
        {
          sub_1AF10A1D0();
        }

        v10 = v7;
        v12 = (v9 + 24 * v7);
        v11 = *v12;
        if (0xAAAAAAAAAAAAAAABLL * ((v12[1] - *v12) >> 3) <= v8)
        {
          sub_1AF10A1D0();
        }

        v13 = (v11 + 24 * v8);
        v14 = *v13;
        v15 = v13[1];
        while (v14 != v15)
        {
          v16 = *v14;
          v17 = v14[1];
          v14 += 2;
          result = (*(a3 + 16))(a3, v10, v16, v17);
        }

        v7 = v10 + 1;
      }

      while (v10 + 1 != v6);
    }
  }

  else
  {
    v18 = *(*(result + 40) + 16 * a2 + 4);
    v19 = *(a3 + 16);

    return v19(a3, 0, 0, v18);
  }

  return result;
}

uint64_t sub_1AF17780C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2;
  v427 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_resourceManager(a2, a2, a3);
  v7 = *(a1 + 160);
  v8 = *(v7 + 24);
  v9 = *(v8 + 400);
  v395 = v8;
  if (!v9)
  {
    v362 = v5;
    v10 = sub_1AF1B2C1C(a1, v6);
    v12 = sub_1AF16CBEC(v10, v11);
    if (!v12)
    {
      v12 = sub_1AF16CBEC(a1, v13);
    }

    if (*(v7 + 2) == 1)
    {
      v361 = v7;
      v15 = *(v395 + 56);
      if (objc_msgSend_storageMode(v15, v13, v14) != 2)
      {
        v18 = objc_msgSend_storageMode(v15, v16, v17);
        if (v18)
        {
          v19 = sub_1AF0D5194(v18, v16);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDD9134(v19, v16, v17, v20, v21, v22, v23, v24);
          }
        }
      }

      v25 = objc_msgSend_length(v15, v16, v17);
      v26 = malloc_type_malloc(v25, 0x10000403E1C8BA9uLL);
      v29 = objc_msgSend_device(v3, v27, v28);
      v32 = objc_msgSend_length(v15, v30, v31);
      v367 = v26;
      v34 = objc_msgSend_newBufferWithBytesNoCopy_length_options_deallocator_(v29, v33, v26, v32, 0, 0);
      v360 = v3;
      v37 = objc_msgSend_commandQueue(v3, v35, v36);
      v40 = objc_msgSend_commandBuffer(v37, v38, v39);
      v43 = objc_msgSend_blitCommandEncoder(v40, v41, v42);
      v46 = objc_msgSend_length(v15, v44, v45);
      objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v43, v47, v15, 0, v34, 0, v46);
      objc_msgSend_endEncoding(v43, v48, v49);
      objc_msgSend_commit(v40, v50, v51);
      objc_msgSend_waitUntilCompleted(v40, v52, v53);

      v370 = sub_1AF17CEB0(*(v395 + 24), 0);
      v409 = v370 == 3;
      v55 = sub_1AF1A3CCC(v10, v54);
      v388 = v55;
      if (v55 > 1 == (*(v395 + 120) == 0))
      {
        v57 = sub_1AF0D5194(v55, v56);
        v55 = os_log_type_enabled(v57, OS_LOG_TYPE_FAULT);
        if (v55)
        {
          sub_1AFDD91AC(v57, v58, v59, v60, v61, v62, v63, v64);
        }
      }

      v359 = &v355;
      v65 = v388;
      v66 = (4 * v388);
      MEMORY[0x1EEE9AC00](v55);
      v373 = &v355 - ((v66 + 15) & 0x7FFFFFFF0);
      bzero(v373, v66);
      v69 = v362;
      if (*(v395 + 32))
      {
        v70 = 0;
        v385 = 0;
        v71 = 0;
        v72 = 0;
        v393 = v406;
        v394 = v404;
        v73 = v395;
        v391 = v402;
        v392 = v66;
        while (1)
        {
          v74 = (*(v73 + 40) + 16 * v70);
          v75 = *v74;
          v76 = v74[1];
          if (*v74 > 4)
          {
            if (v75 - 7 < 3)
            {
              v78 = sub_1AF0D5194(v67, v68);
              v67 = os_log_type_enabled(v78, OS_LOG_TYPE_ERROR);
              if (v67)
              {
                sub_1AFDD8BB8(&v399, v400);
              }

              goto LABEL_38;
            }

            if (v75 == 6)
            {
              v80 = v74[3];
              v385 += 25 * v76;
              v401[0] = MEMORY[0x1E69E9820];
              v401[1] = 3221225472;
              v402[0] = sub_1AF1794D4;
              v402[1] = &unk_1E7A7B010;
              v402[2] = v373;
              v67 = sub_1AF1776C8(v395, v72, v401);
              if (v76)
              {
                for (i = 0; i != v76; ++i)
                {
                  v82 = v71;
                  v83 = v367[3 * v80 + 3 * i];
                  v84 = ((v83 >> 29) & 1) + (v83 >> 31) + ((v83 >> 28) & 1) + ((v83 >> 30) & 1);
                  if (v388)
                  {
                    v85 = 0;
                    do
                    {
                      v67 = sub_1AF177608(v395, v85, v72, i);
                      if (v67)
                      {
                        *&v373[4 * v85] += 4 * v84;
                      }

                      ++v85;
                    }

                    while (v65 != v85);
                  }

                  v71 = v82 + 4 * v84;
                }

                v69 = v362;
                v66 = v392;
              }

              else
              {
                v69 = v362;
              }

              goto LABEL_38;
            }

            if (v75 == 5)
            {
LABEL_24:
              v79 = sub_1AF0D5194(v67, v68);
              v67 = os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
              if (v67)
              {
                sub_1AFDD8BB8(&v407, v408);
              }
            }
          }

          else
          {
            if (v75 < 3)
            {
              goto LABEL_24;
            }

            if (v75 == 3)
            {
              v385 += 4 * v76;
              v405[0] = MEMORY[0x1E69E9820];
              v405[1] = 3221225472;
              v406[0] = sub_1AF1794AC;
              v406[1] = &unk_1E7A7B010;
              v406[2] = v373;
              v77 = v405;
              goto LABEL_27;
            }

            if (v75 == 4)
            {
              v385 += 3 * v76;
              v403[0] = MEMORY[0x1E69E9820];
              v403[1] = 3221225472;
              v404[0] = sub_1AF1794C0;
              v404[1] = &unk_1E7A7B010;
              v404[2] = v373;
              v77 = v403;
LABEL_27:
              v67 = sub_1AF1776C8(v395, v72, v77);
            }
          }

LABEL_38:
          v73 = v395;
          v70 = ++v72;
          if (*(v395 + 32) <= v72)
          {
            goto LABEL_44;
          }
        }
      }

      v71 = 0;
      v385 = 0;
LABEL_44:
      v87 = 1;
      if (v385 + v71 - 1 > 0xFF)
      {
        v87 = 2;
      }

      if ((v385 + v71 - 1) >> 16)
      {
        v88 = 4;
      }

      else
      {
        v88 = v87;
      }

      v357 = v385 + v71;
      if ((v88 - 1) >= 2)
      {
        if (v88 == 4)
        {
          v89 = 1;
        }

        else
        {
          v90 = sub_1AF0D5194(v67, v68);
          v67 = os_log_type_enabled(v90, OS_LOG_TYPE_ERROR);
          if (v67)
          {
            sub_1AFDD9224(v88, v90);
          }

          v89 = -1;
        }

        v389 = v89;
      }

      else
      {
        v389 = 0;
        v88 = 2;
      }

      v91 = v395;
      MEMORY[0x1EEE9AC00](v67);
      v394 = (&v355 - ((v66 + 15) & 0x7FFFFFFF0));
      MEMORY[0x1EEE9AC00](v92);
      v94 = &v355 - v93;
      if (v388)
      {
        v95 = 0;
        v96 = v373 - 4;
        v97 = v394;
        do
        {
          if (v95)
          {
            v98 = *(v97 - 1) + 3 * *&v95[v96];
          }

          else
          {
            v98 = 0;
          }

          *v97++ = v98;
          *&v95[v94] = 0;
          v95 += 4;
        }

        while (v66 != v95);
      }

      v99 = (3 * *&v373[4 * (v388 - 1)] + v394[v388 - 1]);
      v358 = v88;
      v356 = v88 * v99;
      v100 = malloc_type_malloc(v88 * v99, 0x446DC8C6uLL);
      v103 = v100;
      v365 = v71;
      if (v71)
      {
        v100 = malloc_type_malloc(12 * v71, 0x10000403E1C8BA9uLL);
        v386 = v100;
      }

      else
      {
        v386 = 0;
      }

      if (*(v91 + 32))
      {
        v104 = 0;
        v381 = 0;
        LODWORD(v393) = 0;
        v105 = 0;
        v368 = v91 + 488;
        v369 = v91 + 408;
        v363 = v91 + 648;
        v364 = v91 + 568;
        _Q0.i64[0] = v385 | 0x600000000;
        v383 = _Q0;
        __asm { FMOV            V0.2S, #1.0 }

        v380 = _Q0;
        v382 = &v422;
        v376 = 4575657222471680000;
        _Q0.i32[1] = 1063256064;
        v375 = 0x3F6000003F800000;
        while (1)
        {
          v109 = (*(v91 + 40) + 16 * v104);
          v110 = *v109;
          v372 = v110;
          if (v110 <= 6)
          {
            break;
          }

          switch(v110)
          {
            case 7:
              v170 = 0;
              v169 = 4;
              break;
            case 9:
              v170 = 0;
              v169 = 6;
              break;
            case 8:
              v170 = 0;
              v169 = 5;
              break;
            default:
              goto LABEL_169;
          }

LABEL_181:
          if ((v170 & *(v361 + 3)) != 0)
          {
            v195 = 0x2000000100;
          }

          else
          {
            v195 = 0x2000000000;
          }

          v196 = *(v91 + 24);
          if (*(v369 + 8 * v110))
          {
            v197 = sub_1AF0D5194(v100, v101);
            v100 = os_log_type_enabled(v197, OS_LOG_TYPE_FAULT);
            v110 = v372;
            if (v100)
            {
              sub_1AFDD929C(v417, &v418, v197);
              v110 = v372;
            }
          }

          if (*(v368 + 8 * v110))
          {
            v198 = sub_1AF0D5194(v100, v101);
            v100 = os_log_type_enabled(v198, OS_LOG_TYPE_FAULT);
            v110 = v372;
            if (v100)
            {
              sub_1AFDD92E0(v415, &v416, v198);
              v110 = v372;
            }
          }

          if (*(v364 + 8 * v110))
          {
            v199 = sub_1AF0D5194(v100, v101);
            v100 = os_log_type_enabled(v199, OS_LOG_TYPE_FAULT);
            v110 = v372;
            if (v100)
            {
              sub_1AFDD9324(v413, &v414, v199);
              v110 = v372;
            }
          }

          if (*(v363 + 8 * v110))
          {
            v200 = sub_1AF0D5194(v100, v101);
            if (os_log_type_enabled(v200, OS_LOG_TYPE_FAULT))
            {
              sub_1AFDD9368(v411, &v412, v200);
            }
          }

          v201 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v366 = v366 & 0xFFFFFFFF00000000 | v196;
          v202 = sub_1AF1735B8(v195 | v169, v196, v201);
          v203 = objc_alloc_init(MEMORY[0x1E6974020]);
          v205 = sub_1AF1F32F0(v203, v204);
          objc_msgSend_setLanguageVersion_(v203, v206, v205);
          objc_msgSend_setFastMathEnabled_(v203, v207, 1);
          v392 = v201;
          objc_msgSend_setPreprocessorMacros_(v203, v208, v201);
          objc_msgSend_setAdditionalCompilerArguments_(v203, v209, @" -w ");
          v210 = objc_alloc(MEMORY[0x1E696AEC0]);
          v211 = v210;
          if (v370 == 3)
          {
            v391 = v210;
            v91 = v395;
            v212 = v202;
            if (qword_1EB64FB70 != -1)
            {
              sub_1AFDD93D4();
            }

            v213 = qword_1EB64FB78;
            v215 = sub_1AF173490(v169, &unk_1EB64F000);
            if (qword_1EB6585E0 != -1)
            {
              sub_1AFDD93AC();
            }

            v216 = objc_msgSend_initWithFormat_(v391, v214, @"%@%@%@%@", v212, v213, v215, qword_1EB6585D8);
            v217 = 8;
          }

          else
          {
            v219 = sub_1AF173490(v169, v370);
            v91 = v395;
            if (qword_1EB6585E0 != -1)
            {
              sub_1AFDD93AC();
            }

            v216 = objc_msgSend_initWithFormat_(v211, v218, @"%@%@%@", v202, v219, qword_1EB6585D8);
            v217 = 6;
          }

          LODWORD(v391) = v217;
          v220 = v362;
          v221 = sub_1AFDE868C(v362);
          v223 = objc_msgSend_libraryForSourceCode_options_(v221, v222, v216, v203);

          v69 = v220;
          LOWORD(v419) = v391;
          LOWORD(v398) = 0;
          LOWORD(v397) = 3;
          LOWORD(v396) = 6;
          v224 = objc_alloc_init(MEMORY[0x1E6974060]);
          objc_msgSend_setConstantValue_type_atIndex_(v224, v225, &v419, 37, 1);
          objc_msgSend_setConstantValue_type_atIndex_(v224, v226, &v398, 37, 2);
          objc_msgSend_setConstantValue_type_atIndex_(v224, v227, &v397, 37, 3);
          objc_msgSend_setConstantValue_type_atIndex_(v224, v228, &v396, 37, 4);
          objc_msgSend_setConstantValue_type_atIndex_(v224, v229, &v409, 53, 8);
          v231 = objc_msgSend_newComputePipelineStateWithFunctionName_library_constantValues_linkedFunctions_(v220, v230, @"osd_rt_eval_regular_point_vertex", v223, v224, 0);
          v233 = v372;
          *(v369 + 8 * v372) = v231;
          if (v365)
          {
            v234 = objc_msgSend_newComputePipelineStateWithFunctionName_library_constantValues_linkedFunctions_(v220, v232, @"osd_rt_eval_extra_point_vertex", v223, v224, 0);
            v233 = v372;
          }

          else
          {
            v234 = 0;
          }

          *(v368 + 8 * v233) = v234;
          if (v370 == 3)
          {
            *(v91 + 368) = 1;
            v235 = objc_msgSend_newComputePipelineStateWithFunctionName_library_constantValues_linkedFunctions_(v220, v232, @"osd_rt_eval_regular_point_fvar", v223, v224, 0);
            v237 = v372;
            *(v364 + 8 * v372) = v235;
            if (v365)
            {
              v238 = objc_msgSend_newComputePipelineStateWithFunctionName_library_constantValues_linkedFunctions_(v220, v236, @"osd_rt_eval_extra_point_fvar", v223, v224, 0);
              v237 = v372;
            }

            else
            {
              v238 = 0;
            }

            *(v363 + 8 * v237) = v238;
          }

          v104 = ++v105;
          if (*(v91 + 32) <= v105)
          {
            goto LABEL_214;
          }
        }

        v374 = v109[1];
        switch(v110)
        {
          case 3:
            if (v389)
            {
              if (v389 == 1)
              {
                v171 = v394;
                if (v388)
                {
                  v172 = 0;
                  do
                  {
                    if (v374 >= 1)
                    {
                      v173 = 0;
                      do
                      {
                        v100 = sub_1AF177608(v91, v172, v105, v173);
                        v174 = *&v94[4 * v172];
                        if (v100)
                        {
                          v175 = v174 + *(v171 + 4 * v172);
                          v176 = v381;
                          v103[v175] = v381;
                          v103[v175 + 1] = v176 + 1;
                          v103[v175 + 2] = v176 + 3;
                          v103[v175 + 3] = v176;
                          v103[v175 + 4] = v176 + 3;
                          v103[v175 + 5] = v176 + 2;
                        }

                        ++v173;
                        v381 += 4;
                        *&v94[4 * v172] = v174 + 6;
                      }

                      while (v374 != v173);
                    }

                    ++v172;
                    v170 = 1;
                  }

                  while (v172 != v65);
                  goto LABEL_168;
                }
              }
            }

            else
            {
              v183 = v394;
              if (v388)
              {
                v184 = 0;
                do
                {
                  if (v374 >= 1)
                  {
                    v185 = 0;
                    do
                    {
                      v100 = sub_1AF177608(v91, v184, v105, v185);
                      v186 = *&v94[4 * v184];
                      if (v100)
                      {
                        v187 = v186 + *(v183 + 4 * v184);
                        v188 = v381;
                        *(v103 + v187) = v381;
                        *(v103 + v187 + 1) = v188 + 1;
                        *(v103 + v187 + 2) = v188 + 3;
                        *(v103 + v187 + 3) = v188;
                        *(v103 + v187 + 4) = v188 + 3;
                        *(v103 + v187 + 5) = v188 + 2;
                      }

                      ++v185;
                      v381 += 4;
                      *&v94[4 * v184] = v186 + 6;
                    }

                    while (v374 != v185);
                  }

                  ++v184;
                  v170 = 1;
                }

                while (v184 != v65);
LABEL_168:
                v169 = 1;
LABEL_178:
                v110 = v372;
                goto LABEL_181;
              }
            }

            break;
          case 4:
            if (v389)
            {
              if (v389 != 1 || (v177 = v394, !v388))
              {
LABEL_179:
                v169 = 2;
LABEL_180:
                v170 = 1;
                goto LABEL_181;
              }

              v178 = 0;
              do
              {
                if (v374 >= 1)
                {
                  v179 = 0;
                  do
                  {
                    v100 = sub_1AF177608(v91, v178, v105, v179);
                    v180 = *&v94[4 * v178];
                    if (v100)
                    {
                      v181 = v180 + *(v177 + 4 * v178);
                      v182 = v381;
                      v103[v181] = v381;
                      v103[v181 + 1] = v182 + 1;
                      v103[v181 + 2] = v182 + 2;
                    }

                    ++v179;
                    v381 += 3;
                    *&v94[4 * v178] = v180 + 3;
                  }

                  while (v374 != v179);
                }

                ++v178;
                v169 = 2;
                v170 = 1;
              }

              while (v178 != v65);
            }

            else
            {
              v189 = v394;
              if (!v388)
              {
                goto LABEL_179;
              }

              v190 = 0;
              do
              {
                if (v374 >= 1)
                {
                  v191 = 0;
                  do
                  {
                    v100 = sub_1AF177608(v91, v190, v105, v191);
                    v192 = *&v94[4 * v190];
                    if (v100)
                    {
                      v193 = v192 + *(v189 + 4 * v190);
                      v194 = v381;
                      *(v103 + v193) = v381;
                      *(v103 + v193 + 1) = v194 + 1;
                      *(v103 + v193 + 2) = v194 + 2;
                    }

                    ++v191;
                    v381 += 3;
                    *&v94[4 * v190] = v192 + 3;
                  }

                  while (v374 != v191);
                }

                ++v190;
                v169 = 2;
                v170 = 1;
              }

              while (v190 != v65);
            }

            goto LABEL_178;
          case 6:
            if (v374 >= 1)
            {
              v111 = 0;
              v371 = &v367[3 * v109[3]];
              while (1)
              {
                v112 = 0;
                LODWORD(v391) = *&v371[12 * v111];
                do
                {
                  v113 = 0;
                  LODWORD(v390) = v381 + 5 * v112;
                  v379 = v112;
                  v387 = (v112 == 0) & (v391 >> 28);
                  v384 = (v112 == 3) & (v391 >> 30);
                  LODWORD(v392) = v387 | v384;
                  v114 = v380;
                  *&v114.i32[1] = (v112 + 0.5) * 0.25;
                  v378 = v114;
                  v114.i32[0] = 0;
                  v377 = v114;
                  do
                  {
                    v115 = v390 + v113;
                    _ZF = v391 < 0 && v113 == 0;
                    v117 = _ZF;
                    v118 = (v113 == 3) & (v391 >> 29);
                    v119 = v392;
                    if (_ZF)
                    {
                      v119 = 1;
                    }

                    if ((v119 & 1) == 0 && !v118)
                    {
                      _Q0.i32[0] = v390 + v113;
                      v114 = _Q0;
                      v114.i32[1] = v115 + 1;
                      v419 = v114.i64[0];
                      _Q0.i32[1] = v115 + 6;
                      v420 = v115 + 6;
                      v422 = v115 + 5;
                      v421 = _Q0.i64[0];
                      v120 = 1;
                      v121 = 2;
                      goto LABEL_110;
                    }

                    v122 = v393;
                    if (v387)
                    {
                      v123 = v393 + 1;
                      if (v117)
                      {
                        v124 = v386;
                        v125 = &v386[12 * v393];
                        v126 = v393 + v385;
                        v127 = v393 + 2;
                        *v125 = v111;
                        *(v125 + 4) = 1040187392;
                        v128 = &v124[12 * v123];
                        *v128 = v111;
                        *(v128 + 4) = 0x3E00000000000000;
                        _Q0.i32[0] = v126;
                        *v114.i8 = vadd_s32(__PAIR64__(v115, v123), *v383.i8);
                        v419 = vzip1q_s32(_Q0, v114).u64[0];
                        LODWORD(v129) = v126;
                        HIDWORD(v129) = v115 + 1;
                        *v382 = v114.i32[1];
                        v421 = v129;
                        v420 = v115;
                        v424 = v115 + 5;
                        _Q0.i32[1] = v114.i32[1];
                        v423 = v114.i64[0];
                        v426 = v114.i32[0];
                        v425 = _Q0.i64[0];
                        goto LABEL_97;
                      }

                      if (v118)
                      {
                        v133 = v386;
                        v134 = &v386[12 * v393];
                        v135 = v385;
                        v136 = v393 + v385;
                        v127 = v393 + 2;
                        *v134 = v111;
                        *(v134 + 4) = 1063256064;
                        v137 = &v133[12 * v123];
                        *v137 = v111;
                        *(v137 + 4) = 0x3E0000003F800000;
                        _Q0.i32[0] = v136;
                        v138 = v123 + v135;
                        v419 = __PAIR64__(v138, v136);
                        v114 = _Q0;
                        v114.i32[1] = v115 + 1;
                        v420 = v115 + 5;
                        v422 = v138;
                        v421 = v114.i64[0];
                        v114.i32[0] = v138;
                        v114.i32[1] = v115 + 6;
                        v423 = v114.i64[0];
                        _Q0.i32[1] = v115 + 5;
                        v424 = v115 + 5;
                        v426 = v115;
LABEL_96:
                        v425 = _Q0.i64[0];
LABEL_97:
                        v120 = 1;
                        v121 = 4;
                        LODWORD(v393) = v127;
                        goto LABEL_110;
                      }

                      v148 = v393;
                      v149 = &v386[12 * v393];
                      *v149 = v111;
                      *(v149 + 4) = COERCE_UNSIGNED_INT((v113 + 0.5) * 0.25);
                      _Q0.i32[0] = v115;
                      _Q0.i32[1] = v148 + v385;
                      v114.i32[0] = v148 + v385;
                      LODWORD(v150) = v148 + v385;
                      HIDWORD(v150) = v115 + 1;
                      v419 = v150;
                      v114.i32[1] = v115 + 6;
                      v151 = v115 + 5;
                      v420 = v114.i32[1];
                      v422 = v151;
LABEL_109:
                      v421 = v114.i64[0];
                      v424 = v151;
                      v423 = _Q0.i64[0];
                      v120 = 1;
                      v121 = 3;
                      LODWORD(v393) = v123;
                      goto LABEL_110;
                    }

                    if (v384)
                    {
                      v123 = v393 + 1;
                      if (v117)
                      {
                        v130 = v386;
                        v131 = &v386[12 * v393];
                        *v131 = v111;
                        *(v131 + 4) = 0x3F8000003E000000;
                        v132 = &v130[12 * v123];
                        *v132 = v111;
                        *(v132 + 4) = 0x3F60000000000000;
                        _Q0.i32[0] = v115;
                        _Q0.i32[1] = v115 + 1;
                        v127 = v122 + 2;
                        v419 = _Q0.i64[0];
                        _Q0.i32[0] = v115 + 1;
                        v114 = _Q0;
                        v114.i32[1] = v122 + v385;
                        v420 = v123 + v385;
                        v422 = v123 + v385;
                        v421 = v114.i64[0];
                        _Q0.i32[1] = v115 + 6;
                        v423 = _Q0.i64[0];
                        _Q0.i32[0] = v122 + v385;
                        _Q0.i32[1] = v115 + 5;
                        v424 = v122 + v385;
                        v426 = v123 + v385;
                        goto LABEL_96;
                      }

                      v141 = v115 + 1;
                      if (v118)
                      {
                        v142 = v386;
                        v143 = v393;
                        v144 = &v386[12 * v393];
                        *v144 = v111;
                        _Q0.i64[0] = v375;
                        *(v144 + 4) = v376;
                        v145 = &v142[12 * v123];
                        *v145 = v111;
                        *(v145 + 4) = _Q0.i64[0];
                        _Q0.i32[0] = v115;
                        v146 = v123 + v385;
                        v419 = __PAIR64__(v141, v115);
                        v114 = _Q0;
                        v114.i32[1] = v146;
                        v147 = v143 + 2;
                        v420 = v146;
                        v422 = v143 + v385;
                        v421 = v114.i64[0];
                        v423 = __PAIR64__(v115 + 6, v146);
                        _Q0.i32[1] = v143 + v385;
                        v424 = v143 + v385;
                        v426 = v115 + 5;
                        v425 = _Q0.i64[0];
                        v120 = 1;
                        v121 = 4;
LABEL_106:
                        LODWORD(v393) = v147;
                        goto LABEL_110;
                      }

                      HIDWORD(v154) = v380.i32[1];
                      *&v154 = (v113 + 0.5) * 0.25;
                      v155 = v393;
                      v156 = &v386[12 * v393];
                      *v156 = v111;
                      *(v156 + 4) = v154;
                      _Q0.i32[0] = v115;
                      v114 = _Q0;
                      v420 = v115 + 6;
                      v422 = v155 + v385;
                      _Q0.i32[1] = v155 + v385;
                      v419 = __PAIR64__(v141, v155 + v385);
                      v151 = v115 + 5;
                      v114.i32[1] = v141;
                      goto LABEL_109;
                    }

                    if (v117)
                    {
                      if ((v392 & 1) == 0)
                      {
                        v139 = &v386[12 * v393];
                        *v139 = v111;
                        _Q0.i64[1] = v377.i64[1];
                        *(v139 + 4) = v377.i64[0];
                        v140 = vadd_s32(__PAIR64__(v115, v122), *v383.i8);
                        v419 = __PAIR64__(v115 + 1, v115);
                        v420 = v140.i32[0];
                        v422 = v115 + 5;
                        _Q0.i32[1] = v140.i32[1];
                        v421 = v140;
                        v424 = v140.i32[0];
                        v423 = __PAIR64__(v140.u32[1], v115 + 1);
                        v120 = 1;
                        v121 = 3;
                        LODWORD(v393) = v122 + 1;
                        goto LABEL_110;
                      }
                    }

                    else if (v118)
                    {
                      v152 = &v386[12 * v393];
                      v153 = v393 + v385;
                      v147 = v393 + 1;
                      *v152 = v111;
                      _Q0 = v378;
                      *(v152 + 4) = v378.i64[0];
                      _Q0.i32[0] = v115;
                      v114 = _Q0;
                      v114.i32[1] = v115 + 1;
                      v419 = v114.i64[0];
                      _Q0.i32[1] = v153;
                      v420 = v153;
                      v422 = v115 + 5;
                      v421 = __PAIR64__(v115 + 6, v153);
                      v424 = v115 + 5;
                      v423 = _Q0.i64[0];
                      v120 = 1;
                      v121 = 3;
                      goto LABEL_106;
                    }

                    v120 = 0;
                    v121 = 0;
LABEL_110:
                    if (v389)
                    {
                      if (v389 == 1 && v388)
                      {
                        v157 = 0;
                        do
                        {
                          v100 = sub_1AF177608(v395, v157, v105, v111);
                          if ((v120 & v100) == 1)
                          {
                            v158 = *&v94[4 * v157];
                            v159 = v158 + v394[v157];
                            v160 = &v419;
                            v161 = v121;
                            do
                            {
                              v162 = *v160;
                              v160 += 2;
                              _Q0 = v162;
                              v103[v159] = v162.i32[0];
                              v103[v159 + 1] = v162.i32[1];
                              v103[v159 + 2] = v162.i32[2];
                              v158 += 3;
                              v159 += 3;
                              --v161;
                            }

                            while (v161);
                            *&v94[4 * v157] = v158;
                          }

                          ++v157;
                        }

                        while (v157 != v65);
                      }
                    }

                    else if (v388)
                    {
                      v163 = 0;
                      do
                      {
                        v100 = sub_1AF177608(v395, v163, v105, v111);
                        if ((v120 & v100) == 1)
                        {
                          v164 = *&v94[4 * v163];
                          v165 = v164 + v394[v163];
                          v166 = &v419;
                          v167 = v121;
                          do
                          {
                            v168 = *v166;
                            v166 += 2;
                            _Q0 = v168;
                            *(v103 + v165) = v168.i16[0];
                            *(v103 + v165 + 1) = v168.i16[2];
                            *(v103 + v165 + 2) = v168.i16[4];
                            v164 += 3;
                            v165 += 3;
                            --v167;
                          }

                          while (v167);
                          *&v94[4 * v163] = v164;
                        }

                        ++v163;
                      }

                      while (v163 != v65);
                    }

                    ++v113;
                  }

                  while (v113 != 4);
                  v112 = v379 + 1;
                }

                while (v379 != 3);
                v381 += 25;
                if (++v111 == v374)
                {
                  v169 = 3;
                  v170 = 1;
                  v91 = v395;
                  goto LABEL_178;
                }
              }
            }

            v169 = 3;
            goto LABEL_180;
        }

LABEL_169:
        v170 = 1;
        v169 = 1;
        goto LABEL_181;
      }

LABEL_214:
      free(v367);
      v239 = v386;
      if (v386)
      {
        v240 = v365;
        sub_1AFDE8444(v69, v386, 12 * v365, 0);
        *(v91 + 372) = v240;
        *(v91 + 376) = v385;
        *(v91 + 384) = v241;
        free(v239);
      }

      v242 = v69;
      v243 = sub_1AF1F1A7C(30);
      v392 = v243;
      v244 = sub_1AF1F1A7C(30);
      v245 = sub_1AF1F1A7C(29);
      if (v370 == 3)
      {
        v246 = v245;
      }

      else
      {
        v246 = 0;
      }

      v390 = v244 + v243;
      v247 = v390 + v246;
      *(v91 + 392) = v390 + v246;
      v391 = (v244 + v243 + v246);
      sub_1AFDE851C(v242, v247 * v357, 32);
      v393 = v248;
      sub_1AFDE8444(v242, v103, v356, 0);
      v250 = v249;
      free(v103);
      v251 = objc_alloc(MEMORY[0x1E695DF70]);
      v255 = objc_msgSend_initWithCapacity_(v251, v252, v65);
      v256 = v373;
      v257 = v358;
      v258 = v394;
      if (v388)
      {
        do
        {
          v260 = *v256++;
          v259 = v260;
          v261 = objc_alloc_init(VFXMTLBuffer);
          objc_msgSend_setBuffer_(v261, v262, v250);
          v263 = *v258++;
          objc_msgSend_setOffset_(v261, v264, v257 * v263);
          v265 = v250;
          v266 = objc_alloc_init(VFXMTLMeshElement);
          sub_1AFDEA640(v266, v389);
          sub_1AFDEA31C(v266, v261);
          sub_1AFDEA61C(v266, (3 * v259));
          sub_1AFDEA2A8(v266, 3);
          sub_1AFDEA4AC(v266, 0, v259);
          objc_msgSend_addObject_(v255, v267, v266);

          v250 = v265;
          --v65;
        }

        while (v65);
      }

      v268 = objc_msgSend_vertexDescriptor(MEMORY[0x1E69741E0], v253, v254);
      v271 = objc_msgSend_layouts(v268, v269, v270);
      v273 = objc_msgSend_objectAtIndexedSubscript_(v271, v272, 18);
      objc_msgSend_setStride_(v273, v274, v391);
      objc_msgSend_setStepFunction_(v273, v275, 1);
      v278 = objc_msgSend_attributes(v268, v276, v277);
      v280 = objc_msgSend_objectAtIndexedSubscript_(v278, v279, 0);
      objc_msgSend_setFormat_(v280, v281, 30);
      objc_msgSend_setOffset_(v280, v282, 0);
      objc_msgSend_setBufferIndex_(v280, v283, 18);
      v286 = objc_msgSend_attributes(v268, v284, v285);
      v288 = objc_msgSend_objectAtIndexedSubscript_(v286, v287, 1);
      objc_msgSend_setFormat_(v288, v289, 30);
      objc_msgSend_setOffset_(v288, v290, v392);
      objc_msgSend_setBufferIndex_(v288, v291, 18);
      if (v409)
      {
        v294 = objc_msgSend_attributes(v268, v292, v293);
        v296 = objc_msgSend_objectAtIndexedSubscript_(v294, v295, 6);
        objc_msgSend_setFormat_(v296, v297, 29);
        objc_msgSend_setOffset_(v296, v298, v390);
        objc_msgSend_setBufferIndex_(v296, v299, 18);
      }

      v9 = objc_alloc_init(VFXMTLMesh);
      sub_1AFDEA024(v9, v268);
      v300 = v393;
      v410 = v393;
      v302 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v301, &v410, 1);
      sub_1AFDEA1F4(v9, v302);
      sub_1AFDEA214(v9, v255);

      v8 = v395;
      *(v395 + 400) = v9;
      v3 = v360;
    }

    else
    {
      v86 = sub_1AF0D5194(v12, v13);
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDD90F0(v86);
      }

      v9 = 0;
      v8 = v395;
    }
  }

  v392 = v9;
  v303 = sub_1AFDEA1E8(v9);
  v394 = objc_msgSend_objectAtIndexedSubscript_(v303, v304, 0);
  v307 = objc_msgSend_resourceComputeEncoder(v3, v305, v306);
  v309 = v307;
  v310 = *(v8 + 48);
  v311 = *(v8 + 56);
  if (*(v8 + 368))
  {
    v312 = *(v8 + 88);
    v314 = *v312;
    v313 = v312[1];
    LODWORD(v419) = -1227133513 * ((v313 - *v312) >> 3);
    if (v419 < 2)
    {
      if (v313 == v314)
      {
LABEL_253:
        sub_1AF10A1D0();
      }

      objc_msgSend_setBuffer_offset_atIndex_(v307, v308, v314[4], v314[5], 14);
      objc_msgSend_setBuffer_offset_atIndex_(v309, v317, v314[2], 0, 15);
      objc_msgSend_setBuffer_offset_atIndex_(v309, v318, v314[3], 0, 16);
      LODWORD(v393) = 0;
    }

    else
    {
      objc_msgSend_setBytes_length_atIndex_(v307, v308, &v419, 4, 14);
      objc_msgSend_setBuffer_offset_atIndex_(v309, v315, *(v8 + 128), 0, 15);
      objc_msgSend_setBuffer_offset_atIndex_(v309, v316, *(v8 + 136), 0, 16);
      LODWORD(v393) = 1;
    }
  }

  else
  {
    LODWORD(v393) = 0;
    LODWORD(v419) = 0;
  }

  v398 = 0;
  v319 = v8;
  if (*(v8 + 32))
  {
    v320 = 0;
    v321 = 0;
    do
    {
      v322 = (*(v319 + 40) + 16 * v320);
      v323 = *v322;
      v324 = v322[1];
      v325 = v322[2];
      objc_msgSend_setBuffer_offset_atIndex_(v309, v308, v311, 12 * v322[3], 8);
      objc_msgSend_setBuffer_offset_atIndex_(v309, v326, v310, 4 * v325, 6);
      if (v323 == 6)
      {
        v328 = v395;
        v329 = *(v395 + 248);
        v330 = *(v395 + 256);
        v397 = 25 * v324;
        objc_msgSend_setBytes_length_atIndex_(v309, v308, &v397, 4, 0);
        objc_msgSend_setBuffer_offset_atIndex_(v309, v331, v394, *(v328 + 392) * v321, 1);
        objc_msgSend_setBuffer_offset_atIndex_(v309, v332, v329, v330, 7);
        v333 = sub_1AFDE323C(*(v328 + 456));
        objc_msgSend_setComputePipelineState_(v309, v334, v333);
        objc_msgSend_dispatchOnGrid1D_(v309, v335, 25 * v324);
        if (*(v328 + 368) == 1)
        {
          if (v393)
          {
            objc_msgSend_setBytes_length_atIndex_(v309, v308, &v398, 4, 17);
          }

          else
          {
            v336 = **(v395 + 88);
            if (*(*(v395 + 88) + 8) == v336)
            {
              goto LABEL_253;
            }

            v337 = *(v336 + 8) + 16 * v398;
            objc_msgSend_setBufferOffset_atIndex_(v309, v308, 4 * *(v337 + 8), 15);
            objc_msgSend_setBufferOffset_atIndex_(v309, v338, 12 * *(v337 + 12), 16);
            objc_msgSend_setBytes_length_atIndex_(v309, v339, v337, 16, 17);
          }

          v328 = v395;
          v340 = sub_1AFDE323C(*(v395 + 616));
          objc_msgSend_setComputePipelineState_(v309, v341, v340);
          objc_msgSend_dispatchOnGrid1D_(v309, v342, v397);
        }

        v343 = v397;
        v396 = *(v328 + 372);
        if (v396)
        {
          objc_msgSend_setBytes_length_atIndex_(v309, v308, &v396, 4, 0);
          objc_msgSend_setBufferOffset_atIndex_(v309, v344, *(v328 + 392) * *(v328 + 376), 1);
          objc_msgSend_setBuffer_offset_atIndex_(v309, v345, *(v328 + 384), 0, 2);
          v346 = sub_1AFDE323C(*(v328 + 536));
          objc_msgSend_setComputePipelineState_(v309, v347, v346);
          objc_msgSend_dispatchOnGrid1D_(v309, v348, v396);
          if (*(v328 + 368) == 1)
          {
            v349 = sub_1AFDE323C(*(v328 + 696));
            objc_msgSend_setComputePipelineState_(v309, v350, v349);
            objc_msgSend_dispatchOnGrid1D_(v309, v351, v396);
          }
        }

        v321 += v343;
      }

      else
      {
        v327 = v321 + 4 * v324;
        if (v323 != 3)
        {
          v327 = v321;
        }

        if (v323 == 4)
        {
          v321 += 3 * v324;
        }

        else
        {
          v321 = v327;
        }
      }

      v320 = ++v398;
      v319 = v395;
    }

    while (*(v395 + 32) > v398);
  }

  if (*(v319 + 368))
  {
    *(v319 + 368) = 0;
    v352 = (v319 + 648);
    v353 = 10;
    do
    {

      *(v352 - 10) = 0;
      *v352++ = 0;
      --v353;
    }

    while (v353);
  }

  return v392;
}

void sub_1AF1794E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_msgSend_length(*a2, a2, a3);
  v8 = objc_msgSend_length(*(a2 + 8), v6, v7);
  v11 = objc_msgSend_length(*(a2 + 16), v9, v10);
  v14 = objc_msgSend_length(*(a2 + 24), v12, v13);
  v15 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) += v8 + v5 + v11 + v14;
  CFStringAppendFormat(v15, 0, @"\n  - Vertex stencil table (%d stencils)", *(a2 + 32));
  v16 = *(a1 + 40);
  v17 = *a2;
  v18 = sub_1AF2891D8(v5);
  CFStringAppendFormat(v16, 0, @"\n    - Sizes buffer: %p (%@)", v17, v18);
  v19 = *(a1 + 40);
  v20 = *(a2 + 8);
  v21 = sub_1AF2891D8(v8);
  CFStringAppendFormat(v19, 0, @"\n    - Offsets buffer: %p (%@)", v20, v21);
  v22 = *(a1 + 40);
  v23 = *(a2 + 16);
  v24 = sub_1AF2891D8(v11);
  CFStringAppendFormat(v22, 0, @"\n    - Indices buffer: %p (%@)", v23, v24);
  v25 = *(a1 + 40);
  v26 = *(a2 + 24);
  v27 = sub_1AF2891D8(v14);
  CFStringAppendFormat(v25, 0, @"\n    - Weights buffer: %p (%@)", v26, v27);
  v30 = objc_msgSend_length(*(a2 + 40), v28, v29);
  v33 = objc_msgSend_length(*(a2 + 40), v31, v32);
  v34 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) += v33 + v30;
  CFStringAppend(v34, @"\n  - Vertex evalutor input");
  v35 = *(a1 + 40);
  v36 = *(a2 + 40);
  v37 = *(a2 + 56);
  v38 = *(a2 + 60);
  v39 = *(a2 + 64);
  v40 = sub_1AF2891D8(v30);
  CFStringAppendFormat(v35, 0, @"\n    - Src buffer: [offset:%d length:%d stride:%d] %p (%@)", v37, v38, v39, v36, v40);
  v41 = *(a1 + 40);
  v42 = *(a2 + 48);
  v43 = *(a2 + 68);
  v44 = *(a2 + 72);
  v45 = *(a2 + 76);
  v46 = sub_1AF2891D8(v33);
  CFStringAppendFormat(v41, 0, @"\n    - Dst buffer: [offset:%d length:%d stride:%d] %p (%@)", v43, v44, v45, v42, v46);
}

uint64_t *sub_1AF1796E8(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_1AF179770(a1, a2);
  }

  return a1;
}

void sub_1AF179770(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_1AF1797C0(a1, a2);
  }

  sub_1AF10A1D0();
}

void sub_1AF1797C0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_1AF10A1D0();
}

void sub_1AF17981C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1AF179868(a1, a2);
  }

  sub_1AF10A1D0();
}

void sub_1AF179868(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1AF10A1D0();
}

uint64_t *sub_1AF1798C0(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1AF17981C(result, a4);
  }

  return result;
}

void sub_1AF179938(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_1AF10A1E0(a1, a2);
    }

    sub_1AF10A1D0();
  }
}

uint64_t *sub_1AF1799D8(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_1AF17981C(a1, a2);
  }

  return a1;
}

uint64_t *sub_1AF179A58(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_1AF17981C(a1, a2);
  }

  return a1;
}

void sub_1AF179AF8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1AF179B4C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1AF179B4C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t *sub_1AF179BA4(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_1AF179C2C(a1, a2);
  }

  return a1;
}

void sub_1AF179C2C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    sub_1AF179C7C(a1, a2);
  }

  sub_1AF10A1D0();
}

void sub_1AF179C7C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_1AF10A1D0();
}

id sub_1AF179CD8()
{
  v0 = sub_1AF28A7E4(@"CFX-OpenSubdiv_compute.metal");
  v1 = sub_1AF28A7E4(@"vfx_metal");
  result = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v0, v2, @"#import vfx_metal", v1);
  qword_1EB64FB58 = result;
  return result;
}

void sub_1AF179D38(uint64_t a1)
{
  v2 = *(a1 + 80);
}

void sub_1AF179D9C(uint64_t a1)
{
  free(*(a1 + 8));

  v2 = *(a1 + 32);
}

void sub_1AF179DE8(void ****a1)
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
        v4 -= 3;
        v6 = v4;
        sub_1AF179AF8(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_1AF179E5C()
{
  v0 = objc_alloc(MEMORY[0x1E696AEC0]);
  sub_1AFDC64E0(3);
  if (v4 >= 0)
  {
    v2 = objc_msgSend_initWithCString_encoding_(v0, v1, &__p, 4);
  }

  else
  {
    v2 = objc_msgSend_initWithCString_encoding_(v0, v1, __p, 4);
  }

  qword_1EB658588 = v2;
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_1AF179ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF179EF0()
{
  v0 = objc_alloc(MEMORY[0x1E696AEC0]);
  sub_1AFDC64E0(4);
  if (v4 >= 0)
  {
    v2 = objc_msgSend_initWithCString_encoding_(v0, v1, &__p, 4);
  }

  else
  {
    v2 = objc_msgSend_initWithCString_encoding_(v0, v1, __p, 4);
  }

  qword_1EB658598 = v2;
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_1AF179F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF179F84()
{
  v0 = objc_alloc(MEMORY[0x1E696AEC0]);
  sub_1AFDC64E0(6);
  if (v4 >= 0)
  {
    v2 = objc_msgSend_initWithCString_encoding_(v0, v1, &__p, 4);
  }

  else
  {
    v2 = objc_msgSend_initWithCString_encoding_(v0, v1, __p, 4);
  }

  qword_1EB64FB48 = v2;
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_1AF179FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF17A018()
{
  v0 = objc_alloc(MEMORY[0x1E696AEC0]);
  sub_1AFDC64E0(7);
  if (v4 >= 0)
  {
    v2 = objc_msgSend_initWithCString_encoding_(v0, v1, &__p, 4);
  }

  else
  {
    v2 = objc_msgSend_initWithCString_encoding_(v0, v1, __p, 4);
  }

  qword_1EB6585A8 = v2;
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_1AF17A090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF17A0AC()
{
  v0 = objc_alloc(MEMORY[0x1E696AEC0]);
  sub_1AFDC64E0(8);
  if (v4 >= 0)
  {
    v2 = objc_msgSend_initWithCString_encoding_(v0, v1, &__p, 4);
  }

  else
  {
    v2 = objc_msgSend_initWithCString_encoding_(v0, v1, __p, 4);
  }

  qword_1EB6585B8 = v2;
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_1AF17A124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF17A140()
{
  v0 = objc_alloc(MEMORY[0x1E696AEC0]);
  sub_1AFDC64E0(9);
  if (v4 >= 0)
  {
    v2 = objc_msgSend_initWithCString_encoding_(v0, v1, &__p, 4);
  }

  else
  {
    v2 = objc_msgSend_initWithCString_encoding_(v0, v1, __p, 4);
  }

  qword_1EB6585C8 = v2;
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_1AF17A1B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF17A1D4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t sub_1AF17A324(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  CC_SHA256_Init(&c);
  v3 = sub_1AF1B2C1C(a1, v2);
  v5 = v3;
  if (v3)
  {
    v6 = sub_1AF1A3CCC(v3, v4);
    if (v6 >= 1)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = sub_1AF1A3D1C(v5, i, 0);
        v11 = sub_1AF1A7034(v9, v10);
        if (sub_1AF1A72E0(v11))
        {
          v35[0] = 0;
          v12 = sub_1AF1A73C0(v9, v35);
          if (v12)
          {
            v13 = v12;
            BytePtr = CFDataGetBytePtr(v12);
            Length = CFDataGetLength(v13);
            CC_SHA256_Update(&c, BytePtr, Length);
          }

          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = sub_1AF17AFD0;
          v33[3] = &unk_1E7A7B0A8;
          v33[4] = &c;
          sub_1AF1A74B0(v9, v33);
        }
      }
    }
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_1AF17B000;
  v32[3] = &unk_1E7A7B0C8;
  v32[4] = &c;
  sub_1AF1A2BEC(v5, 0, v32);
  CC_SHA256_Final(md, &c);
  v17 = 0;
  v18 = v35;
  v19.i64[0] = 0xA0A0A0A0A0A0A0A0;
  v19.i64[1] = 0xA0A0A0A0A0A0A0A0;
  v20.i64[0] = 0x3737373737373737;
  v20.i64[1] = 0x3737373737373737;
  v21.i64[0] = 0x3030303030303030;
  v21.i64[1] = 0x3030303030303030;
  v22.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v22.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v23.i64[0] = 0xA0A0A0A0A0A0A0ALL;
  v23.i64[1] = 0xA0A0A0A0A0A0A0ALL;
  do
  {
    v24 = *&md[v17];
    v25.i64[0] = 0x3737373737373737;
    v25.i64[1] = 0x3737373737373737;
    v26.i64[0] = 0x3030303030303030;
    v26.i64[1] = 0x3030303030303030;
    v39.val[0] = vbslq_s8(vcgtq_u8(v19, v24), vsraq_n_u8(v26, v24, 4uLL), vsraq_n_u8(v25, v24, 4uLL));
    v27 = vandq_s8(v24, v22);
    v39.val[1] = vbslq_s8(vcgtq_u8(v23, v27), vorrq_s8(v27, v21), vaddq_s8(v27, v20));
    vst2q_s8(v18, v39);
    v18 += 32;
    v17 += 16;
  }

  while (v17 != 32);
  v36 = 0;
  v28 = MEMORY[0x1E696AEC0];
  v29 = sub_1AF1B1F38(a1, v16);
  return objc_msgSend_stringWithFormat_(v28, v30, @"%@-%s", v29, v35);
}

uint64_t (**sub_1AF17A588(uint64_t a1, void *a2, uint64_t a3))(void *, void *, void)
{
  result = objc_msgSend_status(a2, a2, a3);
  if (result != 4)
  {
    v7 = sub_1AF0D5194(result, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDD93FC(a2, v7, v8);
    }

    result = *(a1 + 32);
    if (result)
    {
      return result[2](result, a2, 0);
    }
  }

  return result;
}

void sub_1AF17A60C(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 2)
  {
    if (!(a2 >> 62))
    {
      sub_1AF123244(a1, a2);
    }

    sub_1AF10A1D0();
  }
}

void sub_1AF17A6AC(const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_1AF10A1D0();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_1AF123244(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 4;
  }

  a1[1] = v6;
}

CFTypeRef sub_1AF17A7C4(void *a1)
{
  v147 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[9];
  v5 = objc_alloc(MEMORY[0x1E696ACC8]);
  inited = objc_msgSend_initRequiringSecureCoding_(v5, v6, 0);
  v131 = inited;
  if (!v2)
  {
    v9 = sub_1AF0D5194(inited, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8A54(v9, v8, v10, v11, v12, v13, v14, v15);
    }
  }

  v127 = a1;
  v126 = v4;
  v133 = 0;
  v134 = &v133;
  v135 = 0x5012000000;
  v136 = sub_1AF17BBF8;
  v137 = nullsub_107;
  v138 = "c";
  v139 = 0u;
  v140 = 0u;
  v132[0] = MEMORY[0x1E69E9820];
  v132[1] = 3221225472;
  v132[2] = sub_1AF17BC08;
  v132[3] = &unk_1E7A7B0F0;
  v132[4] = v2;
  v132[5] = &v133;
  objc_msgSend_encodeInt32_forKey_(v131, v8, 3, @"version");
  objc_msgSend_encodeBytes_length_forKey_(v131, v16, v3 + 24, 4, @"primvarDataTypeHash");
  objc_msgSend_encodeInt32_forKey_(v131, v17, *(v3 + 28), @"coarseVertexCount");
  sub_1AF17BCA4(v131, @"vertexPatchTable", v3 + 32, v132);
  v19 = *(v3 + 88);
  if (v19)
  {
    v20 = (v19[1] - *v19) >> 3;
    v21 = 0x6DB6DB6DB6DB6DB7 * v20;
    if (-1227133513 * v20)
    {
      v22 = objc_msgSend_stringByAppendingString_(@"fvarPatchTables", v18, @".count");
      objc_msgSend_encodeInt32_forKey_(v131, v23, v21, v22);
      v24 = 0;
      v25 = 0;
      do
      {
        v26 = *v19;
        if (0x6DB6DB6DB6DB6DB7 * ((v19[1] - *v19) >> 3) <= v25)
        {
          sub_1AF10A1D0();
        }

        v27 = objc_msgSend_stringByAppendingFormat_(@"fvarPatchTables", v18, @".[%d]", v25);
        sub_1AF17BCA4(v131, v27, v26 + v24, v132);
        ++v25;
        v24 += 56;
      }

      while (v21 != v25);
    }
  }

  if (*(v3 + 96) && *(v3 + 104))
  {
    v28 = objc_msgSend_stringByAppendingString_(@"legacyGregoryPatchTable", v18, @".vertexValenceBuffer");
    sub_1AF17BF88(v131, v28, *(v3 + 96), v132, 0);
    v30 = objc_msgSend_stringByAppendingString_(@"legacyGregoryPatchTable", v29, @".quadOffsetsBuffer");
    sub_1AF17BF88(v131, v30, *(v3 + 104), v132, 0);
    v31 = *(v3 + 112);
    v33 = objc_msgSend_stringByAppendingString_(@"legacyGregoryPatchTable", v32, @".quadOffsetsBaseGregory");
    objc_msgSend_encodeInt32_forKey_(v131, v34, v31, v33);
    v35 = *(v3 + 116);
    v37 = objc_msgSend_stringByAppendingString_(@"legacyGregoryPatchTable", v36, @".quadOffsetsBaseGregoryBoundary");
    objc_msgSend_encodeInt32_forKey_(v131, v38, v35, v37);
  }

  v39 = *(v3 + 120);
  if (v39)
  {
    v41 = *v39;
    v40 = v39[1];
    v43 = **v39;
    v42 = (*v39)[1];
    v44 = objc_msgSend_stringByAppendingString_(@"patchRangesTable", v18, @".elementCount");
    v129 = -1431655765 * ((v40 - v41) >> 3);
    objc_msgSend_encodeInt32_forKey_(v131, v45, v129, v44);
    v47 = objc_msgSend_stringByAppendingString_(@"patchRangesTable", v46, @".patchArrayCount");
    v128 = 0xAAAAAAAAAAAAAAABLL * ((v42 - v43) >> 3);
    objc_msgSend_encodeInt32_forKey_(v131, v48, v128, v47);
    if (v129)
    {
      v50 = 0;
      for (i = 0; i < v129; v50 = ++i)
      {
        if (v128)
        {
          v51 = 0;
          v52 = 0;
          do
          {
            if (0xAAAAAAAAAAAAAAABLL * (v39[1] - *v39) <= i)
            {
              sub_1AF10A1D0();
            }

            v54 = &(*v39)[3 * i];
            v53 = *v54;
            if (0xAAAAAAAAAAAAAAABLL * ((v54[1] - *v54) >> 3) <= v52)
            {
              sub_1AF10A1D0();
            }

            v55 = (v53 + v51);
            v57 = *v55;
            v56 = v55[1];
            v58 = objc_msgSend_stringByAppendingFormat_(@"patchRangesTable", v49, @".[%d][%d]", v50, v52);
            objc_msgSend_encodeBytes_length_forKey_(v131, v59, v57, v56 - v57, v58);
            ++v52;
            v51 += 24;
          }

          while (v128 != v52);
        }
      }
    }
  }

  sub_1AF17BE0C(v131, @"vertexRefiner", v3 + 144, v132);
  v61 = v127[6];
  if (v61)
  {
    v62 = (v61[1] - *v61) >> 3;
    v63 = 0x2E8BA2E8BA2E8BA3 * v62;
    if (-1171354717 * v62)
    {
      v64 = objc_msgSend_stringByAppendingString_(@"fvarRefiners", v60, @".count");
      objc_msgSend_encodeInt32_forKey_(v131, v65, v63, v64);
      v67 = 0;
      v68 = 0;
      do
      {
        v69 = *v61;
        if (0x2E8BA2E8BA2E8BA3 * ((v61[1] - *v61) >> 3) <= v68)
        {
          sub_1AF10A1D0();
        }

        v70 = objc_msgSend_stringByAppendingFormat_(@"fvarRefiners", v66, @".[%d]", v68);
        sub_1AF17BE0C(v131, v70, v69 + v67, v132);
        ++v68;
        v67 += 88;
      }

      while (v63 != v68);
    }
  }

  sub_1AF17BF88(v131, @"skinMorphSubdivIndexToMetalIndexBuffer", *(v3 + 352), v132, 0);
  v71 = *(v3 + 360);
  if (v71)
  {
    v72 = sub_1AFDEA004(v71);
    v75 = objc_msgSend_name(v72, v73, v74);
    objc_msgSend_encodeObject_forKey_(v131, v76, v75, @"synchronizeCoarsePositionsPipeline.functionName");
  }

  sub_1AF17BF88(v131, @"fvarChannelDescriptorsBuffer", *(v3 + 128), v132, 0);
  sub_1AF17BF88(v131, @"fvarChannelsPackedDataBuffer", *(v3 + 136), v132, 0);
  if (!v134[6])
  {
    goto LABEL_37;
  }

  if (!v134[9])
  {
    v80 = sub_1AF0D5194(v77, v78);
    v77 = os_log_type_enabled(v80, OS_LOG_TYPE_FAULT);
    if (v77)
    {
      sub_1AFDD94B8(v80, v78, v79, v81, v82, v83, v84, v85);
    }
  }

  if (!v134[8])
  {
    v86 = sub_1AF0D5194(v77, v78);
    if (os_log_type_enabled(v86, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD9530(v86, v78, v79, v87, v88, v89, v90, v91);
    }
  }

  objc_msgSend_endEncoding(v134[9], v78, v79);
  objc_msgSend_commit(v134[8], v92, v93);
  objc_msgSend_waitUntilCompleted(v134[8], v94, v95);
  v98 = objc_msgSend_status(v126, v96, v97);
  if (v98 != 4)
  {
    v103 = sub_1AF0D5194(v98, v99);
    if (!os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    v106 = objc_msgSend_status(v126, v104, v105);
    v109 = objc_msgSend_error(v126, v107, v108);
    v112 = objc_msgSend_logs(v126, v110, v111);
    *buf = 67109634;
    v142 = v106;
    v143 = 2112;
    v144 = v109;
    v145 = 2112;
    v146 = v112;
    v113 = "Error: OpenSubdiv archiver dependency command buffer execution failed with status %d, error: %@\n%@";
    v114 = v103;
LABEL_46:
    _os_log_error_impl(&dword_1AF0CE000, v114, OS_LOG_TYPE_ERROR, v113, buf, 0x1Cu);
    goto LABEL_41;
  }

  v101 = objc_msgSend_status(v134[8], v99, v100);
  if (v101 == 4)
  {
LABEL_37:
    v102 = objc_msgSend_encodedData(v131, v78, v79);
    goto LABEL_42;
  }

  v115 = sub_1AF0D5194(v101, v78);
  if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
  {
    v119 = objc_msgSend_status(v134[8], v116, v117);
    v122 = objc_msgSend_error(v134[8], v120, v121);
    v125 = objc_msgSend_logs(v134[8], v123, v124);
    *buf = 67109634;
    v142 = v119;
    v143 = 2112;
    v144 = v122;
    v145 = 2112;
    v146 = v125;
    v113 = "Error: OpenSubdiv archiver command buffer execution failed with status %d, error: %@\n%@";
    v114 = v115;
    goto LABEL_46;
  }

LABEL_41:
  v102 = 0;
LABEL_42:

  _Block_object_dispose(&v133, 8);
  if (v102)
  {
    return CFAutorelease(v102);
  }

  else
  {
    return 0;
  }
}

void sub_1AF17AF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF17AFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return CC_SHA256_Update(*(a1 + 32), v4, 0x10u);
}

const __CFData *sub_1AF17B000(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AF17CB68(a3, a4, 0);
  if (result)
  {
    result = sub_1AF1AE6E8(a2, v7);
    if (result)
    {
      v8 = result;
      BytePtr = CFDataGetBytePtr(result);
      Length = CFDataGetLength(v8);
      v11 = *(a1 + 32);

      return CC_SHA256_Update(v11, BytePtr, Length);
    }
  }

  return result;
}

void sub_1AF17B08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  *a1 = &unk_1F24E7C58;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = a7;
  *(a1 + 96) = 0;
  *(a1 + 104) = a8;
  if (a6)
  {
    sub_1AFDCACFC(a2, (16 * a6) & 0x300 | a5 & 0xF | (((a6 >> 3) & 1) << 10) | 0xF0);
  }

  else
  {
    sub_1AFDCAA60(a2, a5 & 0xF | (32 * (((*(**(a2 + 40) + 464) - *(**(a2 + 40) + 456)) >> 3) > 0)));
  }

  sub_1AF17B1A4(a1, v11, v10, v9, a6);
}

void sub_1AF17B1A4(uint64_t a1, int a2, int a3, char a4, unint64_t a5)
{
  v6 = *(a1 + 8);
  v7 = ~(16 * *(v6 + 8)) & 0x10;
  if (a2 >= 1)
  {
    sub_1AFDBB9A8(v6, v7 | 0x2A4);
  }

  if (a3 >= 1)
  {
    sub_1AFDBB9A8(*(a1 + 8), v7 | 0x2A5);
  }

  if ((a5 & 0x180) == 0x100)
  {
    v8 = -4294956032;
  }

  else
  {
    v8 = -4294956288;
  }

  if ((a5 & 0x40) != 0)
  {
    v8 = -4294956544;
  }

  sub_1AFDB2578(*(a1 + 8), ((a5 << 10) & 0x3000 | (16 * (a4 & 0xF)) | (a5 >> 2) & 0xC) ^ v8, 0);
}

uint64_t sub_1AF17B404(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_1AFDCBF9C(a3, a2, *(result + 104));
  }

  if (a4)
  {
    sub_1AFDCBF9C(a4, a2, *(result + 104));
  }

  return result;
}

void sub_1AF17B468(void *a1)
{
  sub_1AF17C11C(a1);

  JUMPOUT(0x1B271C6B0);
}

BOOL sub_1AF17B4B8(uint64_t a1)
{
  v2 = *(**(*(a1 + 8) + 88) + 8);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  LODWORD(v11) = v11 + v12 * v2;
  v3 = sub_1AF17B658(*(a1 + 88), &v13, &v11, *(a1 + 104));
  result = sub_1AF17B6A0(*(a1 + 32), &v13, *(a1 + 32), &v11, *(a1 + 72), v3, *(a1 + 104));
  if (*(a1 + 64) >= 1)
  {
    v9 = *(a1 + 60);
    v10 = *(a1 + 68);
    v7 = *(a1 + 60);
    v8 = *(a1 + 68);
    LODWORD(v7) = v7 + v8 * v2;
    v5 = sub_1AF17B658(*(a1 + 88), &v9, &v7, *(a1 + 104));
    v6 = *(a1 + 40);
    if (!v6)
    {
      v6 = *(a1 + 32);
    }

    return sub_1AF17B6A0(v6, &v9, v6, &v7, *(a1 + 80), v5, *(a1 + 104));
  }

  return result;
}

uint64_t *sub_1AF17B658(uint64_t *result, int *a2, int *a3, uint64_t a4)
{
  if (result)
  {
    v6 = 0;
    v7 = 0;
    v4 = 0;
    v5 = 0;
    return sub_1AF17B7BC(result, a2, a3, &v6, &v4, a4);
  }

  return result;
}

BOOL sub_1AF17B6A0(uint64_t a1, _DWORD *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a6)
  {
    sub_1AFDBACE8();
  }

  return sub_1AF17BB28(a6, a1, a2, a3, a4, a5, a7);
}

uint64_t sub_1AF17B7BC(uint64_t *a1, int *a2, int *a3, int *a4, int *a5, uint64_t a6)
{
  v6 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
LABEL_43:
    sub_1AFDBACE8();
  }

  v9 = a2[1];
  v8 = a2[2];
  v10 = *a2;
  v12 = a3[1];
  v11 = a3[2];
  v13 = *a3;
  v14 = a4[1];
  v15 = a4[2];
  v16 = *a4;
  v18 = a5[1];
  v17 = a5[2];
  v19 = *a5;
  while (1)
  {
    v20 = v8 ? v10 % v8 : 0;
    v21 = *(v6 + 8);
    v22 = v21 ? *v6 % v21 : 0;
    if (v20 == v22 && v8 == v21 && v9 == *(v6 + 4))
    {
      v24 = v11 ? v13 % v11 : 0;
      v25 = *(v6 + 20);
      v26 = v25 ? *(v6 + 12) % v25 : 0;
      if (v24 == v26 && v11 == v25 && v12 == *(v6 + 16))
      {
        v27 = v15 ? v16 % v15 : 0;
        v28 = *(v6 + 32);
        v29 = v28 ? *(v6 + 24) % v28 : 0;
        if (v27 == v29 && v15 == v28 && v14 == *(v6 + 28))
        {
          v30 = v17 ? v19 % v17 : 0;
          v31 = *(v6 + 44);
          v32 = v31 ? *(v6 + 36) % v31 : 0;
          if (v30 == v32 && v17 == v31 && v18 == *(v6 + 40))
          {
            return *(v6 + 48);
          }
        }
      }
    }

    v6 += 56;
    if (v6 == v7)
    {
      goto LABEL_43;
    }
  }
}

void sub_1AF17BACC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_1AF10A1D0();
}

BOOL sub_1AF17BB28(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1AFDCC098(a2);
  v14 = sub_1AFDCC098(a4);
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  return sub_1AFDBB5E8(a1, v13, a3, v14, a5, 0, &v18, 0, &v16, *a6, *(a6 + 8), *(a6 + 16), *(a6 + 24), 0, 0, 0, *(a6 + 48), a7);
}

__n128 sub_1AF17BBF8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

__n128 sub_1AF17BC08@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, const char *a3@<X1>, uint64_t a4@<X2>)
{
  v5 = *(*(a1 + 40) + 8);
  if (!*(v5 + 48))
  {
    *(*(*(a1 + 40) + 8) + 48) = objc_msgSend_device(*(a1 + 32), a3, a4);
    *(*(*(a1 + 40) + 8) + 56) = *(a1 + 32);
    *(*(*(a1 + 40) + 8) + 64) = objc_msgSend_commandBuffer(*(*(*(a1 + 40) + 8) + 56), v7, v8);
    *(*(*(a1 + 40) + 8) + 72) = objc_msgSend_blitCommandEncoder(*(*(*(a1 + 40) + 8) + 64), v9, v10);
    v5 = *(*(a1 + 40) + 8);
  }

  result = *(v5 + 48);
  v12 = *(v5 + 64);
  *a2 = result;
  *(a2 + 16) = v12;
  return result;
}

void *sub_1AF17BCA4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = result;
    v8 = *(a3 + 8);
    v9 = 16 * *a3;
    v10 = objc_msgSend_stringByAppendingString_(a2, a2, @".patchArrays");
    objc_msgSend_encodeBytes_length_forKey_(v7, v11, v8, v9, v10);
    v13 = objc_msgSend_stringByAppendingString_(a2, v12, @".patchIndexBuffer");
    sub_1AF17BF88(v7, v13, *(a3 + 16), a4, 0);
    v15 = objc_msgSend_stringByAppendingString_(a2, v14, @".patchParamBuffer");
    sub_1AF17BF88(v7, v15, *(a3 + 24), a4, 0);
    v17 = objc_msgSend_stringByAppendingString_(a2, v16, @".dataBuffer");
    sub_1AF17BF88(v7, v17, *(a3 + 32), a4, *(a3 + 48));
    v18 = *(a3 + 40);
    v20 = objc_msgSend_stringByAppendingString_(a2, v19, @".dataBufferOffset");
    objc_msgSend_encodeInt32_forKey_(v7, v21, v18, v20);
    v22 = *(a3 + 48);
    v24 = objc_msgSend_stringByAppendingString_(a2, v23, @".dataBufferCoarseDataSize");
    objc_msgSend_encodeInt32_forKey_(v7, v25, v22, v24);
    v28 = objc_msgSend_length(*(a3 + 32), v26, v27);
    v31 = objc_msgSend_stringByAppendingString_(a2, v29, @".dataBufferFullDataSize");

    return objc_msgSend_encodeInt32_forKey_(v7, v30, v28, v31);
  }

  return result;
}

void *sub_1AF17BE0C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = result;
    v8 = objc_msgSend_stringByAppendingString_(a2, a2, @".stencilTable");
    v10 = objc_msgSend_stringByAppendingString_(v8, v9, @".sizesBuffer");
    sub_1AF17BF88(v7, v10, *a3, a4, 0);
    v12 = objc_msgSend_stringByAppendingString_(v8, v11, @".offsetsBuffer");
    sub_1AF17BF88(v7, v12, *(a3 + 8), a4, 0);
    v14 = objc_msgSend_stringByAppendingString_(v8, v13, @".indicesBuffer");
    sub_1AF17BF88(v7, v14, *(a3 + 16), a4, 0);
    v16 = objc_msgSend_stringByAppendingString_(v8, v15, @".weightsBuffer");
    sub_1AF17BF88(v7, v16, *(a3 + 24), a4, 0);
    v17 = *(a3 + 32);
    v19 = objc_msgSend_stringByAppendingString_(v8, v18, @".numStencils");
    objc_msgSend_encodeInt32_forKey_(v7, v20, v17, v19);
    v22 = objc_msgSend_stringByAppendingString_(a2, v21, @".evaluatorInput");
    v24 = objc_msgSend_stringByAppendingString_(v22, v23, @".srcDesc");
    objc_msgSend_encodeBytes_length_forKey_(v7, v25, a3 + 56, 12, v24);
    v28 = objc_msgSend_stringByAppendingString_(v22, v26, @".dstDesc");

    return objc_msgSend_encodeBytes_length_forKey_(v7, v27, a3 + 68, 12, v28);
  }

  return result;
}