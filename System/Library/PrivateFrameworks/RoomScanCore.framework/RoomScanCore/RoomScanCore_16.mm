BOOL sub_2622EA214(void *a1, char *__s)
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
      sub_2622EA298();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t sub_2622EA38C(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  objc_msgSend_timestamp(a2, v5, v6);
  v8 = v7;
  objc_msgSend_timestamp(v4, v9, v10);
  if (v8 < v11)
  {
    v12 = -1;
  }

  else
  {
    v12 = v8 > v11;
  }

  return v12;
}

id *sub_2622EA3F8(id *a1)
{
  if (a1)
  {
    a1 = a1[2];
    v1 = vars8;
  }

  return a1;
}

uint64_t *sub_2622EA48C(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 176);
    if (v3)
    {
      free(v3);
    }

    v4 = *(v2 + 208);
    if (v4)
    {
      CVPixelBufferRelease(v4);
    }

    *(v2 + 232) = &unk_2874EEC38;
    v5 = *(v2 + 360);
    if (v5)
    {
      sub_2621D1B78(v5);
    }

    v6 = *(v2 + 224);
    *(v2 + 224) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    sub_26225CDF4(*(v2 + 160));
    sub_26225CE48(*(v2 + 136));
    v7 = *(v2 + 120);
    *(v2 + 120) = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    JUMPOUT(0x266727420);
  }

  return result;
}

uint64_t **sub_2622EA644(float *a1, unsigned __int8 a2, _BYTE **a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % *(a1 + 1);
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 16) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_2622EAA80(void *a1, uint64_t **a2, void *a3)
{
  v78 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v57 = a3;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = v4;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v71, v77, 16);
  if (v8)
  {
    v58 = *v72;
    do
    {
      v9 = 0;
      v59 = v8;
      do
      {
        if (*v72 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v71 + 1) + 8 * v9);
        v11 = objc_msgSend_identifier(v10, v6, v7);
        v14 = objc_msgSend_UUIDString(v11, v12, v13);
        v15 = v14;
        v18 = objc_msgSend_UTF8String(v14, v16, v17);
        v19 = strlen(v18);
        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_2621CC980();
        }

        v20 = v19;
        if (v19 >= 0x17)
        {
          operator new();
        }

        v70 = v19;
        if (v19)
        {
          memmove(&__dst, v18, v19);
        }

        *(&__dst + v20) = 0;

        if (sub_26225E7AC(a2[1], &__dst))
        {
          *&src[0] = &__dst;
          v21 = sub_26225D91C(a2, &__dst, src);
          v22 = COERCE_FLOAT(v21[11]);
          v23 = COERCE_FLOAT(v21[17]);
          if (v22 >= v23)
          {
            v64 = *(v21 + 5);
            v61 = *(v21 + 7);
            v62 = *(v21 + 6);
            v60 = *(v21 + 8);
          }

          else
          {
            v24.i64[0] = v21[10];
            v24.i32[2] = v21[17];
            v24.i32[3] = HIDWORD(*(v21 + 5));
            v25.i64[0] = v21[12];
            v25.i64[1] = __PAIR64__(HIDWORD(*(v21 + 6)), LODWORD(v23));
            v26.i64[0] = v21[14];
            v26.i32[2] = v21[11];
            v26.i32[3] = HIDWORD(*(v21 + 7));
            v27.i64[0] = v21[16];
            v27.i64[1] = __PAIR64__(HIDWORD(*(v21 + 8)), LODWORD(v22));
            v64 = v24;
            v61 = v26;
            v62 = v25;
            v60 = v27;
          }

          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v28 = v57;
          v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v65, v76, 16);
          if (v32)
          {
            v33 = *v66;
            while (2)
            {
              for (i = 0; i != v32; ++i)
              {
                if (*v66 != v33)
                {
                  objc_enumerationMutation(v28);
                }

                v35 = *(*(&v65 + 1) + 8 * i);
                v36 = objc_msgSend_identifier(v35, v30, v31);
                v39 = objc_msgSend_identifier(v10, v37, v38);
                isEqual = objc_msgSend_isEqual_(v36, v40, v39);

                if (isEqual)
                {
                  objc_msgSend_quad(v35, v30, v31);
                  v48 = vsubq_f32(v64, v47);
                  v49 = vmulq_f32(v48, v48);
                  if (sqrtf(v49.f32[2] + vaddv_f32(*v49.f32)) > 0.001 || (v50 = vsubq_f32(v62, v44), v51 = vmulq_f32(v50, v50), sqrtf(v51.f32[2] + vaddv_f32(*v51.f32)) > 0.001) || (v52 = vsubq_f32(v61, v45), v53 = vmulq_f32(v52, v52), sqrtf(v53.f32[2] + vaddv_f32(*v53.f32)) > 0.001) || (v54 = vsubq_f32(v60, v46), v55 = vmulq_f32(v54, v54), sqrtf(v55.f32[2] + vaddv_f32(*v55.f32)) > 0.001))
                  {
                    if (objc_msgSend_individualUpdate(v10, v42, v43) == 2 && v10)
                    {
                      v10[105] = 1;
                    }
                  }

                  goto LABEL_32;
                }
              }

              v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v30, &v65, v76, 16);
              if (v32)
              {
                continue;
              }

              break;
            }
          }

LABEL_32:

          src[0] = v64;
          src[1] = v62;
          src[2] = v61;
          src[3] = v60;
          if (v10)
          {
            objc_copyStruct(v10 + 272, src, 64, 1, 0);
          }
        }

        if (v70 < 0)
        {
          operator delete(__dst);
        }

        ++v9;
      }

      while (v9 != v59);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v71, v77, 16);
    }

    while (v8);
  }
}

uint64_t sub_2622EAF60(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v7 = objc_msgSend_count(v3, v5, v6);
  if (v7 == objc_msgSend_count(v4, v8, v9))
  {
    v12 = 0;
LABEL_3:
    if (v12 >= objc_msgSend_count(v3, v10, v11))
    {
      v40 = 1;
      goto LABEL_9;
    }

    v14 = objc_msgSend_objectAtIndexedSubscript_(v3, v13, v12);
    objc_msgSend_quad(v14, v15, v16);
    v51 = v17;
    v53 = v18;
    v55 = v19;
    v50 = v20;
    v52 = v21;
    v57 = v22;
    v54 = v23;
    v56 = v24;

    v26 = objc_msgSend_objectAtIndexedSubscript_(v4, v25, v12);
    objc_msgSend_quad(v26, v27, v28);
    v43 = v29;
    v45 = v30;
    v47 = v31;
    v42 = v32;
    v44 = v33;
    v49 = v34;
    v46 = v35;
    v48 = v36;

    v37 = 0;
    while (1)
    {
      v38 = vsubq_f32(*(&v50 + v37), *(&v42 + v37));
      v39 = vmulq_f32(v38, v38);
      if (sqrtf(v39.f32[2] + vaddv_f32(*v39.f32)) > 0.01)
      {
        break;
      }

      v37 += 16;
      if (v37 == 64)
      {
        ++v12;
        goto LABEL_3;
      }
    }
  }

  v40 = 0;
LABEL_9:

  return v40;
}

void sub_2622EB110(void *a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v28 = a1;
  v3 = a2;
  v6 = objc_msgSend_set(MEMORY[0x277CBEB58], v4, v5);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = v3;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v33, v38, 16);
  if (v11)
  {
    v12 = *v34;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = objc_msgSend_identifier(*(*(&v33 + 1) + 8 * i), v9, v10);
        objc_msgSend_addObject_(v6, v15, v14);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v33, v38, 16);
    }

    while (v11);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = v28;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v29, v37, 16);
  if (v20)
  {
    v21 = *v30;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v16);
        }

        v23 = *(*(&v29 + 1) + 8 * j);
        v24 = objc_msgSend_identifier(v23, v18, v19);
        v26 = objc_msgSend_containsObject_(v6, v25, v24);

        if (v23)
        {
          v27 = v26;
        }

        else
        {
          v27 = 1;
        }

        if ((v27 & 1) == 0)
        {
          v23[105] = 0;
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v29, v37, 16);
    }

    while (v20);
  }
}

void sub_2622EB374(void *a1, void *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v48 = a1;
  v3 = a2;
  v4 = objc_opt_new();
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v5 = v3;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v57, v62, 16);
  if (v9)
  {
    v10 = *v58;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v58 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v57 + 1) + 8 * i);
        v13 = objc_msgSend_identifier(v12, v7, v8);
        objc_msgSend_setObject_forKeyedSubscript_(v4, v14, v12, v13);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v57, v62, 16);
    }

    while (v9);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v15 = v48;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v53, v61, 16);
  if (v19)
  {
    v20 = *v54;
    do
    {
      v21 = 0;
      do
      {
        if (*v54 != v20)
        {
          objc_enumerationMutation(v15);
        }

        v22 = *(*(&v53 + 1) + 8 * v21);
        v23 = objc_msgSend_identifier(v22, v17, v18);
        v25 = objc_msgSend_objectForKeyedSubscript_(v4, v24, v23);
        v26 = v25 == 0;

        if (v26)
        {
          if (!v22)
          {
            goto LABEL_23;
          }

          v46 = 0;
LABEL_22:
          v22[105] = v46;
          goto LABEL_23;
        }

        v27 = objc_msgSend_identifier(v22, v17, v18);
        v29 = objc_msgSend_objectForKeyedSubscript_(v4, v28, v27);
        objc_msgSend_quad(v29, v30, v31);
        v51 = v33;
        v52 = v32;
        v49 = v35;
        v50 = v34;

        objc_msgSend_quad(v22, v36, v37);
        v42 = vceqq_f32(v41, v52);
        v42.i32[3] = v42.i32[2];
        if ((vminvq_u32(v42) & 0x80000000) != 0 && (v43 = vceqq_f32(v38, v51), v43.i32[3] = v43.i32[2], (vminvq_u32(v43) & 0x80000000) != 0) && (v44 = vceqq_f32(v39, v50), v44.i32[3] = v44.i32[2], (vminvq_u32(v44) & 0x80000000) != 0) && (v45 = vceqq_f32(v40, v49), v45.i32[3] = v45.i32[2], (vminvq_u32(v45) & 0x80000000) != 0))
        {
          v46 = 2;
          if (v22)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v46 = 1;
          if (v22)
          {
            goto LABEL_22;
          }
        }

LABEL_23:
        ++v21;
      }

      while (v19 != v21);
      v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v53, v61, 16);
      v19 = v47;
    }

    while (v47);
  }
}

void sub_2622EB6C4(uint64_t a1)
{
  sub_2622EB6FC(a1);

  JUMPOUT(0x266727420);
}

uint64_t sub_2622EB6FC(uint64_t a1)
{
  *a1 = &unk_2874EE748;
  v2 = *(a1 + 1280);
  v3 = (a1 + 1288);
  if (v2 != (a1 + 1288))
  {
    do
    {
      CVPixelBufferRelease(v2[7]);
      v4 = v2[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  sub_2621DF078(*(a1 + 1312));
  sub_2621CC7B4(*(a1 + 1288));
  sub_2622C9478(*(a1 + 1200));
  v7 = *(a1 + 1168);
  if (v7)
  {
    *(a1 + 1176) = v7;
    operator delete(v7);
  }

  *(a1 + 1008) = &unk_2874EF0B8;
  v8 = *(a1 + 1136);
  if (v8)
  {
    sub_2621D1B78(v8);
  }

  sub_262383D20((a1 + 80));
  sub_26229F680((a1 + 8));
  return a1;
}

uint64_t *sub_2622EB800(uint64_t **a1, void *a2, __int128 **a3)
{
  v3 = *sub_26225E318(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t sub_2622EB8C8(uint64_t **a1, void *a2, __int128 **a3)
{
  v3 = *sub_26225E318(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void sub_2622EB9C8(char a1, char *__p)
{
  if (a1)
  {
    *(__p + 7) = &unk_2874EF0D8;
    v3 = *(__p + 23);
    if (v3)
    {
      sub_2621D1B78(v3);
    }

    if (__p[55] < 0)
    {
      operator delete(*(__p + 4));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_2622EBA50(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    v12 = v4;
    goto LABEL_17;
  }

  v7 = (a4 - a3) >> 3;
  do
  {
    while (1)
    {
      v4 = v5;
      v8 = v5[4];
      v9 = (v5[5] - v8) >> 3;
      v10 = v9 >= v7 ? (a4 - a3) >> 3 : v9;
      if (v10 >= 1)
      {
        break;
      }

LABEL_10:
      if (v7 >= v9)
      {
        goto LABEL_14;
      }

LABEL_11:
      v5 = *v4;
      v12 = v4;
      if (!*v4)
      {
        goto LABEL_17;
      }
    }

    v11 = a3;
    while (*v11 == *v8)
    {
      ++v11;
      ++v8;
      if (!--v10)
      {
        goto LABEL_10;
      }
    }

    if (*v11 < *v8)
    {
      goto LABEL_11;
    }

LABEL_14:
    v5 = v4[1];
  }

  while (v5);
  v12 = v4 + 1;
LABEL_17:
  *a2 = v4;
  return v12;
}

uint64_t sub_2622EBAE0(uint64_t a1, CVPixelBufferRef pixelBuffer, _DWORD *a3)
{
  v5 = *a3;
  v6 = *(*a3 + 8);
  v30 = *(*a3 + 16);
  v31 = v6;
  v29 = *(v5 + 24);
  IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
  IOSurfaceLock(IOSurface, 1u, 0);
  *(a1 + 8) = 0u;
  *a1 = &unk_2874EEDA0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 257;
  if (a3[7] == 3)
  {
    BaseAddress = IOSurfaceGetBaseAddress(IOSurface);
    sub_262293FD4(v16, &v31, &v30, &v29);
    sub_262294264(&v17, v16, BaseAddress);
    v9 = v21;
    v10 = v23;
    *(a1 + 72) = v22;
    *(a1 + 88) = v10;
    *(a1 + 104) = v24;
    v11 = v19;
    *(a1 + 8) = v18;
    *(a1 + 24) = v11;
    *(a1 + 40) = v20;
    *(a1 + 56) = v9;
    v13 = v25;
    v12 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = *(a1 + 128);
    *(a1 + 120) = v13;
    *(a1 + 128) = v12;
    if (v14)
    {
      sub_2621D1B78(v14);
    }

    *(a1 + 144) = v28;
    *(a1 + 136) = v27;
    v17 = &unk_2874EEDA0;
    if (v26)
    {
      sub_2621D1B78(v26);
    }
  }

  return IOSurfaceUnlock(IOSurface, 1u, 0);
}

void sub_2622EBC70(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[16];
  if (v4)
  {
    sub_2621D1B78(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622EBC98(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v127 = v1;
  v252[19] = *MEMORY[0x277D85DE8];
  kdebug_trace();
  CVPixelBufferLockBaseAddress(v3, 1uLL);
  sub_2622A0078();
  CVPixelBufferUnlockBaseAddress(v3, 1uLL);
  kdebug_trace();
  kdebug_trace();
  sub_2621D0F64(v238, "loi_input_2");
  __p[0] = v238;
  v6 = *(sub_2622F30B0((v5 + 1280), v238, __p) + 56);
  sub_2621D0F64(__p, "loi_input_2");
  v7 = sub_2622A0200(v5 + 8, __p);
  sub_2622EBAE0(v183, v6, v7);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v238[2]) < 0)
  {
    operator delete(v238[0]);
  }

  sub_2621D0F64(v238, "jmap");
  __p[0] = v238;
  v8 = *(sub_2622F30B0((v5 + 1280), v238, __p) + 56);
  sub_2621D0F64(__p, "jmap");
  v9 = sub_2622A0200(v5 + 8, __p);
  sub_2622EBAE0(&v179, v8, v9);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v238[2]) < 0)
  {
    operator delete(v238[0]);
  }

  sub_2621D0F64(v238, "jmap_peaks");
  __p[0] = v238;
  v10 = *(sub_2622F30B0((v5 + 1280), v238, __p) + 56);
  sub_2621D0F64(__p, "jmap_peaks");
  v11 = sub_2622A0200(v5 + 8, __p);
  sub_2622EBAE0(&v173, v10, v11);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v238[2]) < 0)
  {
    operator delete(v238[0]);
  }

  sub_2621D0F64(v238, "lmap");
  __p[0] = v238;
  v12 = sub_2622F3150((v5 + 1304), v238, __p);
  if (SHIBYTE(v238[2]) < 0)
  {
    operator delete(v238[0]);
  }

  sub_2621D0F64(v238, "lmap");
  __p[0] = v238;
  v13 = *(sub_2622F30B0((v5 + 1280), v238, __p) + 56);
  sub_2621D0F64(__p, "lmap");
  v14 = sub_2622A0200(v5 + 8, __p);
  v15 = *(*v14 + 8);
  v16 = *(*v14 + 16);
  v17 = *(*v14 + 24);
  v18 = *(v12 + 200);
  IOSurface = CVPixelBufferGetIOSurface(v13);
  IOSurfaceLock(IOSurface, 1u, 0);
  v20 = v16 * v15 * v17;
  v21 = *(v14 + 7);
  if (v21 == 3)
  {
    for (i = IOSurfaceGetBaseAddress(IOSurface); v20; --v20)
    {
      v25 = *i++;
      _H0 = v25;
      __asm { FCVT            S0, H0 }

      *v18++ = _S0;
    }
  }

  else if (v21 == 6)
  {
    for (j = IOSurfaceGetBaseAddress(IOSurface); v20; --v20)
    {
      v23 = *j++;
      *v18++ = v23;
    }
  }

  IOSurfaceUnlock(IOSurface, 1u, 0);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v238[2]) < 0)
  {
    operator delete(v238[0]);
  }

  v126 = v12;
  kdebug_trace();
  kdebug_trace();
  kdebug_trace();
  v128 = v5;
  v32 = *(v5 + 1224);
  v172 = 0;
  v170 = 0;
  v171 = 0;
  v130 = v175;
  if (v175)
  {
    v33 = 0;
    v34 = 0;
    v35 = v174;
    v36 = v176;
    v37 = v182;
    v38 = v178;
    v39 = v174 - 1;
    v40 = 2 * v176 * v175;
    v41 = (v178 + v40);
    v42 = v176;
    v129 = v176;
    v134 = v178;
    v135 = v174;
    v133 = v174 - 1;
    do
    {
      v131 = v41;
      v132 = v34;
      if (v36)
      {
        v43 = 0;
        v44 = v34 * v36;
        v45 = v34;
        do
        {
          _H0 = *(v37 + 2 * (v43 + v44));
          __asm { FCVT            S1, H0 }

          if (v32 <= _S1)
          {
            _H11 = *(v38 + 2 * (v43 + v44));
            v49 = v41;
            v50 = v39;
            if (v35 >= 2)
            {
              do
              {
                if (_H11 < *v49)
                {
                  _H11 = *v49;
                }

                v49 = (v49 + v40);
                --v50;
              }

              while (v50);
            }

            if (_H0 == _H11)
            {
              v51 = v43;
              v52 = v43 / v42 + v45;
              if (v33 >= v172)
              {
                v55 = v170;
                v56 = v33 - v170;
                v57 = 0xAAAAAAAAAAAAAAABLL * ((v33 - v170) >> 2);
                v58 = v57 + 1;
                if (v57 + 1 > 0x1555555555555555)
                {
                  sub_2621CBEB0();
                }

                if (0x5555555555555556 * ((v172 - v170) >> 2) > v58)
                {
                  v58 = 0x5555555555555556 * ((v172 - v170) >> 2);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v172 - v170) >> 2) >= 0xAAAAAAAAAAAAAAALL)
                {
                  v59 = 0x1555555555555555;
                }

                else
                {
                  v59 = v58;
                }

                if (v59)
                {
                  if (v59 <= 0x1555555555555555)
                  {
                    operator new();
                  }

                  sub_2621C6A34();
                }

                v60 = 12 * v57;
                __asm { FCVT            S0, H11 }

                *v60 = v51;
                *(v60 + 4) = v52;
                *(v60 + 8) = _S0;
                v54 = 12 * v57 + 12;
                v62 = (12 * v57 - v56);
                memcpy((v60 - v56), v55, v56);
                v170 = v62;
                v171 = v54;
                v172 = 0;
                if (v55)
                {
                  operator delete(v55);
                }

                v38 = v134;
                v35 = v135;
                v39 = v133;
              }

              else
              {
                __asm { FCVT            S0, H11 }

                *v33 = v51;
                *(v33 + 4) = v52;
                *(v33 + 8) = _S0;
                v54 = v33 + 12;
              }

              v171 = v54;
              v33 = v54;
            }
          }

          ++v43;
          ++v41;
        }

        while (v43 != v36);
      }

      v34 = v132 + 1;
      v41 = &v131[v129];
    }

    while (v132 + 1 != v130);
  }

  kdebug_trace();
  kdebug_trace();
  v63 = (v171 - v170) >> 2;
  if (0xAAAAAAAAAAAAAAABLL * v63 >= *(v128 + 1216))
  {
    v64 = *(v128 + 1216);
  }

  else
  {
    v64 = 0xAAAAAAAAAAAAAAABLL * v63;
  }

  if (v64 > 1)
  {
    sub_2621CD160(&v207, 0xAAAAAAAAAAAAAAABLL * v63);
    v65 = v207;
    if (v207 != *(&v207 + 1))
    {
      v66 = 0;
      v67 = (*(&v207 + 1) - v207 - 8) >> 3;
      v68 = vdupq_n_s64(v67);
      v69 = (v67 + 2) & 0x3FFFFFFFFFFFFFFELL;
      v70 = xmmword_2623A7620;
      v71 = vdupq_n_s64(2uLL);
      do
      {
        v72 = vmovn_s64(vcgeq_u64(v68, v70));
        if (v72.i8[0])
        {
          *(v65 + 8 * v66) = v66;
        }

        if (v72.i8[4])
        {
          *(v65 + 8 * v66 + 8) = v66 + 1;
        }

        v66 += 2;
        v70 = vaddq_s64(v70, v71);
      }

      while (v69 != v66);
    }

    v73 = 126 - 2 * __clz((*(&v65 + 1) - v65) >> 3);
    v238[0] = &v170;
    if (*(&v65 + 1) == v65)
    {
      v74 = 0;
    }

    else
    {
      v74 = v73;
    }

    sub_262383E6C(v65, *(&v65 + 1), v238, v74, 1);
    __p[0] = (((v64 - 1) * v64) >> 1);
    *&__p[1] = vdupq_n_s64(2uLL);
    sub_2622F3390(v238, __p);
    v75 = vdupq_n_s64(2uLL);
    v75.n128_u64[0] = v64;
    sub_2622335D4(__p, v75);
    sub_2622E2298(v190, v64, 0.0);
    v76 = 0;
    v77 = v235;
    v78 = v207;
    v79 = v171;
    v80 = v242 + 1;
    for (k = 16 * v64 - 16; ; k -= 16)
    {
      *&v218 = v76;
      v82 = *(v78 + 8 * v76);
      if (0xAAAAAAAAAAAAAAABLL * ((v79 - v170) >> 2) <= v82)
      {
        sub_262333AEC();
      }

      v83 = (v170 + 12 * v82);
      v84 = *v83;
      v85 = v83[1];
      v86 = v83[2];
      v87 = (v77 + 8 * v76);
      *v87 = v85;
      v87[1] = v84;
      *sub_2622CB6CC(v190, &v218) = v86;
      if (v76 == v64 - 1)
      {
        break;
      }

      ++v76;
      v78 = v207;
      v79 = v171;
      v88 = v170;
      v89 = 0xAAAAAAAAAAAAAAABLL * ((v171 - v170) >> 2);
      v90 = v80;
      v91 = v76;
      do
      {
        v92 = *(v78 + 8 * v91);
        if (v89 <= v92)
        {
          sub_262333AEC();
        }

        v93 = *&v88[12 * v92];
        v90[-1].i32[0] = v85;
        v90[-1].i32[1] = v84;
        *v90 = vrev64_s32(v93);
        v90 += 2;
        ++v91;
      }

      while (v64 != v91);
      v80 = (v80 + k);
    }

    sub_26222AE80(&v139, v238);
    sub_262223F30(&v150, __p);
    sub_262229F7C(&v160, v190);
    *&v190[0] = &unk_2874EF6A8;
    if (v192)
    {
      sub_2621D1B78(v192);
    }

    __p[0] = &unk_2874EF0B8;
    if (v234)
    {
      sub_2621D1B78(v234);
    }

    v238[0] = &unk_2874EF0D8;
    if (v241)
    {
      sub_2621D1B78(v241);
    }

    if (v207)
    {
      *(&v207 + 1) = v207;
      operator delete(v207);
    }

    if (*(v128 + 1276) == 1)
    {
      LODWORD(v252[0]) = 1;
      sub_26222296C(&v207, v126 + 56, v252);
      LODWORD(v249) = 2;
      sub_26222296C(&v218, v126 + 56, &v249);
      v239 = 0u;
      memset(v238, 0, sizeof(v238));
      sub_262223F30(v240, &v207);
      sub_262223F30(v243, &v218);
      v94 = 0;
      v95 = 1;
      do
      {
        v96 = *&v240[8 * v94 + 8];
        v97 = v243[v94 + 1];
        if ((v95 & 1) == 0)
        {
          break;
        }

        v95 = 0;
        v94 = 1;
      }

      while (v96 == v97);
      if (v96 != v97)
      {
        v98 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v99 = sub_2621D552C(v98, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../expression/exp_element_binary.hpp", 127);
        sub_2621D552C(v99, " ", 1);
        v100 = MEMORY[0x277D82670];
        v101 = MEMORY[0x266727260](MEMORY[0x277D82670], 64);
        sub_2621D552C(v101, " ", 1);
        sub_2621D552C(v101, "TensorBinaryExp", 15);
        std::ios_base::getloc((v101 + *(*v101 - 24)));
        v102 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
        (v102->__vftable[2].~facet_0)(v102, 10);
        std::locale::~locale(__p);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D6B98("err", "Binary Exp shape should equal");
        std::ios_base::getloc((v100 + *(*v100 - 24)));
        v103 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
        (v103->__vftable[2].~facet_0)(v103, 10);
        std::locale::~locale(__p);
        std::ostream::put();
        std::ostream::flush();
      }

      *v238 = *&v240[8];
      *&v238[2] = *&v240[24];
      v239 = *&v240[40];
      *&v192 = 0;
      memset(&v190[4] + 8, 0, 32);
      *(v190 + 8) = *&v240[8];
      *(&v190[2] + 8) = *&v240[40];
      *(&v190[1] + 8) = *&v240[24];
      *&v190[0] = &unk_2874EF0B8;
      *(&v190[3] + 1) = *&v240[16];
      *&v190[4] = 1;
      *(&v190[6] + 1) = *&v240[8] * *&v240[16];
      v191 = 0uLL;
      sub_262224B84(__p, &v190[6] + 1);
    }

    v137 = v140;
    v105 = v147;
    if (v147)
    {
      atomic_fetch_add_explicit(&v147->__shared_owners_, 1uLL, memory_order_relaxed);
      v138 = v105;
    }

    else
    {
      v138 = 0;
    }

    v106 = v149;
    v186 = 0;
    v185 = 0;
    v187 = 0;
    v107 = v137;
    if (v137)
    {
      v108 = (512.0 / v180) * 0.03;
      v136 = v183[2] / v180;
      do
      {
        v109 = COERCE_FLOAT(*v106) - COERCE_FLOAT(v106->i64[1]);
        v110 = v108 * sqrtf(((COERCE_FLOAT(HIDWORD(v106->i64[0])) - COERCE_FLOAT(HIDWORD(*v106))) * (COERCE_FLOAT(HIDWORD(v106->i64[0])) - COERCE_FLOAT(HIDWORD(*v106)))) + (v109 * v109));
        if (v110 >= *(v128 + 1232) && v110 <= *(v128 + 1228))
        {
          *__p = vmulq_n_f32(*v106, v136);
          memset(v238, 0, 24);
          sub_2621DC430(v238, __p, &__p[2], 4uLL);
          sub_2622F3228(&v185, v238);
          if (v238[0])
          {
            operator delete(v238[0]);
          }
        }

        ++v106;
        --v107;
      }

      while (v107);
      if (v186 != v185)
      {
        v238[0] = (0xAAAAAAAAAAAAAAABLL * ((v186 - v185) >> 3));
        *&v238[1] = vdupq_n_s64(2uLL);
        sub_2622F3390(v215, v238);
        v111 = v185;
        if (v186 != v185)
        {
          v112 = 0;
          v113 = 0;
          v114 = v215[18];
          v115 = 0xAAAAAAAAAAAAAAABLL * ((v186 - v185) >> 3);
          if (v115 <= 1)
          {
            v115 = 1;
          }

          do
          {
            v116 = v111[3 * v112];
            v117 = 4;
            do
            {
              v118 = *v116++;
              v114[v113++] = v118;
              --v117;
            }

            while (v117);
            ++v112;
          }

          while (v112 != v115);
        }

        kdebug_trace();
        kdebug_trace();
        v188 = 0x100000000;
        LODWORD(v189) = 1;
        sub_2622F37B4(&v248, v215, &v188);
        v209 = 0u;
        memset(v210, 0, sizeof(v210));
        v207 = 0u;
        v208 = 0u;
        sub_26222AE80(&v211, &v248);
        sub_262223F30(&v213, v128 + 1008);
        sub_2622F6AA8(v210, v212, v214, &v207);
        v216 = 0x200000001;
        LODWORD(v217) = 1;
        sub_2622F37B4(&v229, v215, &v216);
        v222 = 0u;
        v223 = 0u;
        v220 = 0u;
        v221 = 0u;
        v218 = 0u;
        v219 = 0u;
        LODWORD(v224) = 1065353216;
        sub_262223F30(&v225, v128 + 1008);
        v218 = v226;
        v219 = v227;
        v220 = v228[0];
        memset(v190, 0, sizeof(v190));
        v191 = 0u;
        v192 = 0u;
        v193 = 0u;
        v194 = 0u;
        v195 = 0u;
        v196 = 0u;
        v197 = 0u;
        v198 = 0u;
        v199 = 0u;
        v200 = 0u;
        v201 = 0u;
        sub_26222AE80(&v202, &v229);
        v204[4] = v222;
        v204[5] = v223;
        v204[0] = v218;
        v204[1] = v219;
        v205 = v224;
        v204[2] = v220;
        v204[3] = v221;
        sub_262223F30(&v206, &v225);
        sub_2622F6AA8(&v190[3], v203, v204, v190);
        v231 = 0u;
        memset(__p, 0, sizeof(__p));
        sub_2622F68B0(v232, &v207);
        sub_2622F6994(&v236, v190);
        if (*v232 != v236 || *&v232[8] != v237)
        {
          v119 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
          v120 = sub_2621D552C(v119, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../expression/exp_element_binary.hpp", 127);
          sub_2621D552C(v120, " ", 1);
          v121 = MEMORY[0x277D82670];
          v122 = MEMORY[0x266727260](MEMORY[0x277D82670], 64);
          sub_2621D552C(v122, " ", 1);
          sub_2621D552C(v122, "TensorBinaryExp", 15);
          std::ios_base::getloc((v122 + *(*v122 - 24)));
          v123 = std::locale::use_facet(v252, MEMORY[0x277D82680]);
          (v123->__vftable[2].~facet_0)(v123, 10);
          std::locale::~locale(v252);
          std::ostream::put();
          std::ostream::flush();
          sub_2621D6B98("err", "Binary Exp shape should equal");
          std::ios_base::getloc((v121 + *(*v121 - 24)));
          v124 = std::locale::use_facet(v252, MEMORY[0x277D82680]);
          (v124->__vftable[2].~facet_0)(v124, 10);
          std::locale::~locale(v252);
          std::ostream::put();
          std::ostream::flush();
        }

        *__p = *v232;
        *&__p[2] = *&v232[16];
        v231 = v233;
        memset(v238, 0, sizeof(v238));
        v239 = 0u;
        *v240 = *v232;
        *&v240[16] = *&v232[16];
        *&v240[32] = v233;
        sub_2622F68B0(&v240[48], v232);
        sub_2622F6994(v244, &v236);
        v245 = 0u;
        v246 = 0u;
        *&v244[696] = 0u;
        v247 = 1056964608;
        *v238 = *v240;
        *&v238[2] = *&v240[16];
        v239 = *&v240[32];
        memset(v250, 0, sizeof(v250));
        v251[3] = 0;
        v249 = &unk_2874EF0D8;
        v251[2] = 0;
        sub_262204784(v250, v238);
        sub_262224B84(v252, v251);
      }
    }

    if (qword_27FF0C070 != -1)
    {
      dispatch_once(&qword_27FF0C070, &unk_2874EE120);
    }

    v125 = qword_27FF0C068;
    if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v238[0]) = 0;
      _os_log_debug_impl(&dword_2621C3000, v125, OS_LOG_TYPE_DEBUG, "No valid candidate line", v238, 2u);
    }

    *v127 = 0;
    *(v127 + 8) = &unk_2874EF0D8;
    *(v127 + 16) = 0u;
    *(v127 + 32) = 0u;
    *(v127 + 48) = 0u;
    *(v127 + 64) = 0u;
    *(v127 + 80) = 0u;
    *(v127 + 96) = 0u;
    *(v127 + 128) = 0u;
    *(v127 + 144) = 257;
    *(v127 + 160) = &unk_2874EF0D8;
    *(v127 + 168) = 0u;
    *(v127 + 184) = 0u;
    *(v127 + 200) = 0u;
    *(v127 + 216) = 0u;
    *(v127 + 232) = 0u;
    *(v127 + 248) = 0u;
    *(v127 + 280) = 0u;
    *(v127 + 296) = 257;
    *(v127 + 312) = &unk_2874EF0B8;
    *(v127 + 320) = 0u;
    *(v127 + 336) = 0u;
    *(v127 + 352) = 0u;
    *(v127 + 368) = 0u;
    *(v127 + 384) = 0u;
    *(v127 + 400) = 0u;
    *(v127 + 432) = 0u;
    *(v127 + 448) = 257;
    *(v127 + 464) = &unk_2874EF0B8;
    *(v127 + 472) = 0u;
    *(v127 + 488) = 0u;
    *(v127 + 504) = 0u;
    *(v127 + 520) = 0u;
    *(v127 + 536) = 0u;
    *(v127 + 552) = 0u;
    *(v127 + 584) = 0u;
    *(v127 + 600) = 257;
    *(v127 + 616) = &unk_2874EF6A8;
    *(v127 + 688) = 0u;
    *(v127 + 704) = 0u;
    *(v127 + 656) = 0u;
    *(v127 + 672) = 0u;
    *(v127 + 624) = 0u;
    *(v127 + 640) = 0u;
    *(v127 + 736) = 0u;
    *(v127 + 752) = 257;
    v238[0] = &v185;
    sub_2621E1D40(v238);
    if (v138)
    {
      sub_2621D1B78(v138);
    }
  }

  else
  {
    v139 = &unk_2874EF0D8;
    v140 = 0u;
    v141 = 0u;
    v142 = 0u;
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v147 = 0;
    v146 = 0;
    v148 = 257;
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v158 = 0;
    v150 = &unk_2874EF0B8;
    v157 = 0;
    v159 = 257;
    v160 = &unk_2874EF6A8;
    v161 = 0u;
    v162 = 0u;
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    v166 = 0u;
    v167 = 0;
    v168 = 0;
    v169 = 257;
    kdebug_trace();
    kdebug_trace();
    if (qword_27FF0C070 != -1)
    {
      dispatch_once(&qword_27FF0C070, &unk_2874EE120);
    }

    v104 = qword_27FF0C068;
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v238[0]) = 0;
      _os_log_debug_impl(&dword_2621C3000, v104, OS_LOG_TYPE_DEBUG, "No candidate line", v238, 2u);
    }

    *v127 = 0;
    *(v127 + 8) = &unk_2874EF0D8;
    *(v127 + 16) = 0u;
    *(v127 + 32) = 0u;
    *(v127 + 48) = 0u;
    *(v127 + 64) = 0u;
    *(v127 + 80) = 0u;
    *(v127 + 96) = 0u;
    *(v127 + 128) = 0u;
    *(v127 + 144) = 257;
    *(v127 + 160) = &unk_2874EF0D8;
    *(v127 + 168) = 0u;
    *(v127 + 184) = 0u;
    *(v127 + 200) = 0u;
    *(v127 + 216) = 0u;
    *(v127 + 232) = 0u;
    *(v127 + 248) = 0u;
    *(v127 + 280) = 0u;
    *(v127 + 296) = 257;
    *(v127 + 312) = &unk_2874EF0B8;
    *(v127 + 320) = 0u;
    *(v127 + 336) = 0u;
    *(v127 + 352) = 0u;
    *(v127 + 368) = 0u;
    *(v127 + 384) = 0u;
    *(v127 + 400) = 0u;
    *(v127 + 432) = 0u;
    *(v127 + 448) = 257;
    *(v127 + 464) = &unk_2874EF0B8;
    *(v127 + 472) = 0u;
    *(v127 + 488) = 0u;
    *(v127 + 504) = 0u;
    *(v127 + 520) = 0u;
    *(v127 + 536) = 0u;
    *(v127 + 552) = 0u;
    *(v127 + 584) = 0u;
    *(v127 + 600) = 257;
    *(v127 + 616) = &unk_2874EF6A8;
    *(v127 + 688) = 0u;
    *(v127 + 704) = 0u;
    *(v127 + 656) = 0u;
    *(v127 + 672) = 0u;
    *(v127 + 624) = 0u;
    *(v127 + 640) = 0u;
    *(v127 + 736) = 0u;
    *(v127 + 752) = 257;
  }

  v160 = &unk_2874EF6A8;
  if (v168)
  {
    sub_2621D1B78(v168);
  }

  v150 = &unk_2874EF0B8;
  if (v158)
  {
    sub_2621D1B78(v158);
  }

  v139 = &unk_2874EF0D8;
  if (v147)
  {
    sub_2621D1B78(v147);
  }

  if (v170)
  {
    v171 = v170;
    operator delete(v170);
  }

  v173 = &unk_2874EEDA0;
  if (v177)
  {
    sub_2621D1B78(v177);
  }

  v179 = &unk_2874EEDA0;
  if (v181)
  {
    sub_2621D1B78(v181);
  }

  v183[0] = &unk_2874EEDA0;
  if (v184)
  {
    sub_2621D1B78(v184);
  }
}

void sub_2622F1E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, std::__shared_weak_count *a61, uint64_t a62, uint64_t a63)
{
  std::locale::~locale(&STACK[0x1940]);
  sub_2621C57C8(&STACK[0xDC0]);
  if (STACK[0x6C0])
  {
    sub_2621D1B78(STACK[0x6C0]);
  }

  STACK[0x1330] = &unk_2874EF6A8;
  if (STACK[0x13B0])
  {
    sub_2621D1B78(STACK[0x13B0]);
  }

  STACK[0xC20] = &unk_2874EF6A8;
  if (STACK[0xCA0])
  {
    sub_2621D1B78(STACK[0xCA0]);
  }

  STACK[0xD28] = v64;
  if (STACK[0xDA8])
  {
    sub_2621D1B78(STACK[0xDA8]);
  }

  if (a42)
  {
    sub_2621D1B78(a42);
  }

  STACK[0xB58] = &unk_2874EF0D8;
  if (STACK[0xBD8])
  {
    sub_2621D1B78(STACK[0xBD8]);
  }

  STACK[0x900] = &STACK[0x570];
  sub_2621E1D40(&STACK[0x900]);
  if (a61)
  {
    sub_2621D1B78(a61);
  }

  sub_2622F370C(&a64);
  v66 = STACK[0x388];
  if (STACK[0x388])
  {
    STACK[0x390] = v66;
    operator delete(v66);
  }

  STACK[0x3A0] = &unk_2874EEDA0;
  if (STACK[0x420])
  {
    sub_2621D1B78(STACK[0x420]);
  }

  STACK[0x438] = &unk_2874EEDA0;
  if (STACK[0x4B8])
  {
    sub_2621D1B78(STACK[0x4B8]);
  }

  STACK[0x4D0] = &unk_2874EEDA0;
  if (STACK[0x550])
  {
    sub_2621D1B78(STACK[0x550]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2622F30B0(uint64_t **a1, void *a2, _OWORD **a3)
{
  v3 = *sub_26225E318(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t sub_2622F3150(uint64_t **a1, void *a2, _OWORD **a3)
{
  v3 = *sub_26225E318(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t sub_2622F3228(const void **a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2621CBEB0();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v20 = a1;
    if (v10)
    {
      sub_2621E1EE4(v10);
    }

    v11 = 24 * v7;
    v16 = 0;
    v17 = v11;
    v18 = 24 * v7;
    v19 = 0;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    sub_2621C8E70((24 * v7), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    v6 = (v18 + 24);
    v12 = a1[1] - *a1;
    v13 = &v17[-v12];
    memcpy(&v17[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v6;
    v15 = a1[2];
    a1[2] = v19;
    v18 = v14;
    v19 = v15;
    v16 = v14;
    v17 = v14;
    result = sub_26220AA90(&v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    result = sub_2621C8E70(v4, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    v6 = v4 + 3;
    a1[1] = v6;
  }

  a1[1] = v6;
  return result;
}

void sub_2622F3370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_26220AA90(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2622F3390(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = 0;
  v24 = *a2;
  v25 = *(a2 + 16);
  v26 = 0;
  result = sub_262226244(a1, &v24);
  if (*(a1 + 137) == 1)
  {
    v4 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v5 = sub_2621D552C(v4, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    sub_2621D552C(v5, " ", 1);
    v6 = MEMORY[0x277D82670];
    v7 = MEMORY[0x266727260](MEMORY[0x277D82670], 664);
    sub_2621D552C(v7, " ", 1);
    sub_2621D552C(v7, "operator=", 9);
    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v8 = std::locale::use_facet(v29, MEMORY[0x277D82680]);
    (v8->__vftable[2].~facet_0)(v8, 10);
    std::locale::~locale(v29);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D5EE8("err", "scalar assign should create a storage first");
    std::ios_base::getloc((v6 + *(*v6 - 24)));
    v9 = std::locale::use_facet(v29, MEMORY[0x277D82680]);
    (v9->__vftable[2].~facet_0)(v9, 10);
    std::locale::~locale(v29);
    std::ostream::put();
    result = std::ostream::flush();
  }

  memset(v30, 0, sizeof(v30));
  *&v29[0].__locale_ = 0u;
  v10 = *(a1 + 104);
  v11 = *(a1 + 144);
  if (*(a1 + 136))
  {
    if (v10)
    {
      v12 = (v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v13 = vdupq_n_s64(v10 - 1);
      v14 = xmmword_2623A7630;
      v15 = xmmword_2623A7620;
      v16 = (v11 + 8);
      v17 = vdupq_n_s64(4uLL);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v13, v15));
        if (vuzp1_s16(v18, *v13.i8).u8[0])
        {
          *(v16 - 2) = 0;
        }

        if (vuzp1_s16(v18, *&v13).i8[2])
        {
          *(v16 - 1) = 0;
        }

        if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v14))).i32[1])
        {
          *v16 = 0;
          v16[1] = 0;
        }

        v14 = vaddq_s64(v14, v17);
        v15 = vaddq_s64(v15, v17);
        v16 += 4;
        v12 -= 4;
      }

      while (v12);
    }
  }

  else if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v20 = 0;
      v21 = 0;
      do
      {
        result = *(a1 + 56 + v20 * 8);
        v21 += result * v29[v20++].__locale_;
      }

      while (v20 != 3);
      v22 = 0;
      *(v11 + 4 * v21) = 0;
      do
      {
        v23 = *(v30 + v22) + 1;
        *(v30 + v22) = v23;
        if (v23 != *(a1 + 24 + v22))
        {
          break;
        }

        *(v30 + v22) = 0;
        v22 -= 8;
      }

      while (v22 != -24);
    }
  }

  return result;
}

void sub_2622F36BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::locale a15)
{
  std::locale::~locale(&a15);
  *v15 = &unk_2874EF0D8;
  v17 = v15[16];
  if (v17)
  {
    sub_2621D1B78(v17);
  }

  _Unwind_Resume(a1);
}

void *sub_2622F370C(void *a1)
{
  a1[39] = &unk_2874EF6A8;
  v2 = a1[55];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[20] = &unk_2874EF0B8;
  v3 = a1[36];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  a1[1] = &unk_2874EF0D8;
  v4 = a1[17];
  if (v4)
  {
    sub_2621D1B78(v4);
  }

  return a1;
}

void sub_2622F37B4(uint64_t a1, uint64_t a2, signed int *a3)
{
  v9[7] = *MEMORY[0x277D85DE8];
  v5 = v9;
  for (i = 8; i != 32; i += 8)
  {
    v7 = *(a2 + i);
    *(v5 - 2) = 0;
    *(v5 - 1) = v7;
    *v5 = 1;
    v5 += 3;
  }

  sub_262202A58(a2 + 8, v8, 1u, *a3, a3[1], a3[2]);
  sub_262224D0C(a1, a2, v8);
}

void *sub_2622F3860(void *a1)
{
  a1[68] = &unk_2874EF0B8;
  v2 = a1[84];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[36] = &unk_2874EF0D8;
  v3 = a1[52];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  sub_2621C57C8((a1 + 6));
  return a1;
}

void *sub_2622F38E4(void *a1)
{
  a1[55] = &unk_2874EF0B8;
  v2 = a1[71];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[36] = &unk_2874EF0D8;
  v3 = a1[52];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  sub_2621C57C8((a1 + 6));
  return a1;
}

void sub_2622F3968(uint64_t a1, _OWORD *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2874EE7E8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  *(a1 + 56) = 1;
  *(a1 + 104) = *(a1 + 8);
  *(a1 + 112) = 0;
  sub_262223B08(v4, (a1 + 104));
}

void sub_2622F44BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::locale a15)
{
  std::locale::~locale((v16 - 144));
  sub_2621C57C8(&a15);
  v18 = *(v15 + 128);
  if (v18)
  {
    sub_2621D1B78(v18);
  }

  _Unwind_Resume(a1);
}

void sub_2622F451C(uint64_t a1, _OWORD *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2874EE7E8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v3 = a2[17];
  v2 = a2[18];
  *(a1 + 8) = a2[16];
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  *(a1 + 56) = 1;
  *(a1 + 104) = *(a1 + 8);
  *(a1 + 112) = 0;
  sub_262223B08(&v4, (a1 + 104));
}

void sub_2622F4FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::locale a35)
{
  std::locale::~locale((v36 - 144));
  sub_2621C57C8(&a35);
  if (a26)
  {
    sub_2621D1B78(a26);
  }

  v38 = *(v35 + 128);
  if (v38)
  {
    sub_2621D1B78(v38);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2622F505C(void *a1, void *a2)
{
  if (a1[21] != a2[15])
  {
    return 0;
  }

  if (a1[7] != a2[1] || a1[13] != a2[7] || a1[20] != a2[14])
  {
    return 2;
  }

  if (a1[19] == a2[13])
  {
    return 1;
  }

  return 2;
}

uint64_t sub_2622F50C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v131 = *MEMORY[0x277D85DE8];
  v4 = (result + 8);
  if (*(result + 8) == *(a2 + 256))
  {
    v5 = *(result + 104);
    v6 = *(result + 144);
    if (*(a2 + 184))
    {
      if (*(result + 136))
      {
        if (v5)
        {
          v7 = *(a2 + 192);
          v8 = *(a2 + 248);
          v9 = *(a2 + 304);
          v10 = *(a2 + 312);
          do
          {
            v11 = *v7++;
            v12 = v11 + v8;
            if (v11 + v8 >= v10)
            {
              v12 = v10;
            }

            if (v12 <= v9)
            {
              v12 = v9;
            }

            *v6++ = v12;
            --v5;
          }

          while (v5);
        }
      }

      else if (v5)
      {
        v67 = 0;
        v68 = *(a2 + 192);
        v69 = *(a2 + 248);
        v70 = *(a2 + 304);
        v71 = *(a2 + 312);
        do
        {
          v72 = *v68++;
          v73 = v72 + v69;
          if (v72 + v69 >= v71)
          {
            v73 = v71;
          }

          if (v73 <= v70)
          {
            v73 = v70;
          }

          v6[*(result + 56) * v67] = v73;
          if (v67 + 1 == *(result + 8))
          {
            v67 = 0;
          }

          else
          {
            ++v67;
          }

          --v5;
        }

        while (v5);
      }
    }

    else if (*(result + 136))
    {
      if (v5)
      {
        v36 = 0;
        v37 = *(a2 + 192);
        v38 = *(a2 + 248);
        v39 = *(a2 + 304);
        v40 = *(a2 + 312);
        do
        {
          v41 = *(v37 + 8 * *(a2 + 104) * v36) + v38;
          if (v41 >= v40)
          {
            v41 = v40;
          }

          if (v41 <= v39)
          {
            v41 = v39;
          }

          *v6++ = v41;
          if (v36 + 1 == *v4)
          {
            v36 = 0;
          }

          else
          {
            ++v36;
          }

          --v5;
        }

        while (v5);
      }
    }

    else if (v5)
    {
      v74 = 0;
      v75 = *(a2 + 192);
      v76 = *(a2 + 248);
      v77 = *(a2 + 304);
      v78 = *(a2 + 312);
      do
      {
        v79 = *(v75 + 8 * *(a2 + 104) * v74) + v76;
        if (v79 >= v78)
        {
          v79 = v78;
        }

        if (v79 <= v77)
        {
          v79 = v77;
        }

        v6[*(result + 56) * v74] = v79;
        if (v74 + 1 == *(result + 8))
        {
          v74 = 0;
        }

        else
        {
          ++v74;
        }

        --v5;
      }

      while (v5);
    }
  }

  else
  {
    if (*(a2 + 184))
    {
      v126 = 0uLL;
      v127 = 0uLL;
      v124 = 0uLL;
      v125 = 0uLL;
      v122 = 0uLL;
      v123 = 0uLL;
      v120 = 0uLL;
      v121 = 0uLL;
      v118 = 0uLL;
      v119 = 0uLL;
      v116 = 0uLL;
      v117 = 0uLL;
      v114 = 0uLL;
      v115 = 0uLL;
      v112 = 0uLL;
      v113 = 0uLL;
      v110 = 0uLL;
      v111 = 0uLL;
      sub_262205FA8(&v113, v4, (a2 + 256), &v110);
      v13 = v110;
      if (v110 != *v4)
      {
        v14 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v15 = sub_2621D552C(v14, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v15, " ", 1);
        v16 = MEMORY[0x277D82670];
        v17 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v17, " ", 1);
        sub_2621D552C(v17, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v17 + *(*v17 - 24)));
        v18 = std::locale::use_facet(v128, MEMORY[0x277D82680]);
        (v18->__vftable[2].~facet_0)(v18, 10);
        std::locale::~locale(v128);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v16 + *(*v16 - 24)));
        v19 = std::locale::use_facet(v128, MEMORY[0x277D82680]);
        (v19->__vftable[2].~facet_0)(v19, 10);
        std::locale::~locale(v128);
        std::ostream::put();
        std::ostream::flush();
      }

      v129 = 0u;
      v130 = 0u;
      *&v128[0].__locale_ = 0u;
      v20 = *(v3 + 104);
      v21 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v20)
        {
          v22 = 0;
          v23 = 0;
          v24 = *(a2 + 304);
          v25 = *(a2 + 312);
          v27 = *(&v114 + 1);
          v26 = v115;
          v28 = (v115 - *(&v114 + 1)) >> 3;
          if (v28 <= 1)
          {
            v28 = 1;
          }

          v29 = *(a2 + 192);
          v30 = *(a2 + 248);
          do
          {
            v128[0].__locale_ = v22;
            locale = v22;
            if (v26 != v27)
            {
              v32 = v27;
              v33 = v28;
              do
              {
                v34 = *v32++;
                v128[v34].__locale_ = 0;
                --v33;
              }

              while (v33);
              locale = v128[0].__locale_;
            }

            v35 = *(v29 + 8 * v125 * locale) + v30;
            if (v35 >= v25)
            {
              v35 = v25;
            }

            if (v35 <= v24)
            {
              v35 = v24;
            }

            *(v21 + 8 * v23) = v35;
            if ((v22 + 1) == v13)
            {
              v22 = 0;
            }

            else
            {
              v22 = (v22 + 1);
            }

            ++v23;
          }

          while (v23 != v20);
        }
      }

      else if (v20)
      {
        v80 = 0;
        v81 = 0;
        v82 = *(a2 + 304);
        v83 = *(a2 + 312);
        v85 = *(&v114 + 1);
        v84 = v115;
        v86 = (v115 - *(&v114 + 1)) >> 3;
        if (v86 <= 1)
        {
          v86 = 1;
        }

        v87 = *(a2 + 192);
        v88 = *(a2 + 248);
        do
        {
          v128[0].__locale_ = v80;
          v89 = v80;
          if (v84 != v85)
          {
            v90 = v85;
            v91 = v86;
            do
            {
              v92 = *v90++;
              v128[v92].__locale_ = 0;
              --v91;
            }

            while (v91);
            v89 = v128[0].__locale_;
          }

          v93 = *(v87 + 8 * v125 * v89) + v88;
          if (v93 >= v83)
          {
            v93 = v83;
          }

          if (v93 <= v82)
          {
            v93 = v82;
          }

          *(v21 + 8 * *(v3 + 56) * v80) = v93;
          if ((v80 + 1) == v13)
          {
            v80 = 0;
          }

          else
          {
            v80 = (v80 + 1);
          }

          ++v81;
        }

        while (v81 != v20);
      }
    }

    else
    {
      v126 = 0uLL;
      v127 = 0uLL;
      v124 = 0uLL;
      v125 = 0uLL;
      v122 = 0uLL;
      v123 = 0uLL;
      v120 = 0uLL;
      v121 = 0uLL;
      v118 = 0uLL;
      v119 = 0uLL;
      v116 = 0uLL;
      v117 = 0uLL;
      v114 = 0uLL;
      v115 = 0uLL;
      v112 = 0uLL;
      v113 = 0uLL;
      v110 = 0uLL;
      v111 = 0uLL;
      sub_262205FA8(&v113, v4, (a2 + 256), &v110);
      v42 = v110;
      if (v110 != *v4)
      {
        v43 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v44 = sub_2621D552C(v43, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v44, " ", 1);
        v45 = MEMORY[0x277D82670];
        v46 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v46, " ", 1);
        sub_2621D552C(v46, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v46 + *(*v46 - 24)));
        v47 = std::locale::use_facet(v128, MEMORY[0x277D82680]);
        (v47->__vftable[2].~facet_0)(v47, 10);
        std::locale::~locale(v128);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v45 + *(*v45 - 24)));
        v48 = std::locale::use_facet(v128, MEMORY[0x277D82680]);
        (v48->__vftable[2].~facet_0)(v48, 10);
        std::locale::~locale(v128);
        std::ostream::put();
        std::ostream::flush();
      }

      v129 = 0u;
      v130 = 0u;
      *&v128[0].__locale_ = 0u;
      v49 = *(v3 + 104);
      v50 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v49)
        {
          v51 = 0;
          v52 = 0;
          v53 = *(a2 + 304);
          v54 = *(a2 + 312);
          v56 = *(&v114 + 1);
          v55 = v115;
          v57 = (v115 - *(&v114 + 1)) >> 3;
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = *(a2 + 184);
          v59 = *(a2 + 192);
          v60 = *(a2 + 248);
          do
          {
            v128[0].__locale_ = v51;
            v61 = v51;
            if (v55 != v56)
            {
              v62 = v56;
              v63 = v57;
              do
              {
                v64 = *v62++;
                v128[v64].__locale_ = 0;
                --v63;
              }

              while (v63);
              v61 = v128[0].__locale_;
            }

            v65 = (a2 + 104);
            if (v58)
            {
              v65 = &v125;
            }

            v66 = *(v59 + 8 * *v65 * v61) + v60;
            if (v66 >= v54)
            {
              v66 = v54;
            }

            if (v66 <= v53)
            {
              v66 = v53;
            }

            *(v50 + 8 * v52) = v66;
            if ((v51 + 1) == v42)
            {
              v51 = 0;
            }

            else
            {
              v51 = (v51 + 1);
            }

            ++v52;
          }

          while (v52 != v49);
        }
      }

      else if (v49)
      {
        v94 = 0;
        v95 = 0;
        v96 = *(a2 + 304);
        v97 = *(a2 + 312);
        v99 = *(&v114 + 1);
        v98 = v115;
        v100 = (v115 - *(&v114 + 1)) >> 3;
        if (v100 <= 1)
        {
          v100 = 1;
        }

        v101 = *(a2 + 184);
        v102 = *(a2 + 192);
        v103 = *(a2 + 248);
        do
        {
          v128[0].__locale_ = v94;
          v104 = v94;
          if (v98 != v99)
          {
            v105 = v99;
            v106 = v100;
            do
            {
              v107 = *v105++;
              v128[v107].__locale_ = 0;
              --v106;
            }

            while (v106);
            v104 = v128[0].__locale_;
          }

          v108 = (a2 + 104);
          if (v101)
          {
            v108 = &v125;
          }

          v109 = *(v102 + 8 * *v108 * v104) + v103;
          if (v109 >= v97)
          {
            v109 = v97;
          }

          if (v109 <= v96)
          {
            v109 = v96;
          }

          *(v50 + 8 * *(v3 + 56) * v94) = v109;
          if ((v94 + 1) == v42)
          {
            v94 = 0;
          }

          else
          {
            v94 = (v94 + 1);
          }

          ++v95;
        }

        while (v95 != v49);
      }
    }

    return sub_2621C57C8(&v113);
  }

  return result;
}

void sub_2622F5964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::locale::~locale((v13 - 128));
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

void sub_2622F5998(uint64_t a1, uint64_t a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 8);
  if (*(a1 + 8) == *a2 && *(a1 + 16) == *(a2 + 8) && *(a1 + 24) == *(a2 + 16))
  {
    if (*(a2 + 520) == 1 && *(a2 + 672) == 1 && *(a2 + 1112) == 1 && *(a2 + 1368) == 1)
    {

      sub_2622F6324(a1, a2);
    }

    else
    {
      v71 = 0u;
      v72 = 0u;
      v70 = 0u;
      v36 = *(a1 + 104);
      v37 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v36)
        {
          v38 = 0;
          v39 = a1 + 24;
          do
          {
            v40 = sub_2622F64D4(a2 + 96, &v70);
            v41 = sub_2622F65C0(a2 + 688, &v70);
            v42 = 0;
            *(v37 + 4 * v38) = (v40 + v41) - *(a2 + 1432);
            do
            {
              v43 = *(&v71 + v42) + 1;
              *(&v71 + v42) = v43;
              if (v43 != *(v39 + v42))
              {
                break;
              }

              *(&v71 + v42) = 0;
              v42 -= 8;
            }

            while (v42 != -24);
            ++v38;
          }

          while (v38 != v36);
        }
      }

      else if (v36)
      {
        v44 = 0;
        v45 = a1 + 56;
        v46 = a1 + 24;
        do
        {
          v47 = 0;
          v48 = 0;
          do
          {
            v48 += *(v45 + v47) * *(&v70 + v47);
            v47 += 8;
          }

          while (v47 != 24);
          v49 = sub_2622F64D4(a2 + 96, &v70);
          v50 = sub_2622F65C0(a2 + 688, &v70);
          v51 = 0;
          *(v37 + 4 * v48) = (v49 + v50) - *(a2 + 1432);
          do
          {
            v52 = *(&v71 + v51) + 1;
            *(&v71 + v51) = v52;
            if (v52 != *(v46 + v51))
            {
              break;
            }

            *(&v71 + v51) = 0;
            v51 -= 8;
          }

          while (v51 != -24);
          ++v44;
        }

        while (v44 != v36);
      }
    }
  }

  else
  {
    if (*(a2 + 520) == 1 && *(a2 + 672) == 1 && *(a2 + 1112) == 1 && *(a2 + 1368) == 1)
    {
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v70 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      sub_2622063F0(&v70, v4, a2, &v61);
      if (v61 != __PAIR128__(*(a1 + 16), *v4) || v62 != *(a1 + 24))
      {
        v5 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v6 = sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v6, " ", 1);
        v7 = MEMORY[0x277D82670];
        v8 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v8, " ", 1);
        sub_2621D552C(v8, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v8 + *(*v8 - 24)));
        v9 = std::locale::use_facet(v67, MEMORY[0x277D82680]);
        (v9->__vftable[2].~facet_0)(v9, 10);
        std::locale::~locale(v67);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v7 + *(*v7 - 24)));
        v10 = std::locale::use_facet(v67, MEMORY[0x277D82680]);
        (v10->__vftable[2].~facet_0)(v10, 10);
        std::locale::~locale(v67);
        std::ostream::put();
        std::ostream::flush();
      }

      v69 = 0u;
      *&v67[0].__locale_ = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v64 = 0u;
      v11 = *(a1 + 104);
      v12 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v11)
        {
          for (i = 0; i != v11; ++i)
          {
            v60 = 0;
            sub_2622066E4(&v70, v67, &v60, &v64);
            v14 = sub_2622F6798(a2 + 96, &v64);
            *(v12 + 4 * i) = (v14 + sub_2622F6820(a2 + 688, &v64)) - *(a2 + 1432);
            for (j = 2; j != -1; --j)
            {
              v16 = (v67[j].__locale_ + 1);
              v67[j].__locale_ = v16;
              if (v16 != *(&v61 + j * 8))
              {
                break;
              }

              v67[j].__locale_ = 0;
            }
          }
        }
      }

      else if (v11)
      {
        v53 = 0;
        v54 = a1 + 56;
        do
        {
          v60 = 0;
          sub_2622066E4(&v70, v67, &v60, &v64);
          v55 = 0;
          v56 = 0;
          do
          {
            v56 += *(v54 + v55 * 8) * v67[v55].__locale_;
            ++v55;
          }

          while (v55 != 3);
          v57 = sub_2622F6798(a2 + 96, &v64);
          *(v12 + 4 * v56) = (v57 + sub_2622F6820(a2 + 688, &v64)) - *(a2 + 1432);
          for (k = 2; k != -1; --k)
          {
            v59 = (v67[k].__locale_ + 1);
            v67[k].__locale_ = v59;
            if (v59 != *(&v61 + k * 8))
            {
              break;
            }

            v67[k].__locale_ = 0;
          }

          ++v53;
        }

        while (v53 != v11);
      }
    }

    else
    {
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v70 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      sub_2622063F0(&v70, v4, a2, &v61);
      if (v61 != __PAIR128__(*(a1 + 16), *v4) || v62 != *(a1 + 24))
      {
        v17 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v18 = sub_2621D552C(v17, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v18, " ", 1);
        v19 = MEMORY[0x277D82670];
        v20 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v20, " ", 1);
        sub_2621D552C(v20, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v20 + *(*v20 - 24)));
        v21 = std::locale::use_facet(v67, MEMORY[0x277D82680]);
        (v21->__vftable[2].~facet_0)(v21, 10);
        std::locale::~locale(v67);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v19 + *(*v19 - 24)));
        v22 = std::locale::use_facet(v67, MEMORY[0x277D82680]);
        (v22->__vftable[2].~facet_0)(v22, 10);
        std::locale::~locale(v67);
        std::ostream::put();
        std::ostream::flush();
      }

      v69 = 0u;
      *&v67[0].__locale_ = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v64 = 0u;
      v23 = *(a1 + 104);
      v24 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v23)
        {
          for (m = 0; m != v23; ++m)
          {
            v60 = 0;
            sub_2622066E4(&v70, v67, &v60, &v64);
            v26 = sub_2622F64D4(a2 + 96, &v64);
            *(v24 + 4 * m) = (v26 + sub_2622F65C0(a2 + 688, &v64)) - *(a2 + 1432);
            for (n = 2; n != -1; --n)
            {
              v28 = (v67[n].__locale_ + 1);
              v67[n].__locale_ = v28;
              if (v28 != *(&v61 + n * 8))
              {
                break;
              }

              v67[n].__locale_ = 0;
            }
          }
        }
      }

      else if (v23)
      {
        v29 = 0;
        v30 = a1 + 56;
        do
        {
          v60 = 0;
          sub_2622066E4(&v70, v67, &v60, &v64);
          v31 = 0;
          v32 = 0;
          do
          {
            v32 += *(v30 + v31 * 8) * v67[v31].__locale_;
            ++v31;
          }

          while (v31 != 3);
          v33 = sub_2622F64D4(a2 + 96, &v64);
          *(v24 + 4 * v32) = (v33 + sub_2622F65C0(a2 + 688, &v64)) - *(a2 + 1432);
          for (ii = 2; ii != -1; --ii)
          {
            v35 = (v67[ii].__locale_ + 1);
            v67[ii].__locale_ = v35;
            if (v35 != *(&v61 + ii * 8))
            {
              break;
            }

            v67[ii].__locale_ = 0;
          }

          ++v29;
        }

        while (v29 != v23);
      }
    }

    sub_2621C57C8(&v70);
  }
}

void sub_2622F62F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::locale a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  std::locale::~locale(&a23);
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

void sub_2622F6324(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  memset(v21, 0, sizeof(v21));
  v20 = 0u;
  v3 = *(a1 + 104);
  v4 = *(a1 + 144);
  if (*(a1 + 136))
  {
    if (v3)
    {
      v5 = 0;
      v6 = a1 + 24;
      do
      {
        v7 = sub_2622F6798(a2 + 96, &v20);
        v8 = sub_2622F6820(a2 + 688, &v20);
        v9 = 0;
        *(v4 + 4 * v5) = (v7 + v8) - *(a2 + 1432);
        do
        {
          v10 = *(v21 + v9) + 1;
          *(v21 + v9) = v10;
          if (v10 != *(v6 + v9))
          {
            break;
          }

          *(v21 + v9) = 0;
          v9 -= 8;
        }

        while (v9 != -24);
        ++v5;
      }

      while (v5 != v3);
    }
  }

  else if (v3)
  {
    v11 = 0;
    v12 = a1 + 56;
    v13 = a1 + 24;
    do
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v15 += *(v12 + v14) * *(&v21[-1] + v14);
        v14 += 8;
      }

      while (v14 != 24);
      v16 = sub_2622F6798(a2 + 96, &v20);
      v17 = sub_2622F6820(a2 + 688, &v20);
      v18 = 0;
      *(v4 + 4 * v15) = (v16 + v17) - *(a2 + 1432);
      do
      {
        v19 = *(v21 + v18) + 1;
        *(v21 + v18) = v19;
        if (v19 != *(v13 + v18))
        {
          break;
        }

        *(v21 + v18) = 0;
        v18 -= 8;
      }

      while (v18 != -24);
      ++v11;
    }

    while (v11 != v3);
  }
}

float sub_2622F64D4(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9 = 0;
  sub_2622F66B8(a1 + 48, a2, &v9, v11, &v8, v10);
  if (*(a1 + 424))
  {
    v3 = v9;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    do
    {
      v3 += *(a1 + 344 + v4) * *&v11[v4];
      v4 += 8;
    }

    while (v4 != 24);
  }

  if (*(a1 + 576) == 1)
  {
    v5 = v8;
    v6 = *(a1 + 584);
  }

  else
  {
    v5 = *(a1 + 496) * v10[0];
    v6 = *(a1 + 584) + 4 * *(a1 + 504) * v10[1];
  }

  return *(*(a1 + 432) + 4 * v3) * *(v6 + 4 * v5);
}

float sub_2622F65C0(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9 = 0;
  sub_2622F66B8(a1 + 48, a2, &v9, v11, &v8, v10);
  if (*(a1 + 424))
  {
    v3 = v9;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    do
    {
      v3 += *(a1 + 344 + v4) * *&v11[v4];
      v4 += 8;
    }

    while (v4 != 24);
  }

  if (*(a1 + 680) == 1)
  {
    v5 = v8;
    v6 = *(a1 + 688);
  }

  else
  {
    v5 = *(a1 + 600) * v10[0];
    v6 = *(a1 + 688) + 4 * *(a1 + 608) * v10[1];
  }

  return *(*(a1 + 432) + 4 * v3) * (*(a1 + 536) - *(v6 + 4 * v5));
}

uint64_t sub_2622F66B8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v6 = 0;
  *a5 = 0;
  *a3 = 0;
  v7 = *(result + 24);
  v8 = *(result + 32);
  *a6 = *(a2 + 8);
  a6[1] = *(a2 + 16);
  v9 = *result;
  v10 = *(result + 8);
  do
  {
    *(a4 + v6) = *(a2 + v6);
    v6 += 8;
  }

  while (v6 != 24);
  if (v8 != v7)
  {
    v11 = v8 - v7;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    do
    {
      v12 = *v7++;
      a6[v12] = 0;
      --v11;
    }

    while (v11);
  }

  if (v10 != v9)
  {
    v13 = v10 - v9;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    do
    {
      v14 = *v9++;
      *(a4 + 8 * v14) = 0;
      --v13;
    }

    while (v13);
  }

  v15 = 0;
  v16 = *a5;
  v17 = 1;
  do
  {
    v18 = v17;
    v16 += *(result + 192 + 8 * v15) * a6[v15];
    *a5 = v16;
    v15 = 1;
    v17 = 0;
  }

  while ((v18 & 1) != 0);
  v19 = 0;
  v20 = *a3;
  do
  {
    v20 += *(result + 144 + v19) * *(a4 + v19);
    *a3 = v20;
    v19 += 8;
  }

  while (v19 != 24);
  return result;
}

float sub_2622F6798(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 0;
  v5 = 0;
  sub_2622F66B8(a1 + 48, a2, &v5, v7, &v4, v6);
  return *(*(a1 + 432) + 4 * v5) * *(*(a1 + 584) + 4 * v4);
}

float sub_2622F6820(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 0;
  v5 = 0;
  sub_2622F66B8(a1 + 48, a2, &v5, v7, &v4, v6);
  return *(*(a1 + 432) + 4 * v5) * (*(a1 + 536) - *(*(a1 + 688) + 4 * v4));
}

uint64_t sub_2622F68B0(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_262234B80((a1 + 48), *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 3);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_262234B80((a1 + 72), *(a2 + 9), *(a2 + 10), (*(a2 + 10) - *(a2 + 9)) >> 3);
  v6 = a2[6];
  v7 = a2[7];
  v8 = a2[9];
  *(a1 + 128) = a2[8];
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  v9 = a2[10];
  v10 = a2[11];
  v11 = a2[13];
  *(a1 + 192) = a2[12];
  *(a1 + 208) = v11;
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  v12 = a2[14];
  v13 = a2[15];
  v14 = a2[17];
  *(a1 + 256) = a2[16];
  *(a1 + 272) = v14;
  *(a1 + 224) = v12;
  *(a1 + 240) = v13;
  sub_26222AE80(a1 + 288, (a2 + 18));
  sub_262223F30(a1 + 440, a2 + 440);
  return a1;
}

void sub_2622F6978(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622F6994(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_262234B80((a1 + 48), *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 3);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_262234B80((a1 + 72), *(a2 + 9), *(a2 + 10), (*(a2 + 10) - *(a2 + 9)) >> 3);
  v6 = a2[6];
  v7 = a2[7];
  v8 = a2[9];
  *(a1 + 128) = a2[8];
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  v9 = a2[10];
  v10 = a2[11];
  v11 = a2[13];
  *(a1 + 192) = a2[12];
  *(a1 + 208) = v11;
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  v12 = a2[14];
  v13 = a2[15];
  v14 = a2[17];
  *(a1 + 256) = a2[16];
  *(a1 + 272) = v14;
  *(a1 + 224) = v12;
  *(a1 + 240) = v13;
  sub_26222AE80(a1 + 288, (a2 + 18));
  v15 = *(a2 + 440);
  v16 = *(a2 + 472);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 472) = v16;
  *(a1 + 440) = v15;
  v17 = *(a2 + 488);
  v18 = *(a2 + 504);
  v19 = *(a2 + 520);
  *(a1 + 536) = *(a2 + 134);
  *(a1 + 504) = v18;
  *(a1 + 520) = v19;
  *(a1 + 488) = v17;
  sub_262223F30(a1 + 544, (a2 + 34));
  return a1;
}

void sub_2622F6A8C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_2622F6AA8(uint64_t a1, _OWORD *a2, _OWORD *a3, void *a4)
{
  v7 = *a2;
  v8 = a2[2];
  *(a1 + 64) = a2[1];
  *(a1 + 80) = v8;
  *(a1 + 48) = v7;
  v9 = *a3;
  v10 = a3[2];
  *(a1 + 112) = a3[1];
  *(a1 + 128) = v10;
  *(a1 + 96) = v9;
  v11 = a3 + 1;
  v12 = 2;
  v13 = MEMORY[0x277D82670];
  v14 = MEMORY[0x277D82680];
  do
  {
    v15 = v12 - 1;
    v16 = *(a2 + v12);
    if (v16 == *v11)
    {
      a4[v12] = v16;
      goto LABEL_10;
    }

    if (v16 == 1)
    {
      v30.__locale_ = v12;
      sub_2621C9004(a1, &v30);
      v17 = *v11;
LABEL_8:
      a4[v12] = v17;
      goto LABEL_10;
    }

    if (*v11 == 1)
    {
      v30.__locale_ = (v12 - 1);
      sub_2621C9004(a1 + 24, &v30);
      v17 = *(a2 + v12);
      goto LABEL_8;
    }

    v18 = sub_2621D552C(v13, "runtime_err in ", 15);
    v19 = sub_2621D552C(v18, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/broadcast_helper.hpp", 119);
    v20 = sub_2621D552C(v19, " ", 1);
    v21 = MEMORY[0x266727260](v20, 135);
    v22 = sub_2621D552C(v21, " ", 1);
    v23 = sub_2621D552C(v22, "init_internal", 13);
    std::ios_base::getloc((v23 + *(*v23 - 24)));
    v24 = std::locale::use_facet(&v30, v14);
    (v24->__vftable[2].~facet_0)(v24, 10);
    std::locale::~locale(&v30);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D995C("err", "cannot broadcast");
    std::ios_base::getloc((v13 + *(*v13 - 24)));
    v25 = std::locale::use_facet(&v30, v14);
    (v25->__vftable[2].~facet_0)(v25, 10);
    std::locale::~locale(&v30);
    std::ostream::put();
    std::ostream::flush();
LABEL_10:
    --v11;
    --v12;
  }

  while (v15);
  v26 = 0;
  *a4 = *a2;
  v27 = a1 + 144;
  do
  {
    *(v27 + 8 * v26) = 1;
    if (v26 <= 1)
    {
      v28 = v26;
      v29 = 1;
      do
      {
        v29 *= *(a1 + 56 + 8 * v28);
        *(v27 + 8 * v26) = v29;
        ++v28;
      }

      while (v28 != 2);
    }

    ++v26;
  }

  while (v26 != 3);
  *(a1 + 192) = *(a1 + 104);
  *(a1 + 200) = 1;
}

void sub_2622F6D6C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v165 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 8);
  v6 = 1;
  do
  {
    v7 = *(v5 + v4);
    v8 = *(a2 + 8 * v4);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v6 = 0;
    v4 = 1;
  }

  while (v7 == v8);
  if (v7 == v8)
  {
    if (*(a2 + 184) && *(a2 + 336) == 1)
    {
      v151 = 0u;
      v152 = 0u;
      v150 = 0u;
      v9 = *(a1 + 104);
      v10 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v9)
        {
          v11 = *(a2 + 192);
          v12 = *(a2 + 344);
          do
          {
            v13 = *v11++;
            v14 = v13;
            v15 = *v12++;
            v16 = v15;
            if (v14 < v15)
            {
              v14 = v16;
            }

            *v10++ = v14;
            --v9;
          }

          while (v9);
        }
      }

      else if (v9)
      {
        v103 = 0;
        v104 = *(a1 + 56);
        v105 = *(a1 + 64);
        v106 = *(a2 + 192);
        v107 = *(a2 + 344);
        do
        {
          v108 = 0;
          v109 = *(v106 + 4 * v103);
          if (v109 < *(v107 + 4 * v103))
          {
            v109 = *(v107 + 4 * v103);
          }

          v10[v105 * *(&v150 + 1) + v104 * v150] = v109;
          do
          {
            v110 = *(&v150 + v108 + 8) + 1;
            *(&v150 + v108 + 8) = v110;
            if (v110 != *(a1 + 16 + v108))
            {
              break;
            }

            *(&v150 + v108 + 8) = 0;
            v108 -= 8;
          }

          while (v108 != -16);
          ++v103;
        }

        while (v103 != v9);
      }
    }

    else
    {
      v151 = 0u;
      v152 = 0u;
      v150 = 0u;
      v47 = *(a1 + 104);
      v48 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v47)
        {
          for (i = 0; i != v47; ++i)
          {
            v50 = sub_2622F7828(a2, i, v150, *(&v150 + 1));
            v51 = 0;
            *(v48 + 4 * i) = v50;
            do
            {
              v52 = *(&v150 + v51 + 8) + 1;
              *(&v150 + v51 + 8) = v52;
              if (v52 != *(a1 + 16 + v51))
              {
                break;
              }

              *(&v150 + v51 + 8) = 0;
              v51 -= 8;
            }

            while (v51 != -16);
          }
        }
      }

      else if (v47)
      {
        v79 = 0;
        v80 = *(a1 + 56);
        v81 = *(a1 + 64);
        v82 = a1 + 16;
        do
        {
          v83 = v80 * v150;
          v84 = v48 + 4 * v81 * *(&v150 + 1);
          v85 = sub_2622F7828(a2, v79, v150, *(&v150 + 1));
          v86 = 0;
          *(v84 + 4 * v83) = v85;
          do
          {
            v87 = *(&v150 + v86 + 8) + 1;
            *(&v150 + v86 + 8) = v87;
            if (v87 != *(v82 + v86))
            {
              break;
            }

            *(&v150 + v86 + 8) = 0;
            v86 -= 8;
          }

          while (v86 != -16);
          ++v79;
        }

        while (v79 != v47);
      }
    }
  }

  else
  {
    if (*(a2 + 184) && *(a2 + 336) == 1)
    {
      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      v153 = 0u;
      v154 = 0u;
      v151 = 0u;
      v152 = 0u;
      v150 = 0u;
      v142 = 0u;
      v143 = 0u;
      v141 = 0u;
      sub_2621D96E4(&v150, v5, a2, &v141);
      v17 = 0;
      v18 = &v141;
      v19 = 1;
      do
      {
        v20 = *v18;
        v21 = *(v5 + v17);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v19 = 0;
        v18 = &v141 + 1;
        v17 = 1;
      }

      while (v20 == v21);
      if (v20 != v21)
      {
        v22 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v23 = sub_2621D552C(v22, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v23, " ", 1);
        v24 = MEMORY[0x277D82670];
        v25 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v25, " ", 1);
        sub_2621D552C(v25, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v25 + *(*v25 - 24)));
        v26 = std::locale::use_facet(v147, MEMORY[0x277D82680]);
        (v26->__vftable[2].~facet_0)(v26, 10);
        std::locale::~locale(v147);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v24 + *(*v24 - 24)));
        v27 = std::locale::use_facet(v147, MEMORY[0x277D82680]);
        (v27->__vftable[2].~facet_0)(v27, 10);
        std::locale::~locale(v147);
        std::ostream::put();
        std::ostream::flush();
      }

      v148 = 0u;
      v149 = 0u;
      v146 = 0u;
      *&v147[0].__locale_ = 0u;
      v144 = 0u;
      v145 = 0u;
      v28 = *(a1 + 104);
      v29 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v28)
        {
          v30 = 0;
          v32 = *(&v151 + 1);
          v31 = v152;
          v33 = (v152 - *(&v151 + 1)) >> 3;
          if (v33 <= 1)
          {
            v33 = 1;
          }

          v34 = *(a2 + 192);
          v35 = *(a2 + 344);
          do
          {
            v144 = *&v147[0].__locale_;
            if (v31 != v32)
            {
              v36 = v32;
              v37 = v33;
              do
              {
                v38 = *v36++;
                *(&v144 + v38) = 0;
                --v37;
              }

              while (v37);
            }

            v39 = 0;
            v40 = 0;
            v41 = &v144;
            v42 = 1;
            do
            {
              v43 = v42;
              v40 += *(&v162 + v39) * *v41;
              v41 = (&v144 + 8);
              v39 = 1;
              v42 = 0;
            }

            while ((v43 & 1) != 0);
            v44 = *(v34 + 4 * v40);
            if (v44 < *(v35 + 4 * v40))
            {
              v44 = *(v35 + 4 * v40);
            }

            *(v29 + 4 * v30) = v44;
            for (j = 1; j != -1; --j)
            {
              v46 = (v147[j].__locale_ + 1);
              v147[j].__locale_ = v46;
              if (v46 != *(&v141 + j * 8))
              {
                break;
              }

              v147[j].__locale_ = 0;
            }

            ++v30;
          }

          while (v30 != v28);
        }
      }

      else if (v28)
      {
        v111 = 0;
        v113 = *(&v151 + 1);
        v112 = v152;
        v114 = (v152 - *(&v151 + 1)) >> 3;
        if (v114 <= 1)
        {
          v114 = 1;
        }

        v115 = *(a1 + 56);
        v116 = *(a1 + 64);
        v117 = *(a2 + 192);
        v118 = *(a2 + 344);
        do
        {
          locale = v147[0].__locale_;
          v120 = v147[1].__locale_;
          v144 = *&v147[0].__locale_;
          if (v112 != v113)
          {
            v121 = v113;
            v122 = v114;
            do
            {
              v123 = *v121++;
              *(&v144 + v123) = 0;
              --v122;
            }

            while (v122);
          }

          v124 = 0;
          v125 = 0;
          v126 = &v144;
          v127 = 1;
          do
          {
            v128 = v127;
            v125 += *(&v162 + v124) * *v126;
            v126 = (&v144 + 8);
            v124 = 1;
            v127 = 0;
          }

          while ((v128 & 1) != 0);
          v129 = locale * v115;
          v130 = v120 * v116;
          v131 = *(v117 + 4 * v125);
          if (v131 < *(v118 + 4 * v125))
          {
            v131 = *(v118 + 4 * v125);
          }

          *(v29 + 4 * v130 + 4 * v129) = v131;
          for (k = 1; k != -1; --k)
          {
            v133 = (v147[k].__locale_ + 1);
            v147[k].__locale_ = v133;
            if (v133 != *(&v141 + k * 8))
            {
              break;
            }

            v147[k].__locale_ = 0;
          }

          ++v111;
        }

        while (v111 != v28);
      }
    }

    else
    {
      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      v153 = 0u;
      v154 = 0u;
      v151 = 0u;
      v152 = 0u;
      v150 = 0u;
      v142 = 0u;
      v143 = 0u;
      v141 = 0u;
      sub_2621D96E4(&v150, v5, a2, &v141);
      v53 = 0;
      v54 = &v141;
      v55 = 1;
      do
      {
        v56 = *v54;
        v57 = *(v5 + v53);
        if ((v55 & 1) == 0)
        {
          break;
        }

        v55 = 0;
        v54 = &v141 + 1;
        v53 = 1;
      }

      while (v56 == v57);
      if (v56 != v57)
      {
        v58 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v59 = sub_2621D552C(v58, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v59, " ", 1);
        v60 = MEMORY[0x277D82670];
        v61 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v61, " ", 1);
        sub_2621D552C(v61, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v61 + *(*v61 - 24)));
        v62 = std::locale::use_facet(v147, MEMORY[0x277D82680]);
        (v62->__vftable[2].~facet_0)(v62, 10);
        std::locale::~locale(v147);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v60 + *(*v60 - 24)));
        v63 = std::locale::use_facet(v147, MEMORY[0x277D82680]);
        (v63->__vftable[2].~facet_0)(v63, 10);
        std::locale::~locale(v147);
        std::ostream::put();
        std::ostream::flush();
      }

      v148 = 0u;
      v149 = 0u;
      v146 = 0u;
      *&v147[0].__locale_ = 0u;
      v144 = 0u;
      v145 = 0u;
      v64 = *(a1 + 104);
      v140 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v64)
        {
          v65 = 0;
          v67 = *(&v151 + 1);
          v66 = v152;
          v68 = (v152 - *(&v151 + 1)) >> 3;
          if (v68 <= 1)
          {
            v68 = 1;
          }

          v138 = v68;
          do
          {
            v144 = *&v147[0].__locale_;
            if (v66 != v67)
            {
              v69 = v67;
              v70 = v138;
              do
              {
                v71 = *v69++;
                *(&v144 + v71) = 0;
                --v70;
              }

              while (v70);
            }

            v72 = 0;
            v73 = 0;
            v74 = &v144;
            v75 = 1;
            do
            {
              v76 = v75;
              v73 += *(&v162 + v72) * *v74;
              v74 = (&v144 + 8);
              v72 = 1;
              v75 = 0;
            }

            while ((v76 & 1) != 0);
            *(v140 + 4 * v65) = sub_2622F7828(a2, v73, v144, *(&v144 + 1));
            for (m = 1; m != -1; --m)
            {
              v78 = (v147[m].__locale_ + 1);
              v147[m].__locale_ = v78;
              if (v78 != *(&v141 + m * 8))
              {
                break;
              }

              v147[m].__locale_ = 0;
            }

            ++v65;
          }

          while (v65 != v64);
        }
      }

      else if (v64)
      {
        v88 = 0;
        v137 = v152;
        v139 = *(&v151 + 1);
        if (((v152 - *(&v151 + 1)) >> 3) <= 1)
        {
          v89 = 1;
        }

        else
        {
          v89 = (v152 - *(&v151 + 1)) >> 3;
        }

        v136 = *(a1 + 64);
        v134 = v89;
        v135 = *(a1 + 56);
        do
        {
          v90 = v64;
          v92 = v147[0].__locale_;
          v91 = v147[1].__locale_;
          v144 = *&v147[0].__locale_;
          if (v137 != v139)
          {
            v93 = v139;
            v94 = v134;
            do
            {
              v95 = *v93++;
              *(&v144 + v95) = 0;
              --v94;
            }

            while (v94);
          }

          v96 = 0;
          v97 = 0;
          v98 = &v144;
          v99 = 1;
          do
          {
            v100 = v99;
            v97 += *(&v162 + v96) * *v98;
            v98 = (&v144 + 8);
            v96 = 1;
            v99 = 0;
          }

          while ((v100 & 1) != 0);
          *(v140 + 4 * v136 * v91 + 4 * v135 * v92) = sub_2622F7828(a2, v97, v144, *(&v144 + 1));
          for (n = 1; n != -1; --n)
          {
            v102 = (v147[n].__locale_ + 1);
            v147[n].__locale_ = v102;
            if (v102 != *(&v141 + n * 8))
            {
              break;
            }

            v147[n].__locale_ = 0;
          }

          ++v88;
          v64 = v90;
        }

        while (v88 != v90);
      }
    }

    sub_2621C57C8(&v150);
  }
}

void sub_2622F77F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::locale a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  std::locale::~locale(&a27);
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

float sub_2622F7828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 184) == 1)
  {
    v4 = (*(a1 + 192) + 4 * a2);
  }

  else
  {
    v4 = (*(a1 + 192) + 4 * *(a1 + 112) * a4 + 4 * *(a1 + 104) * a3);
  }

  result = *v4;
  if (*(a1 + 336) == 1)
  {
    v6 = *(a1 + 344) + 4 * a2;
  }

  else
  {
    v6 = *(a1 + 344) + 4 * *(a1 + 264) * a4 + 4 * *(a1 + 256) * a3;
  }

  if (result < *v6)
  {
    return *v6;
  }

  return result;
}

void sub_2622F78A4(void *a1)
{
  *a1 = &unk_2874EE768;
  v1 = a1 + 2;
  sub_2622F7918(a1 + 2);
  sub_2621C74C4(v1);

  JUMPOUT(0x266727420);
}

void *sub_2622F7918(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void *sub_2622F7984(void *a1)
{
  *a1 = &unk_2874EE768;
  v2 = a1 + 2;
  sub_2622F7918(a1 + 2);
  sub_2621C74C4(v2);
  return a1;
}

void sub_2622F7C64(void *a1, void *a2)
{
  v16 = a1;
  if (objc_msgSend_count(v16, v3, v4) == 2)
  {
    v6 = objc_msgSend_objectAtIndexedSubscript_(v16, v5, 0);
    objc_msgSend_floatValue(v6, v7, v8);
    v15 = v9;
    v11 = objc_msgSend_objectAtIndexedSubscript_(v16, v10, 1);
    objc_msgSend_floatValue(v11, v12, v13);
    *a2 = __PAIR64__(v14, v15);
  }
}

id sub_2622F7E2C(double a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12 = HIDWORD(a1);
  v4 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], a3, a4);
  v13[0] = v4;
  HIDWORD(v5) = v12;
  LODWORD(v5) = v12;
  v8 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v6, v7, v5);
  v13[1] = v8;
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v13, 2);

  return v10;
}

void sub_2622F7EF4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2622F84BC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2622F85D0(float32x2_t *a1)
{
  if (a1)
  {
    v17 = a1[42].f32[0];
    v2 = __sincosf_stret((a1[42].f32[1] * 3.1416) / 180.0);
    v3 = vmul_n_f32(__PAIR64__(LODWORD(v2.__sinval), LODWORD(v2.__cosval)), v17);
    v4 = __sincosf_stret((a1[43].f32[0] * 3.1416) / 180.0);
    v5 = vmul_n_f32(__PAIR64__(LODWORD(v4.__sinval), LODWORD(v4.__cosval)), v17);
    objc_msgSend_quad(a1, v6, v7);
    v18 = v8;
    objc_msgSend_quad(a1, v9, v10);
    v11 = a1[45];
    *&v12 = vadd_f32(v3, v11);
    *&v13 = v12;
    *(&v13 + 1) = vextq_s8(v18, v18, 8uLL).u64[0];
    *&v14 = vadd_f32(v11, v5);
    *&v15 = v14;
    *(&v15 + 1) = *(&v13 + 1);
    *(&v14 + 1) = vextq_s8(v16, v16, 8uLL).u64[0];
    *(&v12 + 1) = *(&v14 + 1);
    src[0] = v13;
    src[1] = v15;
    src[2] = v14;
    src[3] = v12;
    objc_copyStruct(&a1[34], src, 64, 1, 0);
  }
}

uint64_t sub_2622F88B0(const void **a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2621CBEB0();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v20 = a1;
    if (v10)
    {
      sub_2621E1E3C(v10);
    }

    v11 = 24 * v7;
    v16 = 0;
    v17 = v11;
    v18 = 24 * v7;
    v19 = 0;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    sub_262234B80((24 * v7), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    v6 = (v18 + 24);
    v12 = a1[1] - *a1;
    v13 = &v17[-v12];
    memcpy(&v17[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v6;
    v15 = a1[2];
    a1[2] = v19;
    v18 = v14;
    v19 = v15;
    v16 = v14;
    v17 = v14;
    result = sub_26220AA90(&v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    result = sub_262234B80(v4, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    v6 = v4 + 3;
    a1[1] = v6;
  }

  a1[1] = v6;
  return result;
}

void sub_2622F89F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_26220AA90(va);
  _Unwind_Resume(a1);
}

void sub_2622F8A18(uint64_t a1, uint64_t a2, int *a3)
{
  if (*(a2 + 137) == 1)
  {
    v6 = MEMORY[0x277D82670];
    v7 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v8 = sub_2621D552C(v7, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = MEMORY[0x266727260](v9, 1342);
    v11 = sub_2621D552C(v10, " ", 1);
    v12 = sub_2621D552C(v11, "reshape", 7);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(&v61, MEMORY[0x277D82680]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v61);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v6 + *(*v6 - 24)));
    v14 = std::locale::use_facet(&v61, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&v61);
    std::ostream::put();
    std::ostream::flush();
  }

  v66 = 0;
  v67 = 0;
  v68 = 0;
  sub_2621DD5D0(&v66, a3, a3 + 2, 2uLL);
  memset(v65, 0, sizeof(v65));
  v15 = v66;
  v16 = v67;
  sub_262270440(v65, v66, v67, v67 - v66);
  v58 = a1;
  v59 = a2;
  __p = v15;
  if (v15 >= v16)
  {
    v19 = -1;
  }

  else
  {
    v17 = 0;
    v18 = MEMORY[0x277D82670];
    v19 = -1;
    v20 = MEMORY[0x277D82680];
    v21 = v15;
    do
    {
      v22 = *v21;
      if (*v21)
      {
        v23 = v22 <= -2;
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {
        sub_2621D552C(v18, "runtime_err in ", 15);
        sub_2621D552C(v18, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v18, " ", 1);
        v24 = MEMORY[0x266727260](v18, 1348);
        sub_2621D552C(v24, " ", 1);
        sub_2621D552C(v24, "reshape", 7);
        std::ios_base::getloc((v24 + *(*v24 - 24)));
        v25 = std::locale::use_facet(&v61, v20);
        (v25->__vftable[2].~facet_0)(v25, 10);
        std::locale::~locale(&v61);
        std::ostream::put();
        std::ostream::flush();
        LODWORD(v61.__locale_) = 200000000;
        sub_2621D59F8("err", "shape can only be -1 or integer between 1 and ", &v61);
        std::ios_base::getloc((v18 + *(*v18 - 24)));
        v26 = std::locale::use_facet(&v61, v20);
        (v26->__vftable[2].~facet_0)(v26, 10);
        std::locale::~locale(&v61);
        v15 = __p;
        std::ostream::put();
        std::ostream::flush();
        v22 = *v21;
      }

      if (v22 != -1 || v19 == -1)
      {
        if (v22 == -1 && v19 == -1)
        {
          v19 = v17;
        }
      }

      else
      {
        sub_2621D552C(v18, "runtime_err in ", 15);
        sub_2621D552C(v18, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v18, " ", 1);
        v29 = MEMORY[0x266727260](v18, 1349);
        sub_2621D552C(v29, " ", 1);
        sub_2621D552C(v29, "reshape", 7);
        std::ios_base::getloc((v29 + *(*v29 - 24)));
        v30 = std::locale::use_facet(&v61, v20);
        (v30->__vftable[2].~facet_0)(v30, 10);
        std::locale::~locale(&v61);
        std::ostream::put();
        std::ostream::flush();
        sub_262270668("err", "shape cannot be deduced");
        std::ios_base::getloc((v18 + *(*v18 - 24)));
        v31 = std::locale::use_facet(&v61, v20);
        (v31->__vftable[2].~facet_0)(v31, 10);
        std::locale::~locale(&v61);
        v15 = __p;
        std::ostream::put();
        std::ostream::flush();
      }

      ++v21;
      ++v17;
    }

    while (v21 < v16);
  }

  v32 = 1;
  if (v15 == v16)
  {
    v33 = v59;
  }

  else
  {
    v33 = v59;
    do
    {
      v34 = *v15++;
      v32 *= v34;
    }

    while (v15 != v16);
  }

  if (v32 >= 0)
  {
    v35 = v32;
  }

  else
  {
    v35 = -v32;
  }

  v36 = *(v33 + 104);
  if (v36 < v35 || v36 % v35)
  {
    v37 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v38 = sub_2621D552C(v37, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    sub_2621D552C(v38, " ", 1);
    v39 = MEMORY[0x277D82670];
    v40 = MEMORY[0x266727260](MEMORY[0x277D82670], 1356);
    sub_2621D552C(v40, " ", 1);
    sub_2621D552C(v40, "reshape", 7);
    std::ios_base::getloc((v40 + *(*v40 - 24)));
    v41 = std::locale::use_facet(&v61, MEMORY[0x277D82680]);
    (v41->__vftable[2].~facet_0)(v41, 10);
    std::locale::~locale(&v61);
    std::ostream::put();
    std::ostream::flush();
    sub_262270774("err", "length not match, cannot reshape");
    std::ios_base::getloc((v39 + *(*v39 - 24)));
    v42 = std::locale::use_facet(&v61, MEMORY[0x277D82680]);
    (v42->__vftable[2].~facet_0)(v42, 10);
    std::locale::~locale(&v61);
    std::ostream::put();
    std::ostream::flush();
  }

  if (v19 != -1)
  {
    *&v65[0][8 * v19] = *(v33 + 104) / v35;
  }

  sub_2621D6CA4(__b, v65);
  *(v58 + 8) = 0u;
  *v58 = &unk_2874EEB10;
  *(v58 + 24) = 0u;
  *(v58 + 40) = 0u;
  *(v58 + 56) = 0u;
  *(v58 + 72) = 0u;
  *(v58 + 88) = 0u;
  *(v58 + 120) = 0;
  *(v58 + 128) = 0;
  *(v58 + 136) = 257;
  if (*(v33 + 136) == 1)
  {
    v43 = *(v33 + 120);
    v44 = *(v33 + 128);
    if (!v44)
    {
      *(v58 + 120) = v43;
      *(v58 + 128) = 0;
      goto LABEL_49;
    }

    atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
    v45 = *(v58 + 128);
    *(v58 + 120) = v43;
    *(v58 + 128) = v44;
    if (!v45)
    {
      goto LABEL_49;
    }
  }

  else
  {
    sub_26226EC48(&v61, (v33 + 8));
    sub_26226F700(&v61, v33);
    v47 = v62;
    v46 = v63;
    if (v63)
    {
      atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v48 = *(v58 + 128);
    *(v58 + 120) = v47;
    *(v58 + 128) = v46;
    if (v48)
    {
      sub_2621D1B78(v48);
    }

    v61.__locale_ = &unk_2874EE7A8;
    v45 = v63;
    if (!v63)
    {
      goto LABEL_49;
    }
  }

  sub_2621D1B78(v45);
LABEL_49:
  v49 = __b[1];
  *(v58 + 8) = __b[0];
  *(v58 + 24) = v49;
  *(v58 + 40) = __b[2];
  v50 = 1;
  *(v58 + 64) = 1;
  v51 = (v58 + 64);
  v53 = *(v58 + 8);
  v52 = *(v58 + 16);
  *(v58 + 56) = v52;
  *(v58 + 104) = v53 * v52;
  *(v58 + 112) = 0;
  *(v58 + 137) = 0;
  v54 = -2;
  while (1)
  {
    v55 = *(v51 - 6);
    if (v55 != 1)
    {
      break;
    }

LABEL_53:
    --v51;
    if (__CFADD__(v54++, 1))
    {
      v57 = 1;
      goto LABEL_57;
    }
  }

  if (*v51 == v50)
  {
    v50 *= v55;
    goto LABEL_53;
  }

  v57 = 0;
LABEL_57:
  *(v58 + 136) = v57;
  *(v58 + 144) = **(v58 + 120);
  if (v65[0])
  {
    operator delete(v65[0]);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void sub_2622F9304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, std::locale a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29)
{
  if (a29)
  {
    sub_2621D1B78(a29);
  }

  *a10 = v29;
  v32 = a10[16];
  if (v32)
  {
    sub_2621D1B78(v32);
  }

  v33 = *(v30 - 136);
  if (v33)
  {
    operator delete(v33);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622F93C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 48) = 0u;
  v62 = (a1 + 48);
  *(a1 + 112) = 0;
  v61 = a1 + 112;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0u;
  v60 = a1 + 144;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  sub_262206318(a1 + 216, a2);
  v7 = 0;
  v63 = (a1 + 96);
  v8 = 1;
  v9 = MEMORY[0x277D82670];
  v10 = MEMORY[0x277D82680];
  do
  {
    v11 = v8;
    v12 = *(a3 + 4 * v7);
    LODWORD(v64) = v12;
    if (v12 >= 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = -v12;
    }

    if (v13 >= 3)
    {
      sub_2621D552C(v9, "runtime_err in ", 15);
      sub_2621D552C(v9, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/expression/../common/gather_scatter_dim_helper.hpp", 132);
      sub_2621D552C(v9, " ", 1);
      v14 = MEMORY[0x266727260](v9, 150);
      sub_2621D552C(v14, " ", 1);
      sub_2621D552C(v14, "init", 4);
      std::ios_base::getloc((v14 + *(*v14 - 24)));
      v15 = std::locale::use_facet(&v65, v10);
      (v15->__vftable[2].~facet_0)(v15, 10);
      std::locale::~locale(&v65);
      std::ostream::put();
      std::ostream::flush();
      sub_262229DB0("err", "the absolute value of axis should be less than dim");
      std::ios_base::getloc((v9 + *(*v9 - 24)));
      v16 = std::locale::use_facet(&v65, v10);
      (v16->__vftable[2].~facet_0)(v16, 10);
      std::locale::~locale(&v65);
      std::ostream::put();
      std::ostream::flush();
    }

    if (v12 < 0)
    {
      v12 += 3;
      LODWORD(v64) = v12;
    }

    if (v12 >= 3)
    {
      sub_2621D552C(v9, "runtime_err in ", 15);
      sub_2621D552C(v9, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/expression/../common/gather_scatter_dim_helper.hpp", 132);
      sub_2621D552C(v9, " ", 1);
      v17 = MEMORY[0x266727260](v9, 154);
      sub_2621D552C(v17, " ", 1);
      sub_2621D552C(v17, "init", 4);
      std::ios_base::getloc((v17 + *(*v17 - 24)));
      v18 = std::locale::use_facet(&v65, v10);
      (v18->__vftable[2].~facet_0)(v18, 10);
      std::locale::~locale(&v65);
      std::ostream::put();
      std::ostream::flush();
      sub_262201E08("err", &v64);
      std::ios_base::getloc((v9 + *(*v9 - 24)));
      v19 = std::locale::use_facet(&v65, v10);
      (v19->__vftable[2].~facet_0)(v19, 10);
      std::locale::~locale(&v65);
      std::ostream::put();
      std::ostream::flush();
      if (v12 < 0)
      {
        sub_2621D552C(v9, "runtime_err in ", 15);
        sub_2621D552C(v9, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/expression/../common/gather_scatter_dim_helper.hpp", 132);
        sub_2621D552C(v9, " ", 1);
        v20 = MEMORY[0x266727260](v9, 155);
        sub_2621D552C(v20, " ", 1);
        sub_2621D552C(v20, "init", 4);
        std::ios_base::getloc((v20 + *(*v20 - 24)));
        v21 = std::locale::use_facet(&v65, v10);
        (v21->__vftable[2].~facet_0)(v21, 10);
        std::locale::~locale(&v65);
        std::ostream::put();
        std::ostream::flush();
        sub_262201E08("err", &v64);
        std::ios_base::getloc((v9 + *(*v9 - 24)));
        v22 = std::locale::use_facet(&v65, v10);
        (v22->__vftable[2].~facet_0)(v22, 10);
        std::locale::~locale(&v65);
        std::ostream::put();
        std::ostream::flush();
      }
    }

    v8 = 0;
    v63[v7] = v12;
    v7 = 1;
  }

  while ((v11 & 1) != 0);
  v23 = *(a1 + 96);
  v24 = *(a1 + 104);
  if (v23 == v24)
  {
    v25 = v62;
    v26 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v28 = v60;
    v27 = v61;
    v29 = sub_2621D552C(v26, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/expression/../common/gather_scatter_dim_helper.hpp", 132);
    sub_2621D552C(v29, " ", 1);
    v30 = MEMORY[0x277D82670];
    v31 = MEMORY[0x266727260](MEMORY[0x277D82670], 162);
    sub_2621D552C(v31, " ", 1);
    sub_2621D552C(v31, "init", 4);
    std::ios_base::getloc((v31 + *(*v31 - 24)));
    v32 = std::locale::use_facet(&v65, MEMORY[0x277D82680]);
    (v32->__vftable[2].~facet_0)(v32, 10);
    std::locale::~locale(&v65);
    std::ostream::put();
    std::ostream::flush();
    sub_2622FF040("err", "gather dim should not be same!");
    std::ios_base::getloc((v30 + *(*v30 - 24)));
    v33 = std::locale::use_facet(&v65, MEMORY[0x277D82680]);
    (v33->__vftable[2].~facet_0)(v33, 10);
    std::locale::~locale(&v65);
    std::ostream::put();
    std::ostream::flush();
    v23 = *(a1 + 96);
    v24 = *(a1 + 104);
  }

  else
  {
    v27 = v61;
    v25 = v62;
    v28 = v60;
  }

  if (v23 > v24)
  {
    *(a1 + 96) = v24;
    *(a1 + 104) = v23;
  }

  sub_26222A054(v25, a4);
  sub_26222A054(v25, a5);
  sub_2621C9004(a1 + 72, (*(a1 + 48) + 56));
  v34 = *v25;
  if (*(*v25 + 8) != *(*v25 + 160))
  {
    v35 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v36 = sub_2621D552C(v35, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/expression/../common/gather_scatter_dim_helper.hpp", 132);
    v37 = sub_2621D552C(v36, " ", 1);
    v38 = MEMORY[0x266727260](v37, 179);
    sub_2621D552C(v38, " ", 1);
    sub_2621D552C(v38, "init", 4);
    std::ios_base::getloc((v38 + *(*v38 - 24)));
    v39 = std::locale::use_facet(&v65, MEMORY[0x277D82680]);
    (v39->__vftable[2].~facet_0)(v39, 10);
    std::locale::~locale(&v65);
    std::ostream::put();
    std::ostream::flush();
    v40 = sub_2621D552C(MEMORY[0x277D82670], "err", 3);
    v41 = sub_2621D552C(v40, " ", 1);
    v42 = sub_2621D552C(v41, "indices shape should be same", 28);
    std::ios_base::getloc((v42 + *(*v42 - 24)));
    v43 = std::locale::use_facet(&v65, MEMORY[0x277D82680]);
    (v43->__vftable[2].~facet_0)(v43, 10);
    std::locale::~locale(&v65);
    std::ostream::put();
    v44 = MEMORY[0x277D82670];
    std::ostream::flush();
    std::ios_base::getloc((v44 + *(*v44 - 24)));
    v45 = std::locale::use_facet(&v65, MEMORY[0x277D82680]);
    (v45->__vftable[2].~facet_0)(v45, 10);
    std::locale::~locale(&v65);
    std::ostream::put();
    std::ostream::flush();
    v34 = *v25;
  }

  sub_2621C9004(a1 + 72, (v34 + 208));
  v46 = *(a1 + 96);
  *(a1 + 136) = v46;
  v64 = 0;
  v65.__locale_ = 0;
  v47 = 0;
  if (v46)
  {
    v48 = a1;
    do
    {
      sub_2621C9004(v27, &v64);
      sub_2621C9004(v28, &v65);
      v49 = v48[28];
      v64 = ++v47;
      v65.__locale_ = v47;
      *v48++ = v49;
    }

    while (v47 < *(a1 + 136));
  }

  v50 = (v47 + 1);
  *(a1 + 8 * v47) = *(*(a1 + 48) + 8);
  v51 = *(a1 + 136);
  v64 = v51 + 1;
  v65.__locale_ = v50;
  if ((v51 + 1) <= 2)
  {
    do
    {
      v52 = v51 + 1;
      if (v51 + 1 != *v63 && v52 != *(a1 + 104))
      {
        sub_2621C9004(v28, &v65);
        sub_2621C9004(v27, &v64);
        *(a1 + 8 * v50) = *(a1 + 232 + 8 * v51);
        v50 = (v50 + 1);
        v65.__locale_ = v50;
      }

      v64 = v51 + 2;
      ++v51;
    }

    while (v52 != 2);
  }

  v53 = 0;
  v54 = a1 + 168;
  do
  {
    *(v54 + 8 * v53) = 1;
    if (v53 <= 1)
    {
      v55 = v53;
      v56 = 1;
      do
      {
        v56 *= *(a1 + 232 + 8 * v55);
        *(v54 + 8 * v53) = v56;
        ++v55;
      }

      while (v55 != 2);
    }

    ++v53;
  }

  while (v53 != 3);
  return a1;
}

void sub_2622F9E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::locale a18)
{
  std::locale::~locale(&a18);
  *(v18 + 216) = &unk_2874EEDA0;
  v21 = *(v18 + 344);
  if (v21)
  {
    sub_2621D1B78(v21);
  }

  sub_2622FAAB8(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_2622F9EC8(uint64_t a1, void *a2, int *a3)
{
  v32[2] = *MEMORY[0x277D85DE8];
  if (*(a1 + 137) == 1)
  {
    v5 = a1;
    v6 = MEMORY[0x277D82670];
    v7 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v8 = sub_2621D552C(v7, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = MEMORY[0x266727260](v9, 1125);
    v11 = sub_2621D552C(v10, " ", 1);
    v12 = sub_2621D552C(v11, "at", 2);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(v29, MEMORY[0x277D82680]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(v29);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v6 + *(*v6 - 24)));
    v14 = std::locale::use_facet(v29, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(v29);
    std::ostream::put();
    std::ostream::flush();
    a1 = v5;
  }

  v15 = 0;
  v16 = MEMORY[0x277D82670];
  v26 = a1;
  v27 = 0;
  v17 = a1 + 8;
  v18 = *a3;
  v32[0] = *a2;
  v32[1] = v18;
  v19 = 1;
  v20 = MEMORY[0x277D82680];
  v30 = 0u;
  v31 = 0u;
  *&v29[0].__locale_ = 0u;
  do
  {
    v21 = v32[v15];
    if (v21 >= *(v17 + v15 * 8))
    {
      sub_2621D552C(v16, "runtime_err in ", 15);
      sub_2621D552C(v16, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
      sub_2621D552C(v16, " ", 1);
      v22 = MEMORY[0x266727260](v16, 1133);
      sub_2621D552C(v22, " ", 1);
      sub_2621D552C(v22, "at", 2);
      std::ios_base::getloc((v22 + *(*v22 - 24)));
      v23 = std::locale::use_facet(&v28, v20);
      (v23->__vftable[2].~facet_0)(v23, 10);
      std::locale::~locale(&v28);
      std::ostream::put();
      std::ostream::flush();
      sub_2621DA198("err", "shape", &v27, "=", &v32[v15], "should smaller then", (v17 + v15 * 8));
      std::ios_base::getloc((v16 + *(*v16 - 24)));
      v24 = std::locale::use_facet(&v28, v20);
      (v24->__vftable[2].~facet_0)(v24, 10);
      std::locale::~locale(&v28);
      std::ostream::put();
      std::ostream::flush();
    }

    v27 = v19;
    v29[v15++].__locale_ = v21;
    ++v19;
  }

  while (v15 != 2);
  return v26[18] + 4 * v26[8] * v29[1].__locale_ + 4 * v26[7] * v29[0].__locale_;
}

unint64_t sub_2622FA30C(uint64_t a1, unint64_t *a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 137) == 1)
  {
    v4 = MEMORY[0x277D82670];
    v5 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v6 = sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v7 = sub_2621D552C(v6, " ", 1);
    v8 = MEMORY[0x266727260](v7, 1125);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = sub_2621D552C(v9, "at", 2);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v22, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v22);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v12 = std::locale::use_facet(&v22, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v22);
    std::ostream::put();
    std::ostream::flush();
  }

  v13 = *a2;
  v23[0] = v13;
  v21 = 0;
  if (v13 >= *(a1 + 8))
  {
    v14 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v15 = sub_2621D552C(v14, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    sub_2621D552C(v15, " ", 1);
    v16 = MEMORY[0x277D82670];
    v17 = MEMORY[0x266727260](MEMORY[0x277D82670], 1133);
    sub_2621D552C(v17, " ", 1);
    sub_2621D552C(v17, "at", 2);
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(&v22, MEMORY[0x277D82680]);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v22);
    std::ostream::put();
    std::ostream::flush();
    sub_2621DA198("err", "shape", &v21, "=", v23, "should smaller then", (a1 + 8));
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v19 = std::locale::use_facet(&v22, MEMORY[0x277D82680]);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&v22);
    std::ostream::put();
    std::ostream::flush();
  }

  return *(a1 + 144) + 8 * *(a1 + 56) * v13;
}

void sub_2622FA6E4(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_2874EE7C8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 128) = 0;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  v4 = *(a1 + 16);
  *(a1 + 56) = v4;
  *(a1 + 64) = 1;
  *(a1 + 104) = *(a1 + 8) * v4;
  *(a1 + 112) = 0;
  sub_262204144(v5, (a1 + 104));
}

void sub_2622FAA58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    sub_2621D1B78(a25);
  }

  v27 = *(v25 + 128);
  if (v27)
  {
    sub_2621D1B78(v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622FAAB8(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    *(a1 + 72) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  v6 = a1;
  sub_262229EBC(&v6);
  return a1;
}

void sub_2622FAB20(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v196 = *MEMORY[0x277D85DE8];
  v192 = 0uLL;
  v193 = 0;
  v4 = *a3;
  if ((v4 & 0x80000000) != 0)
  {
    __b[0].__locale_ = (v4 + 2);
  }

  else
  {
    __b[0].__locale_ = *a3;
  }

  sub_2621C9004(&v192, __b);
  v5 = v192;
  v6 = MEMORY[0x277D82670];
  if (*(&v192 + 1) != v192)
  {
    v7 = 0;
    v8 = (*(&v192 + 1) - v192) >> 3;
    v9 = MEMORY[0x277D82680];
    do
    {
      if (*(v5 + 8 * v7) >= 2uLL)
      {
        sub_2621D552C(v6, "runtime_err in ", 15);
        sub_2621D552C(v6, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../common/reduce_helper.hpp", 118);
        sub_2621D552C(v6, " ", 1);
        v10 = MEMORY[0x266727260](v6, 28);
        sub_2621D552C(v10, " ", 1);
        sub_2621D552C(v10, "format_reduce_axes", 18);
        std::ios_base::getloc((v10 + *(*v10 - 24)));
        v11 = std::locale::use_facet(__b, v9);
        (v11->__vftable[2].~facet_0)(v11, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D6B98("err", "reduce axis larger than dim-1");
        std::ios_base::getloc((v6 + *(*v6 - 24)));
        v12 = std::locale::use_facet(__b, v9);
        (v12->__vftable[2].~facet_0)(v12, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
      }

      ++v7;
    }

    while (v7 < v8);
  }

  std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
  v13 = v192;
  v173 = (*(&v192 + 1) - v192) >> 3;
  v170 = *(&v192 + 1) - v192;
  if (*(&v192 + 1) - v192 != 8)
  {
    v14 = 0;
    v15 = MEMORY[0x277D82680];
    do
    {
      if (*(v13 + 8 * v14) == *(v13 + 8 * v14 + 8))
      {
        sub_2621D552C(v6, "runtime_err in ", 15);
        sub_2621D552C(v6, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../common/reduce_helper.hpp", 118);
        sub_2621D552C(v6, " ", 1);
        v16 = MEMORY[0x266727260](v6, 33);
        sub_2621D552C(v16, " ", 1);
        sub_2621D552C(v16, "format_reduce_axes", 18);
        std::ios_base::getloc((v16 + *(*v16 - 24)));
        v17 = std::locale::use_facet(__b, v15);
        (v17->__vftable[2].~facet_0)(v17, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D6B98("err", "duplicate axis in reduce axis");
        std::ios_base::getloc((v6 + *(*v6 - 24)));
        v18 = std::locale::use_facet(__b, v15);
        (v18->__vftable[2].~facet_0)(v18, 10);
        std::locale::~locale(__b);
        std::ostream::put();
        std::ostream::flush();
      }

      ++v14;
    }

    while (v14 < v173 - 1);
  }

  v19 = 0;
  v20 = a2 + 8;
  v191[0] = 0;
  v191[1] = 0;
  v21 = v173;
  if (v173 <= 1)
  {
    v21 = 1;
  }

  v191[2] = 0;
  v22 = v21 - 1;
  v23 = 1;
  do
  {
    v24 = v23;
    if (*(&v13 + 1) != v13)
    {
      if (*v13 == v19)
      {
LABEL_19:
        __b[0].__locale_ = 1;
        sub_2621C9004(v191, __b);
        goto LABEL_25;
      }

      v25 = 0;
      while (v22 != v25)
      {
        v26 = *(v13 + 8 + 8 * v25++);
        if (v26 == v19)
        {
          if (v25 < v173)
          {
            goto LABEL_19;
          }

          break;
        }
      }
    }

    sub_2621C9004(v191, (v20 + 8 * v19));
LABEL_25:
    v23 = 0;
    v19 = 1;
  }

  while ((v24 & 1) != 0);
  sub_2621D6CA4(__b, v191);
  v188 = 0u;
  v189 = 0u;
  v187[0] = __b[1];
  v187[1] = 1;
  sub_2622035C8(v174, __b);
  v27 = *(v13 + v170 - 8);
  v172 = v27;
  if (v27 == 1)
  {
    if (v173 != 1)
    {
      v28 = *(v13 - 16 + v170);
      if (*(v13 + 8 * (v173 - 1)) - v28 == 1)
      {
        v29 = (v13 + 8 * v173 - 24);
        v30 = v173 - 2;
        do
        {
          v27 = v28;
          if (!v30)
          {
            break;
          }

          v28 = *v29;
          v31 = v29[1];
          --v29;
          --v30;
        }

        while (v31 - v28 == 1);
        goto LABEL_32;
      }
    }

    v184 = 0;
    v185 = 0;
    v186 = 0;
    v181 = 0;
    v182 = 0;
    v27 = 1;
    v183 = 0;
  }

  else
  {
LABEL_32:
    v184 = 0;
    v185 = 0;
    v186 = 0;
    v181 = 0;
    v182 = 0;
    v183 = 0;
    if (!v27)
    {
      v32 = 0;
      v33 = 1;
      v34 = 1;
      v171 = 1;
LABEL_47:
      v40 = 8 * v33;
      v41 = 1;
      do
      {
        v41 *= *(v20 + v40);
        v40 += 8;
      }

      while (v40 != 16);
      goto LABEL_51;
    }
  }

  v35 = 0;
  v34 = 1;
  while (2)
  {
    v36 = (v20 + 8 * v35);
    v37 = *v36;
    sub_2621C9004(&v184, v36);
    if (*(&v13 + 1) != v13)
    {
      if (*v13 == v35)
      {
LABEL_38:
        *&v195[0] = 0;
        sub_2621C9004(&v181, v195);
        goto LABEL_44;
      }

      v38 = 0;
      while (v22 != v38)
      {
        v39 = *(v13 + 8 + 8 * v38++);
        if (v39 == v35)
        {
          if (v38 < v173)
          {
            goto LABEL_38;
          }

          break;
        }
      }
    }

    sub_2621C9004(&v181, &v187[v35]);
LABEL_44:
    v34 *= v37;
    if (++v35 != v27)
    {
      continue;
    }

    break;
  }

  v171 = 0;
  if ((v27 + 1) <= 1)
  {
    v33 = 0;
    v32 = -1;
    goto LABEL_47;
  }

  v32 = v27;
  v41 = 1;
LABEL_51:
  v42 = *(v20 + 8 * v32);
  if (v172 == 1)
  {
    v43 = *(v20 + 8 * v32);
  }

  else
  {
    v43 = 1;
  }

  v167 = v43;
  v44 = v176;
  if (v172 == 1)
  {
    v45 = v34;
  }

  else
  {
    v45 = v42;
  }

  memset(&v195[1], 0, 32);
  if (v172 == 1)
  {
    v46 = 1;
  }

  else
  {
    v46 = v34;
  }

  v195[0] = 0uLL;
  memset(v194, 0, sizeof(v194));
  v47 = v171;
  if (v171)
  {
    __p = 0;
    sub_2621C9004(&v184, &__p);
    v48 = 0;
    __p = 0;
    v179 = 0;
    v180 = 0;
    goto LABEL_74;
  }

  v166 = v46;
  v49 = 0;
  __p = 0;
  v179 = 0;
  v180 = 0;
  v177 = 0;
  if (v32 <= 1)
  {
    v50 = 1;
  }

  else
  {
    v50 = v32;
  }

  while (2)
  {
    if (*(&v13 + 1) == v13)
    {
LABEL_71:
      sub_2621C9004(&__p, &v177);
    }

    else if (*v13 != v49)
    {
      v51 = 0;
      while (v22 != v51)
      {
        v52 = *(v13 + 8 + 8 * v51++);
        if (v52 == v49)
        {
          if (v51 < v173)
          {
            goto LABEL_72;
          }

          goto LABEL_71;
        }
      }

      goto LABEL_71;
    }

LABEL_72:
    v177 = ++v49;
    if (v49 != v50)
    {
      continue;
    }

    break;
  }

  v46 = v166;
  v48 = v32 - 1;
  v47 = v171;
LABEL_74:
  v53 = v41 * v167;
  if (v172 == 1)
  {
    if (*(a2 + 136))
    {
      if (v45)
      {
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v57 = *(a2 + 144);
        v58 = v184;
        v59 = (v57 + 2);
        if (v53 <= 1)
        {
          v60 = 1;
        }

        else
        {
          v60 = v41 * v167;
        }

        v61 = v181;
        v62 = 2 * v60;
        v63 = 1;
        v64 = v44;
        while (1)
        {
          v65 = *(v57 + 2 * v55);
          if (v53 < 2)
          {
            break;
          }

          v66 = v53 - 1;
          v67 = v59;
          do
          {
            v68 = *v67++;
            v65 = v65 + v68;
            --v66;
          }

          while (v66);
          v55 += v53;
          if (!v63)
          {
            goto LABEL_87;
          }

LABEL_88:
          *v64 = v65;
          v69 = v48;
          do
          {
            v70 = *(v195 + v69) + 1;
            *(v195 + v69) = v70;
            if (v70 != v58[v69])
            {
              break;
            }

            *(v195 + v69) = 0;
            v71 = v69-- <= 0;
          }

          while (!v71);
          if (v47)
          {
            v63 = 0;
            v72 = 0;
          }

          else
          {
            v72 = 0;
            v73 = v195;
            v74 = v61;
            v75 = v32;
            do
            {
              v77 = *v73++;
              v76 = v77;
              v78 = *v74++;
              v72 += v78 * v76;
              --v75;
            }

            while (v75);
            v63 = v72 > v56;
            if (v72 > v56)
            {
              v56 = v72;
            }
          }

          v64 = &v44[v72];
          ++v54;
          v59 = (v59 + v62);
          if (v54 == v45)
          {
            goto LABEL_190;
          }
        }

        ++v55;
        if (v63)
        {
          goto LABEL_88;
        }

LABEL_87:
        v65 = v65 + *v64;
        goto LABEL_88;
      }
    }

    else if (v45)
    {
      v105 = 0;
      v106 = 0;
      v107 = v184;
      v108 = v181;
      v109 = *(a2 + 56);
      v110 = *(a2 + 64);
      v111 = 1;
      v112 = v44;
      v113 = *(a2 + 144);
      do
      {
        v114 = *(v113 + 2 * v110 * *(&v194[0] + 1) + 2 * v109 * *&v194[0]);
        v115 = (a2 + 16);
        for (i = 1; i != -1; --i)
        {
          v117 = *(v194 + i) + 1;
          *(v194 + i) = v117;
          v118 = *v115--;
          if (v117 != v118)
          {
            break;
          }

          *(v194 + i) = 0;
        }

        if (v53 >= 2)
        {
          for (j = 1; j != v53; ++j)
          {
            v120 = 0;
            v114 = v114 + *(v113 + 2 * v110 * *(&v194[0] + 1) + 2 * v109 * *&v194[0]);
            do
            {
              v121 = *(v194 + v120 + 8) + 1;
              *(v194 + v120 + 8) = v121;
              if (v121 != *(a2 + 16 + v120))
              {
                break;
              }

              *(v194 + v120 + 8) = 0;
              v120 -= 8;
            }

            while (v120 != -16);
          }
        }

        if (!v111)
        {
          v114 = v114 + *v112;
        }

        *v112 = v114;
        v122 = v48;
        do
        {
          v123 = *(v195 + v122) + 1;
          *(v195 + v122) = v123;
          if (v123 != v107[v122])
          {
            break;
          }

          *(v195 + v122) = 0;
          v71 = v122-- <= 0;
        }

        while (!v71);
        if (v47)
        {
          v111 = 0;
          v124 = 0;
        }

        else
        {
          v124 = 0;
          v125 = v195;
          v126 = v108;
          v127 = v32;
          do
          {
            v129 = *v125++;
            v128 = v129;
            v130 = *v126++;
            v124 += v130 * v128;
            --v127;
          }

          while (v127);
          v111 = v124 > v106;
          if (v124 > v106)
          {
            v106 = v124;
          }
        }

        v112 = &v44[v124];
        ++v105;
      }

      while (v105 != v45);
    }
  }

  else if (*(a2 + 136))
  {
    if (v46)
    {
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v82 = v184;
      v83 = 1;
      v84 = v181;
      v85 = v44;
      do
      {
        if (v83)
        {
          if (v53)
          {
            v86 = *(a2 + 144);
            v87 = v85;
            v88 = v41 * v167;
            do
            {
              *v87++ = *(v86 + 2 * v80++);
              --v88;
            }

            while (v88);
          }
        }

        else if (v53)
        {
          v89 = *(a2 + 144);
          v90 = v85;
          v91 = v41 * v167;
          do
          {
            *v90 = *(v89 + 2 * v80) + *v90;
            ++v90;
            ++v80;
            --v91;
          }

          while (v91);
        }

        if (v45 >= 2)
        {
          for (k = 1; k != v45; ++k)
          {
            if (v53)
            {
              v93 = *(a2 + 144);
              v94 = v85;
              v95 = v41 * v167;
              do
              {
                *v94 = *(v93 + 2 * v80) + *v94;
                ++v94;
                ++v80;
                --v95;
              }

              while (v95);
            }
          }
        }

        v96 = v48;
        do
        {
          v97 = *(v195 + v96) + 1;
          *(v195 + v96) = v97;
          if (v97 != v82[v96])
          {
            break;
          }

          *(v195 + v96) = 0;
          v71 = v96-- <= 0;
        }

        while (!v71);
        if (v47)
        {
          v83 = 0;
          v98 = 0;
        }

        else
        {
          v98 = 0;
          v99 = v195;
          v100 = v84;
          v101 = v32;
          do
          {
            v103 = *v99++;
            v102 = v103;
            v104 = *v100++;
            v98 += v104 * v102;
            --v101;
          }

          while (v101);
          v83 = v98 > v81;
          if (v98 > v81)
          {
            v81 = v98;
          }
        }

        v85 = &v44[v98];
        ++v79;
      }

      while (v79 != v46);
    }
  }

  else if (v46)
  {
    v131 = 0;
    v132 = 0;
    v133 = v184;
    v134 = a2 + 16;
    v135 = v181;
    v136 = 1;
    v137 = v44;
    do
    {
      if (v136)
      {
        if (v53)
        {
          v138 = 0;
          v139 = *(a2 + 144);
          v141 = *(a2 + 56);
          v140 = *(a2 + 64);
          do
          {
            v142 = 0;
            v137[v138] = *(v139 + 2 * v140 * *(&v194[0] + 1) + 2 * v141 * *&v194[0]);
            do
            {
              v143 = *(v194 + v142 + 8) + 1;
              *(v194 + v142 + 8) = v143;
              if (v143 != *(v134 + v142))
              {
                break;
              }

              *(v194 + v142 + 8) = 0;
              v142 -= 8;
            }

            while (v142 != -16);
            ++v138;
          }

          while (v138 != v53);
        }
      }

      else if (v53)
      {
        v144 = 0;
        v145 = *(a2 + 144);
        v147 = *(a2 + 56);
        v146 = *(a2 + 64);
        do
        {
          v148 = 0;
          v137[v144] = *(v145 + 2 * v146 * *(&v194[0] + 1) + 2 * v147 * *&v194[0]) + v137[v144];
          do
          {
            v149 = *(v194 + v148 + 8) + 1;
            *(v194 + v148 + 8) = v149;
            if (v149 != *(v134 + v148))
            {
              break;
            }

            *(v194 + v148 + 8) = 0;
            v148 -= 8;
          }

          while (v148 != -16);
          ++v144;
        }

        while (v144 != v53);
      }

      v150 = v48;
      if (v45 >= 2)
      {
        for (m = 1; m != v45; ++m)
        {
          if (v53)
          {
            v152 = 0;
            v153 = *(a2 + 144);
            v155 = *(a2 + 56);
            v154 = *(a2 + 64);
            do
            {
              v156 = 0;
              v137[v152] = *(v153 + 2 * v154 * *(&v194[0] + 1) + 2 * v155 * *&v194[0]) + v137[v152];
              do
              {
                v157 = *(v194 + v156 + 8) + 1;
                *(v194 + v156 + 8) = v157;
                if (v157 != *(v134 + v156))
                {
                  break;
                }

                *(v194 + v156 + 8) = 0;
                v156 -= 8;
              }

              while (v156 != -16);
              ++v152;
            }

            while (v152 != v53);
          }
        }

        v150 = v48;
      }

      do
      {
        v158 = *(v195 + v150) + 1;
        *(v195 + v150) = v158;
        if (v158 != v133[v150])
        {
          break;
        }

        *(v195 + v150) = 0;
        v71 = v150-- <= 0;
      }

      while (!v71);
      if (v47)
      {
        v136 = 0;
        v159 = 0;
      }

      else
      {
        v159 = 0;
        v160 = v195;
        v161 = v135;
        v162 = v32;
        do
        {
          v164 = *v160++;
          v163 = v164;
          v165 = *v161++;
          v159 += v165 * v163;
          --v162;
        }

        while (v162);
        v136 = v159 > v132;
        if (v159 > v132)
        {
          v132 = v159;
        }
      }

      v137 = &v44[v159];
      ++v131;
    }

    while (v131 != v46);
  }

LABEL_190:
  if (__p)
  {
    operator delete(__p);
  }

  if (v181)
  {
    operator delete(v181);
  }

  if (v184)
  {
    operator delete(v184);
  }

  if (v191[0])
  {
    operator delete(v191[0]);
  }

  if (v13)
  {
    operator delete(v13);
  }

  sub_262201E68(a1, v174, *a3);
  v174[0] = &unk_2874EE7C8;
  if (v175)
  {
    sub_2621D1B78(v175);
  }
}

void sub_2622FB8BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, std::locale a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a43)
  {
    operator delete(a43);
  }

  if (a33)
  {
    sub_2621D1B78(a33);
  }

  if (a58)
  {
    operator delete(a58);
  }

  if (v58)
  {
    operator delete(v58);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2622FB9B8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2874EE788;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v8;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  v9 = *(a2 + 120);
  v10 = *(a2 + 128);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v11 = *(a1 + 128);
    *(a1 + 120) = v9;
    *(a1 + 128) = v10;
    if (v11)
    {
      sub_2621D1B78(v11);
    }
  }

  else
  {
    *(a1 + 120) = v9;
    *(a1 + 128) = 0;
  }

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

void sub_2622FBA90(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  v83 = *MEMORY[0x277D85DE8];
  v73 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = *a2;
  v9 = a2[1];
  sub_26222AF58(&v81, (a3 + 8));
  sub_262227818(a1, &v81);
  if (*(a1 + 137) == 1)
  {
    v11 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v12 = sub_2621D552C(v11, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    sub_2621D552C(v12, " ", 1);
    v13 = MEMORY[0x277D82670];
    v14 = MEMORY[0x266727260](MEMORY[0x277D82670], 664);
    sub_2621D552C(v14, " ", 1);
    sub_2621D552C(v14, "operator=", 9);
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v15 = std::locale::use_facet(&v82, MEMORY[0x277D82680]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v82);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D5EE8("err", "scalar assign should create a storage first");
    std::ios_base::getloc((v13 + *(*v13 - 24)));
    v16 = std::locale::use_facet(&v82, MEMORY[0x277D82680]);
    (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(&v82);
    std::ostream::put();
    std::ostream::flush();
  }

  v17 = vsub_f32(v8, v9);
  *v10.i32 = sqrtf(vaddv_f32(vmul_f32(v17, v17)));
  v18 = *(a1 + 104);
  v19 = *(a1 + 144);
  if (*(a1 + 136))
  {
    if (v18)
    {
      v20 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
      v21 = vdupq_n_s64(v18 - 1);
      v22 = xmmword_2623A7950;
      v23 = xmmword_2623A7960;
      v24 = xmmword_2623A7970;
      v25 = xmmword_2623A7980;
      v26 = xmmword_2623A77F0;
      v27 = xmmword_2623A7800;
      v28 = xmmword_2623A7630;
      v29 = xmmword_2623A7620;
      v30 = (v19 + 7);
      v31 = vdupq_n_s64(0x10uLL);
      do
      {
        v32 = vmovn_s64(vcgeq_u64(v21, v29));
        if (vuzp1_s8(vuzp1_s16(v32, *v21.i8), *v21.i8).u8[0])
        {
          *(v30 - 7) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v32, *&v21), *&v21).i8[1])
        {
          *(v30 - 6) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v28))), *&v21).i8[2])
        {
          *(v30 - 5) = 0;
          *(v30 - 4) = 0;
        }

        v33 = vmovn_s64(vcgeq_u64(v21, v27));
        if (vuzp1_s8(*&v21, vuzp1_s16(v33, *&v21)).i32[1])
        {
          *(v30 - 3) = 0;
        }

        if (vuzp1_s8(*&v21, vuzp1_s16(v33, *&v21)).i8[5])
        {
          *(v30 - 2) = 0;
        }

        if (vuzp1_s8(*&v21, vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v26)))).i8[6])
        {
          *(v30 - 1) = 0;
          *v30 = 0;
        }

        v34 = vmovn_s64(vcgeq_u64(v21, v25));
        if (vuzp1_s8(vuzp1_s16(v34, *v21.i8), *v21.i8).u8[0])
        {
          v30[1] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v34, *&v21), *&v21).i8[1])
        {
          v30[2] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v24))), *&v21).i8[2])
        {
          v30[3] = 0;
          v30[4] = 0;
        }

        v35 = vmovn_s64(vcgeq_u64(v21, v23));
        if (vuzp1_s8(*&v21, vuzp1_s16(v35, *&v21)).i32[1])
        {
          v30[5] = 0;
        }

        if (vuzp1_s8(*&v21, vuzp1_s16(v35, *&v21)).i8[5])
        {
          v30[6] = 0;
        }

        if (vuzp1_s8(*&v21, vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v22)))).i8[6])
        {
          v30[7] = 0;
          v30[8] = 0;
        }

        v27 = vaddq_s64(v27, v31);
        v28 = vaddq_s64(v28, v31);
        v29 = vaddq_s64(v29, v31);
        v26 = vaddq_s64(v26, v31);
        v25 = vaddq_s64(v25, v31);
        v24 = vaddq_s64(v24, v31);
        v23 = vaddq_s64(v23, v31);
        v30 += 16;
        v22 = vaddq_s64(v22, v31);
        v20 -= 16;
      }

      while (v20);
    }
  }

  else if (v18)
  {
    v36 = 0;
    v37 = *(a1 + 56);
    v38 = *(a1 + 8);
    do
    {
      *(v19 + v37 * v36) = 0;
      if (v36 + 1 == v38)
      {
        v36 = 0;
      }

      else
      {
        ++v36;
      }

      --v18;
    }

    while (v18);
  }

  if (*v10.i32 > 0.0)
  {
    v74 = v10;
    v40 = *a2;
    v39 = a2[1];
    *&v81 = 0x2FFFFFFFFLL;
    sub_2622F8A18(&v78, a4, &v81);
    v71 = (*v74.i32 + 10.0);
    if (v71 >= 11)
    {
      v41 = vdup_lane_s32(v74, 0);
      v42 = vdiv_f32(vsub_f32(v39, v40), v41);
      v43 = v71 <= 16 ? 16 : (*v74.i32 + 10.0);
      v44 = v43 - 10;
      v45 = v44 == 6 ? 6 : 7;
      v46 = v44 == 6;
      v47 = (v44 - v45) / 6u;
      v48 = v46 ? v47 : v47 + 1;
      v49 = v48 & 0x7FFFFFFE;
      v41.i32[0] = v48;
      v50 = vld1q_dup_f64(v79);
      v51 = (v48 & 0x7FFFFFFE) + 2;
      v52 = 0uLL;
      do
      {
        v53 = v52;
        v52 = vaddq_s64(v50, v52);
        v51 -= 2;
      }

      while (v51);
      v54 = vcgt_u32(vorr_s8(vdup_n_s32(v49), 0x100000000), vdup_lane_s32(v41, 0));
      v55.i64[0] = v54.i32[0];
      v55.i64[1] = v54.i32[1];
      v56 = vaddvq_s64(vbslq_s8(v55, v53, v52));
      v57 = v56;
      if (v56)
      {
        sub_2622FD998(v77, v56);
        v70 = a3;
        sub_2622FD998(v76, v57);
        v58 = 0;
        v59 = 10;
        v60 = v79[0];
        while (1)
        {
          v61 = *a2;
          *&v81 = 0;
          if (v60)
          {
            v62 = 0;
            v63 = vmla_n_f32(v61, v42, v59);
            v64 = v58;
            do
            {
              LODWORD(v82) = 0;
              v65 = *sub_2622F9EC8(&v78, &v81, &v82);
              LODWORD(v82) = 1;
              v66 = sub_2622F9EC8(&v78, &v81, &v82);
              if (((v63.f32[1] + *v66) & ~((v63.f32[1] + *v66) >> 31)) >= v7)
              {
                v67 = v7 - 1;
              }

              else
              {
                v67 = (v63.f32[1] + *v66) & ~((v63.f32[1] + *v66) >> 31);
              }

              *&v82 = v64;
              v68 = sub_2622FA30C(v77, &v82);
              v69 = (v63.f32[0] + v65) & ~((v63.f32[0] + v65) >> 31);
              if (v69 >= v73)
              {
                v69 = v73 - 1;
              }

              *v68 = v69;
              *&v82 = v64;
              *sub_2622FA30C(v76, &v82) = v67;
              *&v81 = ++v62;
              v60 = v79[0];
              ++v64;
            }

            while (v62 < v79[0]);
          }

          v58 += v60;
          v59 += 6;
          if (v59 >= v71)
          {
            *&v82 = 0x200000001;
            sub_2622F93C4(&v81, v70, &v82, v77, v76);
            sub_2622FA6E4(v75, &v81);
          }
        }
      }
    }

    v78 = &unk_2874EEB10;
    if (v80)
    {
      sub_2621D1B78(v80);
    }
  }
}

void sub_2622FCCDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, std::__shared_weak_count *a55)
{
  std::locale::~locale(&STACK[0x4F0]);
  sub_2621C57C8(&STACK[0x520]);
  STACK[0x3B0] = &unk_2874EE788;
  if (STACK[0x430])
  {
    sub_2621D1B78(STACK[0x430]);
  }

  if (a36)
  {
    sub_2621D1B78(a36);
  }

  if (a55)
  {
    sub_2621D1B78(a55);
  }

  if (STACK[0x208])
  {
    sub_2621D1B78(STACK[0x208]);
  }

  STACK[0x220] = &unk_2874EE7E8;
  if (STACK[0x2A0])
  {
    sub_2621D1B78(STACK[0x2A0]);
  }

  STACK[0x2B8] = &unk_2874EEB10;
  if (STACK[0x338])
  {
    sub_2621D1B78(STACK[0x338]);
  }

  *a13 = &unk_2874EE808;
  v56 = a13[16];
  if (v56)
  {
    sub_2621D1B78(v56);
  }

  _Unwind_Resume(a1);
}

void sub_2622FCEC8(uint64_t a1, _OWORD *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2874EE910;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  *(a1 + 56) = 1;
  *(a1 + 104) = *(a1 + 8);
  *(a1 + 112) = 0;
  sub_2621D7174(v4, (a1 + 104));
}

void sub_2622FD8E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::locale a15)
{
  std::locale::~locale((v16 - 144));
  sub_2621C57C8(&a15);
  v18 = *(v15 + 128);
  if (v18)
  {
    sub_2621D1B78(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2622FD940(uint64_t a1)
{
  *(a1 + 216) = &unk_2874EEDA0;
  v2 = *(a1 + 344);
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  sub_2622FAAB8(a1 + 48);
  return a1;
}

uint64_t sub_2622FD998(uint64_t a1, uint64_t a2)
{
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v19 = a2;
  result = sub_262228A5C(a1, &v19);
  if (*(result + 137) == 1)
  {
    v4 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v5 = sub_2621D552C(v4, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    sub_2621D552C(v5, " ", 1);
    v6 = MEMORY[0x277D82670];
    v7 = MEMORY[0x266727260](MEMORY[0x277D82670], 664);
    sub_2621D552C(v7, " ", 1);
    sub_2621D552C(v7, "operator=", 9);
    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v8 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v8->__vftable[2].~facet_0)(v8, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D5EE8("err", "scalar assign should create a storage first");
    std::ios_base::getloc((v6 + *(*v6 - 24)));
    v9 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v9->__vftable[2].~facet_0)(v9, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    result = std::ostream::flush();
  }

  v10 = *(a1 + 104);
  v11 = *(a1 + 144);
  if (*(a1 + 136))
  {
    if (v10)
    {
      v12 = (v10 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v13 = vdupq_n_s64(v10 - 1);
      v14 = xmmword_2623A7620;
      v15 = (v11 + 8);
      v16 = vdupq_n_s64(2uLL);
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v13, v14));
        if (v17.i8[0])
        {
          *(v15 - 1) = 0;
        }

        if (v17.i8[4])
        {
          *v15 = 0;
        }

        v14 = vaddq_s64(v14, v16);
        v15 += 2;
        v12 -= 2;
      }

      while (v12);
    }
  }

  else if (v10)
  {
    v18 = 0;
    do
    {
      *(v11 + 8 * *(a1 + 56) * v18) = 0;
      if (v18 + 1 == *(a1 + 8))
      {
        v18 = 0;
      }

      else
      {
        ++v18;
      }

      --v10;
    }

    while (v10);
  }

  return result;
}

void sub_2622FDC04(_Unwind_Exception *a1)
{
  std::locale::~locale((v2 - 40));
  *v1 = &unk_2874EE7E8;
  v4 = v1[16];
  if (v4)
  {
    sub_2621D1B78(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2622FDC4C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v144 = *MEMORY[0x277D85DE8];
  v5 = (result + 8);
  v4 = *(result + 8);
  if (v4 == *a2)
  {
    v6 = *(result + 104);
    v7 = *(result + 144);
    if (*(a2 + 232))
    {
      if (*(result + 136))
      {
        if (v6)
        {
          v8 = *(a2 + 240);
          v9 = *(a2 + 296);
          do
          {
            v10 = *v8++;
            _H3 = v10;
            __asm { FCVT            S3, H3 }

            if (v9 >= _S3)
            {
              v17 = COERCE_SHORT_FLOAT(0);
            }

            else
            {
              LOWORD(v17) = COERCE_UNSIGNED_INT(1.0);
            }

            *v7++ = v17;
            --v6;
          }

          while (v6);
        }
      }

      else if (v6)
      {
        v74 = 0;
        v75 = *(result + 56);
        v76 = *(a2 + 240);
        v77 = *(a2 + 296);
        do
        {
          v78 = *v76++;
          _H3 = v78;
          __asm { FCVT            S3, H3 }

          if (v77 >= _S3)
          {
            v81 = COERCE_SHORT_FLOAT(0);
          }

          else
          {
            LOWORD(v81) = COERCE_UNSIGNED_INT(1.0);
          }

          v7[v75 * v74] = v81;
          if (v74 + 1 == v4)
          {
            v74 = 0;
          }

          else
          {
            ++v74;
          }

          --v6;
        }

        while (v6);
      }
    }

    else if (*(result + 136))
    {
      if (v6)
      {
        v42 = 0;
        v43 = *(a2 + 240);
        v44 = *(a2 + 296);
        do
        {
          _H3 = *(v43 + 2 * *(a2 + 152) * v42);
          __asm { FCVT            S3, H3 }

          if (v44 >= _S3)
          {
            v47 = COERCE_SHORT_FLOAT(0);
          }

          else
          {
            LOWORD(v47) = COERCE_UNSIGNED_INT(1.0);
          }

          *v7++ = v47;
          if (v42 + 1 == v4)
          {
            v42 = 0;
          }

          else
          {
            ++v42;
          }

          --v6;
        }

        while (v6);
      }
    }

    else if (v6)
    {
      v82 = 0;
      v83 = *(result + 56);
      v84 = *(a2 + 240);
      v85 = *(a2 + 296);
      do
      {
        _H3 = *(v84 + 2 * *(a2 + 152) * v82);
        __asm { FCVT            S3, H3 }

        if (v85 >= _S3)
        {
          v88 = COERCE_SHORT_FLOAT(0);
        }

        else
        {
          LOWORD(v88) = COERCE_UNSIGNED_INT(1.0);
        }

        v7[v83 * v82] = v88;
        if (v82 + 1 == v4)
        {
          v82 = 0;
        }

        else
        {
          ++v82;
        }

        --v6;
      }

      while (v6);
    }
  }

  else
  {
    if (*(a2 + 232))
    {
      v139 = 0uLL;
      v140 = 0uLL;
      v137 = 0uLL;
      v138 = 0uLL;
      v135 = 0uLL;
      v136 = 0uLL;
      v133 = 0uLL;
      v134 = 0uLL;
      v131 = 0uLL;
      v132 = 0uLL;
      v129 = 0uLL;
      v130 = 0uLL;
      v127 = 0uLL;
      v128 = 0uLL;
      v125 = 0uLL;
      v126 = 0uLL;
      v123 = 0uLL;
      v124 = 0uLL;
      sub_262205FA8(&v126, v5, a2, &v123);
      v18 = v123;
      if (v123 != *v5)
      {
        v19 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v20 = sub_2621D552C(v19, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v20, " ", 1);
        v21 = MEMORY[0x277D82670];
        v22 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v22, " ", 1);
        sub_2621D552C(v22, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v22 + *(*v22 - 24)));
        v23 = std::locale::use_facet(v141, MEMORY[0x277D82680]);
        (v23->__vftable[2].~facet_0)(v23, 10);
        std::locale::~locale(v141);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v21 + *(*v21 - 24)));
        v24 = std::locale::use_facet(v141, MEMORY[0x277D82680]);
        (v24->__vftable[2].~facet_0)(v24, 10);
        std::locale::~locale(v141);
        std::ostream::put();
        std::ostream::flush();
      }

      v142 = 0u;
      v143 = 0u;
      *&v141[0].__locale_ = 0u;
      v25 = *(v3 + 104);
      v26 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v25)
        {
          v27 = 0;
          v28 = 0;
          v30 = *(&v127 + 1);
          v29 = v128;
          v31 = (v128 - *(&v127 + 1)) >> 3;
          if (v31 <= 1)
          {
            v31 = 1;
          }

          v32 = v138;
          v33 = *(a2 + 240);
          v34 = *(a2 + 296);
          do
          {
            v141[0].__locale_ = v27;
            locale = v27;
            if (v29 != v30)
            {
              v36 = v30;
              v37 = v31;
              do
              {
                v38 = *v36++;
                v141[v38].__locale_ = 0;
                --v37;
              }

              while (v37);
              locale = v141[0].__locale_;
            }

            _H3 = *(v33 + 2 * locale * v32);
            __asm { FCVT            S3, H3 }

            if (v34 >= _S3)
            {
              v41 = COERCE_SHORT_FLOAT(0);
            }

            else
            {
              LOWORD(v41) = COERCE_UNSIGNED_INT(1.0);
            }

            *(v26 + 2 * v28) = v41;
            if ((v27 + 1) == v18)
            {
              v27 = 0;
            }

            else
            {
              v27 = (v27 + 1);
            }

            ++v28;
          }

          while (v28 != v25);
        }
      }

      else if (v25)
      {
        v89 = 0;
        v90 = 0;
        v92 = *(&v127 + 1);
        v91 = v128;
        v93 = (v128 - *(&v127 + 1)) >> 3;
        if (v93 <= 1)
        {
          v93 = 1;
        }

        v94 = v138;
        v95 = *(v3 + 56);
        v96 = *(a2 + 240);
        v97 = *(a2 + 296);
        do
        {
          v141[0].__locale_ = v89;
          v98 = v89;
          if (v91 != v92)
          {
            v99 = v92;
            v100 = v93;
            do
            {
              v101 = *v99++;
              v141[v101].__locale_ = 0;
              --v100;
            }

            while (v100);
            v98 = v141[0].__locale_;
          }

          _H3 = *(v96 + 2 * v98 * v94);
          __asm { FCVT            S3, H3 }

          if (v97 >= _S3)
          {
            v104 = COERCE_SHORT_FLOAT(0);
          }

          else
          {
            LOWORD(v104) = COERCE_UNSIGNED_INT(1.0);
          }

          *(v26 + 2 * v89 * v95) = v104;
          if ((v89 + 1) == v18)
          {
            v89 = 0;
          }

          else
          {
            v89 = (v89 + 1);
          }

          ++v90;
        }

        while (v90 != v25);
      }
    }

    else
    {
      v139 = 0uLL;
      v140 = 0uLL;
      v137 = 0uLL;
      v138 = 0uLL;
      v135 = 0uLL;
      v136 = 0uLL;
      v133 = 0uLL;
      v134 = 0uLL;
      v131 = 0uLL;
      v132 = 0uLL;
      v129 = 0uLL;
      v130 = 0uLL;
      v127 = 0uLL;
      v128 = 0uLL;
      v125 = 0uLL;
      v126 = 0uLL;
      v123 = 0uLL;
      v124 = 0uLL;
      sub_262205FA8(&v126, v5, a2, &v123);
      v48 = v123;
      if (v123 != *v5)
      {
        v49 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v50 = sub_2621D552C(v49, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v50, " ", 1);
        v51 = MEMORY[0x277D82670];
        v52 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v52, " ", 1);
        sub_2621D552C(v52, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v52 + *(*v52 - 24)));
        v53 = std::locale::use_facet(v141, MEMORY[0x277D82680]);
        (v53->__vftable[2].~facet_0)(v53, 10);
        std::locale::~locale(v141);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v51 + *(*v51 - 24)));
        v54 = std::locale::use_facet(v141, MEMORY[0x277D82680]);
        (v54->__vftable[2].~facet_0)(v54, 10);
        std::locale::~locale(v141);
        std::ostream::put();
        std::ostream::flush();
      }

      v142 = 0u;
      v143 = 0u;
      *&v141[0].__locale_ = 0u;
      v55 = *(v3 + 104);
      v56 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v55)
        {
          v57 = 0;
          v58 = 0;
          v60 = *(&v127 + 1);
          v59 = v128;
          v61 = (v128 - *(&v127 + 1)) >> 3;
          if (v61 <= 1)
          {
            v61 = 1;
          }

          v62 = v138;
          v63 = *(a2 + 232);
          v64 = *(a2 + 240);
          v65 = *(a2 + 296);
          do
          {
            v141[0].__locale_ = v57;
            v66 = v57;
            if (v59 != v60)
            {
              v67 = v60;
              v68 = v61;
              do
              {
                v69 = *v67++;
                v141[v69].__locale_ = 0;
                --v68;
              }

              while (v68);
              v66 = v141[0].__locale_;
            }

            v70 = *(a2 + 152);
            if (v63)
            {
              v70 = v62;
            }

            _H3 = *(v64 + 2 * v70 * v66);
            __asm { FCVT            S3, H3 }

            if (v65 >= _S3)
            {
              v73 = COERCE_SHORT_FLOAT(0);
            }

            else
            {
              LOWORD(v73) = COERCE_UNSIGNED_INT(1.0);
            }

            *(v56 + 2 * v58) = v73;
            if ((v57 + 1) == v48)
            {
              v57 = 0;
            }

            else
            {
              v57 = (v57 + 1);
            }

            ++v58;
          }

          while (v58 != v55);
        }
      }

      else if (v55)
      {
        v105 = 0;
        v106 = 0;
        v108 = *(&v127 + 1);
        v107 = v128;
        v109 = (v128 - *(&v127 + 1)) >> 3;
        if (v109 <= 1)
        {
          v109 = 1;
        }

        v110 = v138;
        v111 = *(v3 + 56);
        v112 = *(a2 + 232);
        v113 = *(a2 + 240);
        v114 = *(a2 + 296);
        do
        {
          v141[0].__locale_ = v105;
          v115 = v105;
          if (v107 != v108)
          {
            v116 = v108;
            v117 = v109;
            do
            {
              v118 = *v116++;
              v141[v118].__locale_ = 0;
              --v117;
            }

            while (v117);
            v115 = v141[0].__locale_;
          }

          v119 = *(a2 + 152);
          if (v112)
          {
            v119 = v110;
          }

          _H3 = *(v113 + 2 * v119 * v115);
          __asm { FCVT            S3, H3 }

          if (v114 >= _S3)
          {
            v122 = COERCE_SHORT_FLOAT(0);
          }

          else
          {
            LOWORD(v122) = COERCE_UNSIGNED_INT(1.0);
          }

          *(v56 + 2 * v105 * v111) = v122;
          if ((v105 + 1) == v48)
          {
            v105 = 0;
          }

          else
          {
            v105 = (v105 + 1);
          }

          ++v106;
        }

        while (v106 != v55);
      }
    }

    return sub_2621C57C8(&v126);
  }

  return result;
}

void sub_2622FE470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::locale::~locale((v13 - 128));
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

void sub_2622FE4A4(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v137 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 8);
  v6 = 1;
  do
  {
    v7 = *(v5 + v4);
    v8 = *(a2 + 8 * v4);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v6 = 0;
    v4 = 1;
  }

  while (v7 == v8);
  if (v7 == v8)
  {
    if (*(a2 + 352))
    {
      v123 = 0uLL;
      v124 = 0uLL;
      v122 = 0uLL;
      v9 = *(a1 + 104);
      v10 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v9)
        {
          v11 = 0;
          v12 = a1 + 16;
          do
          {
            v13 = sub_2622FEFA4(a2, &v122);
            v14 = 0;
            *(v10 + 2 * v11) = v13;
            do
            {
              v15 = *(&v122 + v14 + 8) + 1;
              *(&v122 + v14 + 8) = v15;
              if (v15 != *(v12 + v14))
              {
                break;
              }

              *(&v122 + v14 + 8) = 0;
              v14 -= 8;
            }

            while (v14 != -16);
            ++v11;
          }

          while (v11 != v9);
        }
      }

      else if (v9)
      {
        v67 = 0;
        v68 = *(a1 + 56);
        v69 = *(a1 + 64);
        v70 = a1 + 16;
        do
        {
          v71 = v68 * v122;
          v72 = v10 + 2 * v69 * *(&v122 + 1);
          v73 = sub_2622FEFA4(a2, &v122);
          v74 = 0;
          *(v72 + 2 * v71) = v73;
          do
          {
            v75 = *(&v122 + v74 + 8) + 1;
            *(&v122 + v74 + 8) = v75;
            if (v75 != *(v70 + v74))
            {
              break;
            }

            *(&v122 + v74 + 8) = 0;
            v74 -= 8;
          }

          while (v74 != -16);
          ++v67;
        }

        while (v67 != v9);
      }
    }

    else
    {
      v123 = 0uLL;
      v124 = 0uLL;
      v122 = 0uLL;
      v38 = *(a1 + 104);
      v39 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v38)
        {
          v40 = 0;
          v41 = a1 + 16;
          do
          {
            v42 = sub_2622FEE54(a2, &v122);
            v43 = 0;
            *(v39 + 2 * v40) = v42;
            do
            {
              v44 = *(&v122 + v43 + 8) + 1;
              *(&v122 + v43 + 8) = v44;
              if (v44 != *(v41 + v43))
              {
                break;
              }

              *(&v122 + v43 + 8) = 0;
              v43 -= 8;
            }

            while (v43 != -16);
            ++v40;
          }

          while (v40 != v38);
        }
      }

      else if (v38)
      {
        v76 = 0;
        v77 = *(a1 + 56);
        v78 = *(a1 + 64);
        v79 = a1 + 16;
        do
        {
          v80 = v77 * v122;
          v81 = v39 + 2 * v78 * *(&v122 + 1);
          v82 = sub_2622FEE54(a2, &v122);
          v83 = 0;
          *(v81 + 2 * v80) = v82;
          do
          {
            v84 = *(&v122 + v83 + 8) + 1;
            *(&v122 + v83 + 8) = v84;
            if (v84 != *(v79 + v83))
            {
              break;
            }

            *(&v122 + v83 + 8) = 0;
            v83 -= 8;
          }

          while (v83 != -16);
          ++v76;
        }

        while (v76 != v38);
      }
    }
  }

  else
  {
    if (*(a2 + 352))
    {
      v135 = 0uLL;
      v136 = 0uLL;
      v133 = 0uLL;
      v134 = 0uLL;
      v131 = 0uLL;
      v132 = 0uLL;
      v129 = 0uLL;
      v130 = 0uLL;
      v127 = 0uLL;
      v128 = 0uLL;
      v125 = 0uLL;
      v126 = 0uLL;
      v123 = 0uLL;
      v124 = 0uLL;
      v122 = 0uLL;
      v114 = 0uLL;
      v115 = 0uLL;
      v113 = 0uLL;
      sub_2621D96E4(&v122, v5, a2, &v113);
      v16 = 0;
      v17 = &v113;
      v18 = 1;
      do
      {
        v19 = *v17;
        v20 = *(v5 + v16);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v18 = 0;
        v17 = &v113 + 1;
        v16 = 1;
      }

      while (v19 == v20);
      if (v19 != v20)
      {
        v21 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v22 = sub_2621D552C(v21, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v22, " ", 1);
        v23 = MEMORY[0x277D82670];
        v24 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v24, " ", 1);
        sub_2621D552C(v24, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v24 + *(*v24 - 24)));
        v25 = std::locale::use_facet(v119, MEMORY[0x277D82680]);
        (v25->__vftable[2].~facet_0)(v25, 10);
        std::locale::~locale(v119);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v23 + *(*v23 - 24)));
        v26 = std::locale::use_facet(v119, MEMORY[0x277D82680]);
        (v26->__vftable[2].~facet_0)(v26, 10);
        std::locale::~locale(v119);
        std::ostream::put();
        std::ostream::flush();
      }

      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      *&v119[0].__locale_ = 0u;
      v116 = 0u;
      v117 = 0u;
      v27 = *(a1 + 104);
      v28 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v27)
        {
          v29 = 0;
          v31 = *(&v123 + 1);
          v30 = v124;
          if (((v124 - *(&v123 + 1)) >> 3) <= 1)
          {
            v32 = 1;
          }

          else
          {
            v32 = (v124 - *(&v123 + 1)) >> 3;
          }

          do
          {
            v116 = *&v119[0].__locale_;
            if (v30 != v31)
            {
              v33 = v31;
              v34 = v32;
              do
              {
                v35 = *v33++;
                *(&v116 + v35) = 0;
                --v34;
              }

              while (v34);
            }

            *(v28 + 2 * v29) = sub_2622FEFA4(a2, &v116);
            for (i = 1; i != -1; --i)
            {
              v37 = (v119[i].__locale_ + 1);
              v119[i].__locale_ = v37;
              if (v37 != *(&v113 + i * 8))
              {
                break;
              }

              v119[i].__locale_ = 0;
            }

            ++v29;
          }

          while (v29 != v27);
        }
      }

      else if (v27)
      {
        v85 = 0;
        v86 = *(&v123 + 1);
        v111 = v124;
        if (((v124 - *(&v123 + 1)) >> 3) <= 1)
        {
          v87 = 1;
        }

        else
        {
          v87 = (v124 - *(&v123 + 1)) >> 3;
        }

        v109 = *(a1 + 56);
        v105 = v87;
        v107 = *(a1 + 64);
        do
        {
          locale = v119[0].__locale_;
          v88 = v119[1].__locale_;
          v116 = *&v119[0].__locale_;
          if (v111 != v86)
          {
            v90 = v86;
            v91 = v105;
            do
            {
              v92 = *v90++;
              *(&v116 + v92) = 0;
              --v91;
            }

            while (v91);
          }

          *(v28 + 2 * v107 * v88 + 2 * v109 * locale) = sub_2622FEFA4(a2, &v116);
          for (j = 1; j != -1; --j)
          {
            v94 = (v119[j].__locale_ + 1);
            v119[j].__locale_ = v94;
            if (v94 != *(&v113 + j * 8))
            {
              break;
            }

            v119[j].__locale_ = 0;
          }

          ++v85;
        }

        while (v85 != v27);
      }
    }

    else
    {
      v135 = 0uLL;
      v136 = 0uLL;
      v133 = 0uLL;
      v134 = 0uLL;
      v131 = 0uLL;
      v132 = 0uLL;
      v129 = 0uLL;
      v130 = 0uLL;
      v127 = 0uLL;
      v128 = 0uLL;
      v125 = 0uLL;
      v126 = 0uLL;
      v123 = 0uLL;
      v124 = 0uLL;
      v122 = 0uLL;
      v114 = 0uLL;
      v115 = 0uLL;
      v113 = 0uLL;
      sub_2621D96E4(&v122, v5, a2, &v113);
      v45 = 0;
      v46 = &v113;
      v47 = 1;
      do
      {
        v48 = *v46;
        v49 = *(v5 + v45);
        if ((v47 & 1) == 0)
        {
          break;
        }

        v47 = 0;
        v46 = &v113 + 1;
        v45 = 1;
      }

      while (v48 == v49);
      if (v48 != v49)
      {
        v50 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v51 = sub_2621D552C(v50, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v51, " ", 1);
        v52 = MEMORY[0x277D82670];
        v53 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v53, " ", 1);
        sub_2621D552C(v53, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v53 + *(*v53 - 24)));
        v54 = std::locale::use_facet(v119, MEMORY[0x277D82680]);
        (v54->__vftable[2].~facet_0)(v54, 10);
        std::locale::~locale(v119);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v52 + *(*v52 - 24)));
        v55 = std::locale::use_facet(v119, MEMORY[0x277D82680]);
        (v55->__vftable[2].~facet_0)(v55, 10);
        std::locale::~locale(v119);
        std::ostream::put();
        std::ostream::flush();
      }

      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      *&v119[0].__locale_ = 0u;
      v116 = 0u;
      v117 = 0u;
      v56 = *(a1 + 104);
      v57 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v56)
        {
          v58 = 0;
          v60 = *(&v123 + 1);
          v59 = v124;
          if (((v124 - *(&v123 + 1)) >> 3) <= 1)
          {
            v61 = 1;
          }

          else
          {
            v61 = (v124 - *(&v123 + 1)) >> 3;
          }

          do
          {
            v116 = *&v119[0].__locale_;
            if (v59 != v60)
            {
              v62 = v60;
              v63 = v61;
              do
              {
                v64 = *v62++;
                *(&v116 + v64) = 0;
                --v63;
              }

              while (v63);
            }

            *(v57 + 2 * v58) = sub_2622FEE54(a2, &v116);
            for (k = 1; k != -1; --k)
            {
              v66 = (v119[k].__locale_ + 1);
              v119[k].__locale_ = v66;
              if (v66 != *(&v113 + k * 8))
              {
                break;
              }

              v119[k].__locale_ = 0;
            }

            ++v58;
          }

          while (v58 != v56);
        }
      }

      else if (v56)
      {
        v95 = 0;
        v96 = *(&v123 + 1);
        v112 = v124;
        if (((v124 - *(&v123 + 1)) >> 3) <= 1)
        {
          v97 = 1;
        }

        else
        {
          v97 = (v124 - *(&v123 + 1)) >> 3;
        }

        v110 = *(a1 + 56);
        v106 = v97;
        v108 = *(a1 + 64);
        do
        {
          v99 = v119[0].__locale_;
          v98 = v119[1].__locale_;
          v116 = *&v119[0].__locale_;
          if (v112 != v96)
          {
            v100 = v96;
            v101 = v106;
            do
            {
              v102 = *v100++;
              *(&v116 + v102) = 0;
              --v101;
            }

            while (v101);
          }

          *(v57 + 2 * v108 * v98 + 2 * v110 * v99) = sub_2622FEE54(a2, &v116);
          for (m = 1; m != -1; --m)
          {
            v104 = (v119[m].__locale_ + 1);
            v119[m].__locale_ = v104;
            if (v104 != *(&v113 + m * 8))
            {
              break;
            }

            v119[m].__locale_ = 0;
          }

          ++v95;
        }

        while (v95 != v56);
      }
    }

    sub_2621C57C8(&v122);
  }
}

void sub_2622FEE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::locale a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  std::locale::~locale(&a25);
  sub_2621C57C8(va);
  _Unwind_Resume(a1);
}

__int16 sub_2622FEE54@<H0>(uint64_t a1@<X0>, uint64_t a2@<X1>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  sub_2622FEF20((a1 + 48), a2, v7);
  v3 = 0;
  v4 = 0;
  do
  {
    v4 += *(a1 + 168 + v3) * *(v7 + v3);
    v3 += 8;
  }

  while (v3 != 24);
  if ((*(a1 + 352) & 1) == 0)
  {
    v5 = 0;
    v4 = 0;
    do
    {
      v4 += *(a1 + 272 + v5) * *(v7 + v5);
      v5 += 8;
    }

    while (v5 != 24);
  }

  return *(*(a1 + 360) + 2 * v4);
}

uint64_t *sub_2622FEF20(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = *result;
  v5 = result[3];
  v6 = 1;
  do
  {
    v7 = v6;
    *(a3 + 8 * result[v3 + 6]) = *(*(v4 + 152 * v3 + 144) + 8 * *(v5 + 8 * v3) * *(a2 + 8 * result[11]));
    v3 = 1;
    v6 = 0;
  }

  while ((v7 & 1) != 0);
  v8 = result[8];
  v9 = result[9] - v8;
  if (v9)
  {
    v10 = v9 >> 3;
    v11 = result[12];
    if (v10 <= 1)
    {
      v10 = 1;
    }

    do
    {
      v12 = *v11++;
      v13 = *(a2 + 8 * v12);
      v14 = *v8++;
      *(a3 + 8 * v14) = v13;
      --v10;
    }

    while (v10);
  }

  return result;
}

__int16 sub_2622FEFA4@<H0>(uint64_t a1@<X0>, uint64_t a2@<X1>)
{
  v7 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  sub_2622FEF20((a1 + 48), a2, v6);
  v3 = 0;
  v4 = 0;
  do
  {
    v4 += *(a1 + 168 + v3) * *(v6 + v3);
    v3 += 8;
  }

  while (v3 != 24);
  return *(*(a1 + 360) + 2 * v4);
}

uint64_t sub_2622FF040(const char *a1, const char *a2)
{
  v4 = strlen(a1);
  v5 = MEMORY[0x277D82670];
  v6 = sub_2621D552C(MEMORY[0x277D82670], a1, v4);
  sub_2621D552C(v6, " ", 1);
  v7 = strlen(a2);
  sub_2621D552C(v5, a2, v7);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v8 = std::locale::use_facet(&v10, MEMORY[0x277D82680]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v10);
  std::ostream::put();
  return std::ostream::flush();
}

void sub_2622FF14C(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      operator new();
    }

    sub_2621CBEB0();
  }
}

void sub_2622FF1E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2622FF200(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (!(a3 >> 61))
    {
      sub_2621CC71C(a1, a3);
    }

    sub_2621CBEB0();
  }

  return a1;
}

void sub_2622FF278(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_2622FF294(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_2622FF2B8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_2622FF2D0(uint64_t a1, double a2, double a3)
{
  v4 = *(*(a1 + 32) + 8);
  v43 = 0;
  v44 = 0;
  v42 = 0;
  sub_2621CC8B4(&v42, *(v4 + 48), *(v4 + 56), (*(v4 + 56) - *(v4 + 48)) >> 3);
  v40 = 0uLL;
  v41 = 0;
  v5 = v42;
  v6 = v43 - v42;
  if (v43 != v42)
  {
    v7 = 0;
    v8 = v6 >> 3;
    if ((v6 >> 3) <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v6 >> 3;
    }

    v10 = *(&a3 + 1) - *(&a2 + 1);
    v11 = vsub_f32(*&a2, *&a3);
    v12 = vmuls_lane_f32(-*&a2, *&a3, 1) + (*&a3 * *(&a2 + 1));
    v13 = vmul_f32(v11, v11).f32[0] + (v10 * v10);
    v37 = v11.f32[0];
    LODWORD(v38) = vsub_f32(*&a3, *&a2).u32[0];
    v14 = 1;
    do
    {
      v15 = *&v5[8 * v7];
      v16 = *&v5[8 * v14];
      v46 = v16;
      v17 = vmuls_lane_f32(v37, v15, 1);
      v18 = ((v38 * (*&v15.i32[1] - *(&a2 + 1))) - (vsub_f32(v15, *&a2).f32[0] * v10)) < 0.0;
      if ((((v12 + (v17 + (v10 * *v15.i32))) * (v12 + (v17 + (v10 * *v15.i32)))) / v13) < 0.00000001)
      {
        v18 = 1;
      }

      v19 = vmuls_lane_f32(v37, v16, 1);
      if ((((v12 + (v19 + (v10 * *v16.i32))) * (v12 + (v19 + (v10 * *v16.i32)))) / v13) >= 0.00000001 && ((v38 * (*&v16.i32[1] - *(&a2 + 1))) - (vsub_f32(v16, *&a2).f32[0] * v10)) >= 0.0)
      {
        if (v18)
        {
          v27 = vsub_f32(__PAIR64__(HIDWORD(a3), v15.u32[0]), __PAIR64__(HIDWORD(a2), v16.u32[0]));
          v29 = __PAIR64__(v16.u32[1], LODWORD(a2));
          v28 = vsub_f32(__PAIR64__(v16.u32[1], LODWORD(a2)), __PAIR64__(v15.u32[1], LODWORD(a3)));
          *v29.i32 = (-v27.f32[1] * v27.f32[0]) + (v28.f32[1] * v28.f32[0]);
          v30 = -*v29.i32;
          if (*v29.i32 >= 0.0)
          {
            v30 = (-v27.f32[1] * v27.f32[0]) + (v28.f32[1] * v28.f32[0]);
          }

          v31 = v30;
          v32 = 0;
          if (v31 >= 0.00000001)
          {
            v33 = vmla_f32(vmul_f32(vzip2_s32(*&a3, v16), vneg_f32(vzip1_s32(*&a2, v15))), vzip2_s32(*&a2, v15), vzip1_s32(*&a3, v16));
            v32 = vdiv_f32(vmla_f32(vmul_f32(vrev64_s32(v33), vneg_f32(v28)), v33, v27), vdup_lane_s32(v29, 0));
          }

          v45 = v32;
          sub_2621CBA84(&v40, &v45);
        }
      }

      else
      {
        if (!v18)
        {
          v20 = vsub_f32(__PAIR64__(HIDWORD(a3), v15.u32[0]), __PAIR64__(HIDWORD(a2), v16.u32[0]));
          v22 = __PAIR64__(v16.u32[1], LODWORD(a2));
          v21 = vsub_f32(__PAIR64__(v16.u32[1], LODWORD(a2)), __PAIR64__(v15.u32[1], LODWORD(a3)));
          *v22.i32 = (-v20.f32[1] * v20.f32[0]) + (v21.f32[1] * v21.f32[0]);
          v23 = -*v22.i32;
          if (*v22.i32 >= 0.0)
          {
            v23 = (-v20.f32[1] * v20.f32[0]) + (v21.f32[1] * v21.f32[0]);
          }

          v24 = v23;
          v25 = 0;
          if (v24 >= 0.00000001)
          {
            v26 = vmla_f32(vmul_f32(vzip2_s32(*&a3, v16), vneg_f32(vzip1_s32(*&a2, v15))), vzip2_s32(*&a2, v15), vzip1_s32(*&a3, v16));
            v25 = vdiv_f32(vmla_f32(vmul_f32(vrev64_s32(v26), vneg_f32(v21)), v26, v20), vdup_lane_s32(v22, 0));
          }

          v45 = v25;
          sub_2621CBA84(&v40, &v45);
        }

        sub_2621CBA84(&v40, &v46);
      }

      ++v7;
      v14 = (v14 + 1) % v8;
    }

    while (v9 != v7);
  }

  v34 = *(*(a1 + 32) + 8);
  v35 = v34[6];
  if (v35)
  {
    v34[7] = v35;
    operator delete(v35);
    v34[6] = 0;
    v34[7] = 0;
    v34[8] = 0;
  }

  *(v34 + 3) = v40;
  v34[8] = v41;
  if (v5)
  {

    operator delete(v5);
  }
}

void sub_2622FF644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete(v17);
  _Unwind_Resume(a1);
}

BOOL sub_2622FF66C(float32x2_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4, float a5, float a6)
{
  sub_2621DC2A8();
  v14 = vsub_f32(v12, v13);
  v15 = vsub_f32(a1, a2);
  v16 = 0.000001;
  v17 = sqrtf(vaddv_f32(vmul_f32(v14, v14))) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v15, v15))), 0.000001);
  v18 = vsub_f32(a4, a3);
  v19 = vaddv_f32(vmul_f32(vsub_f32(a1, a3), v18));
  v20 = vaddv_f32(vmul_f32(v18, v18));
  if (v20 >= 0.000001)
  {
    v16 = v20;
  }

  v21 = vsub_f32(vmla_n_f32(a3, v18, v19 / v16), a1);
  v22 = sqrtf(vaddv_f32(vmul_f32(v21, v21)));
  v23 = vsub_f32(vmla_n_f32(a3, v18, vaddv_f32(vmul_f32(vsub_f32(a2, a3), v18)) / v16), a2);
  v24 = sqrtf(vaddv_f32(vmul_f32(v23, v23)));
  if (v22 < v24)
  {
    v22 = v24;
  }

  return v22 < a5 && v17 > a6;
}

void sub_2622FF758(void *a1, uint64_t a2, void *a3, float a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  sub_2622034F0(&v7, a2);
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  LODWORD(v14) = 1101004800;
  v15 = 0u;
  v16 = 0u;
  v19 = v9;
  v20 = v10;
  v17 = 0u;
  v18 = v8;
  sub_2622034F0(v21, &v7);
  v23 = v12;
  v24 = v13;
  v22 = v11;
  v25 = v14;
  v15 = v18;
  v16 = v19;
  v17 = v20;
  v32 = 0u;
  v33 = 0u;
  v27 = v18;
  v29 = v20;
  v28 = v19;
  v26 = &unk_2874EEC38;
  v30 = *(&v18 + 1);
  v31 = 1;
  v34[0] = v18 * *(&v18 + 1);
  memset(&v34[1], 0, 24);
  sub_26225F984(v35, v34);
}

void sub_262300814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37)
{
  std::locale::~locale(&STACK[0x360]);
  sub_2621C57C8(&STACK[0x390]);
  if (STACK[0x2E8])
  {
    sub_2621D1B78(STACK[0x2E8]);
  }

  if (STACK[0x210])
  {
    sub_2621D1B78(STACK[0x210]);
  }

  if (a37)
  {
    sub_2621D1B78(a37);
  }

  v39 = *a10;
  if (*a10)
  {
    *(a10 + 8) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

void sub_262300914(uint64_t a1, uint64_t a2)
{
  sub_2622034F0(v3, a2);
  sub_2622034F0(a1, v3);
  v3[0] = &unk_2874EE7C8;
  if (v4)
  {
    sub_2621D1B78(v4);
  }
}

void sub_26230097C(uint64_t a1, float32x2_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v12 = a5;
  v14 = a3;
  v18 = *a2;
  v17 = a2[1];
  v19 = vsub_f32(*a2, v17);
  *&a12 = sqrtf(vaddv_f32(vmul_f32(v19, v19)));
  v20 = (*&a12 + 1.0);
  v21 = *(a1 + 132);
  if (v21 < 1 || v21 >= v20)
  {
    if (v20)
    {
      if ((v20 & 0x80000000) == 0)
      {
        sub_2621C7F54(v20);
      }

      sub_2621CBEB0();
    }

    v22 = 0;
    v36 = 0;
  }

  else
  {
    v60 = a12;
    if (v21 == 1)
    {
      operator new();
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = v20 / (v21 - 1);
    v26 = 0;
    do
    {
      v27 = (v24 * v25 + 0.0);
      *(&v61 + 1) = v26;
      if (v23 >= v26)
      {
        v28 = v23 - v22;
        v29 = v23 - v22;
        v30 = v29 + 1;
        if ((v29 + 1) >> 62)
        {
          sub_2621CBEB0();
        }

        v31 = v26 - v22;
        if ((v26 - v22) >> 1 > v30)
        {
          v30 = v31 >> 1;
        }

        if (v31 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v32 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v30;
        }

        if (v32)
        {
          sub_2621C7F54(v32);
        }

        v33 = v23 - v22;
        v34 = (4 * v29);
        v35 = (4 * v29 - 4 * v33);
        *v34 = v27;
        v23 = v34 + 1;
        memcpy(v35, v22, v28);
        v61 = v23;
        if (v22)
        {
          operator delete(v22);
        }

        v22 = v35;
      }

      else
      {
        *v23++ = v27;
      }

      v26 = *(&v61 + 1);
      ++v24;
    }

    while (v21 != v24);
    v36 = v23;
    v14 = a3;
    v12 = a5;
    a12 = v60;
  }

  if (v22 != v36)
  {
    v37 = vdup_lane_s32(*&a12, 0);
    v38 = vdiv_f32(vsub_f32(v17, v18), v37);
    v39 = vext_s8(v18, v17, 4uLL);
    v40 = vsub_f32(vext_s8(v17, v18, 4uLL), v39);
    *v39.i32 = v14;
    v41 = vdiv_f32(v40, v37);
    v42 = vneg_f32(vdup_lane_s32(v39, 0));
    v43 = (2 * v14) | 1;
    v44 = v22;
    do
    {
      v45 = 0;
      v46 = vmla_f32(vmla_n_f32(*a2, v38, *v44), v41, v42);
      v47 = 0.0;
      v48 = 0.0;
      do
      {
        v49 = vmla_n_f32(v46, v41, v45);
        v50 = vcgez_f32(v49);
        v51 = vbsl_s8(v50, v49, vneg_f32(v49));
        v52 = vcvt_s32_f32(v51);
        v53 = vmvn_s8(vcge_f32(0x3F0000003F000000, vsub_f32(v51, vcvt_f32_s32(v52))));
        LODWORD(v54) = v52.i32[1] - v53.i32[1];
        if (v50.i8[0])
        {
          v55 = (v52.i32[0] - v53.i32[0]);
        }

        else
        {
          v55 = (v53.i32[0] - v52.i32[0]);
        }

        if (v50.i8[4])
        {
          v54 = v54;
        }

        else
        {
          v54 = (v53.i32[1] - v52.i32[1]);
        }

        v56 = 0.0;
        if ((v55 & 0x80000000) == 0)
        {
          v57 = *(a1 + 120);
          if (v57 > v55 && (v54 & 0x80000000) == 0 && v57 > v54)
          {
            v56 = *(a4 + 4 * v57 * v55 + 4 * v54);
          }
        }

        if (v56 > v48)
        {
          v47 = v56;
          v48 = v56;
        }

        ++v45;
      }

      while (v43 != v45);
      v62 = v47;
      sub_2621C8F2C(v12, &v62);
      ++v44;
    }

    while (v44 != v36);
  }

  if (v22)
  {

    operator delete(v22);
  }
}

void sub_262300DAC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262300DCC(void *a1, float a2)
{
  v2 = a1 + 1;
  v3 = *a1;
  result = 1;
  if (v3 != v2)
  {
    while (1)
    {
      v5 = v3[4];
      if (*v5 < a2 && v5[1] >= a2)
      {
        break;
      }

      v6 = v3[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
      if (v7 == v2)
      {
        return result;
      }
    }

    return v3[7];
  }

  return result;
}

void sub_262300E40(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 56))
  {
    v8 = 0;
    do
    {
      v9 = (*(a1 + 8) + 16 * v8);
      v10 = *(a1 + 144);
      v28 = vsub_f32(*v9, v9[1]);
      v11 = sub_262300DCC(a2, *(a1 + 128) * sqrtf(vaddv_f32(vmul_f32(v28, v28))));
      v17 = *&v28;
      v18 = fabsf(v28.f32[0]);
      if (v18 >= 0.001 || (v17 = fabsf(v28.f32[1]), v18 = 0.0, v17 >= 0.001))
      {
        __dst = 0;
        v30 = 0;
        v31 = 0;
        sub_26230097C(a1, v9, v11, a3, &__dst, v18, v17, v12, v13, v14, v15, v16);
        v19 = vsub_f32(*v9, v9[1]);
        v20 = __dst;
        if (2 * v10 + 2 >= (sqrtf(vaddv_f32(vmul_f32(v19, v19))) + 1.0))
        {
          v24 = v30;
        }

        else
        {
          v21 = 4 * v10;
          if (4 * v10 == -4)
          {
            v24 = v30;
          }

          else
          {
            v22 = __dst + 4 * v10 + 4;
            v23 = v30 - v22;
            if (v30 != v22)
            {
              memmove(__dst, v22, v30 - v22);
            }

            v24 = v20 + v23;
          }

          if (v24 - v21 - 4 != v24)
          {
            v24 = v24 - v21 - 4;
          }
        }

        v25 = 0.0;
        if (v20 != v24)
        {
          v26 = v20;
          do
          {
            v27 = *v26++;
            v25 = v25 + v27;
          }

          while (v26 != v24);
        }

        if (v20)
        {
          operator delete(v20);
        }

        *&v18 = v25 / ((v24 - v20) >> 2);
      }

      LODWORD(__dst) = LODWORD(v18);
      sub_2621C8F2C(a4, &__dst);
      ++v8;
    }

    while (*(a1 + 56) > v8);
  }
}

void sub_26230103C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_262301054(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t *a5, int *a6, uint64_t a7, uint64_t a8, unint64_t *a9)
{
  v284 = *MEMORY[0x277D85DE8];
  *(a1 + 16) = *(a1 + 8);
  v256 = (a1 + 32);
  *(a1 + 40) = *(a1 + 32);
  v257 = (a1 + 88);
  *(a1 + 96) = *(a1 + 88);
  *(a1 + 72) = *(a1 + 64);
  v255 = (a1 + 8);
  sub_26230259C(a2, a3, a4, a1 + 8);
  if (a7)
  {
    v13 = a7;
    do
    {
      v14 = *a5;
      v16 = *(a1 + 72);
      v15 = *(a1 + 80);
      if (v16 >= v15)
      {
        v18 = *(a1 + 64);
        v19 = (v16 - v18) >> 3;
        if ((v19 + 1) >> 61)
        {
          sub_2621CBEB0();
        }

        v20 = v15 - v18;
        v21 = v20 >> 2;
        if (v20 >> 2 <= (v19 + 1))
        {
          v21 = v19 + 1;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF8)
        {
          v22 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v21;
        }

        if (v22)
        {
          sub_2621CBEC8(v22);
        }

        *(8 * v19) = v14;
        v17 = 8 * v19 + 8;
        v23 = *(a1 + 64);
        v24 = *(a1 + 72) - v23;
        v25 = (8 * v19 - v24);
        memcpy(v25, v23, v24);
        v26 = *(a1 + 64);
        *(a1 + 64) = v25;
        *(a1 + 72) = v17;
        *(a1 + 80) = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *v16 = v14;
        v17 = (v16 + 1);
      }

      *(a1 + 72) = v17;
      sub_2621C8F2C(v257, a6++);
      ++a5;
      --v13;
    }

    while (v13);
  }

  *(a1 + 112) = a7;
  *a1 = a8;
  if (!*(a1 + 56))
  {
    a9[1] = *a9;
    return;
  }

  v264 = 0;
  v265 = 0;
  v266 = 0;
  memset(v263, 0, sizeof(v263));
  v260 = 0;
  v261 = 0;
  v262 = 0;
  sub_262300E40(a1, (a1 + 160), a8, &v264);
  if (*(a1 + 56))
  {
    v27 = 0;
    v28 = *a1;
    while (1)
    {
      v29 = (*(a1 + 8) + 16 * v27);
      v30 = *(a1 + 272);
      v31 = vsub_f32(*v29, v29[1]);
      v32 = *(a1 + 128) * sqrtf(vaddv_f32(vmul_f32(v31, v31)));
      v33 = sub_262300DCC((a1 + 280), v32);
      v277 = 0uLL;
      v278 = 0;
      sub_26230097C(a1, v29, v33, v28, &v277, v34, v35, v36, v37, v38, v39, v40);
      v41 = *(&v277 + 1) - v277;
      if (*(&v277 + 1) != v277)
      {
        break;
      }

      v48 = *(a1 + 304);
      v47 = 0.0;
      if (*(&v277 + 1))
      {
        goto LABEL_29;
      }

LABEL_30:
      if ((v32 * (1.0 - v47)) >= v48)
      {
        v49 = 0.0;
      }

      else
      {
        v49 = 1.0;
      }

      *&v277 = v49;
      sub_2621C8F2C(v263, &v277);
      if (*(a1 + 56) <= ++v27)
      {
        goto LABEL_34;
      }
    }

    v42 = v41 >> 2;
    if ((v41 >> 2) <= 1)
    {
      v43 = 1;
    }

    else
    {
      v43 = v41 >> 2;
    }

    v44 = 0.0;
    v45 = v277;
    do
    {
      v46 = *v45++;
      if (v46 >= v30)
      {
        v44 = v44 + 1.0;
      }

      --v43;
    }

    while (v43);
    v47 = v44 / v42;
    v48 = *(a1 + 304);
LABEL_29:
    operator delete(v277);
    goto LABEL_30;
  }

LABEL_34:
  v277 = 0uLL;
  v278 = 0;
  v50 = *(a1 + 8);
  v51 = *(a1 + 16);
  if (v50 != v51)
  {
    v52 = -1.0;
    v53 = *(a1 + 8);
    do
    {
      v54 = *v53;
      v55 = v53[1];
      v53 += 2;
      v56 = vsub_f32(v54, v55);
      v57 = sqrtf(vaddv_f32(vmul_f32(v56, v56)));
      if (v52 < v57)
      {
        v52 = v57;
      }
    }

    while (v53 != v51);
    if (v52 >= 0.001)
    {
      v58 = v52;
    }

    else
    {
      v58 = 0.001;
    }

    do
    {
      v59 = vsub_f32(*v50, v50[1]);
      *&v281 = sqrtf(vaddv_f32(vmul_f32(v59, v59))) / v58;
      sub_2621C8F2C(&v277, &v281);
      v50 += 2;
    }

    while (v50 != v51);
    v60 = v277;
    v61 = *(a1 + 32);
    if (*(a1 + 40) == v61)
    {
      if (!v277)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }

LABEL_49:
    v62 = *(a1 + 152);
    v63 = *(a1 + 140);
    v64 = 0;
    v65 = v264;
    do
    {
      *&v281 = ((*(v61 + 4 * v64) + (v62 * v65[v64])) + (v63 * v60[v64])) / ((v62 + 1.0) + v63);
      sub_2621C8F2C(&v260, &v281);
      ++v64;
      v61 = *(a1 + 32);
    }

    while (v64 < (*(a1 + 40) - v61) >> 2);
LABEL_51:
    operator delete(v60);
    goto LABEL_52;
  }

  v61 = *(a1 + 32);
  if (*(a1 + 40) != v61)
  {
    v60 = 0;
    goto LABEL_49;
  }

LABEL_52:
  v66 = *(a1 + 56);
  v274 = 0;
  v275 = 0;
  v276 = 0;
  memset(v273, 0, sizeof(v273));
  v270 = 0;
  v271 = 0;
  v272 = 0;
  memset(v269, 0, sizeof(v269));
  memset(__p, 0, sizeof(__p));
  if (v66)
  {
    v67 = 0;
    v258 = vdup_n_s32(0x358637BDu);
    do
    {
      for (i = 0; i != v66; ++i)
      {
        if (i == v67)
        {
          LOBYTE(v277) = 0;
          sub_2621DC7FC(&v274, &v277);
        }

        else
        {
          v69 = *(a1 + 8);
          v70 = (v69 + 16 * i);
          v71 = (v69 + 16 * v67);
          v72 = *(a1 + 184);
          v73 = *(a1 + 188);
          v74 = *(a1 + 136);
          v75 = *(a1 + 192);
          v76 = sub_2621C92AC(v70, v71, 0);
          v277 = 0uLL;
          v278 = 0;
          LODWORD(v281) = sub_2621DC76C(*v70, *v71, v71[1], 0.00001);
          sub_2621C8F2C(&v277, &v281);
          LODWORD(v281) = sub_2621DC76C(v70[1], *v71, v71[1], 0.00001);
          sub_2621C8F2C(&v277, &v281);
          LODWORD(v281) = sub_2621DC76C(*v71, *v70, v70[1], 0.00001);
          sub_2621C8F2C(&v277, &v281);
          LODWORD(v281) = sub_2621DC76C(v71[1], *v70, v70[1], 0.00001);
          sub_2621C8F2C(&v277, &v281);
          v77 = v277;
          v78 = v277;
          if (v277 != *(&v277 + 1))
          {
            v79 = (v277 + 4);
            v78 = v277;
            if (v277 + 4 != *(&v277 + 1))
            {
              v80 = *v277;
              v78 = v277;
              v81 = (v277 + 4);
              do
              {
                v82 = *v81++;
                v83 = v82;
                if (v82 < v80)
                {
                  v80 = v83;
                  v78 = v79;
                }

                v79 = v81;
              }

              while (v81 != *(&v277 + 1));
            }
          }

          v84 = *v78;
          v85 = *v78 < v73;
          v86 = vsub_f32(*v70, v70[1]);
          v87 = vmul_f32(v86, v86);
          v88 = vsub_f32(*v71, v71[1]);
          v89 = vmul_f32(v88, v88);
          v90 = vsqrt_f32(vadd_f32(vzip1_s32(v89, v87), vzip2_s32(v89, v87)));
          v91 = vmul_n_f32(v90, *(a1 + 128));
          if (v91.f32[0] >= v91.f32[1])
          {
            v91.f32[0] = v91.f32[1];
          }

          v93 = v76 < v75 && v91.f32[0] < v74;
          sub_2621DC2A8();
          v96 = vsub_f32(v94, v95);
          v97 = vmul_f32(v96, v96);
          sub_2621DC2A8();
          v100 = vsub_f32(v98, v99);
          v101 = vmul_f32(v100, v100);
          v279 = vdiv_f32(vsqrt_f32(vadd_f32(vzip1_s32(v97, v101), vzip2_s32(v97, v101))), vmaxnm_f32(v90, v258));
          v282 = 0;
          v283 = 0;
          v281 = 0;
          sub_2621DC430(&v281, &v279, v280, 2uLL);
          v102 = v281;
          if (v281 != v282)
          {
            v103 = v281 + 1;
            v102 = v281;
            if (v281 + 1 != v282)
            {
              v104 = *v281;
              v102 = v281;
              v105 = v281 + 1;
              do
              {
                v106 = *v105++;
                v107 = v106;
                if (v106 < v104)
                {
                  v104 = v107;
                  v102 = v103;
                }

                v103 = v105;
              }

              while (v105 != v282);
            }
          }

          v108 = (v93 || v76 < v72) && v85;
          if (*v102 >= *(a1 + 196) && v84 < v73)
          {
            v110 = 180.0 - v76;
            if ((180.0 - v76) >= v76)
            {
              v110 = v76;
            }

            if (v110 < v72)
            {
              v108 = 1;
            }
          }

          if (v281)
          {
            operator delete(v281);
          }

          if (v77)
          {
            operator delete(v77);
          }

          v267 = v108;
          sub_2621DC7FC(&v274, &v267);
        }
      }

      ++v67;
    }

    while (v67 != v66);
  }

  v111 = *(a1 + 16);
  if (v111 == *(a1 + 8))
  {
    v112 = 0;
    v113 = 0;
    v139 = *(a1 + 16);
    v140 = v255;
  }

  else
  {
    v112 = 0;
    v113 = 0;
    v114 = 0;
    v111 = *(a1 + 8);
    do
    {
      v115 = *(v260 + v114);
      v116 = *(v263[0] + v114);
      v117 = (v111 + 16 * v114);
      v118 = *v117;
      v119 = v117[1];
      v120 = *(a1 + 64);
      v121 = *(a1 + 72) - v120;
      if (v121)
      {
        v122 = 0;
        v123 = v121 >> 3;
        if (v123 <= 1)
        {
          v123 = 1;
        }

        while (1)
        {
          v124 = vceq_f32(v118, *(v120 + 8 * v122));
          if (v124.i32[0] & v124.i32[1])
          {
            break;
          }

          if (v123 == ++v122)
          {
            LODWORD(v122) = -1;
            break;
          }
        }

        v125 = 0;
        LODWORD(v281) = v122;
        while (1)
        {
          v126 = vceq_f32(v117[1], *(v120 + 8 * v125));
          if (v126.i32[0] & v126.i32[1])
          {
            break;
          }

          if (v123 == ++v125)
          {
            LODWORD(v125) = -1;
            break;
          }
        }
      }

      else
      {
        LODWORD(v125) = -1;
        LODWORD(v281) = -1;
      }

      HIDWORD(v281) = v125;
      v278 = 0;
      v277 = 0uLL;
      sub_2621DD5D0(&v277, &v281, &v282, 2uLL);
      v127 = v277;
      v128 = *(*v257 + 4 * *v277);
      v129 = vsub_f32(v118, v119);
      v130 = sqrtf(vaddv_f32(vmul_f32(v129, v129)));
      if (v128 < 0.1)
      {
        v131 = 1;
      }

      else
      {
        v131 = 2;
      }

      if (*(*v257 + 4 * *(v277 + 4)) >= 0.1)
      {
        v132 = v131;
      }

      else
      {
        v132 = v128 >= 0.1;
      }

      v133 = v113 - v112;
      v134 = 0xAAAAAAAAAAAAAAABLL * ((v113 - v112) >> 3);
      v135 = v134 + 1;
      if (v134 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_2621CBEB0();
      }

      if (0x5555555555555556 * (-v112 >> 3) > v135)
      {
        v135 = 0x5555555555555556 * (-v112 >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v112 >> 3) >= 0x555555555555555)
      {
        v136 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v136 = v135;
      }

      if (v136)
      {
        if (v136 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_2621C6A34();
      }

      v137 = 24 * v134;
      *v137 = v115;
      *(v137 + 4) = v130;
      *(v137 + 8) = v116;
      *(v137 + 12) = v132;
      *(v137 + 16) = v114;
      v113 = 24 * v134 + 24;
      v138 = (v137 + 24 * (v133 / -24));
      memcpy(v138, v112, v133);
      if (!v112 || (operator delete(v112), v127 = v277, v112 = v138, v277))
      {
        operator delete(v127);
        v112 = v138;
      }

      ++v114;
      v111 = *(a1 + 8);
      v139 = *(a1 + 16);
      v140 = v255;
    }

    while (v114 < (v139 - v111) >> 4);
  }

  v141 = 0xAAAAAAAAAAAAAAABLL * ((v113 - v112) >> 3);
  if (v141 < 2)
  {
    goto LABEL_147;
  }

  for (j = 1; j < v141; ++j)
  {
    if (v141 == j)
    {
      break;
    }

    v143 = 1;
    v144 = (v112 + 24);
    do
    {
      if (v143 >= v141)
      {
        goto LABEL_135;
      }

      v145 = *(v144 - 4);
      if (v145 == 1 - *(v144 + 2))
      {
        if (v145 == 1)
        {
          goto LABEL_135;
        }

LABEL_134:
        v146 = v144 - 24;
        v277 = 0uLL;
        v278 = 0;
        v147 = *(v144 - 24);
        v278 = *(v144 - 1);
        v277 = v147;
        *v146 = *v144;
        *(v146 + 2) = *(v144 + 2);
        v148 = v278;
        *v144 = v277;
        *(v144 + 2) = v148;
        goto LABEL_135;
      }

      v150 = *(v144 - 3);
      v151 = *(v144 + 3);
      if (v150 == v151)
      {
        v152 = *(v144 - 6);
        v153 = *v144;
        if (vabds_f32(v152, *v144) < *(a1 + 200))
        {
          v152 = *(v144 - 5);
          v153 = *(v144 + 1);
        }

        if (v152 < v153)
        {
          goto LABEL_134;
        }
      }

      else if (v150 <= v151)
      {
        goto LABEL_134;
      }

LABEL_135:
      v144 += 24;
    }

    while (v143++ < v141 - j);
  }

  v111 = *(a1 + 8);
  v139 = *(a1 + 16);
LABEL_147:
  if (v139 != v111)
  {
    v154 = 0;
    v155 = (v112 + 16);
    do
    {
      sub_2621C9004(v273, v155);
      ++v154;
      v155 += 3;
    }

    while (v154 < (*(a1 + 16) - *(a1 + 8)) >> 4);
  }

  if (v112)
  {
    operator delete(v112);
  }

  LOBYTE(v277) = 0;
  sub_26220F1D4(&v279, v66, &v277);
  if (v66)
  {
    v156 = 0;
    v157 = v273[0];
    v158 = v274;
    do
    {
      v159 = v157[v156];
      *&v277 = v159;
      v160 = v279;
      if (((*&v279[(v159 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v159) & 1) == 0)
      {
        v161 = 0;
        v162 = v159 * v66;
        v163 = v66;
        do
        {
          v164 = *&v160[8 * (v161 >> 6)];
          v165 = (v164 & (1 << v161)) != 0 || v159 == v161;
          if (!v165 && ((*&v158[(v162 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v162) & 1) != 0)
          {
            *&v160[8 * (v161 >> 6)] = v164 | (1 << v161);
          }

          ++v161;
          ++v162;
          --v163;
        }

        while (v163);
        sub_2621C9004(&v270, &v277);
      }

      ++v156;
    }

    while (v156 != v66);
  }

  v277 = 0uLL;
  v278 = 0;
  v281 = 0;
  v282 = 0;
  v283 = 0;
  v167 = v270;
  v166 = v271;
  v168 = v271 - v270;
  if (v271 == v270)
  {
    *(a1 + 56) = 0;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    v177 = v256;
  }

  else
  {
    v169 = v168 >> 3;
    if ((v168 >> 3) <= 1)
    {
      v170 = 1;
    }

    else
    {
      v170 = v168 >> 3;
    }

    v171 = v270;
    v172 = v170;
    do
    {
      v173 = *v171++;
      sub_2621DE070(&v277, (*v140 + 16 * v173));
      sub_2621C8F2C(&v281, (*v256 + 4 * v173));
      --v172;
    }

    while (v172);
    *(a1 + 56) = v169;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    v174 = v277;
    v175 = v281;
    v176 = v281;
    v177 = v256;
    do
    {
      sub_2621DE070(v140, v174);
      sub_2621C8F2C(v256, v176++);
      ++v174;
      --v170;
    }

    while (v170);
    if (v175)
    {
      operator delete(v175);
    }
  }

  if (v277)
  {
    operator delete(v277);
  }

  if (v166 == v167)
  {
    v265 = v264;
    v261 = v260;
  }

  else
  {
    v178 = v264;
    v179 = v260;
    if (((v166 - v167) >> 3) <= 1)
    {
      v180 = 1;
    }

    else
    {
      v180 = (v166 - v167) >> 3;
    }

    v181 = v167;
    v182 = v180;
    do
    {
      v183 = *v181++;
      sub_2621C8F2C(v269, &v178[v183]);
      sub_2621C8F2C(__p, &v179[v183]);
      --v182;
    }

    while (v182);
    v265 = v178;
    v261 = v179;
    v184 = v269[0];
    v185 = __p[0];
    v177 = v256;
    do
    {
      sub_2621C8F2C(&v264, v184);
      sub_2621C8F2C(&v260, v185++);
      ++v184;
      --v180;
    }

    while (v180);
  }

  if (v279)
  {
    operator delete(v279);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v269[0])
  {
    operator delete(v269[0]);
  }

  if (v167)
  {
    operator delete(v167);
  }

  if (v273[0])
  {
    operator delete(v273[0]);
  }

  if (v274)
  {
    operator delete(v274);
  }

  v186 = *(a1 + 56);
  if (!v186)
  {
    v277 = 0uLL;
    v278 = 0;
    v281 = 0;
    v282 = 0;
    v283 = 0;
    *(a1 + 16) = *(a1 + 8);
    v203 = *(a1 + 32);
    *(a1 + 40) = v203;
LABEL_229:
    v206 = v203;
    goto LABEL_230;
  }

  v187 = 0;
  v188 = *(a1 + 8);
  v189 = *(a1 + 32);
  v190 = v264;
  v191 = v260;
  v192 = (a1 + 216);
  v193 = *(a1 + 208);
  do
  {
    if (v193 != v192)
    {
      v194 = vsub_f32(*(v188 + 16 * v187), *(v188 + 16 * v187 + 8));
      v195 = *(a1 + 128) * sqrtf(vaddv_f32(vmul_f32(v194, v194)));
      v196 = v193;
      do
      {
        v197 = v196[4];
        if (*v197 < v195 && v197[1] >= v195)
        {
          for (k = v196[7]; k != v196[8]; k += 24)
          {
            if (**k <= *(v189 + 4 * v187) && *(*k + 4) <= v190[v187])
            {
              goto LABEL_219;
            }
          }
        }

        v198 = v196[1];
        if (v198)
        {
          do
          {
            v199 = v198;
            v198 = *v198;
          }

          while (v198);
        }

        else
        {
          do
          {
            v199 = v196[2];
            v165 = *v199 == v196;
            v196 = v199;
          }

          while (!v165);
        }

        v196 = v199;
      }

      while (v199 != v192);
    }

    v191[v187] = 0;
LABEL_219:
    ++v187;
  }

  while (v187 != v186);
  v201 = 0;
  v202 = 0;
  v277 = 0uLL;
  v278 = 0;
  v281 = 0;
  v282 = 0;
  v283 = 0;
  do
  {
    if (*v191 > 0.000001)
    {
      sub_2621DE070(&v277, (*v140 + v201));
      sub_2621C8F2C(&v281, v191);
      ++v202;
    }

    v201 += 16;
    ++v191;
    --v186;
  }

  while (v186);
  *(a1 + 56) = v202;
  *(a1 + 16) = *(a1 + 8);
  v203 = *(a1 + 32);
  *(a1 + 40) = v203;
  if (!v202)
  {
    goto LABEL_229;
  }

  v204 = v277;
  v205 = v281;
  do
  {
    sub_2621DE070(v140, v204);
    sub_2621C8F2C(v177, v205++);
    ++v204;
    --v202;
  }

  while (v202);
  v206 = *(a1 + 32);
  v203 = *(a1 + 40);
LABEL_230:
  sub_2621CA9DC(&v260, v206, v203, (v203 - v206) >> 2);
  if (v281)
  {
    operator delete(v281);
  }

  if (v277)
  {
    operator delete(v277);
  }

  v207 = *(a1 + 56);
  v274 = 0;
  v275 = 0;
  v276 = 0;
  v208 = *(a1 + 8);
  v209 = *(a1 + 16);
  if (v209 != v208)
  {
    v210 = 0;
    do
    {
      v277 = 0uLL;
      v278 = 0;
      if (v209 != v208)
      {
        v211 = 0;
        v212 = (v208 + 16 * v210);
        do
        {
          if (v211 == v210)
          {
            LODWORD(v281) = 0;
            sub_2621C8F2C(&v277, &v281);
          }

          else
          {
            v213 = (v208 + 16 * v211);
            sub_2621C95C8(&v281, v212, v213);
            v214 = v281;
            v215 = v281 + 1;
            v216 = v281 == v282 || v215 == v282;
            v217 = v281;
            if (!v216)
            {
              v218 = *v281;
              v217 = v281;
              v219 = v281 + 1;
              do
              {
                v220 = *v219++;
                v221 = v220;
                if (v220 < v218)
                {
                  v218 = v221;
                  v217 = v215;
                }

                v215 = v219;
              }

              while (v219 != v282);
            }

            if (*v217 <= 1.0)
            {
              LODWORD(v273[0]) = sub_2621C92AC(v212, v213, 0);
            }

            else
            {
              LODWORD(v273[0]) = 1232348160;
            }

            sub_2621C8F2C(&v277, v273);
            if (v214)
            {
              operator delete(v214);
            }
          }

          ++v211;
          v208 = *(a1 + 8);
        }

        while (v211 < (*(a1 + 16) - v208) >> 4);
      }

      sub_2622F3228(&v274, &v277);
      if (v277)
      {
        operator delete(v277);
      }

      ++v210;
      v208 = *(a1 + 8);
      v209 = *(a1 + 16);
    }

    while (v210 < (v209 - v208) >> 4);
  }

  v222 = v260;
  if (v261 != v260)
  {
    v223 = 0;
    if (((v261 - v260) >> 2) <= 1)
    {
      v224 = 1;
    }

    else
    {
      v224 = (v261 - v260) >> 2;
    }

    do
    {
      v225 = v274 + 24 * v223;
      v277 = 0uLL;
      v278 = 0;
      v226 = *v225;
      v227 = *(v225 + 1);
      if (*v225 == v227)
      {
        v228 = 0;
        v229 = 0;
      }

      else
      {
        do
        {
          if (*v226 > *(a1 + 264) && *v226 <= *(a1 + 268))
          {
            sub_2621C8F2C(&v277, v226);
          }

          ++v226;
        }

        while (v226 != v227);
        v229 = *(&v277 + 1);
        v228 = v277;
      }

      if ((v229 - v228) > 4)
      {
        v222[v223] = 0;
      }

      if (v228)
      {
        operator delete(v228);
      }

      ++v223;
    }

    while (v223 != v224);
  }

  v277 = 0uLL;
  v278 = 0;
  v281 = 0;
  v282 = 0;
  v283 = 0;
  if (v207)
  {
    v230 = 0;
    v231 = 0;
    do
    {
      if (*v222 > 0.000001)
      {
        sub_2621DE070(&v277, (*v140 + v230));
        sub_2621C8F2C(&v281, v222);
        ++v231;
      }

      v230 += 16;
      ++v222;
      --v207;
    }

    while (v207);
    *(a1 + 56) = v231;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    v232 = v281;
    v233 = v256;
    if (v231)
    {
      v234 = v277;
      v235 = v281;
      do
      {
        sub_2621DE070(v140, v234);
        sub_2621C8F2C(v256, v235++);
        ++v234;
        --v231;
      }

      while (v231);
    }

    if (v232)
    {
      v282 = v232;
      operator delete(v232);
    }
  }

  else
  {
    *(a1 + 56) = 0;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 40) = *(a1 + 32);
    v233 = v256;
  }

  if (v277)
  {
    operator delete(v277);
  }

  *&v277 = &v274;
  sub_2621E1D40(&v277);
  if (v260)
  {
    operator delete(v260);
  }

  if (v263[0])
  {
    operator delete(v263[0]);
  }

  if (v264)
  {
    operator delete(v264);
  }

  v236 = *(a1 + 56);
  v237 = a9;
  v238 = *a9;
  a9[1] = *a9;
  if (v236)
  {
    v239 = 0;
    v240 = 0;
    do
    {
      v241 = *v140;
      v242 = *v233;
      v243 = v237[2];
      if (v238 >= v243)
      {
        v245 = *v237;
        v246 = 0xAAAAAAAAAAAAAAABLL * ((v238 - *v237) >> 3);
        v247 = v246 + 1;
        if (v246 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_2621CBEB0();
        }

        v248 = 0xAAAAAAAAAAAAAAABLL * ((v243 - v245) >> 3);
        if (2 * v248 > v247)
        {
          v247 = 2 * v248;
        }

        if (v248 >= 0x555555555555555)
        {
          v249 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v249 = v247;
        }

        if (v249)
        {
          sub_2623026BC(v249);
        }

        v250 = 24 * v246;
        v251 = *(v242 + 4 * v240);
        *v250 = *(v241 + v239);
        *(v250 + 16) = v251;
        v238 = 24 * v246 + 24;
        v252 = a9[1] - *a9;
        v253 = v250 - v252;
        memcpy((v250 - v252), *a9, v252);
        v254 = *a9;
        *a9 = v253;
        a9[1] = v238;
        a9[2] = 0;
        if (v254)
        {
          operator delete(v254);
        }

        v237 = a9;
        v233 = v256;
      }

      else
      {
        v244 = *(v242 + 4 * v240);
        *v238 = *(v241 + v239);
        *(v238 + 16) = v244;
        v238 += 24;
        v233 = v256;
      }

      v237[1] = v238;
      ++v240;
      v239 += 16;
    }

    while (*(a1 + 56) > v240);
  }
}