id *sub_1AF1411E4(id *result, const char *a2)
{
  v10[3] = *MEMORY[0x1E69E9840];
  if (!result[63])
  {
    v2 = result;
    v3 = objc_msgSend_newFunctionWithName_constants_library_(result[4], a2, @"quadIntersectionFunction", 0, 0);
    v5 = objc_msgSend_newFunctionWithName_constants_library_(v2[4], v4, @"sphereIntersectionFunction", 0, 0);
    v7 = objc_msgSend_newFunctionWithName_constants_library_(v2[4], v6, @"boxIntersectionFunction", 0, 0);
    v10[0] = v3;
    v10[1] = v5;
    v10[2] = v7;
    v8 = objc_alloc(MEMORY[0x1E695DEC8]);
    result = objc_msgSend_initWithObjects_count_(v8, v9, v10, 3);
    v2[63] = result;
  }

  return result;
}

void sub_1AF1412C8(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 552);
  v3 = *(a1 + 544);
  if (v2 != v3)
  {
    v4 = a2;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = &v3[24 * v6];
      v9 = *(v8 + 4) + 1;
      *(v8 + 4) = v9;
      if (v9 <= v4)
      {
        ++v7;
      }

      else
      {
        objc_msgSend_setPurgeableState_(*v8, a2, 4);
        v10 = 3 * v6;

        v3 = *(a1 + 544);
        v11 = &v3[8 * v10];
        *(v11 + 1) = 0;
        a2 = v11 + 24;
        v12 = *(a1 + 552);
        v13 = v12 - (v11 + 24);
        if (v12 != v11 + 24)
        {
          memmove(v11, a2, v13 - 4);
          v3 = *(a1 + 544);
        }

        v2 = &v11[v13];
        *(a1 + 552) = &v11[v13];
      }

      v6 = v7;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 3) > v7);
  }
}

void sub_1AF1413C4(_BYTE *a1, uint64_t a2)
{
  v23 = a2;
  sub_1AF1BA950(a2, a2);
  if ((v4 & 1) == 0 && sub_1AF1BC2B8(a2) <= 0)
  {
    v6 = sub_1AF1B75E8(a2, v5);
    if (v6)
    {
      v8 = v6;
      v9 = sub_1AF19CBB4(v6, v7);
      if (v9 == 5)
      {
        sub_1AF19D5A0(v8, v7, v22);
        v10 = v22[0] == 1;
      }

      else
      {
        v10 = 0;
      }

      if (((v9 - 1) < 3 || v10) && !sub_1AF144D08(a1 + 24, &v23))
      {
        operator new();
      }
    }

    if (sub_1AF1B83E8(v23, v7) && !sub_1AF144D08(a1 + 29, &v23))
    {
      operator new();
    }

    v12 = sub_1AF1B75A0(v23, v11);
    v21 = v12;
    if (v12)
    {
      v14 = v12;
      v15 = sub_1AF1B2C1C(v12, v13);
      if (v15)
      {
        v16 = v15;
        v17 = sub_1AF1A4604(v15, 0, 0, 1);
        LODWORD(v16) = sub_1AF1A3CCC(v16, v18);
        v20 = sub_1AF1B1FE0(v14, v19);
        if (v16)
        {
          if (v20 && v17)
          {
            if (!sub_1AF144D08(a1 + 14, &v21))
            {
              sub_1AF1416E4(a1, v23, v21);
            }

            if (!sub_1AF144D08(a1 + 19, &v23))
            {
              operator new();
            }

            *(a1 + 537) = 257;
          }
        }
      }
    }
  }
}

uint64_t sub_1AF1416E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v3 = sub_1AF144D08((a1 + 112), &v6);
  if (!v3)
  {
    operator new();
  }

  v4 = v3[3];
  ++*(v4 + 20);
  return v4;
}

uint64_t sub_1AF141844(_BYTE *a1, uint64_t a2)
{
  sub_1AF1413C4(a1, a2);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF1418C8;
  v5[3] = &unk_1E7A7A098;
  v5[4] = a1;
  return sub_1AF1B7E14(a2, v5);
}

void sub_1AF1418D0(uint64_t a1)
{
  if (*(a1 + 538) == 1)
  {
    *(a1 + 304) = *(a1 + 296);
    *(a1 + 328) = *(a1 + 320);
    v2 = *(a1 + 128);
    if (v2)
    {
      do
      {
        v3 = v2 + 3;
        if (*(v2[3] + 25) == 1)
        {
          sub_1AF141BD4(a1 + 320, v3);
          *(*(*(a1 + 328) - 8) + 16) = ((*(a1 + 328) - *(a1 + 320)) >> 3) - 1;
        }

        else
        {
          sub_1AF141BD4(a1 + 296, v3);
        }

        v2 = *v2;
      }

      while (v2);
      v4 = *(a1 + 296);
      v5 = *(a1 + 304);
      v6 = v5 - v4;
      if (v5 != v4)
      {
        v7 = 0;
        v8 = v6 >> 3;
        v9 = (*(a1 + 328) - *(a1 + 320)) >> 3;
        do
        {
          *(*(v4 + 8 * v7) + 16) = v9 + v7;
          ++v7;
        }

        while (v8 > v7);
      }
    }
  }

  if (*(a1 + 540) == 1)
  {
    v10 = *(a1 + 368);
    *(a1 + 376) = v10;
    v11 = *(a1 + 248);
    if (v11)
    {
      v12 = v10;
      do
      {
        v13 = *(a1 + 384);
        if (v12 >= v13)
        {
          v14 = (v12 - v10) >> 3;
          if ((v14 + 1) >> 61)
          {
            sub_1AF10A1D0();
          }

          v15 = v13 - v10;
          v16 = v15 >> 2;
          if (v15 >> 2 <= (v14 + 1))
          {
            v16 = v14 + 1;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v16;
          }

          if (v17)
          {
            sub_1AF1120E0(a1 + 368, v17);
          }

          *(8 * v14) = v11[3];
          v12 = (8 * v14 + 8);
          v18 = *(a1 + 368);
          v19 = *(a1 + 376) - v18;
          v20 = (8 * v14 - v19);
          memcpy(v20, v18, v19);
          v21 = *(a1 + 368);
          *(a1 + 368) = v20;
          *(a1 + 376) = v12;
          *(a1 + 384) = 0;
          if (v21)
          {
            operator delete(v21);
          }
        }

        else
        {
          *v12 = v11[3];
          v12 += 8;
        }

        *(a1 + 376) = v12;
        v10 = *(a1 + 368);
        **(v12 - 1) = ((v12 - v10) >> 3) - 1;
        v11 = *v11;
      }

      while (v11);
    }
  }

  if (*(a1 + 537) == 1)
  {
    *(a1 + 280) = *(a1 + 272);
    v22 = *(a1 + 368);
    if (*(a1 + 376) != v22)
    {
      v23 = 0;
      v24 = 1;
      do
      {
        sub_1AF141BD4(a1 + 272, (*(v22 + 8 * v23) + 24));
        v23 = v24;
        v22 = *(a1 + 368);
        ++v24;
      }

      while (v23 < (*(a1 + 376) - v22) >> 3);
    }

    for (i = *(a1 + 168); i; i = *i)
    {
      if (!*(i[3] + 16))
      {
        sub_1AF141BD4(a1 + 272, i + 3);
      }
    }
  }

  if (*(a1 + 539) == 1)
  {
    v26 = *(a1 + 344);
    *(a1 + 352) = v26;
    for (j = *(a1 + 208); j; j = *j)
    {
      v28 = *(a1 + 360);
      if (v26 >= v28)
      {
        v29 = *(a1 + 344);
        v30 = (v26 - v29) >> 3;
        if ((v30 + 1) >> 61)
        {
          sub_1AF10A1D0();
        }

        v31 = v28 - v29;
        v32 = v31 >> 2;
        if (v31 >> 2 <= (v30 + 1))
        {
          v32 = v30 + 1;
        }

        if (v31 >= 0x7FFFFFFFFFFFFFF8)
        {
          v33 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v33 = v32;
        }

        if (v33)
        {
          sub_1AF1120E0(a1 + 344, v33);
        }

        *(8 * v30) = j[3];
        v26 = (8 * v30 + 8);
        v34 = *(a1 + 344);
        v35 = *(a1 + 352) - v34;
        v36 = (8 * v30 - v35);
        memcpy(v36, v34, v35);
        v37 = *(a1 + 344);
        *(a1 + 344) = v36;
        *(a1 + 352) = v26;
        *(a1 + 360) = 0;
        if (v37)
        {
          operator delete(v37);
        }
      }

      else
      {
        *v26++ = j[3];
      }

      *(a1 + 352) = v26;
    }
  }
}

void sub_1AF141BD4(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_1AF10A1D0();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_1AF1120E0(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_1AF141CA8(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  if (v5)
  {
    v6 = objc_msgSend_gpuAddress(*(v5 + 56), a2, a3);
    v7 = 0uLL;
  }

  else
  {
    v6 = 0;
    v7 = *(a3 + 16 * **(a2 + 2));
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  v8 = *a2;
  v9 = sub_1AF1B9B04(v8, a2);
  v29 = v9[1];
  v30 = *v9;
  v27 = v9[3];
  v28 = v9[2];
  if (sub_1AF1BB4CC(v8, v10))
  {
    v12 = 0;
    v31 = xmmword_1AFE20150;
    v32 = xmmword_1AFE208E0;
    v33 = xmmword_1AFE208F0;
    do
    {
      *(&v35 + v12) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE21330, COERCE_FLOAT(*(&v31 + v12))), xmmword_1AFE20160, *(&v31 + v12), 1), xmmword_1AFE20180, *(&v31 + v12), 2);
      v12 += 16;
    }

    while (v12 != 48);
    v13 = 0;
    v31 = v35;
    v32 = v36;
    v33 = v37;
    do
    {
      *(&v35 + v13) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(&v31 + v13))), xmmword_1AFE21340, *(&v31 + v13), 1), xmmword_1AFE20180, *(&v31 + v13), 2);
      v13 += 16;
    }

    while (v13 != 48);
    v14 = 0;
    v15 = v35;
    v16 = v36;
    v15.i32[3] = 0;
    v17 = v37;
    v16.i32[3] = 0;
    v17.i32[3] = 0;
    *&v18 = 0;
    *(&v18 + 1) = 1232348160;
    v31 = 0x49742400uLL;
    v32 = 0x4974240000000000uLL;
    v33 = v18;
    v34 = xmmword_1AFE201A0;
    do
    {
      *(&v35 + v14) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(*(&v31 + v14))), v16, *(&v31 + v14), 1), v17, *(&v31 + v14), 2), xmmword_1AFE201A0, *(&v31 + v14), 3);
      v14 += 16;
    }

    while (v14 != 64);
    v19 = 0;
    v31 = v35;
    v32 = v36;
    v33 = v37;
    v34 = v38;
    do
    {
      *(&v35 + v19) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, COERCE_FLOAT(*(&v31 + v19))), v29, *(&v31 + v19), 1), v28, *(&v31 + v19), 2), v27, *(&v31 + v19), 3);
      v19 += 16;
    }

    while (v19 != 64);
    v29 = v36;
    v30 = v35;
    v27 = v38;
    v28 = v37;
  }

  v20 = sub_1AF1B92C8(v8, v11);
  if (v20)
  {
    v21 = v20;
    v22 = sub_1AF1C9420(v20);
    *v23.i64 = sub_1AF1CA3E8(v21, v22, v30, v29, v28, v27);
  }

  else
  {
    v24 = v29;
    v23 = v30;
    v26 = v27;
    v25 = v28;
  }

  *(a1 + 32) = v23;
  *(a1 + 48) = v24;
  *(a1 + 64) = v25;
  *(a1 + 80) = v26;
}

float32_t sub_1AF141EE4(float32x4_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  v4 = sub_1AF1B9B04(*a2, a2);
  v24 = *v4;
  v25 = v4[1];
  v26 = v4[3];
  v27 = v4[2];
  v6 = sub_1AF19CBB4(v3, v5);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v18 = vmulq_f32(v27, v27);
      *&v19 = v18.f32[2] + vaddv_f32(*v18.f32);
      *v18.f32 = vrsqrte_f32(v19);
      *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32)));
      a1->i32[0] = 2;
      a1[3] = v26;
      a1[4] = vmulq_n_f32(v27, vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32))).f32[0]);
      sub_1AF19C0B8(v3);
      a1[5].i64[0] = v20;
      v8.f32[0] = sub_1AF19C038(v3, 1, 1.0);
      v17 = (a1 + 88);
      goto LABEL_11;
    }

    if (v6 == 5)
    {
      v29 = 0u;
      v30 = 0u;
      v28 = 0u;
      sub_1AF19D5A0(v3, v7, &v28);
      a1->i32[0] = 3;
      v13 = vmulq_f32(v27, v27);
      *&v14 = v13.f32[2] + vaddv_f32(*v13.f32);
      *v13.f32 = vrsqrte_f32(v14);
      *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32)));
      a1[3] = vmulq_n_f32(v27, vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32))).f32[0]);
      a1[4] = v26;
      v13.i64[0] = v29;
      v15 = vmlaq_f32(vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v24, 0), v25, *&v29, 1), 0, v27), 0, v26);
      a1[5] = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v24, *&v29), 0, v25), 0, v27), 0, v26);
      a1[6] = v15;
      a1[7].f32[0] = vmuls_lane_f32(v13.f32[0], *v13.f32, 1) * 4.0;
      a1[7].i8[4] = sub_1AF19D540(v3, v16);
    }
  }

  else
  {
    if (v6 == 1)
    {
      a1->i32[0] = 1;
      v12 = v26;
      goto LABEL_9;
    }

    if (v6 == 2)
    {
      a1->i32[0] = 0;
      v10 = vmulq_f32(v27, v27);
      *&v11 = v10.f32[2] + vaddv_f32(*v10.f32);
      *v10.f32 = vrsqrte_f32(v11);
      *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32)));
      v12 = vmulq_n_f32(v27, vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32))).f32[0]);
LABEL_9:
      a1[3] = v12;
      v8.f32[0] = sub_1AF19C038(v3, 1, 1.0);
      v17 = a1 + 4;
LABEL_11:
      v17->i32[0] = v8.i32[3];
    }
  }

  sub_1AF19D69C(v3, v8, v9);
  a1[1].i64[0] = v21;
  a1[1].i64[1] = v22;
  result = sub_1AF19BA38(v3, v22) * 0.015;
  a1[2].f32[0] = result;
  return result;
}

char *sub_1AF142110(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AF16A4C8(*(a2 + 16), a2, a3);
  v8 = objc_msgSend_particleHeaderBuffer(v5, v6, v7);
  if (v8)
  {
    v11 = v8;
    v12 = objc_msgSend_gpuAddress(v8, v9, v10);
    *a1 = objc_msgSend_particleHeaderBufferOffset(v5, v13, v14) + v12;
    objc_msgSend_addObject_(*(a3 + 424), v15, v11);
  }

  else
  {
    *a1 = 0;
  }

  result = objc_msgSend_particleDataBuffer(v5, v9, v10);
  if (result)
  {
    v18 = result;
    objc_msgSend_addObject_(*(a3 + 424), v17, result);
    v21 = objc_msgSend_gpuAddress(v18, v19, v20);
    result = objc_msgSend_particleDataBufferOffset(v5, v22, v23);
    v24 = &result[v21];
  }

  else
  {
    v24 = 0;
  }

  a1[1] = v24;
  return result;
}

uint64_t sub_1AF1421C8(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = sub_1AF144D08((a1 + 72), &v5);
  if (!v2)
  {
    operator new();
  }

  v3 = v2[3];
  ++*(v3 + 8);
  return v3;
}

void *sub_1AF1422D8(void *result, uint64_t a2)
{
  if (*(result + 22))
  {
    v3 = result;
    if (!*(a2 + 448))
    {
      sub_1AFDE851C(result[4], 432, 0);
      v5 = v4;
      objc_msgSend_setLabel_(v4, v6, 0);
      v8 = *(a2 + 448);
      if (v8 != v5)
      {
        if (v8)
        {
          objc_msgSend_removeObject_(v3[52], v7, *(a2 + 448));
        }

        if (v5)
        {
          *(a2 + 448) = v5;
          objc_msgSend_addObject_(v3[52], v9, v5);
        }

        else
        {
          *(a2 + 448) = 0;
        }
      }
    }

    v10 = (a2 + 48);
    v11 = sub_1AF1A1270(*a2, a2);
    for (i = 0; i != 9; ++i)
    {
      v13 = byte_1AFE21364[i];
      v14 = sub_1AF1656E4(v11, v13, 1);
      if (v14)
      {
        v16 = v14;
        v17 = sub_1AF1660D8(v14, v15);
        v20 = sub_1AF166598(v16, v18);
        v21 = *v10;
        if (*v10)
        {
          objc_msgSend_removeObject_(v3[52], v19, v21);
        }

        if (v17)
        {
          *(v10 - 24) = 0;
          *(v10 - 1) = *v17;
          *v10 = 0;
        }

        else
        {
          *(v10 - 24) = 1;
          v24 = objc_msgSend_textureForMaterialProperty_(v3[3], v19, v16);
          *v10 = v24;
          if (v24)
          {
            objc_msgSend_addObject_(v3[52], v19, v24);
          }
        }

        *(v10 - 1) = v20;
      }

      else
      {
        *(v10 - 24) = 0;
        v22 = sub_1AF165BEC(v11, v13);
        v23 = *(v10 - 1);
        *&v23 = v22;
        HIDWORD(v23) = 1.0;
        *(v10 - 1) = v23;
        *v10 = 0;
      }

      v10 += 6;
    }

    v27 = objc_msgSend_contents(*(a2 + 448), v19, v21);
    v28 = -432;
    do
    {
      v29 = v27 + v28;
      *(v29 + 448) = *(a2 + v28 + 464);
      *(v29 + 432) = *(a2 + v28 + 456);
      result = objc_msgSend_gpuResourceID(*(a2 + v28 + 480), v25, v26);
      *(v29 + 464) = result;
      v28 += 48;
    }

    while (v28);
    *(a2 + 12) = 0;
  }

  return result;
}

void sub_1AF1424B4(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    sub_1AF144B30(result, a2 - v2);
  }
}

id *sub_1AF1424E4(id *result, uint64_t a2)
{
  if (*(result + 21))
  {
    v3 = result;
    v4 = objc_msgSend_deformedRaytraceableMeshForNode_fallbackModel_(result[3], a2, *a2, *(a2 + 8));
    v5 = sub_1AFDEA208(v4);
    v8 = objc_msgSend_count(v5, v6, v7);
    v11 = v8;
    if (!v4)
    {
      v12 = sub_1AF0D5194(v8, v9);
      v8 = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT);
      if (v8)
      {
        sub_1AFDD4CDC(v12, v9, v10, v13, v14, v15, v16, v17);
      }
    }

    v160 = v11;
    if (!v11)
    {
      v18 = sub_1AF0D5194(v8, v9);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD4D54(v18, v9, v10, v19, v20, v21, v22, v23);
      }
    }

    if (!*(a2 + 56))
    {
      sub_1AFDE851C(v3[4], 48, 0);
      v25 = v24;
      objc_msgSend_setLabel_(v24, v26, @"[Raytracing] MeshBuffer");
      v28 = *(a2 + 56);
      if (v28 != v25)
      {
        if (v28)
        {
          objc_msgSend_removeObject_(v3[52], v27, *(a2 + 56));
        }

        if (v25)
        {
          *(a2 + 56) = v25;
          objc_msgSend_addObject_(v3[52], v29, v25);
        }

        else
        {
          *(a2 + 56) = 0;
        }
      }
    }

    if (!*(a2 + 64))
    {
      sub_1AFDE851C(v3[4], 24 * v160, 0);
      v31 = v30;
      objc_msgSend_setLabel_(v30, v32, @"[Raytracing] MeshElementBuffer");
      v34 = *(a2 + 64);
      if (v34 != v31)
      {
        if (v34)
        {
          objc_msgSend_removeObject_(v3[52], v33, *(a2 + 64));
        }

        if (v31)
        {
          *(a2 + 64) = v31;
          objc_msgSend_addObject_(v3[52], v35, v31);
        }

        else
        {
          *(a2 + 64) = 0;
        }
      }
    }

    v36 = objc_msgSend_contents(*(a2 + 56), v9, v10);
    v37 = sub_1AFDEA004(v4);
    v39 = sub_1AFDEA180(v4, 0, v38);
    v42 = *(a2 + 32);
    if (v39)
    {
      v43 = v39;
      if (v42 != v39)
      {
        if (v42)
        {
          objc_msgSend_removeObject_(v3[52], v40, *(a2 + 32));
        }

        *(a2 + 32) = v43;
        objc_msgSend_addObject_(v3[52], v44, v43);
      }

      v45 = objc_msgSend_attributes(v37, v40, v41);
      v47 = objc_msgSend_objectAtIndexedSubscript_(v45, v46, 0);
      v50 = objc_msgSend_layouts(v37, v48, v49);
      v53 = objc_msgSend_bufferIndex(v47, v51, v52);
      v55 = objc_msgSend_objectAtIndexedSubscript_(v50, v54, v53);
      v58 = objc_msgSend_gpuAddress(*(a2 + 32), v56, v57);
      *(v36 + 8) = objc_msgSend_offset(v47, v59, v60) + v58;
      v63 = objc_msgSend_format(v47, v61, v62);
      LODWORD(v58) = sub_1AF1F1A7C(v63);
      v66 = objc_msgSend_format(v47, v64, v65);
      *v36 = v58 / sub_1AF1F1A8C(v66);
      *(v36 + 1) = objc_msgSend_stride(v55, v67, v68);
    }

    else if (v42)
    {
      objc_msgSend_removeObject_(v3[52], v40, *(a2 + 32));

      *(a2 + 32) = 0;
    }

    v69 = sub_1AFDEA180(v4, 1, v41);
    v72 = *(a2 + 40);
    if (v69)
    {
      v73 = v69;
      if (v72 != v69)
      {
        if (v72)
        {
          objc_msgSend_removeObject_(v3[52], v70, *(a2 + 40));
        }

        *(a2 + 40) = v73;
        objc_msgSend_addObject_(v3[52], v74, v73);
      }

      v75 = objc_msgSend_attributes(v37, v70, v71);
      v77 = objc_msgSend_objectAtIndexedSubscript_(v75, v76, 1);
      v80 = objc_msgSend_layouts(v37, v78, v79);
      v83 = objc_msgSend_bufferIndex(v77, v81, v82);
      v85 = objc_msgSend_objectAtIndexedSubscript_(v80, v84, v83);
      v88 = objc_msgSend_gpuAddress(*(a2 + 40), v86, v87);
      *(v36 + 16) = objc_msgSend_offset(v77, v89, v90) + v88;
      v93 = objc_msgSend_format(v77, v91, v92);
      LODWORD(v88) = sub_1AF1F1A7C(v93);
      v96 = objc_msgSend_format(v77, v94, v95);
      *(v36 + 2) = v88 / sub_1AF1F1A8C(v96);
      *(v36 + 3) = objc_msgSend_stride(v85, v97, v98);
    }

    else if (v72)
    {
      objc_msgSend_removeObject_(v3[52], v70, *(a2 + 40));

      *(a2 + 40) = 0;
    }

    v99 = sub_1AFDEA180(v4, 6, v71);
    v102 = *(a2 + 48);
    if (v99)
    {
      v103 = v99;
      if (v102 != v99)
      {
        if (v102)
        {
          objc_msgSend_removeObject_(v3[52], v100, *(a2 + 48));
        }

        *(a2 + 48) = v103;
        objc_msgSend_addObject_(v3[52], v104, v103);
      }

      v105 = objc_msgSend_attributes(v37, v100, v101);
      v107 = objc_msgSend_objectAtIndexedSubscript_(v105, v106, 6);
      v110 = objc_msgSend_layouts(v37, v108, v109);
      v113 = objc_msgSend_bufferIndex(v107, v111, v112);
      v115 = objc_msgSend_objectAtIndexedSubscript_(v110, v114, v113);
      v118 = objc_msgSend_gpuAddress(*(a2 + 48), v116, v117);
      *(v36 + 24) = objc_msgSend_offset(v107, v119, v120) + v118;
      v123 = objc_msgSend_format(v107, v121, v122);
      LODWORD(v118) = sub_1AF1F1A7C(v123);
      v126 = objc_msgSend_format(v107, v124, v125);
      *(v36 + 4) = v118 / sub_1AF1F1A8C(v126);
      *(v36 + 5) = objc_msgSend_stride(v115, v127, v128);
      v129 = *(a2 + 48) != 0;
    }

    else if (v102)
    {
      objc_msgSend_removeObject_(v3[52], v100, *(a2 + 48));

      v129 = 0;
      *(a2 + 48) = 0;
    }

    else
    {
      v129 = 0;
    }

    *(v36 + 32) = *(a2 + 40) != 0;
    v159 = v36;
    *(v36 + 33) = v129;
    if (v160)
    {
      v130 = 0;
      v131 = 8;
      while (1)
      {
        v132 = sub_1AFDEA208(v4);
        v134 = objc_msgSend_objectAtIndexedSubscript_(v132, v133, v130);
        v135 = *(*(a2 + 72) + 8 * v130);
        v138 = objc_msgSend_contents(*(a2 + 64), v136, v137);
        v139 = sub_1AFDEA208(v134);
        if (!v139)
        {
          break;
        }

        if (v139 == 1)
        {
          v140 = 4;
LABEL_55:
          *v135 = v140;
        }

        v141 = sub_1AFDE868C(v134);
        v144 = objc_msgSend_buffer(v141, v142, v143);
        v145 = sub_1AFDE868C(v134);
        v149 = objc_msgSend_offset(v145, v146, v147);
        v150 = *(v135 + 8);
        if (v150 != v144)
        {
          if (v150)
          {
            objc_msgSend_removeObject_(v3[52], v148, *(v135 + 8));
          }

          if (v144)
          {
            *(v135 + 8) = v144;
            objc_msgSend_addObject_(v3[52], v151, v144);
          }

          else
          {
            *(v135 + 8) = 0;
          }
        }

        v152 = sub_1AF1B1FE0(*(a2 + 8), v148);
        v153 = sub_1AF1B2030(*(a2 + 8), fmin((v152 - 1), v130));
        v154 = sub_1AF1421C8(v3, v153);
        *(v135 + 16) = v153;
        *(v135 + 24) = v154;
        sub_1AF1422D8(v3, v154);
        *(v138 + v131 - 8) = *v135;
        *(v138 + v131) = objc_msgSend_gpuAddress(v144, v155, v156) + v149;
        *(v138 + v131 + 8) = objc_msgSend_gpuAddress(*(*(v135 + 24) + 448), v157, v158);
        ++v130;
        v131 += 24;
        if (v160 == v130)
        {
          goto LABEL_63;
        }
      }

      v140 = 2;
      goto LABEL_55;
    }

LABEL_63:
    result = objc_msgSend_gpuAddress(*(a2 + 64), v100, v101);
    *(v159 + 40) = result;
    *(a2 + 24) = 0;
  }

  return result;
}

void sub_1AF142AE4(uint64_t a1, const char *a2, uint64_t a3)
{
  v11 = *(a1 + 280) - *(a1 + 272);
  if (v11)
  {
    v22 = v8;
    v23 = v7;
    v24 = v6;
    v25 = v5;
    v26 = v4;
    v27 = v3;
    v28 = v9;
    v29 = v10;
    v13 = 0;
    v14 = v11 >> 3;
    v15 = 1;
    do
    {
      v16 = *(*(a1 + 272) + 8 * v13);
      v17 = objc_msgSend_contents(*(a1 + 400), a2, a3, v22, v23, v24, v25, v26, v27, v28, v29) + 96 * v13;
      v20 = objc_msgSend_contents(*(a1 + 408), v18, v19);
      sub_1AF141CA8(v17, v16, v20);
      v13 = v15;
    }

    while (v14 > v15++);
  }
}

void sub_1AF142B70(uint64_t a1, const char *a2)
{
  if (*(a1 + 42))
  {
    v3 = *(a1 + 400);
    if (v3)
    {
      objc_msgSend_removeObject_(*(a1 + 416), a2, v3);

      *(a1 + 400) = 0;
    }

    v4 = *(a1 + 280) - *(a1 + 272);
    if (v4)
    {
      sub_1AFDE851C(*(a1 + 32), 32 * ((v4 >> 2) + (v4 >> 3)), 0);
      v6 = v5;
      objc_msgSend_setLabel_(v5, v7, @"[Raytracing] InstanceBuffer");
      v9 = *(a1 + 400);
      if (v9 != v6)
      {
        if (v9)
        {
          objc_msgSend_removeObject_(*(a1 + 416), v8, *(a1 + 400));
        }

        if (v6)
        {
          *(a1 + 400) = v6;
          objc_msgSend_addObject_(*(a1 + 416), v10, v6);
        }

        else
        {
          *(a1 + 400) = 0;
        }
      }

      sub_1AF142AE4(a1, v11, v12);
    }
  }
}

id *sub_1AF142C58(id *result)
{
  if (*(result + 21))
  {
    v1 = result;
    v3 = result[37];
    v2 = result[38];
    if (v2 != v3)
    {
      v4 = 0;
      v5 = 1;
      do
      {
        v6 = v3[v4];
        if (*(v6 + 24) == 1)
        {
          result = sub_1AF1424E4(v1, v6);
          v3 = v1[37];
          v2 = v1[38];
        }

        v4 = v5++;
      }

      while (v4 < (v2 - v3) >> 3);
    }

    v7 = v1[40];
    if (v1[41] != v7)
    {
      v8 = 0;
      v9 = 1;
      do
      {
        result = sub_1AF1424E4(v1, v7[v8]);
        v8 = v9;
        v7 = v1[40];
        ++v9;
      }

      while (v8 < (v1[41] - v7) >> 3);
    }
  }

  return result;
}

void *sub_1AF142D00(void *result)
{
  if (*(result + 22))
  {
    v1 = result;
    for (i = result[11]; i; i = *i)
    {
      v3 = i[3];
      if (*(v3 + 12) == 1)
      {
        result = sub_1AF1422D8(v1, v3);
      }
    }
  }

  return result;
}

void sub_1AF142D54(uint64_t a1, const char *a2)
{
  if (*(a1 + 46))
  {
    v3 = *(a1 + 392);
    if (v3)
    {
      objc_msgSend_removeObject_(*(a1 + 416), a2, v3);

      *(a1 + 392) = 0;
    }

    v4 = *(a1 + 352) - *(a1 + 344);
    if (v4)
    {
      sub_1AFDE851C(*(a1 + 32), 16 * v4, 0);
      v6 = v5;
      objc_msgSend_setLabel_(v5, v7, @"[Raytracing] LightBuffer");
      v9 = *(a1 + 392);
      if (v9 != v6)
      {
        if (v9)
        {
          objc_msgSend_removeObject_(*(a1 + 416), v8, *(a1 + 392));
        }

        if (v6)
        {
          *(a1 + 392) = v6;
          objc_msgSend_addObject_(*(a1 + 416), v10, v6);
        }

        else
        {
          *(a1 + 392) = 0;
        }
      }

      v13 = *(a1 + 344);
      if (*(a1 + 352) != v13)
      {
        v14 = 0;
        v15 = 1;
        do
        {
          v16 = *(v13 + 8 * v14);
          v17 = objc_msgSend_contents(v6, v11, v12);
          sub_1AF141EE4((v17 + (v14 << 7)), v16);
          v14 = v15;
          v13 = *(a1 + 344);
          ++v15;
        }

        while (v14 < (*(a1 + 352) - v13) >> 3);
      }
    }
  }
}

char *sub_1AF142E60(char *result, const char *a2, uint64_t a3)
{
  v3 = *(result + 47) - *(result + 46);
  if (v3)
  {
    v4 = result;
    v5 = v3 >> 3;
    v6 = objc_msgSend_contents(*(result + 51), a2, a3);
    v7 = 0;
    v8 = 1;
    do
    {
      result = sub_1AF142110((v6 + 16 * v7), *(*(v4 + 46) + 8 * v7), v4);
      v7 = v8;
    }

    while (v5 > v8++);
  }

  return result;
}

void sub_1AF142ED4(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 408);
  if (v3)
  {
    objc_msgSend_removeObject_(*(a1 + 416), a2, v3);

    *(a1 + 408) = 0;
  }

  v4 = *(a1 + 376) - *(a1 + 368);
  if (v4)
  {
    sub_1AFDE851C(*(a1 + 32), 2 * v4, 0);
    v6 = v5;
    objc_msgSend_setLabel_(v5, v7, @"[Raytracing] EmitterBuffer");
    v9 = *(a1 + 408);
    if (v9 != v6)
    {
      if (v9)
      {
        objc_msgSend_removeObject_(*(a1 + 416), v8, *(a1 + 408));
      }

      if (v6)
      {
        *(a1 + 408) = v6;
        objc_msgSend_addObject_(*(a1 + 416), v10, v6);
      }

      else
      {
        *(a1 + 408) = 0;
      }
    }

    sub_1AF142E60(a1, v11, v12);
  }
}

void *sub_1AF142FAC(uint64_t a1)
{
  *&v71[5] = *MEMORY[0x1E69E9840];
  v2 = sub_1AFDEA004(a1);
  v5 = objc_msgSend_attributes(v2, v3, v4);
  v7 = objc_msgSend_objectAtIndexedSubscript_(v5, v6, 0);
  v10 = objc_msgSend_bufferIndex(v7, v8, v9);
  v12 = sub_1AFDEA180(a1, 0, v11);
  v13 = sub_1AFDEA208(a1);
  v16 = objc_msgSend_count(v13, v14, v15);
  v18 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v17, v16);
  if (v16)
  {
    v19 = 0;
    v20 = 1;
    do
    {
      v21 = sub_1AFDEA208(a1);
      v23 = objc_msgSend_objectAtIndexedSubscript_(v21, v22, v19);
      v26 = objc_msgSend_descriptor(MEMORY[0x1E6973FD0], v24, v25);
      objc_msgSend_setVertexBuffer_(v26, v27, v12);
      v28 = sub_1AFDEA004(a1);
      v31 = objc_msgSend_attributes(v28, v29, v30);
      v33 = objc_msgSend_objectAtIndexedSubscript_(v31, v32, 0);
      v36 = objc_msgSend_offset(v33, v34, v35);
      objc_msgSend_setVertexBufferOffset_(v26, v37, v36);
      v38 = sub_1AFDEA004(a1);
      v41 = objc_msgSend_layouts(v38, v39, v40);
      v43 = objc_msgSend_objectAtIndexedSubscript_(v41, v42, v10);
      v46 = objc_msgSend_stride(v43, v44, v45);
      objc_msgSend_setVertexStride_(v26, v47, v46);
      v50 = objc_msgSend_format(v7, v48, v49);
      if (v50 > 29)
      {
        if (v50 == 30)
        {
          objc_msgSend_setVertexFormat_(v26, v51, 30);
        }

        else
        {
          if (v50 != 31)
          {
LABEL_10:
            v52 = sub_1AF0D5194(v50, v51);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDD4DCC(v70, v7, v71, v52);
            }

            goto LABEL_14;
          }

          objc_msgSend_setVertexFormat_(v26, v51, 31);
        }
      }

      else if (v50 == 26)
      {
        objc_msgSend_setVertexFormat_(v26, v51, 26);
      }

      else
      {
        if (v50 != 27)
        {
          goto LABEL_10;
        }

        objc_msgSend_setVertexFormat_(v26, v51, 27);
      }

LABEL_14:
      v53 = sub_1AFDE868C(v23);
      v56 = objc_msgSend_buffer(v53, v54, v55);
      objc_msgSend_setIndexBuffer_(v26, v57, v56);
      v58 = sub_1AFDE868C(v23);
      v61 = objc_msgSend_offset(v58, v59, v60);
      objc_msgSend_setIndexBufferOffset_(v26, v62, v61);
      v63 = sub_1AFDEA208(v23);
      objc_msgSend_setIndexType_(v26, v64, v63);
      v65 = sub_1AFDEA534(v23);
      objc_msgSend_setTriangleCount_(v26, v66, v65);
      objc_msgSend_addObject_(v18, v67, v26);
      v19 = v20;
    }

    while (v16 > v20++);
  }

  return v18;
}

void *sub_1AF1431FC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v49 = a5;
  v50 = a3;
  v52 = a4;
  v53 = a1;
  v58 = *MEMORY[0x1E69E9840];
  v9 = a6;
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = (&v49 - v13);
  v51 = v15;
  if (v15)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v54 = a7 + 16;
    do
    {
      v19 = objc_msgSend_descriptor(MEMORY[0x1E6974110], v10, v11, v12, v49);
      v20 = (*(a7 + 16))(a7, v16);
      objc_msgSend_setGeometryDescriptors_(v19, v21, v20);
      v14[v16] = v19;
      v23 = objc_msgSend_heapAccelerationStructureSizeAndAlignWithDescriptor_(a2, v22, v19);
      v24 = v10;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      if (a2)
      {
        objc_msgSend_accelerationStructureSizesWithDescriptor_(a2, v10, v19);
        v25 = v56;
      }

      else
      {
        v25 = 0;
      }

      v17 += &v24[v24 * (v23 / v24)];
      if (v25 > v18)
      {
        v18 = v25;
      }

      ++v16;
    }

    while (v9 != v16);
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  v26 = objc_alloc_init(MEMORY[0x1E69740E8]);
  v28 = v26;
  if (v17 <= 1)
  {
    objc_msgSend_setSize_(v26, v27, 1, v49);
  }

  else
  {
    objc_msgSend_setSize_(v26, v27, v17, v49);
  }

  v30 = objc_msgSend_newHeapWithDescriptor_(a2, v29, v28);

  v32 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v31, v9);
  if (v18 <= 1)
  {
    v33 = 1;
  }

  else
  {
    v33 = v18;
  }

  sub_1AFDE851C(v49, v33, 32);
  v35 = v34;
  v39 = objc_msgSend_accelerationStructureCommandEncoder(v50, v36, v37);
  if (v51)
  {
    do
    {
      v40 = *v14++;
      v41 = objc_msgSend_heapAccelerationStructureSizeAndAlignWithDescriptor_(a2, v38, v40);
      v43 = objc_msgSend_newAccelerationStructureWithSize_(v30, v42, v41);
      objc_msgSend_buildAccelerationStructure_descriptor_scratchBuffer_scratchBufferOffset_(v39, v44, v43, v40, v35, 0);
      objc_msgSend_addObject_(v32, v45, v43);

      --v9;
    }

    while (v9);
  }

  objc_msgSend_updateFence_(v39, v38, v52);
  objc_msgSend_endEncoding(v39, v46, v47);

  *v53 = v30;
  return v32;
}

void sub_1AF143444(uint64_t a1)
{
  *(a1 + 480) = 0;
  if (*(a1 + 440))
  {
    v11 = *(a1 + 440);
    v12 = 0;
    sub_1AF14352C(a1 + 544, &v11);
    *(a1 + 440) = 0;
  }

  v4 = (*(a1 + 376) - *(a1 + 368)) >> 3;
  if (v4)
  {
    *&v11 = 0;
    v5 = objc_msgSend_device(*(a1 + 24), v2, v3);
    v6 = *(a1 + 528);
    v7 = *(a1 + 520);
    v8 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF143634;
    v10[3] = &unk_1E7A7A0B8;
    v10[4] = a1;
    v9 = sub_1AF1431FC(&v11, v5, v6, v7, v8, v4, v10);
    *(a1 + 440) = v11;
    *(a1 + 480) = v9;
  }
}

void sub_1AF14352C(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1AF10A1D0();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_1AF144C44(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

uint64_t sub_1AF143634(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = sub_1AF16A4C8(*(*(*(*(a1 + 32) + 368) + 8 * a2) + 16), a2, a3);

  return MEMORY[0x1EEE66B58](v3, sel_buildAccelerationStructureDescriptors, v4);
}

void sub_1AF14366C(uint64_t a1)
{
  *(a1 + 472) = 0;
  if (*(a1 + 448))
  {
    v11 = *(a1 + 448);
    v12 = 0;
    sub_1AF14352C(a1 + 544, &v11);
    *(a1 + 448) = 0;
  }

  v4 = (*(a1 + 328) - *(a1 + 320)) >> 3;
  if (v4)
  {
    *&v11 = 0;
    v5 = objc_msgSend_device(*(a1 + 24), v2, v3);
    v6 = *(a1 + 528);
    v7 = *(a1 + 520);
    v8 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF143754;
    v10[3] = &unk_1E7A7A0B8;
    v10[4] = a1;
    v9 = sub_1AF1431FC(&v11, v5, v6, v7, v8, v4, v10);
    *(a1 + 448) = v11;
    *(a1 + 472) = v9;
  }
}

void *sub_1AF143754(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v4 = *(*(v2 + 320) + 8 * a2);
  v5 = objc_msgSend_deformedRaytraceableMeshForNode_fallbackModel_(v3, a2, *v4, v4[1]);

  return sub_1AF142FAC(v5);
}

void sub_1AF143790(uint64_t a1)
{
  *(a1 + 464) = 0;
  if (*(a1 + 456))
  {
    v11 = *(a1 + 456);
    v12 = 0;
    sub_1AF14352C(a1 + 544, &v11);
    *(a1 + 456) = 0;
  }

  v4 = (*(a1 + 304) - *(a1 + 296)) >> 3;
  if (v4)
  {
    *&v11 = 0;
    v5 = objc_msgSend_device(*(a1 + 24), v2, v3);
    v6 = *(a1 + 528);
    v7 = *(a1 + 520);
    v8 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF143878;
    v10[3] = &unk_1E7A7A0B8;
    v10[4] = a1;
    v9 = sub_1AF1431FC(&v11, v5, v6, v7, v8, v4, v10);
    *(a1 + 456) = v11;
    *(a1 + 464) = v9;
  }
}

void *sub_1AF143878(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v4 = *(*(v2 + 296) + 8 * a2);
  v5 = objc_msgSend_deformedRaytraceableMeshForNode_fallbackModel_(v3, a2, *v4, v4[1]);

  return sub_1AF142FAC(v5);
}

_BYTE *sub_1AF1438B4(_BYTE *result, const char *a2)
{
  if (*(result + 20))
  {
    v2 = result;
    if (result[540] == 1)
    {
      sub_1AF143444(result);
    }

    if (*(v2 + 16))
    {
      sub_1AF14366C(v2);
    }

    if (v2[538] == 1)
    {
      sub_1AF143790(v2);
    }

    v3 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], a2, ((*(v2 + 41) - *(v2 + 40)) >> 3) + ((*(v2 + 47) - *(v2 + 46)) >> 3) + ((*(v2 + 38) - *(v2 + 37)) >> 3));
    if (objc_msgSend_count(*(v2 + 60), v4, v5))
    {
      objc_msgSend_addObjectsFromArray_(v3, v6, *(v2 + 60));
    }

    if (objc_msgSend_count(*(v2 + 59), v6, v7))
    {
      objc_msgSend_addObjectsFromArray_(v3, v8, *(v2 + 59));
    }

    if (objc_msgSend_count(*(v2 + 58), v8, v9))
    {
      objc_msgSend_addObjectsFromArray_(v3, v10, *(v2 + 58));
    }

    result = objc_msgSend_copy(v3, v11, v12);
    *(v2 + 61) = result;
  }

  return result;
}

void sub_1AF1439B0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v88 = sub_1AF12E2AC(*(a1 + 16), a2);
    v5 = objc_msgSend_descriptor(MEMORY[0x1E69740F0], v3, v4);
    objc_msgSend_setInstancedAccelerationStructures_(v5, v6, *(a1 + 488));
    objc_msgSend_setInstanceCount_(v5, v7, (*(a1 + 280) - *(a1 + 272)) >> 3);
    v8 = *(a1 + 272);
    if ((8 * (*(a1 + 280) - v8)) <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 8 * (*(a1 + 280) - v8);
    }

    sub_1AFDE851C(*(a1 + 32), v9, 0);
    v11 = v10;
    v14 = objc_msgSend_contents(v10, v12, v13);
    v17 = v14;
    v18 = *(a1 + 376) - *(a1 + 368);
    v19 = v18 >> 3;
    if ((v18 >> 3))
    {
      v20 = 0;
      v21 = v18 & 0x7FFFFFFF8;
      v22 = (v14 + 60);
      v23 = xmmword_1AFE201A0;
      v24 = xmmword_1AFE20180;
      v25 = xmmword_1AFE20160;
      v26 = xmmword_1AFE20150;
      do
      {
        v27 = *(*(*(a1 + 368) + v20) + 24);
        v28 = *(v27 + 16);
        v29 = *v28;
        *(v22 - 1) = 0;
        *v22 = v29;
        *(v22 - 3) = 0xFF00000000;
        v30 = v26;
        v31 = v25;
        v32 = v24;
        v33 = v23;
        if (!*(v27 + 24))
        {
          v34 = *(v28 + 2);
          v30 = v26;
          v31 = v25;
          v32 = v24;
          v33 = v23;
          if (v34)
          {
            v35 = sub_1AF16A4C8(v34, v15, v16);
            v26 = xmmword_1AFE20150;
            v25 = xmmword_1AFE20160;
            v24 = xmmword_1AFE20180;
            v23 = xmmword_1AFE201A0;
            v30 = xmmword_1AFE20150;
            v31 = xmmword_1AFE20160;
            v32 = xmmword_1AFE20180;
            v33 = xmmword_1AFE201A0;
            if (v35)
            {
              v36 = objc_msgSend_simulationAnchor(v35, v15, v16, COERCE_DOUBLE(1065353216), 0.0078125, 0.0, 0.0);
              v26 = xmmword_1AFE20150;
              v25 = xmmword_1AFE20160;
              v24 = xmmword_1AFE20180;
              v23 = xmmword_1AFE201A0;
              v30 = xmmword_1AFE20150;
              v31 = xmmword_1AFE20160;
              v32 = xmmword_1AFE20180;
              v33 = xmmword_1AFE201A0;
              if (v36)
              {
                v37 = sub_1AF1B9B04(v36, v15);
                v26 = xmmword_1AFE20150;
                v25 = xmmword_1AFE20160;
                v24 = xmmword_1AFE20180;
                v23 = xmmword_1AFE201A0;
                v30 = *v37;
                v31 = *(v37 + 1);
                v32 = *(v37 + 2);
                v33 = *(v37 + 3);
              }
            }
          }
        }

        HIDWORD(v30) = v31.i32[0];
        *(v22 - 15) = v30;
        *(v22 - 11) = vextq_s8(vextq_s8(v31, v31, 0xCuLL), v32, 8uLL);
        *(v22 - 7) = vextq_s8(vuzp1q_s32(v32, v32), v33, 0xCuLL);
        v20 += 8;
        v22 += 16;
      }

      while (v21 != v20);
    }

    v38 = *(a1 + 272);
    if (*(a1 + 280) != v38)
    {
      v39 = 0;
      v40 = 0;
      v41 = xmmword_1AFE20150;
      *&v42 = 0;
      *(&v42 + 1) = 1232348160;
      v89 = v42;
      do
      {
        v43 = *(v38 + 8 * v39);
        v44 = *(v43 + 8);
        if (v44)
        {
          v45 = *(v44 + 16) + v19;
          v46 = v17 + (v39 << 6);
          *(v46 + 56) = 0;
          *(v46 + 60) = v45;
          *(v46 + 48) = 0xFF00000004;
          v47 = v41;
          v48 = v41;
          v49 = v41;
          if (!*(v43 + 24))
          {
            v50 = *v43;
            v51 = sub_1AF1B9B04(*v43, v15);
            v92 = v51[1];
            v93 = *v51;
            v90 = v51[3];
            v91 = v51[2];
            if (sub_1AF1BB4CC(v50, v52))
            {
              v54 = 0;
              v94 = xmmword_1AFE20150;
              v95 = xmmword_1AFE208E0;
              v96 = xmmword_1AFE208F0;
              do
              {
                *(&v98 + v54) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE21330, COERCE_FLOAT(*(&v94 + v54))), xmmword_1AFE20160, *(&v94 + v54), 1), xmmword_1AFE20180, *(&v94 + v54), 2);
                v54 += 16;
              }

              while (v54 != 48);
              v55 = 0;
              v94 = v98;
              v95 = v99;
              v96 = v100;
              do
              {
                *(&v98 + v55) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(&v94 + v55))), xmmword_1AFE21340, *(&v94 + v55), 1), xmmword_1AFE20180, *(&v94 + v55), 2);
                v55 += 16;
              }

              while (v55 != 48);
              v56 = 0;
              v57 = v98;
              v58 = v99;
              v59 = v100;
              v57.i32[3] = 0;
              v58.i32[3] = 0;
              v59.i32[3] = 0;
              v94 = 0x49742400uLL;
              v95 = 0x4974240000000000uLL;
              v96 = v89;
              v97 = xmmword_1AFE201A0;
              do
              {
                *(&v98 + v56) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57, COERCE_FLOAT(*(&v94 + v56))), v58, *(&v94 + v56), 1), v59, *(&v94 + v56), 2), xmmword_1AFE201A0, *(&v94 + v56), 3);
                v56 += 16;
              }

              while (v56 != 64);
              v60 = 0;
              v94 = v98;
              v95 = v99;
              v96 = v100;
              v97 = v101;
              do
              {
                *(&v98 + v60) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v93, COERCE_FLOAT(*(&v94 + v60))), v92, *(&v94 + v60), 1), v91, *(&v94 + v60), 2), v90, *(&v94 + v60), 3);
                v60 += 16;
              }

              while (v60 != 64);
              v92 = v99;
              v93 = v98;
              v90 = v101;
              v91 = v100;
            }

            v61 = sub_1AF1B92C8(v50, v53);
            if (v61)
            {
              v62 = v61;
              v63 = sub_1AF1C9420(v61);
              *&v47 = sub_1AF1CA3E8(v62, v63, v93, v92, v91, v90);
              v41 = xmmword_1AFE20150;
            }

            else
            {
              v41 = xmmword_1AFE20150;
              v66 = v90;
              v64 = v92;
              v47 = v93;
              v65 = v91;
            }

            HIDWORD(v47) = v64.i32[0];
            v48 = vextq_s8(vextq_s8(v64, v64, 0xCuLL), v65, 8uLL);
            v49 = vextq_s8(vuzp1q_s32(v65, v65), v66, 0xCuLL);
          }

          *v46 = v47;
          *(v46 + 16) = v48;
          *(v46 + 32) = v49;
        }

        v38 = *(a1 + 272);
        v39 = ++v40;
      }

      while (v40 < ((*(a1 + 280) - v38) >> 3));
    }

    objc_msgSend_setInstanceDescriptorBuffer_(v5, v15, v11);
    v98 = 0uLL;
    *&v99 = 0;
    v69 = objc_msgSend_device(v88, v67, v68);
    if (v69)
    {
      objc_msgSend_accelerationStructureSizesWithDescriptor_(v69, v70, v5);
      v71 = *(&v98 + 1);
    }

    else
    {
      v71 = 0;
      v98 = 0uLL;
      *&v99 = 0;
    }

    sub_1AFDE851C(*(a1 + 32), v71, 32);
    v73 = v72;
    v76 = objc_msgSend_device(v88, v74, v75);
    v78 = objc_msgSend_newAccelerationStructureWithSize_(v76, v77, v98);
    v81 = objc_msgSend_accelerationStructureCommandEncoder(*(a1 + 528), v79, v80);
    v83 = v81;
    if ((*(a1 + 538) & 1) != 0 || *(a1 + 540) == 1)
    {
      objc_msgSend_waitForFence_(v81, v82, *(a1 + 520));
    }

    objc_msgSend_buildAccelerationStructure_descriptor_scratchBuffer_scratchBufferOffset_(v83, v82, v78, v5, v73, 0);
    objc_msgSend_endEncoding(v83, v84, v85);
    objc_msgSend_encodeSignalEvent_value_(*(a1 + 528), v86, *(a1 + 512), 2);
    v87 = *(a1 + 496);
    *&v94 = 0;
    *(&v94 + 1) = v87;
    LODWORD(v95) = 0;
    sub_1AF14352C(a1 + 544, &v94);
    *(a1 + 496) = v78;
  }
}

uint64_t sub_1AF143F08(uint64_t result, uint64_t a2)
{
  if (*(result + 48) == 1)
  {
    v3 = result;
    sub_1AF140B2C(result);
    v5 = sub_1AF1CF7E8(a2, v4);
    result = sub_1AF141844(v3, v5);
    *(v3 + 537) = 16843009;
  }

  return result;
}

void sub_1AF143F60(_BYTE *a1, uint64_t a2)
{
  if (a1[48] == 1)
  {
    sub_1AF1413C4(a1, a2);
  }
}

void sub_1AF143F74(uint64_t result, uint64_t a2)
{
  v6 = a2;
  if (*(result + 48) == 1)
  {
    sub_1AF1BA950(a2, a2);
    if ((v4 & 1) == 0 && sub_1AF1BC2B8(a2) <= 0)
    {
      if (sub_1AF144D08((result + 152), &v6))
      {
        *(result + 537) = 1;
      }

      if (sub_1AF144D08((result + 192), &v6))
      {
        *(result + 539) = 1;
      }

      if (sub_1AF144D08((result + 232), &v6))
      {
        *(result + 540) = 1;
      }

      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = sub_1AF144068;
      v5[3] = &unk_1E7A7A098;
      v5[4] = result;
      sub_1AF1B7E14(v6, v5);
    }
  }
}

void sub_1AF144070(uint64_t result, uint64_t a2)
{
  if (*(result + 48) == 1)
  {
    v24[7] = v2;
    v24[8] = v3;
    v6 = sub_1AF1B75A0(a2, a2);
    v23 = v6;
    if (v6)
    {
      v8 = sub_1AF1B2C1C(v6, v7);
      v9 = sub_1AF144D08((result + 112), &v23);
      if (v9)
      {
        v11 = v9[3];
        v12 = sub_1AF1A3CCC(v8, v10);
        v14 = v12;
        if (v12)
        {
          v15 = 0;
          do
          {
            v16 = sub_1AF1B1FE0(v23, v13);
            v17 = sub_1AF1B2030(v23, fmin((v16 - 1), v15));
            v18 = v17;
            v19 = *(*(*(v11 + 72) + 8 * v15) + 16);
            if (v17 == v19)
            {
              v24[0] = v17;
              *(sub_1AF144D08((result + 72), v24)[3] + 12) = 1;
            }

            else
            {
              sub_1AF140E90(result, v19, 1);
              v20 = sub_1AF1421C8(result, v18);
              v21 = *(v11 + 72);
              *(*(v21 + 8 * v15) + 24) = v20;
              *(*(v21 + 8 * v15) + 16) = v18;
            }

            ++v15;
          }

          while (v14 != v15);
        }

        *(result + 541) = 1;
      }

      else
      {
        v22 = (result + 128);
        while (1)
        {
          v22 = *v22;
          if (!v22)
          {
            break;
          }

          if (*v22[3] == a2)
          {
            sub_1AF140CE8(result, v22[2], 0);
            break;
          }
        }

        sub_1AF1441EC(result, a2);
        if (*(result + 48) == 1)
        {
          sub_1AF1413C4(result, a2);
        }
      }
    }
  }
}

uint64_t sub_1AF1441EC(uint64_t result, uint64_t a2)
{
  v12 = a2;
  if (*(result + 48) == 1)
  {
    v2 = result;
    v3 = sub_1AF144D08((result + 152), &v12);
    if (v3)
    {
      v4 = v3;
      v5 = v3[3];
      v6 = *(v5 + 8);
      if (v6)
      {
        sub_1AF140CE8(v2, *(v6 + 8), 1);
      }

      MEMORY[0x1B271C6B0](v5, 0x1020C4055CCDE27);
      sub_1AF145C50((v2 + 152), v4);
      *(v2 + 537) = 257;
    }

    v7 = sub_1AF144D08((v2 + 192), &v12);
    if (v7)
    {
      v8 = v7;
      v9 = v7[3];
      if (v9)
      {
        MEMORY[0x1B271C6B0](v9, 0x20C40A4A59CD2);
      }

      sub_1AF145C50((v2 + 192), v8);
      *(v2 + 539) = 1;
    }

    v10 = sub_1AF144D08((v2 + 232), &v12);
    if (v10)
    {
      sub_1AF145C50((v2 + 232), v10);
      *(v2 + 540) = 1;
      *(v2 + 537) = 1;
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1AF1443A4;
    v11[3] = &unk_1E7A7A098;
    v11[4] = v2;
    return sub_1AF1B7E14(v12, v11);
  }

  return result;
}

void *sub_1AF14434C(void *result, uint64_t a2)
{
  v3 = a2;
  if (a2)
  {
    v2 = result;
    if (result[6])
    {
      result = sub_1AF144D08(result + 14, &v3);
      if (result)
      {
        *(result[3] + 24) = 1;
        *(v2 + 538) = 1;
      }
    }
  }

  return result;
}

uint64_t sub_1AF1443AC(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    *(result + 539) = 1;
  }

  return result;
}

void *sub_1AF1443C0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != a2)
  {
    *(a1 + 537) = 16843009;
  }

  *(a1 + 16) = a2;
  v3 = sub_1AF12E2AC(a2, a2);
  *(a1 + 24) = v3;
  result = objc_msgSend_resourceManager(v3, v4, v5);
  *(a1 + 32) = result;
  return result;
}

void sub_1AF144410(uint64_t a1, void *a2)
{
  v4 = sub_1AF13099C(*(a1 + 16));
  MTLDevice = CFXGPUDeviceGetMTLDevice(v4);
  v8 = objc_msgSend_supportsMemorylessRenderTargets(MTLDevice, v6, v7);
  if ((v8 & 1) == 0)
  {
    v10 = sub_1AF0D5194(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD4E3C(v10, v9, v11, v12, v13, v14, v15, v16);
    }
  }

  *(a1 + 528) = a2;
  objc_msgSend_pushDebugGroup_(a2, v9, @"RaytracingSystem Build");
  if (*(a1 + 368) != *(a1 + 376))
  {
    *(a1 + 540) = 1;
    *(a1 + 537) = 1;
  }

  if (*(a1 + 64))
  {
    *(a1 + 537) = 1;
  }

  if (*(a1 + 536) == 1)
  {
    v19 = sub_1AF12DDCC(*(a1 + 16), v17);
    sub_1AF143F08(a1, v19);
  }

  v20 = *(a1 + 538);
  if (*(a1 + 537) != 1 && (*(a1 + 538) & 1) == 0)
  {
    if ((*(a1 + 539) & 1) == 0 && (*(a1 + 540) & 1) == 0 && (*(a1 + 541) & 1) == 0)
    {
      v37 = *(a1 + 368);
      v38 = *(a1 + 376);
      *(a1 + 543) = *(a1 + 541);
      *(a1 + 542) = v37 != v38;
      if (v37 == v38)
      {
        goto LABEL_36;
      }

      v22 = (a1 + 541);
LABEL_17:
      v21 = *(a1 + 540);
LABEL_18:
      sub_1AF1418D0(a1);

      v25 = objc_msgSend_device(*(a1 + 24), v23, v24);
      *(a1 + 512) = objc_msgSend_newEvent(v25, v26, v27);
      if ((v21 & 1) != 0 || *(a1 + 537) == 1)
      {

        v30 = objc_msgSend_device(*(a1 + 24), v28, v29);
        *(a1 + 520) = objc_msgSend_newFence(v30, v31, v32);
      }

      if (*(a1 + 539) == 1)
      {
        sub_1AF142D54(a1, v17);
      }

      if (*(a1 + 540) == 1)
      {
        sub_1AF142ED4(a1, v17);
      }

      if ((*(a1 + 538) & 1) != 0 || *(a1 + 64)) && (sub_1AF142C58(a1), (*(a1 + 538)) || (*(a1 + 540) & 1) != 0 || *(a1 + 64))
      {
        sub_1AF1438B4(a1, v17);
      }

      if ((*(a1 + 537) & 1) != 0 || *(a1 + 538) == 1)
      {
        sub_1AF142B70(a1, v17);
        sub_1AF1439B0(a1, v33);
      }

      if (*v22 == 1)
      {
        sub_1AF142D00(a1);
      }

LABEL_36:
      v34 = *(a1 + 432);
      if (v34)
      {
        MEMORY[0x1B271C690](v34, 0x80C80B8603338);
      }

      objc_msgSend_count(*(a1 + 416), v17, v18);
      objc_msgSend_count(*(a1 + 424), v35, v36);
      operator new[]();
    }

    v20 = 0;
  }

  v21 = 1;
  *(a1 + 542) = 1;
  v22 = (a1 + 541);
  *(a1 + 543) = *(a1 + 541);
  if (v20)
  {
    goto LABEL_18;
  }

  goto LABEL_17;
}

void sub_1AF144818(uint64_t a1)
{
  *(a1 + 540) = 0;
  *(a1 + 536) = 0;
  sub_1AF1412C8(a1, 3);
}

void *sub_1AF144838(void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  v2 = result[55];
  if (v2)
  {
    v5[0] = result[55];
    LODWORD(v2) = 1;
  }

  v3 = result[56];
  if (v3)
  {
    v5[v2] = v3;
    LODWORD(v2) = v2 + 1;
  }

  v4 = result[57];
  if (v4)
  {
    v5[v2] = v4;
    LODWORD(v2) = v2 + 1;
  }

  else if (!v2)
  {
    return result;
  }

  return objc_msgSend_useHeaps_count_(a2, a2, v5, v2);
}

void *sub_1AF144918(uint64_t a1, void *a2)
{
  v4 = objc_opt_new();
  v7 = objc_msgSend_count(*(a1 + 504), v5, v6);
  objc_msgSend_setFunctionCount_(v4, v8, v7);
  v10 = objc_msgSend_newIntersectionFunctionTableWithDescriptor_(a2, v9, v4);

  if (objc_msgSend_count(*(a1 + 504), v11, v12))
  {
    v14 = 0;
    do
    {
      v15 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 504), v13, v14);
      v17 = objc_msgSend_functionHandleWithFunction_(a2, v16, v15);
      objc_msgSend_setFunction_atIndex_(v10, v18, v17, v14++);
    }

    while (v14 < objc_msgSend_count(*(a1 + 504), v19, v20));
  }

  objc_msgSend_setBuffer_offset_atIndex_(v10, v13, *(a1 + 408), 0, 0);
  return v10;
}

void *sub_1AF144A38(void *a1)
{
  v2 = a1[68];
  if (v2)
  {
    a1[69] = v2;
    operator delete(v2);
  }

  v3 = a1[46];
  if (v3)
  {
    a1[47] = v3;
    operator delete(v3);
  }

  v4 = a1[43];
  if (v4)
  {
    a1[44] = v4;
    operator delete(v4);
  }

  v5 = a1[40];
  if (v5)
  {
    a1[41] = v5;
    operator delete(v5);
  }

  v6 = a1[37];
  if (v6)
  {
    a1[38] = v6;
    operator delete(v6);
  }

  v7 = a1[34];
  if (v7)
  {
    a1[35] = v7;
    operator delete(v7);
  }

  sub_1AF144AE4((a1 + 29));
  sub_1AF144AE4((a1 + 24));
  sub_1AF144AE4((a1 + 19));
  sub_1AF144AE4((a1 + 14));
  sub_1AF144AE4((a1 + 9));
  return a1;
}

uint64_t sub_1AF144AE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_1AF144B30(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_1AF10A1D0();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1AF1120E0(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_1AF144C44(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1AF10A1D0();
}

void *sub_1AF144C9C(void *result)
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

void *sub_1AF144D08(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (result[2] == *a2)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_1AF144DF4(float *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = *(a1 + 2);
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1AF14505C(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_1AF14514C(result, prime);
    }
  }
}

void sub_1AF14514C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1AF10A1D0();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_1AF1452B0(void *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

void *sub_1AF145518(void *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

void *sub_1AF145780(void *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

void *sub_1AF1459E8(void *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t sub_1AF145C50(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1AF145C94(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *sub_1AF145C94@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void sub_1AF145DE0(uint64_t a1)
{
  sub_1AF1BE334(@"kCFXNotificationRendererElementWillDie", a1, 0, 1u);
  if ((*(a1 + 80) & 7) == 3)
  {
    v2 = *(a1 + 48);
    if (v2)
    {

      _Block_release(v2);
    }
  }

  else
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 32) = 0;
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 16) = 0;
    }

    v5 = *(a1 + 24);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 24) = 0;
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 48) = 0;
    }

    v7 = *(a1 + 56);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 56) = 0;
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 40) = 0;
    }
  }
}

void sub_1AF145EC4(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  if ((a2 & 4) != 0)
  {
    v4 = *(result + 8);
    if ((*(result + 80) & 7) == 4)
    {
      result = 0x80000000;
    }

    else if (v4)
    {
      result = sub_1AF1BAC2C(*(result + 8), a2);
    }

    else
    {
      result = 0;
    }

    *(v3 + 72) = result;
    if (v4)
    {
      result = sub_1AF1BAD78(v4, a2);
      if (result)
      {
        v5 = 16;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    *(v3 + 80) = *(v3 + 80) & 0xFFEF | v5;
  }

  if ((v2 & 8) == 0)
  {
    goto LABEL_41;
  }

  if (!v3)
  {
    v6 = sub_1AF0D5194(result, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD4EB4(v6);
    }
  }

  if ((*(v3 + 80) & 7) != 3)
  {
    v8 = *(v3 + 32);
    v9 = v8 == 0;
    if (v8)
    {
      v10 = sub_1AF16E098(*(v3 + 32), a2);
      v11 = sub_1AF14621C(v10);
      if ((*(v3 + 80) & 7) == 3)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = *(v3 + 16);
    if (v12)
    {
      v13 = sub_1AF16E098(*(v3 + 16), a2);
      v11 |= sub_1AF14621C(v13);
      v15 = sub_1AF1B2C1C(v12, v14);
      if (v15)
      {
        if (sub_1AF1A4F64(v15))
        {
          v16 = *(v3 + 80);
          if ((v16 & 8) == 0)
          {
            goto LABEL_41;
          }

          goto LABEL_36;
        }
      }
    }

LABEL_29:
    if ((v11 & 1) == 0)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        goto LABEL_31;
      }

      if (v8)
      {
LABEL_33:
        v18 = sub_1AF1A17B8(v8, a2);
        goto LABEL_34;
      }
    }

LABEL_38:
    v16 = *(v3 + 80);
    if ((v16 & 8) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_41;
  }

  v7 = *(v3 + 8);
  if (!v7)
  {
    goto LABEL_38;
  }

  v8 = 0;
  v9 = 1;
LABEL_31:
  sub_1AF1BA79C(v7, a2);
  v18 = v17 >= 1.0;
  if (!v9 && v17 >= 1.0)
  {
    goto LABEL_33;
  }

LABEL_34:
  v16 = *(v3 + 80);
  if (((v18 ^ ((v16 & 8) == 0)) & 1) == 0)
  {
    if ((v18 & 1) == 0)
    {
LABEL_36:
      v19 = 0;
LABEL_40:
      *(v3 + 80) = v16 & 0xFFF7 | v19;
      sub_1AF1BE334(@"kCFXNotificationRendererElementWillDie", v3, 0, 1u);
      goto LABEL_41;
    }

LABEL_39:
    v19 = 8;
    goto LABEL_40;
  }

LABEL_41:
  if ((v2 & 0x10) != 0)
  {
    v20 = *(v3 + 80);
    if ((v20 & 7) != 3)
    {
      v21 = *(v3 + 32);
      if (!v21)
      {
        v25 = v20 & 0xFFBF;
LABEL_50:
        *(v3 + 80) = v25;
        return;
      }

      v22 = sub_1AF1A12B8(v21, a2);
      if (v22)
      {
        v24 = ((sub_1AF165AE4(v22, v23) & 0xFD) != 0) << 6;
      }

      else
      {
        v24 = 0;
      }

      *(v3 + 80) = *(v3 + 80) & 0xFFBF | v24;
      if (!sub_1AF1A1650(*(v3 + 32), v23))
      {
        v25 = *(v3 + 80) & 0xFFEF;
        goto LABEL_50;
      }
    }
  }
}

uint64_t sub_1AF146118(uint64_t a1)
{
  if ((*(a1 + 80) & 7) == 3)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t sub_1AF146138(uint64_t a1)
{
  if ((*(a1 + 80) & 7) == 3)
  {
    return 0;
  }

  else
  {
    return *(a1 + 32);
  }
}

uint64_t sub_1AF146158(uint64_t a1)
{
  if ((*(a1 + 80) & 7) == 3)
  {
    return 0;
  }

  else
  {
    return *(a1 + 24);
  }
}

const void *sub_1AF146178(uint64_t a1)
{
  if ((*(a1 + 80) & 7) == 3)
  {
    return 0;
  }

  result = *(a1 + 48);
  if (result)
  {
    v3 = CFGetTypeID(result);
    if (v3 == sub_1AF1A67B8(v3, v4))
    {
      return *(a1 + 48);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AF1461DC(uint64_t a1)
{
  if ((*(a1 + 80) & 7) == 3)
  {
    return 0;
  }

  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  else
  {
    return sub_1AF15B364(v1);
  }
}

uint64_t sub_1AF14620C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  if (result)
  {
    return sub_1AF1B7348(result, a2);
  }

  return result;
}

uint64_t sub_1AF14621C(const __CFArray *a1)
{
  if (a1 && (Count = CFArrayGetCount(a1), Count >= 1))
  {
    v3 = Count;
    v4 = 0;
    v5 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
      v5 |= sub_1AF148C40(ValueAtIndex, v7);
      ++v4;
    }

    while (v3 != v4);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

void sub_1AF146290(void *a1)
{
  v2 = a1[2];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = sub_1AF147640;
  v7[3] = &unk_1E7A7A118;
  v7[4] = sub_1AF147248;
  v7[5] = a1;
  sub_1AF1D50F8(v2, v7);
  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
    a1[5] = 0;
  }

  v6 = a1[2];
  if (v6)
  {
    CFRelease(v6);
    a1[2] = 0;
  }
}

uint64_t sub_1AF146360()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED734690 = result;
  return result;
}

void *sub_1AF146388()
{
  if (qword_1ED734698 != -1)
  {
    sub_1AFDD4F38();
  }

  v0 = sub_1AF0D160C(qword_1ED734690, 0x20uLL);
  v0[3] = sub_1AF1D4138(0x7FFFFFFFLL);
  v0[4] = sub_1AF1D4138(0x7FFFFFFFLL);
  v0[5] = sub_1AF1D4138(0x7FFFFFFFLL);
  v0[2] = sub_1AF1D46F4(96, 4096);
  return v0;
}

uint64_t *sub_1AF146410(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    if ((*(a2 + 80) & 0x20) != 0)
    {
      sub_1AF1464B4(result, a2, a3);
    }

    sub_1AF145EC4(a2, v3);
    if ((v3 & 4) != 0)
    {
      sub_1AF1D4238(v5[3], *(a2 + 72));
    }

    if ((v3 & 1) != 0 && !sub_1AF145EB0(a2))
    {
      sub_1AF1D4238(v5[4], *(a2 + 32));
    }

    result = sub_1AF1D4238(v5[5], *(a2 + 48));
    *(a2 + 80) |= 0x20u;
  }

  return result;
}

void sub_1AF1464B4(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 4) != 0)
  {
    sub_1AF1D4364(*(result + 24), *(a2 + 72));
  }

  if ((a3 & 1) != 0 && !sub_1AF145EB0(a2))
  {
    v6 = *(result + 32);
    v7 = *(a2 + 32);

    sub_1AF1D4364(v6, v7);
  }
}

void sub_1AF14652C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *&v24[5] = *MEMORY[0x1E69E9840];
  if (a4 == 32)
  {
    v7 = *(a3 + 224);
    v8 = *(a3 + 228);
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v4 = v4 & 0xFFFFFFFF00000000 | v7;
        v10 = sub_1AF1D5010(*(a1 + 16), v4, i);
        v12 = v10;
        if ((*(v10 + 80) & 7) != 3)
        {
          v13 = sub_1AF0D5194(v10, v11);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDD4FC4(v23, v24, v13);
          }
        }

        v14 = *(v12 + 48);
        if (v14)
        {
          _Block_release(v14);
          *(v12 + 48) = 0;
        }
      }
    }

    sub_1AF14E910(a2, *(a1 + 16), v7, v8);
  }

  else
  {
    v15 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD4F4C(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }
}

void sub_1AF146664(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = HIDWORD(a2);
  if (!HIDWORD(a2))
  {
    v7 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD5014(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = sub_1AF0FB884(a3);
  if (v15)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 0x40000000;
    v18[2] = sub_1AF1471F8;
    v18[3] = &unk_1E7A7A0F8;
    v19 = a2;
    v20 = v6;
    sub_1AF1CEBC8(v15, v18);
  }

  v16 = sub_1AF1D5010(*(a1 + 16), a2, 0);
  if (v6)
  {
    v17 = v16;
    do
    {
      sub_1AF147248(v17, a1);
      v17 += 96;
      --v6;
    }

    while (v6);
  }

  sub_1AF1D4FF4(*(a1 + 16), a2);
}

unint64_t sub_1AF146764(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a2;
  v7 = a1;
  v8 = a4 & 2;
  if (!a3 && (a4 & 2) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a3)
  {
    if (*(a3 + 228))
    {
      v9 = sub_1AF0D5194(a1, a2);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD508C(v9, a2, v10, v11, v12, v13, v14, v15);
      }
    }

    v16 = sub_1AF1B75E8(a3, a2);
    v19 = sub_1AF1B75A0(a3, v17);
    v20 = v16 != 0;
    if (v16)
    {
      v21 = sub_1AF19CD34(v16, v18);
    }

    else
    {
      v21 = 0;
    }

    v22 = sub_1AF1B83E8(a3, v18);
    if ((a4 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_10:
    v23 = sub_1AF146BC8(v6, a3, v19);
    goto LABEL_14;
  }

  v21 = 0;
  v19 = 0;
  v20 = 0;
  v22 = 0;
  if (a4)
  {
    goto LABEL_10;
  }

LABEL_13:
  v23 = 0;
LABEL_14:
  v88 = v23 + (v8 >> 1);
  v24 = !v20;
  if ((a4 & 4) == 0)
  {
    v24 = 1;
  }

  if (v24)
  {
    v25 = 0;
  }

  else
  {
    v25 = sub_1AF146BC8(v6, a3, v21);
  }

  v26 = 0;
  v27 = v25 + v88;
  v86 = v23;
  v82 = v21;
  if ((a4 & 8) != 0 && v22)
  {
    v28 = v6;
    v29 = v25 + v88;
    v30 = v6;
    v31 = v19;
    v32 = v7;
    v33 = v25;
    v34 = sub_1AF12DDCC(v28, a2);
    v36 = sub_1AF1CF8AC(v34, v35);
    v26 = sub_1AF14EC54(v22, v36, v37);
    v25 = v33;
    v7 = v32;
    v19 = v31;
    v6 = v30;
    v27 = v29;
  }

  v38 = (v26 + v27);
  v84 = v26;
  v85 = v8;
  v80 = v27;
  v83 = v25;
  if ((a4 & 0x11111111) == 0x11)
  {
    v39 = sub_1AF146BC8(v6, a3, v19);
  }

  else
  {
    v39 = 0;
  }

  v40 = (v39 + v38);
  if (!(v39 + v38))
  {
    return 0xFFFFFFFFLL;
  }

  v87 = a4 & 0x11111111;
  v81 = v19;
  v89 = v6;
  v41 = sub_1AF13341C(v7, a2);
  v42 = sub_1AF1D4FEC(*(v41 + 16), v40);
  v43 = v42;
  if (a4)
  {
    sub_1AF146CF0(v41, v42, 0, v81, a3, 0);
    if (sub_1AF1B7A5C(a3))
    {
      v46 = sub_1AF1B75A0(a3, v44);
      if (!v46)
      {
        v47 = sub_1AF0D5194(0, v45);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDD5104(v47, v45, v48, v49, v50, v51, v52, v53);
        }
      }

      v54 = sub_1AF1B31B0(v46, v45);
      Count = CFArrayGetCount(v54);
      v57 = Count;
      if (Count != **(a3 + 232))
      {
        v58 = sub_1AF0D5194(Count, v56);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDD517C(v58, v59, v60, v61, v62, v63, v64, v65);
        }
      }

      if (v57 >= 1)
      {
        v66 = 0;
        for (i = 0; i != v57; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v54, i);
          v70 = sub_1AF1A09B0(ValueAtIndex, v69);
          if (v70)
          {
            v71 = v70;
            v72 = sub_1AF146BC8(v89, a3, v70);
            v73 = sub_1AF1D4FEC(*(v41 + 16), v72);
            *(*(a3 + 232) + v66 + 12) = v73;
            v8 = v8 & 0xFFFFFFFF00000000 | v73;
            sub_1AF146CF0(v41, v8, 0, v71, a3, 0);
          }

          else
          {
            *(*(a3 + 232) + v66 + 12) = 0xFFFFFFFFLL;
          }

          v66 += 12;
        }
      }
    }
  }

  if (v85)
  {
    sub_1AF146EB0(v41, v43, v86, a3, 1, 0, 0, 0, 0);
  }

  v74 = v87;
  if (v83)
  {
    sub_1AF146CF0(v41, v43, v88, v82, a3, 0);
  }

  if (v84)
  {
    v75 = v84;
    if (v84)
    {
      v76 = v80;
      do
      {
        sub_1AF146EB0(v41, v43, v76++, a3, 3, 0, 0, 0, 0);
        --v75;
      }

      while (v75);
    }

    sub_1AF14E910(v89, *(v41 + 16), v43, v84);
    v74 = v87;
  }

  if (v74 == 17)
  {
    sub_1AF146CF0(v41, v43, v38, v81, a3, 4);
    if (v86)
    {
      v77 = v86;
      do
      {
        v78 = sub_1AF1D5010(*(v41 + 16), v43, v38);
        *(v78 + 80) = *(v78 + 80) & 0xBFA7 | 0x4008;
        ++v38;
        --v77;
      }

      while (v77);
    }
  }

  return v43;
}

uint64_t sub_1AF146BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v6 = sub_1AF1B1F84(a3, a2);
  if (!v6 || (v7 = v6, !sub_1AF170774(v6)))
  {
    v9 = sub_1AF1476D0(a2, a3);
    if (v9)
    {
      v11 = v9;
      v12 = sub_1AF1A3CCC(v9, v10);
      if (v12 >= 1)
      {
        v13 = v12;
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = sub_1AF1A3D1C(v11, v14, 0);
          if (sub_1AF1A7674(v16))
          {
            ++v15;
          }

          ++v14;
        }

        while (v13 != v14);
        if (v15 && sub_1AF170D38(a3, v17))
        {
          v18 = 0;
          v19 = 1;
          do
          {
            sub_1AF174F44(a3, 1, a1);
            v20 = v19;
            v18 += sub_1AF17163C(a3, v19++);
          }

          while (v20 < 6);
          v15 *= v18;
        }

        return v15;
      }
    }

    return 0;
  }

  return sub_1AF170790(v7);
}

uint64_t sub_1AF146CF0(uint64_t a1, uint64_t a2, unsigned int a3, const void *a4, uint64_t a5, int a6)
{
  v9 = a2;
  v10 = sub_1AF1B1F84(a4, a2);
  if (sub_1AF170774(v10))
  {
    result = sub_1AF170790(v10);
    if (result)
    {
      v12 = result;
      v13 = a3;
      do
      {
        result = sub_1AF146EB0(a1, v9, v13++, a5, a6, a4, v10, 0, 0);
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v14 = sub_1AF1476D0(a5, a4);
    result = sub_1AF1A3CCC(v14, v15);
    if (result >= 1)
    {
      v16 = result;
      v17 = 0;
      v18 = 0;
      v19 = v9;
      v20 = a3;
      v26 = result;
      do
      {
        v21 = sub_1AF1A3D1C(v14, v17, 0);
        result = sub_1AF1A7674(v21);
        if (result)
        {
          if (sub_1AF170D38(a4, v22))
          {
            v23 = a5;
            v24 = 1;
            do
            {
              v25 = v24;
              result = sub_1AF17163C(a4, v24);
              if (result)
              {
                v9 = v9 & 0xFFFFFFFF00000000 | v19;
                result = sub_1AF146EB0(a1, v9, v18 + v20, v23, a6, a4, v14, v17, v24);
                ++v18;
              }

              ++v24;
            }

            while (v25 < 6);
            a5 = v23;
            v16 = v26;
          }

          else
          {
            v27 = v27 & 0xFFFFFFFF00000000 | v19;
            result = sub_1AF146EB0(a1, v19, v18 + v20, a5, a6, a4, v14, v17, 0);
            ++v18;
          }
        }

        ++v17;
      }

      while (v17 != v16);
    }
  }

  return result;
}

uint64_t *sub_1AF146EB0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5, const void *a6, const void *a7, CFIndex a8, char a9)
{
  v13 = a3;
  valuePtr = a8;
  v16 = sub_1AF1D5010(*(a1 + 16), a2, a3);
  *v16 = 0u;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 0u;
  *(v16 + 80) = 0u;
  *(v16 + 16) = 0u;
  v17 = (v16 + 16);
  sub_1AF145DD0(v16);
  *v16 = (a2 << 12) + (v13 + HIWORD(a2));
  v19 = *(v16 + 80) & 0xC7F8 | ((a9 & 7) << 11);
  *(v16 + 8) = a4;
  *(v16 + 80) = v19 & 0xFFF8 | a5 & 7;
  if (a5 != 3)
  {
    v21 = *v17;
    v22 = a6;
    if (*v17 != a6)
    {
      if (v21)
      {
        CFRelease(v21);
        *v17 = 0;
      }

      if (a6)
      {
        v23 = CFRetain(a6);
      }

      else
      {
        v23 = 0;
      }

      *v17 = v23;
    }

    v24 = *(v16 + 24);
    if (v24 != a7)
    {
      if (v24)
      {
        CFRelease(v24);
        *(v16 + 24) = 0;
      }

      if (a7)
      {
        v25 = CFRetain(a7);
      }

      else
      {
        v25 = 0;
      }

      *(v16 + 24) = v25;
    }

    v26 = *(v16 + 32);
    if (v26)
    {
      CFRelease(v26);
      *(v16 + 32) = 0;
    }

    v27 = *(v16 + 40);
    if (v27)
    {
      CFRelease(v27);
      *(v16 + 40) = 0;
    }

    if (a7)
    {
      if (sub_1AF170774(a7))
      {
        v28 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr);
        v29 = *(v16 + 56);
        if (v29 != v28)
        {
          if (v29)
          {
            CFRelease(v29);
            *(v16 + 56) = 0;
          }

          if (v28)
          {
            v30 = CFRetain(v28);
          }

          else
          {
            v30 = 0;
          }

          *(v16 + 56) = v30;
        }

        CFRelease(v28);
      }

      else
      {
        v31 = sub_1AF170740(a7);
        if (v31)
        {
          v32 = v31;
          v33 = !a6 || sub_1AF1B40A0(a6, v18);
          v34 = sub_1AF1A3D1C(v32, a8, v33);
          v35 = *(v16 + 48);
          if (v35 != v34)
          {
            if (v35)
            {
              CFRelease(v35);
              *(v16 + 48) = 0;
            }

            if (v34)
            {
              v36 = CFRetain(v34);
            }

            else
            {
              v36 = 0;
            }

            *(v16 + 48) = v36;
          }
        }
      }
    }

    if (!v22)
    {
      return sub_1AF146410(a1, v16, 0xFFFFFFFFLL);
    }

    v37 = sub_1AF1B1FE0(v22, v18);
    if (!v37)
    {
      v45 = sub_1AF1A126C(0, v38);
      v46 = *(v16 + 32);
      if (v46 != v45)
      {
        if (v46)
        {
          CFRelease(v46);
          *(v16 + 32) = 0;
        }

        if (v45)
        {
          v47 = CFRetain(v45);
        }

        else
        {
          v47 = 0;
        }

        *(v16 + 32) = v47;
      }

      if (v45)
      {
        CFRelease(v45);
      }

      return sub_1AF146410(a1, v16, 0xFFFFFFFFLL);
    }

    v39 = v37;
    v40 = valuePtr;
    v41 = sub_1AF15B294(v22);
    if (v41)
    {
      v42 = v41;
      v43 = *(v16 + 32);
      if (v43 != v42)
      {
        if (v43)
        {
          CFRelease(v43);
          *(v16 + 32) = 0;
        }

        v44 = v42;
        goto LABEL_61;
      }
    }

    else
    {
      v48 = sub_1AF1B2030(v22, v40 % v39);
      v49 = *(v16 + 32);
      if (v49 != v48)
      {
        if (v49)
        {
          CFRelease(v49);
          *(v16 + 32) = 0;
        }

        if (!v48)
        {
          v50 = 0;
          goto LABEL_62;
        }

        v44 = v48;
LABEL_61:
        v50 = CFRetain(v44);
LABEL_62:
        *(v16 + 32) = v50;
      }
    }

    return sub_1AF146410(a1, v16, 0xFFFFFFFFLL);
  }

  *(v16 + 48) = 0;
  *v17 = 0u;
  *(v16 + 32) = 0u;

  return sub_1AF146410(a1, v16, 4);
}

uint64_t sub_1AF1471F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF12EDD8(a2, a2);
  sub_1AF140204(v4, *(a1 + 32));
  v6 = sub_1AF12EE20(a2, v5);
  v7 = *(a1 + 32);

  return sub_1AF14B46C(v6, v7);
}

void sub_1AF147248(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 80) & 0x20) != 0)
  {
    sub_1AF1464B4(a2, a1, -1);
  }

  *(a1 + 8) = 0;

  sub_1AF145DE0(a1);
}

void sub_1AF147298(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD2A58(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v12 = sub_1AF13341C(a1, a2);
  if (!v12)
  {
    v13 = sub_1AF0D5194(0, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD51F4(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  if (*(a2 + 228))
  {
    sub_1AF146664(v12, *(a2 + 224), a1);
    *(a2 + 224) = 0xFFFFFFFFLL;
  }

  if (sub_1AF1B7A5C(a2))
  {
    v22 = sub_1AF1B75A0(a2, v21);
    if (v22)
    {
      v24 = sub_1AF1B31B0(v22, v23);
      Count = CFArrayGetCount(v24);
      v27 = Count;
      if (Count != **(a2 + 232))
      {
        v28 = sub_1AF0D5194(Count, v26);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDD526C(v28, v29, v30, v31, v32, v33, v34, v35);
        }
      }

      if (v27 >= 1)
      {
        v36 = 0;
        v37 = *(a2 + 232);
        do
        {
          if (*(v37 + v36 + 16))
          {
            sub_1AF146664(v12, *(v37 + v36 + 12), a1);
            v37 = *(a2 + 232);
          }

          *(v37 + v36 + 12) = 0xFFFFFFFFLL;
          v36 += 12;
          --v27;
        }

        while (v27);
      }
    }
  }
}

void sub_1AF1473DC(void *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD51F4(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  sub_1AF1D4808(a1[2]);
  sub_1AF1D4480(a1[3], v11);
  sub_1AF1D4480(a1[4], v12);
  sub_1AF1D4480(a1[5], v13);
}

uint64_t sub_1AF147440(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD51F4(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return sub_1AF1D4FF8(*(a1 + 16));
}

uint64_t sub_1AF14748C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD51F4(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return sub_1AF1D5000(*(a1 + 16));
}

uint64_t sub_1AF1474D8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD51F4(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return sub_1AF1D5010(*(a1 + 16), v2, 0);
}

uint64_t sub_1AF147538(_BOOL8 a1, unint64_t a2, int64_t a3)
{
  v4 = a2;
  v5 = a1;
  v6 = HIDWORD(a2);
  if (!a1)
  {
    v7 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDD51F4(v7, a2, v8, v9, v10, v11, v12, v13);
    }
  }

  if (v6 <= a3)
  {
    v14 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD52E4(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  return sub_1AF1D5010(*(v5 + 16), v4, a3);
}

uint64_t sub_1AF1475D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = sub_1AF147640;
  v5[3] = &unk_1E7A7A118;
  v5[4] = a2;
  v5[5] = a3;
  return sub_1AF1D50F8(v3, v5);
}

const void *sub_1AF1476D0(uint64_t a1, uint64_t a2)
{
  if (sub_1AF1B75A0(a1, a2) == a2)
  {

    return sub_1AF1BB0AC(a1, v4);
  }

  else
  {

    return sub_1AF1B329C(a2, v4);
  }
}

void sub_1AF147738(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
    a1[6] = 0;
  }

  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
    a1[7] = 0;
  }

  v6 = a1[8];
  if (v6)
  {
    CFRelease(v6);
    a1[8] = 0;
  }

  v7 = a1[4];
  if (v7)
  {
    CFRelease(v7);
    a1[4] = 0;
  }

  v8 = a1[5];
  if (v8)
  {
    CFRelease(v8);
    a1[5] = 0;
  }
}

__CFString *sub_1AF1477CC(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = sub_1AF3753A8(a1);
  CFStringAppendFormat(Mutable, 0, @"<%s %p | entryPoint:%d flags:%x\n", v3, a1, *(a1 + 72), *(a1 + 73));
  if (*(a1 + 16))
  {
    CFStringAppendFormat(Mutable, 0, @"  declaration : %@\n", *(a1 + 16));
  }

  if (*(a1 + 48))
  {
    CFStringAppendFormat(Mutable, 0, @"  arguments : %@\n", *(a1 + 48));
  }

  if (*(a1 + 64))
  {
    CFStringAppendFormat(Mutable, 0, @"  varyings : %@\n", *(a1 + 64));
  }

  if (*(a1 + 24))
  {
    CFStringAppendFormat(Mutable, 0, @"  code : %@\n", *(a1 + 24));
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

uint64_t sub_1AF1478CC()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB654CE0 = result;
  return result;
}

void sub_1AF1478F4()
{
  v46 = *MEMORY[0x1E69E9840];
  *keys = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
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
  v8 = 0u;
  v9 = 0u;
  *values = 0u;
  v7 = 0u;
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 100);
  for (i = 0; i != 40; ++i)
  {
    v3 = *(&off_1E7A7A138 + i * 8);
    keys[i] = CFStringCreateWithFormat(v0, 0, @"_surface.%@", v3);
    CFStringReplaceAll(Mutable, v3);
    CFStringUppercase(Mutable, 0);
    values[i] = CFStringCreateWithFormat(v0, 0, @"USE_%@", Mutable);
  }

  CFRelease(Mutable);
  v4 = CFDictionaryCreate(v0, keys, values, 40, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = 0;
  qword_1ED731B70 = v4;
  do
  {
    CFRelease(keys[v5]);
    CFRelease(values[v5++]);
  }

  while (v5 != 40);
}

void sub_1AF147AAC()
{
  v14 = *MEMORY[0x1E69E9840];
  *keys = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  *values = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 100);
  for (i = 0; i != 8; ++i)
  {
    v3 = *(&off_1E7A7A278 + i * 8);
    keys[i] = CFStringCreateWithFormat(v0, 0, @"u_%@Texture", v3);
    CFStringReplaceAll(Mutable, v3);
    CFStringUppercase(Mutable, 0);
    values[i] = CFStringCreateWithFormat(v0, 0, @"USE_%@_MAP", Mutable);
  }

  CFRelease(Mutable);
  v4 = CFDictionaryCreate(v0, keys, values, 8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = 0;
  qword_1ED731B58 = v4;
  do
  {
    CFRelease(keys[v5]);
    CFRelease(values[v5++]);
  }

  while (v5 != 8);
}

CFDictionaryRef sub_1AF147C24()
{
  v7 = *MEMORY[0x1E69E9840];
  *keys = xmmword_1E7A7A2B8;
  v4 = *&off_1E7A7A2C8;
  v6 = @"_geometry.clipDistance3";
  v5 = xmmword_1E7A7A2D8;
  v1[0] = xmmword_1E7A7A2F0;
  v1[1] = *&off_1E7A7A300;
  v1[2] = xmmword_1E7A7A310;
  v2 = @"USE_CLIP_DISTANCE3";
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, v1, 7, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  qword_1ED731B90 = result;
  return result;
}

CFDictionaryRef sub_1AF147CE0()
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = xmmword_1E7A7A338;
  *keys = xmmword_1E7A7A328;
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &v1, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  qword_1ED731BA0 = result;
  return result;
}

CFDictionaryRef sub_1AF147D78()
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = xmmword_1E7A7A358;
  *keys = xmmword_1E7A7A348;
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &v1, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  qword_1ED731B80 = result;
  return result;
}

const __CFDictionary *sub_1AF147E10(const __CFString *a1, char a2, uint64_t a3, char a4)
{
  v55 = *MEMORY[0x1E69E9840];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  sub_1AF14A6F8(0, &v48);
  sub_1AF14985C(a1, &v48, 0);
  v6 = v48;
  v7 = v49;
  v8 = v50;
  v9 = v51;
  v10 = v52;
  v11 = BYTE8(v52);
  v47 = HIDWORD(v52);
  if (qword_1EB654CE8 != -1)
  {
    sub_1AFDD535C();
  }

  Length = sub_1AF0D160C(qword_1EB654CE0, 0x68uLL);
  v14 = Length;
  if (v6)
  {
    Length = CFStringGetLength(v6);
    if (Length)
    {
      Length = *(v14 + 2);
      if (Length != v6)
      {
        if (Length)
        {
          CFRelease(Length);
          *(v14 + 2) = 0;
        }

        Length = CFRetain(v6);
        *(v14 + 2) = Length;
      }
    }
  }

  if (v8)
  {
    Length = CFDictionaryGetCount(v8);
    if (Length)
    {
      Length = *(v14 + 6);
      if (Length != v8)
      {
        if (Length)
        {
          CFRelease(Length);
          *(v14 + 6) = 0;
        }

        Length = CFRetain(v8);
        *(v14 + 6) = Length;
      }
    }
  }

  if (*(&v8 + 1))
  {
    Length = CFDictionaryGetCount(*(&v8 + 1));
    if (Length)
    {
      Length = *(v14 + 7);
      if (Length != *(&v8 + 1))
      {
        if (Length)
        {
          CFRelease(Length);
          *(v14 + 7) = 0;
        }

        Length = CFRetain(*(&v8 + 1));
        *(v14 + 7) = Length;
      }
    }
  }

  if (v9)
  {
    Length = CFDictionaryGetCount(v9);
    if (Length)
    {
      Length = *(v14 + 8);
      if (Length != v9)
      {
        if (Length)
        {
          CFRelease(Length);
          *(v14 + 8) = 0;
        }

        Length = CFRetain(v9);
        *(v14 + 8) = Length;
      }
    }
  }

  if (!*(&v6 + 1) || (Length = CFStringGetLength(*(&v6 + 1))) == 0)
  {
    v16 = sub_1AF0D5194(Length, v13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDD5384(v16);
      if (!v7)
      {
        goto LABEL_41;
      }

      goto LABEL_36;
    }

LABEL_35:
    if (!v7)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }

  v15 = *(v14 + 3);
  if (v15 == *(&v6 + 1))
  {
    goto LABEL_35;
  }

  if (v15)
  {
    CFRelease(v15);
    *(v14 + 3) = 0;
  }

  *(v14 + 3) = CFRetain(*(&v6 + 1));
  if (v7)
  {
LABEL_36:
    if (CFDictionaryGetCount(v7))
    {
      v17 = *(v14 + 4);
      if (v17 != v7)
      {
        if (v17)
        {
          CFRelease(v17);
          *(v14 + 4) = 0;
        }

        *(v14 + 4) = CFRetain(v7);
      }
    }
  }

LABEL_41:
  if (v10)
  {
    if (CFDictionaryGetCount(v10))
    {
      v18 = *(v14 + 5);
      if (v18 != v10)
      {
        if (v18)
        {
          CFRelease(v18);
          *(v14 + 5) = 0;
        }

        *(v14 + 5) = CFRetain(v10);
      }
    }
  }

  *(v14 + 72) = a2;
  v19 = v11 | a4;
  *(v14 + 10) = 0;
  v20 = MEMORY[0x1E695E480];
  if (*(v14 + 3))
  {
    v21 = *(v14 + 4);
    v22 = *MEMORY[0x1E695E480];
    if (v21)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v21);
      Count = CFDictionaryGetCount(*(v14 + 4));
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      Count = 0;
    }

    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = sub_1AF1497C4;
    v53[3] = &unk_1E7A7A368;
    v53[4] = v14;
    v53[5] = MutableCopy;
    if (qword_1ED731B78 != -1)
    {
      sub_1AFDD53C8();
    }

    sub_1AF28A67C(qword_1ED731B70, v53);
    if (qword_1ED731B60 != -1)
    {
      sub_1AFDD53F0();
    }

    sub_1AF28A67C(qword_1ED731B58, v53);
    if (qword_1ED731B98 != -1)
    {
      sub_1AFDD5418();
    }

    sub_1AF28A67C(qword_1ED731B90, v53);
    if (qword_1ED731BA8 != -1)
    {
      sub_1AFDD5440();
    }

    sub_1AF28A67C(qword_1ED731BA0, v53);
    if (qword_1ED731B88 != -1)
    {
      sub_1AFDD5468();
    }

    sub_1AF28A67C(qword_1ED731B80, v53);
    if (CFDictionaryGetCount(MutableCopy) != Count)
    {
      Copy = CFDictionaryCreateCopy(v22, MutableCopy);
      if (!Copy)
      {
        v27 = sub_1AF0D5194(0, v25);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDD5490(v27, v28, v29, v30, v31, v32, v33, v34);
        }
      }

      v35 = *(v14 + 4);
      if (v35 != Copy)
      {
        if (v35)
        {
          CFRelease(v35);
          *(v14 + 4) = 0;
        }

        if (Copy)
        {
          v36 = CFRetain(Copy);
        }

        else
        {
          v36 = 0;
        }

        *(v14 + 4) = v36;
      }

      CFRelease(Copy);
    }

    CFRelease(MutableCopy);
  }

  v37 = *(v14 + 4);
  if (v37)
  {
    if (CFDictionaryGetCountOfKey(v37, @"USE_TANGENT") || CFDictionaryGetCountOfKey(*(v14 + 4), @"USE_TANGENT"))
    {
      v19 |= 2u;
    }

    v38 = *(v14 + 4);
    *(v14 + 73) = v19;
    if (v38)
    {
      if (CFDictionaryGetCountOfKey(v38, @"USE_EMISSIVETEXCOORD"))
      {
        *(v14 + 20) |= 1u;
      }

      if (CFDictionaryGetCountOfKey(*(v14 + 4), @"USE_DIFFUSETEXCOORD"))
      {
        *(v14 + 20) |= 2u;
      }

      if (CFDictionaryGetCountOfKey(*(v14 + 4), @"USE_SPECULARTEXCOORD"))
      {
        *(v14 + 20) |= 4u;
      }

      if (CFDictionaryGetCountOfKey(*(v14 + 4), @"USE_REFLECTIVETEXCOORD"))
      {
        *(v14 + 20) |= 8u;
      }

      if (CFDictionaryGetCountOfKey(*(v14 + 4), @"USE_TRANSPARENTTEXCOORD"))
      {
        *(v14 + 20) |= 0x10u;
      }

      if (CFDictionaryGetCountOfKey(*(v14 + 4), @"USE_FILTERTEXCOORD"))
      {
        *(v14 + 20) |= 0x20u;
      }

      if (CFDictionaryGetCountOfKey(*(v14 + 4), @"USE_NORMALTEXCOORD"))
      {
        *(v14 + 20) |= 0x40u;
      }

      if (CFDictionaryGetCountOfKey(*(v14 + 4), @"USE_METALNESSTEXCOORD"))
      {
        *(v14 + 20) |= 0x200u;
      }

      if (CFDictionaryGetCountOfKey(*(v14 + 4), @"USE_ROUGHNESSTEXCOORD"))
      {
        *(v14 + 20) |= 0x400u;
      }

      if (CFDictionaryGetCountOfKey(*(v14 + 4), @"USE_CLEARCOATTEXCOORD"))
      {
        *(v14 + 20) |= 0x800u;
      }

      if (CFDictionaryGetCountOfKey(*(v14 + 4), @"USE_CLEARCOATROUGHNESSTEXCOORD"))
      {
        *(v14 + 20) |= 0x1000u;
      }

      if (CFDictionaryGetCountOfKey(*(v14 + 4), @"USE_CLEARCOATNORMALTEXCOORD"))
      {
        *(v14 + 20) |= 0x2000u;
      }

      if (CFDictionaryGetCountOfKey(*(v14 + 4), @"USE_SUBSURFACETEXCOORD"))
      {
        *(v14 + 20) |= 0x4000u;
      }

      if (CFDictionaryGetCountOfKey(*(v14 + 4), @"USE_SUBSURFACERADIUSTEXCOORD"))
      {
        *(v14 + 20) |= 0x8000u;
      }

      if (CFDictionaryGetCountOfKey(*(v14 + 4), @"USE_TRANSMISSIONTEXCOORD"))
      {
        *(v14 + 20) |= 0x10000u;
      }

      if (CFDictionaryGetCountOfKey(*(v14 + 4), @"USE_TRANSMISSIONCOLORTEXCOORD"))
      {
        *(v14 + 20) |= 0x20000u;
      }

      if (CFDictionaryGetCountOfKey(*(v14 + 4), @"USE_AMBIENTOCCLUSIONTEXCOORD"))
      {
        *(v14 + 20) |= 0x80u;
      }
    }
  }

  else
  {
    *(v14 + 73) = v19;
  }

  *(v14 + 19) = v47;
  if (*(v14 + 3))
  {
    strcpy(&cStr, "_geometry.texcoords[x]");
    v39 = CFStringCreateWithCStringNoCopy(*v20, &cStr, 0x600u, *MEMORY[0x1E695E498]);
    for (i = 0; i != 8; ++i)
    {
      LOBYTE(cStr.hash[3]) = i | 0x30;
      if (CFStringFind(*(v14 + 3), v39, 0).location != -1)
      {
        *(v14 + 21) |= 1 << i;
      }
    }

    CFRelease(v39);
  }

  memset(&cStr, 0, sizeof(cStr));
  CC_SHA256_Init(&cStr);
  CC_SHA256_Update(&cStr, v14 + 72, 1u);
  v41 = *(v14 + 3);
  if (v41)
  {
    sub_1AF148DA8(v41);
  }

  v42 = *(v14 + 2);
  if (v42)
  {
    sub_1AF148DA8(v42);
  }

  v43 = *(v14 + 4);
  if (v43)
  {
    CFDictionaryApplyFunction(v43, sub_1AF148F00, &cStr);
  }

  v44 = *(v14 + 6);
  if (v44)
  {
    CFDictionaryApplyFunction(v44, sub_1AF148F00, &cStr);
  }

  CC_SHA256_Final(v14 + 88, &cStr);
  sub_1AF14A83C(&v48);
  return v14;
}

const __CFDictionary *sub_1AF14863C(CFStringRef theString, char a2, CFDictionaryRef theDict, uint64_t a4, char a5)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (theDict && CFDictionaryGetCount(theDict) >= 1)
  {
    Count = CFDictionaryGetCount(theDict);
    MEMORY[0x1EEE9AC00](Count);
    v10 = (8 * Count + 15) & 0xFFFFFFFFFFFFFFF0;
    v11 = (v21 - v10);
    if ((8 * Count) >= 0x200)
    {
      v12 = 512;
    }

    else
    {
      v12 = 8 * Count;
    }

    bzero(v21 - v10, v12);
    MEMORY[0x1EEE9AC00](v13);
    v14 = (v21 - v10);
    bzero(v21 - v10, v12);
    CFDictionaryGetKeysAndValues(theDict, (v21 - v10), (v21 - v10));
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    if (Count >= 1)
    {
      do
      {
        v17 = *v11++;
        v16 = v17;
        v18 = *v14++;
        CFStringAppendFormat(Mutable, 0, @"#define %@ %@\n", v16, v18);
        --Count;
      }

      while (Count);
    }

    CFStringAppend(Mutable, theString);
  }

  else
  {
    Mutable = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
  }

  v19 = sub_1AF147E10(Mutable, a2, 0, a5);
  CFRelease(Mutable);
  return v19;
}

uint64_t sub_1AF148804(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD5508(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 16);
}

uint64_t sub_1AF14884C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD5508(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 40);
}

uint64_t sub_1AF148894(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD5508(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 48);
}

uint64_t sub_1AF1488DC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD5508(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 64);
}

uint64_t sub_1AF148924(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD5508(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 24);
}

uint64_t sub_1AF14896C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD5508(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 32);
}

void sub_1AF1489B4(uint64_t a1)
{
  if (qword_1ED731B78 != -1)
  {
    sub_1AFDD5580();
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF148BDC;
  v6[3] = &unk_1E7A79A00;
  v6[4] = a1;
  sub_1AF28A67C(qword_1ED731B70, v6);
  if (qword_1ED731B60 != -1)
  {
    sub_1AFDD53F0();
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF148BF0;
  v5[3] = &unk_1E7A79A00;
  v5[4] = a1;
  sub_1AF28A67C(qword_1ED731B58, v5);
  if (qword_1ED731B98 != -1)
  {
    sub_1AFDD5418();
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF148C04;
  v4[3] = &unk_1E7A79A00;
  v4[4] = a1;
  sub_1AF28A67C(qword_1ED731B90, v4);
  if (qword_1ED731BA8 != -1)
  {
    sub_1AFDD5440();
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF148C18;
  v3[3] = &unk_1E7A79A00;
  v3[4] = a1;
  sub_1AF28A67C(qword_1ED731BA0, v3);
  if (qword_1ED731B88 != -1)
  {
    sub_1AFDD5468();
  }

  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF148C2C;
  v2[3] = &unk_1E7A79A00;
  v2[4] = a1;
  sub_1AF28A67C(qword_1ED731B80, v2);
}

uint64_t sub_1AF148C40(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD5508(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 73);
}

uint64_t sub_1AF148C88(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD5508(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 80);
}

uint64_t sub_1AF148CD0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD5508(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 84);
}

uint64_t sub_1AF148D18(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD5508(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 72);
}

uint64_t sub_1AF148D60(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD5508(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 76);
}

CFIndex sub_1AF148DA8(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v11 = *MEMORY[0x1E69E9840];
  CStringPtr = CFStringGetCStringPtr(v3, 0x600u);
  result = CFStringGetLength(v4);
  v7 = result;
  if (CStringPtr)
  {

    return CC_SHA256_Update(v2, CStringPtr, result);
  }

  else
  {
    do
    {
      if (!v7)
      {
        break;
      }

      usedBufLen = 0;
      v13.location = CStringPtr;
      v13.length = v7;
      result = CFStringGetBytes(v4, v13, 0x8000100u, 0, 0, buffer, 0x8000, &usedBufLen);
      v8 = result;
      if (usedBufLen)
      {
        result = CC_SHA256_Update(v2, buffer, usedBufLen);
      }

      CStringPtr += v8;
      v7 -= v8;
    }

    while (v8);
  }

  return result;
}

CFIndex sub_1AF148F00(uint64_t a1, uint64_t a2)
{
  result = sub_1AF148DA8(a1);
  if (a2)
  {

    return sub_1AF148DA8(a2);
  }

  return result;
}

void sub_1AF1497C4(uint64_t a1, const __CFString *a2, const void *a3)
{
  if (CFStringFind(*(*(a1 + 32) + 24), a2, 0).location != -1 || (v7 = *(*(a1 + 32) + 16)) != 0 && CFStringFind(v7, a2, 0).location != -1)
  {
    v6 = *(a1 + 40);

    CFDictionarySetValue(v6, a3, @"2");
  }
}

void sub_1AF14985C(CFStringRef theString, uint64_t a2, int a3)
{
  v5 = *MEMORY[0x1E695E480];
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], theString, @"\n");
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  Mutable = CFStringCreateMutable(v5, 0);
  *(a2 + 72) = 0;
  if (Count < 1)
  {
    goto LABEL_44;
  }

  v9 = 0;
  v10 = 4;
  do
  {
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v9);
      if (sub_1AF289408(ValueAtIndex, @"//"))
      {
        goto LABEL_12;
      }

      if (a3)
      {
        if (!sub_1AF289408(ValueAtIndex, @"uniform"))
        {
          goto LABEL_12;
        }

        v12 = ValueAtIndex;
        v13 = a2;
        v14 = 1;
        goto LABEL_11;
      }

      if (sub_1AF289408(ValueAtIndex, @"#pragma opaque"))
      {
        *(a2 + 72) |= 1u;
        goto LABEL_12;
      }

      if (sub_1AF289408(ValueAtIndex, @"uniform"))
      {
        v12 = ValueAtIndex;
        v13 = a2;
        v14 = 0;
LABEL_11:
        sub_1AF149BA4(v12, v13, v14);
        goto LABEL_12;
      }

      if (sub_1AF289408(ValueAtIndex, @"#pragma declaration"))
      {
        v10 = 0;
        goto LABEL_12;
      }

      if (sub_1AF289408(ValueAtIndex, @"#pragma arguments"))
      {
        if (v10 == 4 && CFStringGetLength(Mutable))
        {
          CFStringAppend(*a2, Mutable);
          CFStringReplaceAll(Mutable, &stru_1F2575650);
        }

        goto LABEL_20;
      }

      if (sub_1AF289408(ValueAtIndex, @"#pragma varyings"))
      {
        if (v10 == 4 && CFStringGetLength(Mutable))
        {
          CFStringAppend(*a2, Mutable);
          CFStringReplaceAll(Mutable, &stru_1F2575650);
        }

        v10 = 2;
        goto LABEL_12;
      }

      if (sub_1AF289408(ValueAtIndex, @"#pragma body"))
      {
        break;
      }

      if (sub_1AF289408(ValueAtIndex, @"#pragma "))
      {
        goto LABEL_12;
      }

      if (v10 <= 1)
      {
        if (v10)
        {
          sub_1AF14A2E8(ValueAtIndex, a2);
LABEL_20:
          v10 = 1;
          goto LABEL_12;
        }

        sub_1AF149F94(ValueAtIndex, a2);
        CFStringAppend(*a2, ValueAtIndex);
        v15 = *a2;
        goto LABEL_38;
      }

      if (v10 == 2)
      {
        sub_1AF14A5B4(ValueAtIndex, a2);
        goto LABEL_12;
      }

      if (v10 == 3)
      {
        sub_1AF149F94(ValueAtIndex, a2);
        CFStringAppend(*(a2 + 8), ValueAtIndex);
        v15 = *(a2 + 8);
LABEL_38:
        CFStringAppend(v15, @"\n");
        goto LABEL_12;
      }

      sub_1AF149F94(ValueAtIndex, a2);
      CFStringAppend(Mutable, ValueAtIndex);
      CFStringAppend(Mutable, @"\n");
      ++v9;
      v10 = 4;
      if (v9 == Count)
      {
        goto LABEL_44;
      }
    }

    if (v10 == 4 && CFStringGetLength(Mutable))
    {
      CFStringAppend(*a2, Mutable);
      CFStringReplaceAll(Mutable, &stru_1F2575650);
    }

    v10 = 3;
LABEL_12:
    ++v9;
  }

  while (v9 != Count);
  if (v10 == 4)
  {
LABEL_44:
    if (CFStringGetLength(Mutable))
    {
      CFStringAppend(*(a2 + 8), Mutable);
      CFStringReplaceAll(Mutable, &stru_1F2575650);
    }
  }

  CFRelease(Mutable);

  CFRelease(ArrayBySeparatingStrings);
}

void sub_1AF149BA4(const __CFString *a1, uint64_t a2, char a3)
{
  memset(v27, 0, 240);
  Length = CFStringGetLength(a1);
  sub_1AF28923C(v27, a1, 0, Length, 1);
  sub_1AF2892CC(v27);
  if (sub_1AF130E94(v27))
  {
    sub_1AF2892CC(v27);
  }

  v28.location = sub_1AF2892D4(v27);
  v28.length = v6;
  v7 = CFStringCompareWithOptions(a1, @"uniform", v28, 0);
  if (v7)
  {
    v9 = sub_1AF0D5194(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDD5594(a1, v9);
    }

    return;
  }

  if ((a3 & 1) == 0)
  {
    CFStringAppendFormat(*a2, 0, @"%@\n", a1);
  }

  if (sub_1AF2892CC(v27))
  {
    v24 = 0;
    alloc = *MEMORY[0x1E695E480];
    while (1)
    {
      v10 = v24;
      if (v24)
      {
        goto LABEL_48;
      }

      if (sub_1AF130E94(v27))
      {
        sub_1AF2892CC(v27);
      }

      v29.location = sub_1AF2892D4(v27);
      v29.length = v11;
      v12 = CFStringCreateWithSubstring(alloc, a1, v29);
      v10 = sub_1AF2880C4(v12);
      CFRelease(v12);
      sub_1AF2892CC(v27);
      if (v10)
      {
LABEL_48:
        if (sub_1AF130E94(v27))
        {
          sub_1AF2892CC(v27);
        }

        v30.location = sub_1AF2892D4(v27);
        v30.length = v13;
        v14 = CFStringCreateWithSubstring(alloc, a1, v30);
        CFDictionarySetValue(*(a2 + 24), v14, v10);
        CFRelease(v14);
      }

      if (sub_1AF2892CC(v27))
      {
        break;
      }

LABEL_43:
      if ((sub_1AF2892CC(v27) & 1) == 0)
      {
        return;
      }
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      v20 = sub_1AF2892D4(v27);
      v21 = v19;
      if (v17)
      {
        v31.location = v20;
        v31.length = v19;
        if (CFStringCompareWithOptions(a1, @"/", v31, 0) == kCFCompareEqualTo)
        {
          v22 = 0;
          v16 = !v15;
          goto LABEL_36;
        }

        v32.location = v20;
        v32.length = v21;
        v22 = 0;
        v15 = CFStringCompareWithOptions(a1, @"*", v32, 0) == kCFCompareEqualTo;
        v16 = 1;
      }

      else
      {
        v33.location = v20;
        v33.length = v19;
        if (CFStringCompareWithOptions(a1, @";", v33, 0) == kCFCompareEqualTo)
        {
          sub_1AF2892CC(v27);
          if (sub_1AF130E94(v27))
          {
            sub_1AF2892CC(v27);
          }

          v39.location = sub_1AF2892D4(v27);
          v39.length = v23;
          if (CFStringCompareWithOptions(a1, @"uniform", v39, 0) == kCFCompareEqualTo)
          {
            v24 = 0;
            goto LABEL_43;
          }

          return;
        }

        v34.location = v20;
        v34.length = v21;
        if (CFStringCompareWithOptions(a1, @"/", v34, 0) == kCFCompareEqualTo)
        {
          if (v16)
          {
            return;
          }

          v16 = 0;
          v15 = 0;
          v22 = 1;
          goto LABEL_37;
        }

        v35.location = v20;
        v35.length = v21;
        if (CFStringCompareWithOptions(a1, @"*", v35, 0))
        {
          v36.location = v20;
          v36.length = v21;
          if (CFStringCompareWithOptions(a1, @"("), v36, 0)
          {
            v37.location = v20;
            v37.length = v21;
            if (CFStringCompareWithOptions(a1, @""), v37, 0) == kCFCompareEqualTo)
            {
              v18 = 0;
LABEL_35:
              v16 = 0;
              v22 = 0;
LABEL_36:
              v15 = 0;
              goto LABEL_37;
            }

            v38.location = v20;
            v38.length = v21;
            if (CFStringCompareWithOptions(a1, @",", v38, 0))
            {
              goto LABEL_35;
            }

            if ((v18 & 1) == 0)
            {
              v24 = v10;
              goto LABEL_43;
            }
          }

          v16 = 0;
          v22 = 0;
          v15 = 0;
          v18 = 1;
        }

        else
        {
          v22 = 0;
          v15 = 1;
        }
      }

LABEL_37:
      v17 = v16;
      v16 = v22;
      if ((sub_1AF2892CC(v27) & 1) == 0)
      {
        goto LABEL_43;
      }
    }
  }
}

CFComparisonResult sub_1AF149F94(const __CFString *a1, uint64_t a2)
{
  Length = CFStringGetLength(a1);
  memset(v27, 0, 240);
  v5 = sub_1AF28923C(v27, a1, 0, Length, 1);
  v7 = sub_1AF14A978(v5, v6);
  result = sub_1AF2892CC(v27);
  if (result)
  {
    v9 = 0;
    v10 = *MEMORY[0x1E695E480];
    while (1)
    {
      if (sub_1AF130E94(v27))
      {
        sub_1AF2892CC(v27);
      }

      v11 = sub_1AF2892D4(v27);
      v13 = v12;
      v28.location = v11;
      v28.length = v12;
      result = CFStringCompareWithOptions(a1, @"/", v28, 0);
      v14 = result == kCFCompareEqualTo;
      if (result == kCFCompareEqualTo)
      {
        if (v9)
        {
          return result;
        }

        goto LABEL_31;
      }

      v29.location = v11;
      v29.length = v13;
      if (CFStringCompareWithOptions(a1, @"vfx_node", v29, 0))
      {
        v30.location = v11;
        v30.length = v13;
        if (CFStringCompareWithOptions(a1, @"vfx_frame", v30, 0))
        {
          goto LABEL_10;
        }
      }

      sub_1AF2892CC(v27);
      v31.location = sub_1AF2892D4(v27);
      v16 = v15;
      v31.length = v15;
      if (CFStringCompareWithOptions(a1, @".", v31, 0) == kCFCompareEqualTo)
      {
        break;
      }

LABEL_31:
      result = sub_1AF2892CC(v27);
      v9 = v14;
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    sub_1AF2892CC(v27);
    sub_1AF2892D4(v27);
    v13 += v16 + v17;
LABEL_10:
    v32.location = v11;
    v32.length = v13;
    v18 = CFStringCreateWithSubstring(v10, a1, v32);
    if (*(a2 + 76) < 0x20003u)
    {
      v19.location = v11 - 2;
      if (v11 >= 2 && Length >= v13 + v19.location && (v19.length = v13, CFStringCompareWithOptions(a1, @"::clamp_to_border", v19, 0) == kCFCompareEqualTo) || (v11 & 0x8000000000000000) == 0 && Length >= v13 + 2 + v11 && (v33.location = v11, v33.length = v13 + 2, CFStringCompareWithOptions(a1, @"border_color::", v33, 0) == kCFCompareEqualTo))
      {
        v21 = 131075;
LABEL_27:
        *(a2 + 76) = v21;
        goto LABEL_28;
      }

      if (*(a2 + 76) < 0x20001u)
      {
        v34.location = v11;
        v34.length = v13;
        v20 = CFStringCompareWithOptions(a1, @"max3", v34, 0);
        v21 = 131073;
        if (v20 == kCFCompareEqualTo)
        {
          goto LABEL_27;
        }

        v35.location = v11;
        v35.length = v13;
        v22 = CFStringCompareWithOptions(a1, @"fmax3", v35, 0);
        v21 = 131073;
        if (v22 == kCFCompareEqualTo)
        {
          goto LABEL_27;
        }

        v36.location = v11;
        v36.length = v13;
        v23 = CFStringCompareWithOptions(a1, @"min3", v36, 0);
        v21 = 131073;
        if (v23 == kCFCompareEqualTo)
        {
          goto LABEL_27;
        }

        v37.location = v11;
        v37.length = v13;
        v24 = CFStringCompareWithOptions(a1, @"fmin3", v37, 0);
        v21 = 131073;
        if (v24 == kCFCompareEqualTo)
        {
          goto LABEL_27;
        }

        v38.location = v11;
        v38.length = v13;
        v25 = CFStringCompareWithOptions(a1, @"median3", v38, 0);
        v21 = 131073;
        if (v25 == kCFCompareEqualTo)
        {
          goto LABEL_27;
        }
      }
    }

LABEL_28:
    Value = CFDictionaryGetValue(v7, v18);
    if (Value)
    {
      CFDictionarySetValue(*(a2 + 64), v18, *Value);
    }

    CFRelease(v18);
    goto LABEL_31;
  }

  return result;
}

void sub_1AF14A2E8(const __CFString *a1, uint64_t a2)
{
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  Length = CFStringGetLength(a1);
  sub_1AF28923C(&v31, a1, 0, Length, 1);
  sub_1AF289940(&v31, 1);
  if (sub_1AF130E94(&v31))
  {
    sub_1AF289940(&v31, 1);
  }

  v46.location = sub_1AF2892D4(&v31);
  v46.length = v5;
  v6 = *MEMORY[0x1E695E480];
  v7 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], a1, v46);
  sub_1AF289940(&v31, 1);
  v47.location = sub_1AF2892D4(&v31);
  v47.length = v8;
  if (CFStringCompareWithOptions(a1, @"<", v47, 0))
  {
    MutableCopy = v7;
  }

  else
  {
    MutableCopy = CFStringCreateMutableCopy(v6, 0, v7);
    do
    {
      v10 = sub_1AF2892D4(&v31);
      v12 = v11;
      v48.location = v10;
      v48.length = v11;
      v13 = CFStringCreateWithSubstring(v6, a1, v48);
      CFStringAppend(MutableCopy, v13);
      CFRelease(v13);
      v49.location = v10;
      v49.length = v12;
      v14 = CFStringCompareWithOptions(a1, @">", v49, 0);
      v15 = sub_1AF289940(&v31, 1);
    }

    while (v14 && (v15 & 1) != 0);
    CFRelease(v7);
  }

  if (sub_1AF130E94(&v31))
  {
    sub_1AF289940(&v31, 1);
  }

  v16 = sub_1AF2892D4(&v31);
  v18 = v17;
  v50.location = v16;
  v50.length = v17;
  v19 = CFStringCreateWithSubstring(v6, a1, v50);
  if (CFStringGetLength(MutableCopy) >= 1)
  {
    v20 = sub_1AF2880C4(MutableCopy);
    if (v20)
    {
      v21 = v20;
      v22 = v16 + v18;
      v23 = CFStringGetLength(a1);
      if (v23 > v22)
      {
        v51.location = v22;
        v51.length = v23 - v22;
        v24 = CFStringCreateWithSubstring(v6, a1, v51);
        v26 = objc_msgSend_rangeOfString_(v24, v25, @"=", v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
        if (v27)
        {
          v28 = objc_msgSend_substringFromIndex_(v24, v27, v26 + 1);
          v30 = sub_1AF1CD954(v21, v29);
          sub_1AF1CDF54(v30, v28);
          CFDictionaryAddValue(*(a2 + 40), v19, v30);
          CFRelease(v30);
        }

        CFRelease(v24);
      }
    }
  }

  if (CFStringGetLength(v19) >= 1 && CFStringGetLength(MutableCopy) >= 1)
  {
    CFDictionaryAddValue(*(a2 + 32), v19, MutableCopy);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }
}

void sub_1AF14A5B4(const __CFString *a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  Length = CFStringGetLength(a1);
  sub_1AF28923C(v10, a1, 0, Length, 1);
  sub_1AF2892CC(v10);
  if (sub_1AF130E94(v10))
  {
    sub_1AF2892CC(v10);
  }

  v11.location = sub_1AF2892D4(v10);
  v11.length = v5;
  v6 = *MEMORY[0x1E695E480];
  v7 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], a1, v11);
  sub_1AF2892CC(v10);
  if (sub_1AF130E94(v10))
  {
    sub_1AF2892CC(v10);
  }

  v12.location = sub_1AF2892D4(v10);
  v12.length = v8;
  v9 = CFStringCreateWithSubstring(v6, a1, v12);
  if (CFStringGetLength(v9) >= 1 && CFStringGetLength(v7) >= 1)
  {
    CFDictionaryAddValue(*(a2 + 48), v9, v7);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

CFMutableDictionaryRef sub_1AF14A6F8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (a1)
  {
    Mutable = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
    v4 = *MEMORY[0x1E695E480];
  }

  else
  {
    v4 = *MEMORY[0x1E695E480];
    *a2 = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    *(a2 + 8) = CFStringCreateMutable(v4, 0);
    Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  *(a2 + 16) = Mutable;
  v5 = MEMORY[0x1E695E9D8];
  *(a2 + 24) = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], 0);
  v6 = MEMORY[0x1E695E9E8];
  *(a2 + 56) = CFDictionaryCreateMutable(v4, 0, v5, MEMORY[0x1E695E9E8]);
  *(a2 + 32) = CFDictionaryCreateMutable(v4, 0, v5, v6);
  *(a2 + 40) = CFDictionaryCreateMutable(v4, 0, v5, v6);
  *(a2 + 48) = CFDictionaryCreateMutable(v4, 0, v5, v6);
  result = CFDictionaryCreateMutable(v4, 0, v5, v6);
  *(a2 + 64) = result;
  *(a2 + 76) = 0;
  return result;
}

void sub_1AF14A83C(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 24) = 0;
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 56) = 0;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 40) = 0;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 32) = 0;
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 48) = 0;
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 64) = 0;
  }
}

void sub_1AF14A8EC(const __CFDictionary *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v12 = sub_1AF0D5194(Value, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD560C(a2, v12);
    }
  }

  v13 = sub_1AF288058(0x18uLL);
  v13[1] = a4;
  v13[2] = a5;
  *v13 = a3;
  CFDictionarySetValue(a1, a2, v13);
}

uint64_t sub_1AF14A978(uint64_t a1, uint64_t a2)
{
  if (qword_1ED731B40 != -1)
  {
    sub_1AFDD5698();
  }

  return qword_1ED731B38;
}

void sub_1AF14A9B0()
{
  qword_1ED731B38 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 20, MEMORY[0x1E695E9D8], 0);
  sub_1AF14A8EC(qword_1ED731B38, @"vfx_frame.time", @"float", 0, 0);
  sub_1AF14A8EC(qword_1ED731B38, @"vfx_frame.invScreenPixelSize", @"float2", 1, 0);
  sub_1AF14A8EC(qword_1ED731B38, @"vfx_node.modelTransform", @"float4x4", 2, 0);
  sub_1AF14A8EC(qword_1ED731B38, @"vfx_node.inverseModelTransform", @"float4x4", 3, 0);
  sub_1AF14A8EC(qword_1ED731B38, @"vfx_node.modelViewTransform", @"float4x4", 4, 0);
  sub_1AF14A8EC(qword_1ED731B38, @"vfx_node.inverseModelViewTransform", @"float4x4", 5, 0);
  sub_1AF14A8EC(qword_1ED731B38, @"vfx_node.normalTransform", @"float4x4", 6, 0);
  sub_1AF14A8EC(qword_1ED731B38, @"vfx_node.modelViewProjectionTransform", @"float4x4", 7, 0);
  sub_1AF14A8EC(qword_1ED731B38, @"vfx_node.inverseModelViewProjectionTransform", @"float4x4", 8, 0);
  sub_1AF14A8EC(qword_1ED731B38, @"vfx_node.boundingBox", @"float2x3", 10, 0);
  sub_1AF14A8EC(qword_1ED731B38, @"vfx_node.worldBoundingBox", @"float2x3", 11, 0);
  sub_1AF14A8EC(qword_1ED731B38, @"vfx_frame.viewTransform", @"float4x4", 12, 0);
  sub_1AF14A8EC(qword_1ED731B38, @"vfx_frame.inverseViewTransform", @"float4x4", 13, 0);
  sub_1AF14A8EC(qword_1ED731B38, @"vfx_frame.projectionTransform", @"float4x4", 14, 0);
  sub_1AF14A8EC(qword_1ED731B38, @"vfx_frame.inverseProjectionTransform", @"float4x4", 15, 0);
  sub_1AF14A8EC(qword_1ED731B38, @"vfx_frame.cameraPosition", @"float3", 17, 0);
  v0 = qword_1ED731B38;

  sub_1AF14A8EC(v0, @"vfx_frame.viewToCubeWorld", @"float4x4", 16, 0);
}

void sub_1AF14AC00(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

uint64_t sub_1AF14AC38()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED7398F8 = result;
  return result;
}

uint64_t sub_1AF14AC60()
{
  if (qword_1ED739900 != -1)
  {
    sub_1AFDD56AC();
  }

  v0 = sub_1AF0D160C(qword_1ED7398F8, 0x20uLL);
  *(v0 + 16) = sub_1AF159954(8, 0);
  return v0;
}

void sub_1AF14ACBC(uint64_t a1, uint64_t a2)
{
  LODWORD(v2) = a2;
  v4 = sub_1AF159A1C(*(a1 + 16), a2);
  if (v4 <= v2)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (v2 >= v5 >> 1)
  {
    v2 = v5;
  }

  else
  {
    v2 = v2;
  }

  if (v2 != v4)
  {
    v6 = v4;
    sub_1AF159B38(*(a1 + 16), v2);
    sub_1AF159B7C(*(a1 + 16), v2);
    v8 = v2 <= v6;
    v9 = v2 - v6;
    if (!v8)
    {
      v10 = (sub_1AF159AF0(*(a1 + 16), v7) + 8 * v6);

      memset(v10, 255, 8 * v9);
    }
  }
}

uint64_t sub_1AF14AD94(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v4 = a2;
  v5 = sub_1AF159AF0(*(a1 + 16), a2);
  LODWORD(v4) = sub_1AF146408(*v4, v4[1]);
  v6 = sub_1AF146408(*a3, a3[1]);
  v7 = *(v5 + 8 * v4);
  v8 = *(v5 + 8 * v6);
  v9 = v7 > v8;
  if (v7 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = -1;
  }

  if (v9)
  {
    return 1;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_1AF14ADFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF1599D4(*(a1 + 16), a2);
  v6 = sub_1AF13341C(a2, v5);
  v7 = sub_1AF1476C8(v6);
  if (v7 != *(a1 + 32))
  {
    *(a1 + 32) = v7;
    v9 = sub_1AF147674(v6, v8);
    v10 = -__clz(v9) & 0x1F;
    if (v9 <= 1)
    {
      v10 = 1;
    }

    *(a1 + 24) = v10 | *(a1 + 24) & 0xFFFFFFE0;
    *(a1 + 40) = 1;
  }

  v11 = sub_1AF147690(v6, v8);
  v13 = *(a1 + 24);
  if (v11 >= (2 << (v13 >> 5)))
  {
    v14 = (-32 * __clz(v11)) & 0x3E0;
    if (v11 < 2)
    {
      v14 = 32;
    }

    *(a1 + 24) = v14 | v13 & 0xFFFFFC1F;
    *(a1 + 40) = 1;
  }

  result = sub_1AF1476AC(v6, v12);
  v17 = *(a1 + 24);
  if (result >= (2 << (v17 >> 10)))
  {
    v18 = (-1024 * __clz(result)) & 0x7C00;
    if (result < 2)
    {
      v18 = 1024;
    }

    *(a1 + 24) = v18 | v17 & 0xFFFF83FF;
    *(a1 + 40) = 1;
    goto LABEL_15;
  }

  if (*(a1 + 40))
  {
LABEL_15:
    v19 = sub_1AF159AF0(*(a1 + 16), v16);
    result = memset(v19, 255, 8 * v4);
    *(a1 + 40) = 0;
  }

  return result;
}

void sub_1AF14AF48(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1AF12F10C(a2, a2);
  v11 = sub_1AF12DDCC(a2, v10);
  v13 = sub_1AF1D00B0(v11, v12);
  v75 = sub_1AF12EDD8(a2, v14);
  v16 = sub_1AF13341C(v13, v15);
  if (v9)
  {
    v18 = v16;
    v90 = *sub_1AF1B9B04(v9, v17);
    v91 = __invert_f4(v90);
    v82 = v91.columns[1];
    v83 = v91.columns[0];
    v80 = v91.columns[3];
    v81 = v91.columns[2];
    if (a4 >= 1)
    {
      v78 = vabsq_f32(v91.columns[1]);
      v79 = vabsq_f32(v91.columns[0]);
      v77 = vabsq_f32(v91.columns[2]);
      v84 = v18;
      while (1)
      {
        v19 = *a3++;
        v5 = v5 & 0xFFFFFFFF00000000 | v19;
        v20 = sub_1AF1474D8(v18, v5);
        v21 = sub_1AF159A64(*(a1 + 16), v20->u32[0]);
        v22 = sub_1AF146200(v20);
        v23 = v22;
        if (*v21 == -1)
        {
          break;
        }

        if ((v22 & 1) == 0)
        {
          *v21 &= 0xFFFFFFFF00000000;
          goto LABEL_33;
        }

LABEL_46:
        if (!--a4)
        {
          return;
        }
      }

      v87 = a3;
      v85 = sub_1AF147650(v18, v20);
      v24 = sub_1AF146200(v20);
      if (v24 && !sub_1AF145EB0(v20))
      {
        if (sub_1AF146138(v20))
        {
          v71 = sub_1AF1402E0(v75, v20, 0, a5);
          v28 = sub_1AF140400(v75, v71);
          v73 = sub_1AF140414(v75, v72);
          v74 = 32 - __clz(v73);
          if (v73 <= 1)
          {
            v25 = 1;
          }

          else
          {
            v25 = v74;
          }

          v27 = sub_1AF14765C(v18, v20);
        }

        else
        {
          v25 = 0;
          v27 = 0;
          v28 = 0;
        }

        if (sub_1AF146178(v20))
        {
          v26 = sub_1AF147668(v84, v20);
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
      }

      v29 = v20->i64[1];
      if (v29)
      {
        v30 = sub_1AF1BC2B8(v29) << 61;
      }

      else
      {
        v30 = 0;
      }

      v31 = v85;
      v32 = *(a1 + 24);
      if (v24)
      {
        v33 = (v32 >> 5) & 0x1F;
        v34 = (v32 >> 10) & 0x1F;
        v32 = *(a1 + 24) & 0x1F;
        if (v25 >= 60 - v32)
        {
          v35 = 60 - v32;
        }

        else
        {
          v35 = v25;
        }

        v36 = 60 - v32 - v35;
        if (v34 >= v36)
        {
          v37 = 60 - v32 - v35;
        }

        else
        {
          v37 = v34;
        }

        v38 = v36 - v37;
        if (v33 < v38)
        {
          v38 = v33;
        }

        if (v25 + v32 + v33 + v34 + 4 >= 0x41)
        {
          v25 = v35;
          v26 &= ~(-1 << v37);
          v27 &= ~(-1 << v38);
          v28 &= ~(-1 << v35);
          v31 = v85 & ~(-1 << v32);
          v33 = v38;
          v34 = v37;
        }
      }

      else
      {
        v33 = 0;
        v34 = 0;
        LOBYTE(v32) = v32 & 0x1F;
      }

      v39 = v31 << (61 - v32);
      v40 = 60 - v32;
      v41 = (v24 ^ 1u) << v40;
      v42 = v40 - v25;
      v43 = v28 << v42;
      if (!v25)
      {
        v43 = 0;
      }

      v44 = v42 - v34;
      if (v34)
      {
        v45 = v26 << v44;
      }

      else
      {
        v45 = 0;
      }

      v46 = v27 << (v44 - v33);
      if (!v33)
      {
        v46 = 0;
      }

      *v21 = v41 | v30 | v39 | v43 | v45 | v46;
      a3 = v87;
      v18 = v84;
      if (v23)
      {
        goto LABEL_46;
      }

LABEL_33:
      v47 = sub_1AF146110(v20);
      v48 = sub_1AF146158(v20);
      if (v48 && (v50 = sub_1AF170740(v48)) != 0)
      {
        v51 = v50;
        v52 = sub_1AF146178(v20);
        if (v52)
        {
          v54 = v52;
          sub_1AF1A359C(v51, v53);
          v56 = v54[11];
          v57 = v54[12];
          v56.i32[3] = 1.0;
          v57.i32[3] = 1.0;
          v58.i64[0] = 0x3F0000003F000000;
          v58.i64[1] = 0x3F0000003F000000;
          v59 = vmulq_f32(vaddq_f32(v56, v57), v58);
          v60 = vmulq_f32(vsubq_f32(v57, v56), v58);
          if (v47)
          {
            v86 = v59;
            v88 = v60;
            v61 = sub_1AF1B9B04(v47, v55);
            v62 = *(v61 + 16);
            v63 = *(v61 + 32);
            v64 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(*(v61 + 48), v63, v86, 2), v62, *v86.f32, 1), *v61, v86.f32[0]);
            v64.i32[3] = v86.i32[3];
            v65 = v88;
            v65.i32[1] = v88.i32[0];
            v65.i32[2] = v88.i32[0];
            v59 = v64;
            v60 = vmlaq_f32(vmlaq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*v88.i8, 1), v88), vabsq_f32(v62)), v65, vabsq_f32(*v61)), vzip2q_s32(vtrn1q_s32(v88, v88), v88), vabsq_f32(v63));
          }

          goto LABEL_43;
        }
      }

      else
      {
        if ((v20[5].i16[0] & 7) != 3)
        {
          v60 = xmmword_1AFE20B70;
          v59 = xmmword_1AFE201A0;
          if (v47)
          {
            v66 = sub_1AF1B9AB4(v47, v49);
            v66.n128_u32[3] = 1.0;
            v67.i64[0] = 0x3F0000003F000000;
            v67.i64[1] = 0x3F0000003F000000;
            v59 = vmulq_f32(vaddq_f32(v66, xmmword_1AFE201A0), v67);
            v60 = vmulq_f32(vsubq_f32(xmmword_1AFE201A0, v66), v67);
          }

          goto LABEL_43;
        }

        if ((v20[5].i16[0] & 0x4000) == 0)
        {
          v59 = v20[1];
          v60 = v20[2];
LABEL_43:
          v68 = v60;
          v68.i32[1] = v60.i32[0];
          v68.i32[2] = v60.i32[0];
          v69 = vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v78, vuzp2q_s32(vdupq_lane_s32(*v60.i8, 1), v60)), v68, v79), vzip2q_s32(vtrn1q_s32(v60, v60), v60), v77), vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v80, v81, v59, 2), v82, *v59.f32, 1), v83, v59.f32[0]));
          v70 = ((v69.i32[2] >> 31) | 0x80000000) ^ v69.i32[2];
LABEL_45:
          *v21 |= v70;
          goto LABEL_46;
        }
      }

      v70 = 3212836864;
      goto LABEL_45;
    }
  }
}

void *sub_1AF14B424(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  result = sub_1AF159A1C(*(a1 + 16), a2);
  if (result > v3)
  {
    result = sub_1AF159A64(*(a1 + 16), v3);
    *result = -1;
  }

  return result;
}

uint64_t sub_1AF14B46C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1AF1599D4(*(a1 + 16), a2);
  result = sub_1AF146408(a2, WORD1(a2));
  if (v4 > result)
  {
    v7 = HIDWORD(a2);
    result = sub_1AF159AF0(*(a1 + 16), v6);
    if (HIDWORD(a2))
    {
      v8 = result;
      v9 = a2 >> 16;
      do
      {
        result = sub_1AF146408(a2, v9);
        *(v8 + 8 * result) = -1;
        LODWORD(v9) = v9 + 1;
        LODWORD(v7) = v7 - 1;
      }

      while (v7);
    }
  }

  return result;
}

id CFXTextureAllocatorPerFrameAllocate(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = 0;
    v6 = *(a1 + 24);
    v7 = 40 * v4;
    while (1)
    {
      v8 = v6 + v5;
      if (*(v6 + v5 + 12) == *(a2 + 4) && ((*(a2 + 12) ^ *(v8 + 20)) & 0xFFFFFFFFFFFFFLL) == 0 && *(v8 + 8) == *a2 && *(v6 + v5 + 9) == a2[1] && *(v6 + v5 + 10) == a2[2])
      {
        v9 = v6 + v5;
        if (*(v6 + v5 + 11) == a2[3])
        {
          break;
        }
      }

      v5 += 40;
      if (v7 == v5)
      {
        goto LABEL_10;
      }
    }

    v11 = *v9;
    *(v9 + 32) = 0;
    v13 = *(a1 + 40);
    v14 = *(a1 + 24) + 40 * v13;
    if (v9 != v14 - 40)
    {
      v15 = *v9;
      *v9 = 0;
      *v20 = *(v9 + 8);
      *&v20[12] = *(v9 + 20);
      v16 = *(v14 - 40);
      *(v14 - 40) = 0;
      v17 = *v9;
      *v9 = v16;

      v18 = *(v14 - 32);
      *(v9 + 20) = *(v14 - 20);
      *(v9 + 8) = v18;
      v19 = *(v14 - 40);
      *(v14 - 40) = v15;

      *(v14 - 32) = *v20;
      *(v14 - 20) = *&v20[12];
      v13 = *(a1 + 40);
    }

    *(a1 + 40) = v13 - 1;
  }

  else
  {
LABEL_10:
    v10 = *(a1 + 32);
    *v20 = *a2;
    *&v20[16] = *(a2 + 2);
    v11 = CFXGPUDeviceCreateTexture(v10, v20);
    *v20 = v11;
    *&v20[8] = *a2;
    *&v20[24] = *(a2 + 2);
    v21 = 0;
    sub_1AF1210C8((a1 + 16), v20);
  }

  return v11;
}

void CFXTextureAllocatorPerFrameFree(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 40);
  if (v5 != v4)
  {
    v6 = 0;
    v7 = *(a1 + 24) + 40 * v5;
    v8 = 40 * v5 - 40 * v4;
    v9 = v7;
    while (1)
    {
      v10 = *v9;
      if (*v9 == v3)
      {
        break;
      }

      v9 += 40;
      v6 -= 40;
      if (v8 == v6)
      {
        goto LABEL_9;
      }
    }

    if (v6)
    {
      *v9 = 0;
      *v16 = *(v9 + 8);
      *&v16[12] = *(v9 + 20);
      v11 = *v7;
      *v7 = 0;
      v12 = *v9;
      *v9 = v11;
      v15 = v3;

      v13 = *(v7 + 8);
      *(v9 + 20) = *(v7 + 20);
      *(v9 + 8) = v13;
      v14 = *v7;
      *v7 = v10;

      v3 = v15;
      *(v7 + 8) = *v16;
      *(v7 + 20) = *&v16[12];
      v5 = *(a1 + 40);
    }

    *(a1 + 40) = v5 + 1;
  }

LABEL_9:
}

id *CFXTextureAllocatorPerFrameNextFrame(id *result)
{
  v1 = result;
  v3 = result + 2;
  v2 = *(result + 4);
  if (v2)
  {
    v4 = result[3];
    v5 = &v4[5 * v2];
    do
    {
      v6 = *(v4 + 8) + 1;
      *(v4 + 8) = v6;
      if (v6 <= *(v1 + 11))
      {
        v4 += 5;
      }

      else
      {
        result = sub_1AF121680(v3, v4);
        v4 = result;
        v2 = *(v1 + 4);
        v5 = v1[3] + 40 * v2;
      }
    }

    while (v4 != v5);
  }

  *(v1 + 10) = v2;
  return result;
}

void CFXTextureDescriptorMakeDefault(uint64_t a1@<X8>)
{
  *a1 = 84148994;
  *(a1 + 4) = 0x1000100000000;
  *(a1 + 12) = *(a1 + 12) & 0xFFF0000000000000 | 0x2220001010000;
}

uint64_t CFXTextureDescriptorMake1D@<X0>(uint64_t result@<X0>, unsigned __int16 a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  *a3 = 84148994;
  *(a3 + 4) = result | 0x1000100000000;
  *(a3 + 12) = a2 | 0x2200001010000;
  return result;
}

uint64_t CFXTextureDescriptorMake2D@<X0>(unsigned __int16 a1@<W0>, unsigned __int16 a2@<W1>, unsigned __int16 a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0;
  *a4 = 84148994;
  result = a1 | (a2 << 16);
  *(a4 + 4) = result | 0x1000100000000;
  *(a4 + 12) = a3 | 0x2220001010000;
  return result;
}

uint64_t CFXTextureDescriptorMake2DArray@<X0>(unsigned __int16 a1@<W0>, unsigned __int16 a2@<W1>, uint64_t a3@<X2>, unsigned __int16 a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 16) = 0;
  *a5 = 84148994;
  result = a1 | (a2 << 16);
  *(a5 + 4) = result | (a3 << 48) | 0x100000000;
  *(a5 + 12) = a4 | 0x2230001010000;
  return result;
}

uint64_t CFXTextureDescriptorMake2DMultisampledIfNeeded@<X0>(unsigned __int16 a1@<W0>, unsigned __int16 a2@<W1>, unsigned __int16 a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 16) = 0;
  *a5 = 84148994;
  result = a1 | (a2 << 16);
  *(a5 + 4) = result | 0x1000100000000;
  v6 = 0x20000000000;
  if (a4 > 1)
  {
    v6 = 0x40000000000;
  }

  *(a5 + 12) = v6 & 0xFFFFFFFFFFFF0000 | a3 | (a4 << 24) | 0x2200000010000;
  return result;
}

uint64_t CFXTextureDescriptorMake3D@<X0>(unsigned __int16 a1@<W0>, unsigned __int16 a2@<W1>, unsigned __int16 a3@<W2>, unsigned __int16 a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 16) = 0;
  *a5 = 84148994;
  result = a1 | (a2 << 16);
  *(a5 + 4) = result | (a3 << 32) | 0x1000000000000;
  *(a5 + 12) = a4 | 0x2270001010000;
  return result;
}

uint64_t CFXTextureDescriptorMakeCube@<X0>(unsigned __int16 a1@<W0>, unsigned __int16 a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  *a3 = 84148994;
  result = a1 | (a1 << 16);
  *(a3 + 4) = result | 0x1000100000000;
  *(a3 + 12) = a2 | 0x2250001010000;
  return result;
}

uint64_t CFXTextureDescriptorByDiscardingMultisampling@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 16) = *(result + 16);
  v2 = (*(result + 12) >> 40) & 0xFLL;
  v3 = v2 << 40;
  if (v2 == 8)
  {
    v3 = 0x30000000000;
  }

  v4 = v2 == 4;
  v5 = 0x20000000000;
  if (!v4)
  {
    v5 = v3;
  }

  *(a2 + 12) = *(a2 + 12) & 0xFFFFF0FF00FFFFFFLL | v5 | 0x1000000;
  return result;
}

uint64_t CFXTextureDescriptorByPromotingToMultisampledIfNeeded@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 < 2 || ((v3 = (*(result + 12) >> 40) & 0xFLL, v3 != 8) ? (v4 = v3 == 4) : (v4 = 1), v4))
  {
    *a3 = *result;
    *(a3 + 16) = *(result + 16);
  }

  else
  {
    *a3 = *result;
    *(a3 + 16) = *(result + 16);
    v5 = v3 << 40;
    if (v3 == 3)
    {
      v5 = 0x80000000000;
    }

    v4 = v3 == 2;
    v6 = 0x40000000000;
    if (!v4)
    {
      v6 = v5;
    }

    *(a3 + 12) = v6 | *(a3 + 12) & 0xFFFFF0FF00FFFFFFLL | (a2 << 24);
  }

  return result;
}

uint64_t CFXTextureDescriptorFillMTLDescriptor(unsigned int *a1, void *a2)
{
  if (*(a1 + 2) <= 1u)
  {
    objc_msgSend_setWidth_(a2, a2, 1);
  }

  else
  {
    objc_msgSend_setWidth_(a2, a2, *(a1 + 2));
  }

  v6 = (*(a1 + 3) >> 40) & 0xFLL;
  if (v6 - 5 > 1)
  {
    if (v6 < 2 || (v10 = a1[1], v10 < 0x10000))
    {
      objc_msgSend_setHeight_(a2, v4, 1);
    }

    else
    {
      objc_msgSend_setHeight_(a2, v4, HIWORD(v10));
    }
  }

  else
  {
    v7 = objc_msgSend_width(a2, v4, v5);
    objc_msgSend_setHeight_(a2, v8, v7);
  }

  if ((*(a1 + 3) & 0xF0000000000) == 0x70000000000 && *(a1 + 4) > 1u)
  {
    objc_msgSend_setDepth_(a2, v9, *(a1 + 4));
  }

  else
  {
    objc_msgSend_setDepth_(a2, v9, 1);
  }

  v12 = *(a1 + 3);
  if (BYTE2(v12))
  {
    objc_msgSend_setMipmapLevelCount_(a2, v11, v12 << 40 >> 56);
  }

  else
  {
    objc_msgSend_setMipmapLevelCount_(a2, v11, 1);
  }

  v14 = *(a1 + 3);
  v15 = (v14 >> 40) & 0xF;
  if ((v15 == 8 || v15 == 4) && (v16 = BYTE3(v14)) != 0)
  {
    objc_msgSend_setSampleCount_(a2, v13, v16);
  }

  else
  {
    objc_msgSend_setSampleCount_(a2, v13, 1);
  }

  v18 = (*(a1 + 3) >> 40) & 0xFLL;
  if (v18 <= 8 && ((1 << v18) & 0x14A) != 0 && HIWORD(*(a1 + 1)))
  {
    objc_msgSend_setArrayLength_(a2, v17, HIWORD(*(a1 + 1)));
  }

  else
  {
    objc_msgSend_setArrayLength_(a2, v17, 1);
  }

  objc_msgSend_setTextureType_(a2, v19, (*(a1 + 3) >> 40) & 0xFLL);
  objc_msgSend_setPixelFormat_(a2, v20, *(a1 + 6));
  objc_msgSend_setCpuCacheMode_(a2, v21, (*(a1 + 3) >> 50) & 1);
  objc_msgSend_setStorageMode_(a2, v22, (*(a1 + 3) >> 44) & 7);
  objc_msgSend_setHazardTrackingMode_(a2, v23, (*(a1 + 3) >> 47) & 3);
  objc_msgSend_setUsage_(a2, v24, *(a1 + 16));
  objc_msgSend_setAllowGPUOptimizedContents_(a2, v25, (*(a1 + 3) >> 49) & 1);
  objc_msgSend_setCompressionType_(a2, v26, (*(a1 + 3) << 12) >> 63);
  v28 = *a1;

  return objc_msgSend_setSwizzle_(a2, v27, v28);
}

void *CFXTextureDescriptorFromMTLTexture@<X0>(void *a1@<X0>, uint64_t a2@<X8>, const char *a3@<X1>, uint64_t a4@<X2>)
{
  *(a2 + 16) = 0;
  *a2 = objc_msgSend_swizzle(a1, a3, a4);
  v8 = objc_msgSend_width(a1, v6, v7);
  v11 = v8 & 0xFFFFFFFF0000FFFFLL | (objc_msgSend_height(a1, v9, v10) << 16);
  v14 = v11 & 0xFFFF0000FFFFFFFFLL | (objc_msgSend_depth(a1, v12, v13) << 32);
  *(a2 + 4) = v14 | (objc_msgSend_arrayLength(a1, v15, v16) << 48);
  v19 = objc_msgSend_pixelFormat(a1, v17, v18);
  v22 = v19 & 0xFFFFFFFFFF00FFFFLL | (objc_msgSend_mipmapLevelCount(a1, v20, v21) << 16);
  v25 = v22 & 0xFFFFFFFF00FFFFFFLL | (objc_msgSend_sampleCount(a1, v23, v24) << 24);
  v28 = v25 & 0xFFFFFF00FFFFFFFFLL | (objc_msgSend_usage(a1, v26, v27) << 32);
  v31 = v28 & 0xFFFFF0FFFFFFFFFFLL | ((objc_msgSend_textureType(a1, v29, v30) & 0xF) << 40);
  LOBYTE(v14) = objc_msgSend_storageMode(a1, v32, v33);
  v36 = objc_msgSend_hazardTrackingMode(a1, v34, v35);
  v37 = v31 & 0xFFFF8FFFFFFFFFFFLL | ((v14 & 7) << 44);
  if (objc_msgSend_allowGPUOptimizedContents(a1, v38, v39))
  {
    v42 = 0x2000000000000;
  }

  else
  {
    v42 = 0;
  }

  v43 = (objc_msgSend_cpuCacheMode(a1, v40, v41) & 1) << 50;
  result = objc_msgSend_compressionType(a1, v44, v45);
  *(a2 + 12) = v37 & 0xFFFE7FFFFFFFFFFFLL | ((v36 & 3) << 47) | v42 | v43 | ((result & 1) << 51);
  return result;
}

void *CFXTextureDescriptorFromMTLTextureDescriptor@<X0>(void *a1@<X0>, uint64_t a2@<X8>, const char *a3@<X1>, uint64_t a4@<X2>)
{
  *(a2 + 16) = 0;
  *a2 = objc_msgSend_swizzle(a1, a3, a4);
  v8 = objc_msgSend_width(a1, v6, v7);
  v11 = v8 & 0xFFFFFFFF0000FFFFLL | (objc_msgSend_height(a1, v9, v10) << 16);
  v14 = v11 & 0xFFFF0000FFFFFFFFLL | (objc_msgSend_depth(a1, v12, v13) << 32);
  *(a2 + 4) = v14 | (objc_msgSend_arrayLength(a1, v15, v16) << 48);
  v19 = objc_msgSend_pixelFormat(a1, v17, v18);
  v22 = v19 & 0xFFFFFFFFFF00FFFFLL | (objc_msgSend_mipmapLevelCount(a1, v20, v21) << 16);
  v25 = v22 & 0xFFFFFFFF00FFFFFFLL | (objc_msgSend_sampleCount(a1, v23, v24) << 24);
  v28 = v25 & 0xFFFFFF00FFFFFFFFLL | (objc_msgSend_usage(a1, v26, v27) << 32);
  v31 = v28 & 0xFFFFF0FFFFFFFFFFLL | ((objc_msgSend_textureType(a1, v29, v30) & 0xF) << 40);
  LOBYTE(v14) = objc_msgSend_storageMode(a1, v32, v33);
  v36 = objc_msgSend_hazardTrackingMode(a1, v34, v35);
  v37 = v31 & 0xFFFF8FFFFFFFFFFFLL | ((v14 & 7) << 44);
  if (objc_msgSend_allowGPUOptimizedContents(a1, v38, v39))
  {
    v42 = 0x2000000000000;
  }

  else
  {
    v42 = 0;
  }

  v43 = (objc_msgSend_cpuCacheMode(a1, v40, v41) & 1) << 50;
  result = objc_msgSend_compressionType(a1, v44, v45);
  *(a2 + 12) = v37 & 0xFFFE7FFFFFFFFFFFLL | ((v36 & 3) << 47) | v42 | v43 | ((result & 1) << 51);
  return result;
}

uint64_t CFXTextureDescriptorComputeMaxMipLevelCount(uint64_t a1)
{
  if (*(a1 + 4) <= HIWORD(*(a1 + 4)))
  {
    v1 = HIWORD(*(a1 + 4));
  }

  else
  {
    v1 = *(a1 + 4);
  }

  return (vcvtms_s32_f32(log2f(v1)) + 1);
}

uint64_t sub_1AF14BF80(uint64_t a1)
{
  v2 = (*(a1 + 12) >> 40) & 0xFLL;
  result = 1;
  if (v2 <= 4)
  {
    if (v2 != 1 && v2 != 3)
    {
      return result;
    }

    return *(a1 + 10);
  }

  switch(v2)
  {
    case 5:
      return 6;
    case 6:
      return 6 * *(a1 + 10);
    case 8:
      return *(a1 + 10);
  }

  return result;
}

uint64_t CFXTextureDescriptorComputeBytesPerTexture(__int128 *a1)
{
  if ((*(a1 + 12) << 40) < 0x100000000000000)
  {
    v3 = 0;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + 4);
      v5 = v4 >> v2;
      if (v5 <= 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = v5;
      }

      v7 = v4 >> 16 >> v2;
      if (v7 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v7;
      }

      v9 = (v4 >> 16) >> 16 >> v2;
      if (v9 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      v3 += (sub_1AF1F1AAC() * v6 * v8 * v10) >> 3;
      ++v2;
    }

    while ((*(a1 + 12) << 8) >> 24 > v2);
  }

  v12 = *a1;
  v13 = *(a1 + 2);
  return sub_1AF14BF80(&v12) * v3;
}

uint64_t sub_1AF14C0C4()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED734658 = result;
  return result;
}

uint64_t sub_1AF14C0EC(uint64_t a1)
{
  if (qword_1ED734650 != -1)
  {
    sub_1AFDD56C0();
  }

  v2 = sub_1AF0D160C(qword_1ED734658, 0x40uLL);
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = -1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  sub_1AF14D2D8(v2, 1);
  return v2;
}

uint64_t sub_1AF14C160(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v4 = a3;
  if (!a1)
  {
    v7 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD56D4(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  return sub_1AF14C1C4(a1, a2, v4, a4);
}

uint64_t sub_1AF14C1C4(uint64_t a1, uint64_t a2, int a3, __n128 a4)
{
  if (a3 == -1)
  {
    v7 = -1;
    v8 = -1;
  }

  else
  {
    v6 = (*(a1 + 24) + 8 * a3);
    v7 = *v6;
    v8 = v6[1];
  }

  v9 = v7;
  v10 = v7 + 1;
  if (v10 >= *(a1 + 64))
  {
    sub_1AF14D2D8(a1, v7 + 2);
  }

  v11 = *(a1 + 56) + 80 * v10;
  v12 = *(v11 + 72);
  if (v12 == *(v11 + 76))
  {
    a4.n128_u64[0] = sub_1AF14D460((*(a1 + 56) + 80 * v10), 2 * v12);
    v12 = *(v11 + 72);
  }

  v13 = *(v11 + 24);
  v14 = v12;
  v15 = (v13 + 4 * v12);
  if (v12)
  {
    v16 = v12;
    v17 = *(v11 + 24);
    do
    {
      v18 = v16 >> 1;
      v19 = &v17[v16 >> 1];
      v21 = *v19;
      v20 = v19 + 1;
      v16 += ~(v16 >> 1);
      if (v8 < v21)
      {
        v16 = v18;
      }

      else
      {
        v17 = v20;
      }
    }

    while (v16);
  }

  else
  {
    v17 = *(v11 + 24);
  }

  if (v17 == v15)
  {
    v22 = 4 * v14;
  }

  else
  {
    v22 = v17 - v13;
    sub_1AF14D8BC(a1, v10 | (((v17 - v13) >> 2) << 32), v9 | (v8 << 32), 1, a4);
  }

  v23 = v22 >> 2;
  if ((v22 >> 2) == -1)
  {
    v24 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD574C(v24, a2, v25, v26, v27, v28, v29, v30);
    }
  }

  ++*(v11 + 72);
  *(*(v11 + 40) + 8 * v23) = a2;
  *(*(v11 + 56) + 4 * v23) = *(a2 + 216);
  v31 = *(v11 + 32);
  *(*(v11 + 24) + 4 * v23) = v8;
  *(v31 + 4 * v23) = -1;
  *&v32 = sub_1AF1B7F84(a2, a2);
  v33 = (*(v11 + 16) + ((v22 >> 2) << 6));
  *v33 = v32;
  v33[1] = v34;
  v33[2] = v35;
  v33[3] = v36;
  sub_1AF14DA28(a1, v10 | (v23 << 32));
  v37 = sub_1AF14DB20(a1, v10 | (v23 << 32));
  *(*(v11 + 48) + 4 * v23) = v37;
  if (v9 != -1)
  {
    v38 = *(*(a1 + 56) + 80 * v9 + 32);
    if (*(v38 + 4 * v8) == -1)
    {
      *(v38 + 4 * v8) = v23;
    }
  }

  sub_1AF14DC24(a1, v10 | (v23 << 32), v9 | (v8 << 32), -1);
  ++*(a1 + 72);
  return v37;
}

void sub_1AF14C3E8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD56D4(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  sub_1AF14C444(a1, a2);
}

void sub_1AF14C444(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *(&v98[1] + 4) = *MEMORY[0x1E69E9840];
  if (a2 == -1)
  {
    v4 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD57C4();
    }
  }

  v5 = (*(a1 + 24) + 8 * v2);
  v6 = *v5;
  v7 = v5[1];
  ++*(a1 + 72);
  if (v7 == -1)
  {
    v37 = *(a1 + 48);
    *v5 = -1;
    v5[1] = v37;
    *(a1 + 48) = v2;
    return;
  }

  os_unfair_lock_lock((a1 + 76));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v81 - ((v9 + 15) & 0x7FFFFFFF0);
  v11 = *(a1 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v81 - v15;
  if (v11 >= 1)
  {
    memset_pattern16(v10, &unk_1AFE21370, 4 * v11);
    memset_pattern16(v16, &unk_1AFE21380, 4 * v11);
  }

  v83 = v10;
  v84 = v16;
  *&v10[4 * v6] = v7;
  *&v16[4 * v6] = v7;
  v17 = v6 + 1;
  LODWORD(v18) = v11;
  if ((v6 + 1) < v11)
  {
    LODWORD(v19) = v6;
    v20 = v7;
    while (1)
    {
      v21 = v19 | (v7 << 32);
      v22 = v6 | (v20 << 32);
      v19 = sub_1AF14DEB4(a1, v21, v22);
      v7 = HIDWORD(v19);
      v13 = sub_1AF14DF98(a1, v21, v22);
      v20 = HIDWORD(v13);
      if (HIDWORD(v19) == 0xFFFFFFFF && v20 == 0xFFFFFFFF)
      {
        break;
      }

      v6 = v13;
      if (v7 == 0xFFFFFFFF)
      {
        v24 = sub_1AF0D5194(v13, v14);
        v13 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);
        if (v13)
        {
          sub_1AFDD5840(v97, v98, v24);
        }
      }

      if (v20 == 0xFFFFFFFF)
      {
        v25 = sub_1AF0D5194(v13, v14);
        v13 = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);
        if (v13)
        {
          sub_1AFDD5884(v95, &v96, v25);
        }
      }

      if (v6 != v19)
      {
        v26 = sub_1AF0D5194(v13, v14);
        v13 = os_log_type_enabled(v26, OS_LOG_TYPE_FAULT);
        if (v13)
        {
          sub_1AFDD58C8(v93, &v94, v26);
        }
      }

      if (v20 < SHIDWORD(v19))
      {
        v27 = sub_1AF0D5194(v13, v14);
        v13 = os_log_type_enabled(v27, OS_LOG_TYPE_FAULT);
        if (v13)
        {
          sub_1AFDD590C(v91, &v92, v27);
        }
      }

      v28 = v84;
      v29 = *&v83[4 * v19];
      if (v29 >= SHIDWORD(v19))
      {
        v30 = HIDWORD(v19);
      }

      else
      {
        v30 = *&v83[4 * v19];
      }

      *&v83[4 * v19] = v30;
      v31 = *&v28[4 * v6];
      if (v31 <= v20)
      {
        v31 = v20;
      }

      *&v28[4 * v6] = v31;
      v32 = *&v28[4 * v19];
      if (v30 <= v32)
      {
        v33 = *(a1 + 24);
        if (v29 >= v19 >> 32)
        {
          v29 = v19 >> 32;
        }

        v34 = (*(*(a1 + 56) + 80 * v19 + 40) + 8 * v29);
        v35 = v32 - v30 + 1;
        do
        {
          v36 = *v34++;
          *(v33 + 8 * *(v36 + 88)) = -1;
          --v35;
        }

        while (v35);
      }

      ++v17;
      LODWORD(v18) = *(a1 + 64);
      if (v17 >= v18)
      {
        goto LABEL_39;
      }
    }

    LODWORD(v18) = *(a1 + 64);
  }

LABEL_39:
  if (v18 < 1)
  {
    v75 = 0;
    goto LABEL_98;
  }

  v81 = &v81;
  v82 = v2;
  v38 = 0;
  do
  {
    v39 = v38;
    v40 = *(a1 + 56) + 80 * v38;
    v41 = v83;
    v42 = *&v84[4 * v38];
    v43 = *&v83[4 * v38];
    if (v42 >= v43)
    {
      v44 = v42 - v43 + 1;
      sub_1AF14DCC0(*(a1 + 56) + 80 * v38, (v42 + 1), ~(v42 - v43));
      v45 = (v40 + 72);
      v46 = *(v40 + 72) - v44;
      *(v40 + 72) = v46;
      if (v42 - v43 == -1)
      {
        v44 = 0;
      }

      else
      {
        v47 = *(v40 + 64);
        if (v47.i32[0] <= v47.i32[1])
        {
          if (v43 <= *(v40 + 64))
          {
            *(v40 + 64) = vmax_s32(vsub_s32(v47, vdup_n_s32(v44)), 0);
          }

          else if (v42 <= v47.i32[1])
          {
            v48 = v46 - 1;
            if (v47.i32[1] < v48)
            {
              v48 = HIDWORD(*(v40 + 64));
            }

            *(v40 + 68) = v48;
          }
        }
      }
    }

    else
    {
      v44 = 0;
      v45 = (v40 + 72);
    }

    v49 = v84;
    ++v38;
    if (v39 + 1 < *(a1 + 64))
    {
      v50 = *&v84[4 * v38];
      v51 = *&v41[4 * v38];
      if (v50 >= v51 && *v45 >= 1)
      {
        v52 = 0;
        v53 = *(a1 + 56) + 80 * v38;
        v54 = *(v40 + 32);
        v55 = v50 + 1;
        while (1)
        {
          v56 = *(v54 + 4 * v52);
          if (v56 > v50)
          {
            break;
          }

          if (v56 >= v51)
          {
            if (v55 >= *(v53 + 72) || (v57 = v51, v52 != *(*(v53 + 24) + 4 * v55)))
            {
              v57 = -1;
            }

            goto LABEL_62;
          }

LABEL_63:
          if (++v52 >= *v45)
          {
            goto LABEL_64;
          }
        }

        v57 = v51 + ~v50 + v56;
LABEL_62:
        *(v54 + 4 * v52) = v57;
        goto LABEL_63;
      }
    }

LABEL_64:
    if (v39)
    {
      v58 = 4 * v39 - 4;
      v59 = *&v49[v58];
      v60 = *&v41[v58];
      if (v59 >= v60)
      {
        LODWORD(v61) = v43 == 0x7FFFFFFF ? 0 : v43;
        v62 = *v45;
        if (v61 < *v45)
        {
          v63 = v60 + ~v59;
          v64 = *(v40 + 24);
          v61 = v61;
          do
          {
            v65 = *(v64 + 4 * v61);
            if (v65 >= v60)
            {
              *(v64 + 4 * v61) = v63 + v65;
              v62 = *v45;
            }

            ++v61;
          }

          while (v61 < v62);
        }
      }
    }

    if (v44 >= 1)
    {
      if (v43 == 0x7FFFFFFF)
      {
        v66 = sub_1AF0D5194(v13, v14);
        v13 = os_log_type_enabled(v66, OS_LOG_TYPE_FAULT);
        if (v13)
        {
          sub_1AFDD5950(v89, &v90, v66);
        }
      }

      v67 = *v45;
      if (v43 < *v45)
      {
        v68 = *(a1 + 24);
        v69 = v43;
        do
        {
          v70 = *(*(v40 + 40) + 8 * v69);
          v71 = (v68 + 8 * *(v70 + 88));
          if (*v71 != -1)
          {
            if (v39 != *v71)
            {
              v72 = sub_1AF0D5194(v13, v14);
              v13 = os_log_type_enabled(v72, OS_LOG_TYPE_FAULT);
              if (v13)
              {
                sub_1AFDD5994(v87, &v88, v72);
              }
            }

            if (*(*(a1 + 24) + 8 * *(v70 + 88) + 4) < v43)
            {
              v73 = sub_1AF0D5194(v13, v14);
              v13 = os_log_type_enabled(v73, OS_LOG_TYPE_FAULT);
              if (v13)
              {
                sub_1AFDD59D8(v85, &v86, v73);
              }
            }

            v68 = *(a1 + 24);
            v74 = v68 + 8 * *(v70 + 88);
            *(v74 + 4) -= v44;
            v67 = *v45;
          }

          ++v69;
        }

        while (v69 < v67);
      }
    }

    v18 = *(a1 + 64);
  }

  while (v38 < v18);
  if (v18 < 1)
  {
    v75 = 0;
    LODWORD(v2) = v82;
  }

  else
  {
    v75 = 0;
    v76 = (*(a1 + 56) + 72);
    v77 = *(a1 + 64);
    LODWORD(v2) = v82;
    do
    {
      v78 = *v76;
      v76 += 20;
      if (v78)
      {
        ++v75;
      }

      --v77;
    }

    while (v77);
  }

LABEL_98:
  if (v75 < v18)
  {
    sub_1AF14D2D8(a1, v75);
  }

  v79 = (*(a1 + 24) + 8 * v2);
  v80 = *(a1 + 48);
  *v79 = -1;
  v79[1] = v80;
  *(a1 + 48) = v2;
  os_unfair_lock_unlock((a1 + 76));
}

void sub_1AF14CB08(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD56D4(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  sub_1AF14CB6C(a1, a2, a3);
}

void sub_1AF14CB6C(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v4 = a2;
  if (a2 == -1)
  {
    v6 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD57C4();
    }
  }

  v7 = (*(a1 + 24) + 8 * v4);
  v8 = v7[1];
  if (v8 != -1)
  {
    v9 = *v7;
    os_unfair_lock_lock((a1 + 76));
    *(a1 + 68) = 1;
    if (v9 >= *(a1 + 64))
    {
      v12 = sub_1AF0D5194(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD5A1C(v12, v13, v14, v15, v16, v17, v18, v19);
      }
    }

    v20 = *(a1 + 56) + 80 * v9;
    v21 = a3[1];
    v22 = a3[2];
    v23 = a3[3];
    v24 = (*(v20 + 16) + (v8 << 6));
    *v24 = *a3;
    v24[1] = v21;
    v24[2] = v22;
    v24[3] = v23;
    if (v8 < *(v20 + 64))
    {
      *(v20 + 64) = v8;
    }

    if (v8 > *(v20 + 68))
    {
      *(v20 + 68) = v8;
    }

    os_unfair_lock_unlock((a1 + 76));
  }
}

void sub_1AF14CC70(_BOOL8 result, uint64_t a2, int a3)
{
  v4 = a2;
  v5 = result;
  if (!result)
  {
    v6 = sub_1AF0D5194(0, a2);
    result = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (result)
    {
      sub_1AFDD56D4(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  if (v4 == -1)
  {
    v13 = sub_1AF0D5194(result, a2);
    result = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
    if (result)
    {
      sub_1AFDD57C4();
    }
  }

  v14 = (*(v5 + 24) + 8 * v4);
  v15 = v14[1];
  if (v15 != -1)
  {
    v16 = *v14;
    if (*v14 >= *(v5 + 64))
    {
      v17 = sub_1AF0D5194(result, a2);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD5A94(v17, v18, v19, v20, v21, v22, v23, v24);
      }
    }

    *(*(*(v5 + 56) + 80 * v16 + 56) + 4 * v15) = a3;
  }
}

uint64_t sub_1AF14CD4C(_BOOL8 a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDD56D4(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (v2 == -1)
  {
    v11 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD57C4();
    }
  }

  v12 = *(*(v3 + 24) + 8 * v2);
  if (*(v3 + 68) == 1)
  {
    sub_1AF14CFB0(v3);
  }

  if (HIDWORD(v12) == 0xFFFFFFFF)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v13 = HIDWORD(v12);
  }

  if (HIDWORD(v12) == 0xFFFFFFFF)
  {
    v14 = 0;
  }

  else
  {
    v14 = -1;
  }

  if (v12 == 0xFFFFFFFFLL)
  {
    LODWORD(v15) = v13;
  }

  else
  {
    v15 = HIDWORD(v12);
  }

  if (v12 == 0xFFFFFFFFLL)
  {
    v16 = v14;
  }

  else
  {
    v16 = v12;
  }

  return *(*(v3 + 56) + 80 * v16) + (v15 << 6);
}

uint64_t sub_1AF14CE1C(_BOOL8 a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDD56D4(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (v2 == -1)
  {
    v11 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD57C4();
    }
  }

  v12 = *(*(v3 + 24) + 8 * v2);
  v13 = HIDWORD(v12);
  if (HIDWORD(v12) == 0xFFFFFFFF)
  {
    v14 = 0;
  }

  else
  {
    v14 = -1;
  }

  if (HIDWORD(v12) == 0xFFFFFFFF)
  {
    LODWORD(v15) = 0;
  }

  else
  {
    v15 = HIDWORD(v12);
  }

  if (v12 == 0xFFFFFFFFLL)
  {
    LODWORD(v12) = v14;
    LODWORD(v13) = v15;
  }

  return *(*(v3 + 56) + 80 * v12 + 8) + (v13 << 6);
}

void sub_1AF14CED8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD56D4(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  sub_1AF14CFB0(a1);
}

void sub_1AF14CF24(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD56D4(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(result + 64) >= 1)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      memcpy(*(*(result + 56) + v11 + 8), *(*(result + 56) + v11), *(*(result + 56) + v11 + 72) << 6);
      ++v12;
      v11 += 80;
    }

    while (v12 < *(result + 64));
  }
}

void sub_1AF14CFB0(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 76));
  *(a1 + 68) = 0;
  if (*(a1 + 64))
  {
    v3 = sub_1AF1C3FAC(**(*(a1 + 56) + 40), v2);
    if (v3)
    {
      v5 = sub_1AF1D01D0(v3, v4);
      v6 = *(a1 + 64);
      if (v6 >= 1)
      {
        v7 = v5;
        v8 = 0;
        v9 = *(a1 + 56);
        v10 = vneg_f32(0xFFFFFFFFLL);
        while (1)
        {
          v11 = *(a1 + 56) + 80 * v8;
          v12 = *(v11 + 68);
          v13 = *(v11 + 64);
          if (v12 >= v13)
          {
            break;
          }

LABEL_23:
          ++v8;
          v9 = v11;
          if (v8 >= v6)
          {
            goto LABEL_27;
          }
        }

        if (v8)
        {
          v14 = *v9;
          v15 = *(v11 + 24);
          v16 = v12 + 1;
          v17 = *v11 + (v13 << 6);
          v18 = *(v11 + 16) + (v13 << 6);
          v19 = 0uLL;
          v20 = -1;
          v21 = 0uLL;
          v22 = 0uLL;
          v23 = 0uLL;
          do
          {
            v24 = *(v15 + 4 * v13);
            if (v20 != v24)
            {
              v25 = (v14 + (v24 << 6));
              v19 = *v25;
              v21 = v25[1];
              v22 = v25[2];
              v23 = v25[3];
              v20 = *(v15 + 4 * v13);
            }

            for (i = 0; i != 64; i += 16)
            {
              *(v17 + i) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v21, *(v18 + i), 1), v19, COERCE_FLOAT(*(v18 + i))), v22, *(v18 + i), 2), v23, *(v18 + i), 3);
            }

            ++v13;
            v17 += 64;
            v18 += 64;
          }

          while (v16 != v13);
          if (!v7)
          {
            goto LABEL_15;
          }
        }

        else
        {
          memcpy((*v11 + (v13 << 6)), (*(v11 + 16) + (v13 << 6)), (v12 - v13 + 1) << 6);
          if (!v7)
          {
            goto LABEL_15;
          }
        }

        sub_1AF12766C(v7, (*(v11 + 56) + 4 * *(v11 + 64)), (*v11 + (*(v11 + 64) << 6)), *(v11 + 68) - *(v11 + 64) + 1);
LABEL_15:
        if (v8 != *(a1 + 64) - 1)
        {
          v27 = *(a1 + 56) + 80 * v8;
          v28 = v8 | (*(v11 + 64) << 32);
          v29 = v8 | (*(v11 + 68) << 32);
          v30 = sub_1AF14DEB4(a1, v28, v29) >> 32;
          if (v30 != 0xFFFFFFFF && *(v27 + 144) > v30)
          {
            *(v27 + 144) = v30;
          }

          v31 = sub_1AF14DF98(a1, v28, v29) >> 32;
          if (v31 != 0xFFFFFFFF && *(v27 + 148) < v31)
          {
            *(v27 + 148) = v31;
          }
        }

        *(v11 + 64) = v10;
        v6 = *(a1 + 64);
        goto LABEL_23;
      }
    }
  }

LABEL_27:

  os_unfair_lock_unlock((a1 + 76));
}

uint64_t sub_1AF14D1EC(uint64_t a1)
{
  if (*(a1 + 64) >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      sub_1AF14D26C(*(a1 + 56) + v2);
      ++v3;
      v2 += 80;
    }

    while (v3 < *(a1 + 64));
  }

  free(*(a1 + 56));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_1AF14D26C(uint64_t a1)
{
  free(*a1);
  free(*(a1 + 8));
  free(*(a1 + 16));
  free(*(a1 + 24));
  free(*(a1 + 32));
  free(*(a1 + 40));
  free(*(a1 + 48));
  v2 = *(a1 + 56);

  free(v2);
}

void sub_1AF14D2D8(uint64_t a1, int a2)
{
  if (*(a1 + 64) != a2)
  {
    v4 = malloc_type_calloc(0x50uLL, a2, 0x10B00402DE868D6uLL);
    v5 = v4;
    v6 = *(a1 + 64);
    if (v6 >= a2)
    {
      if (a2 < 1)
      {
        v20 = 0;
      }

      else
      {
        v14 = 0;
        do
        {
          v15 = &v4[v14];
          v16 = (*(a1 + 56) + v14);
          *v15 = *v16;
          v17 = v16[1];
          v18 = v16[2];
          v19 = v16[4];
          *(v15 + 3) = v16[3];
          *(v15 + 4) = v19;
          *(v15 + 1) = v17;
          *(v15 + 2) = v18;
          v14 += 80;
        }

        while (80 * a2 != v14);
        v6 = *(a1 + 64);
        v20 = a2;
      }

      if (v20 < v6)
      {
        v23 = 80 * v20;
        do
        {
          sub_1AF14D26C(*(a1 + 56) + v23);
          v23 += 80;
          ++v20;
        }

        while (*(a1 + 64) > v20);
      }
    }

    else
    {
      if (v6 < 1)
      {
        LODWORD(v8) = 0;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        do
        {
          v9 = &v4[v7];
          v10 = (*(a1 + 56) + v7);
          *v9 = *v10;
          v11 = v10[1];
          v12 = v10[2];
          v13 = v10[4];
          *(v9 + 3) = v10[3];
          *(v9 + 4) = v13;
          *(v9 + 1) = v11;
          *(v9 + 2) = v12;
          ++v8;
          v7 += 80;
        }

        while (v8 < *(a1 + 64));
      }

      if (v8 < a2)
      {
        v21 = &v4[80 * v8];
        v22 = a2 - v8;
        do
        {
          sub_1AF14D460(v21, 128);
          v21 += 10;
          --v22;
        }

        while (v22);
      }
    }

    free(*(a1 + 56));
    *(a1 + 56) = v5;
    *(a1 + 64) = a2;
  }
}

float32x2_t sub_1AF14D460(float32x2_t *a1, __int32 a2)
{
  v4 = a2 << 6;
  v5 = a1[9].i32[1];
  v6 = v5 << 6;
  v7 = *a1;
  v8 = malloc_type_aligned_alloc(0x10uLL, v4, 0xF25309DEuLL);
  v9 = v8;
  if (v5)
  {
    memcpy(v8, v7, v5 << 6);
  }

  v10 = (v4 - v6);
  if (v10 >= 1)
  {
    bzero((*&v9 + v6), (v4 - v6));
  }

  if (v7)
  {
    free(v7);
  }

  *a1 = v9;
  v11 = a1[1];
  v12 = malloc_type_aligned_alloc(0x10uLL, v4, 0xF25309DEuLL);
  v13 = v12;
  if (v5)
  {
    memcpy(v12, v11, v5 << 6);
  }

  if (v10 >= 1)
  {
    bzero((*&v13 + v6), (v4 - v6));
  }

  v61 = a2;
  v14 = 4 * a2;
  if (v11)
  {
    free(v11);
  }

  a1[1] = v13;
  v15 = a1[2];
  v16 = malloc_type_aligned_alloc(0x10uLL, v4, 0xF25309DEuLL);
  v17 = v16;
  if (v5)
  {
    memcpy(v16, v15, v5 << 6);
  }

  v18 = (v14 + 15) & 0x7FFFFFFF0;
  v19 = (4 * v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v10 >= 1)
  {
    bzero((*&v17 + v6), v10);
  }

  if (v15)
  {
    free(v15);
  }

  a1[2] = v17;
  v20 = a1[3];
  v21 = malloc_type_aligned_alloc(0x10uLL, v18, 0xF25309DEuLL);
  v22 = v21;
  if (v19)
  {
    memcpy(v21, v20, (4 * v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  v23 = (v18 - v19);
  if (v23 >= 1)
  {
    bzero((*&v22 + v19), (v18 - v19));
  }

  if (v20)
  {
    free(v20);
  }

  v24 = 8 * a2 + 15;
  v25 = 8 * v5 + 15;
  a1[3] = v22;
  v26 = a1[4];
  v27 = malloc_type_aligned_alloc(0x10uLL, v18, 0xF25309DEuLL);
  v28 = v27;
  if (v19)
  {
    memcpy(v27, v26, v19);
  }

  v29 = v25 & 0xFFFFFFFFFFFFFFF0;
  if (v23 >= 1)
  {
    bzero((*&v28 + v19), (v18 - v19));
  }

  if (v26)
  {
    free(v26);
  }

  a1[4] = v28;
  v30 = a1[5];
  v31 = malloc_type_aligned_alloc(0x10uLL, v24 & 0xFFFFFFFF0, 0xF25309DEuLL);
  v32 = v31;
  if (v29)
  {
    memcpy(v31, v30, v29);
  }

  v33 = (v24 & 0xFFFFFFF0) - v29;
  if (v33 >= 1)
  {
    bzero((*&v32 + v29), v33);
  }

  if (v30)
  {
    free(v30);
  }

  a1[5] = v32;
  v34 = a1[6];
  v35 = malloc_type_aligned_alloc(0x10uLL, v18, 0xF25309DEuLL);
  v36 = v35;
  if (v19)
  {
    memcpy(v35, v34, v19);
  }

  if (v23 >= 1)
  {
    bzero((*&v36 + v19), v23);
  }

  if (v34)
  {
    free(v34);
  }

  a1[6] = v36;
  v37 = a1[7];
  v38 = a1[9].i32[1];
  v39 = 4 * v38;
  v40 = malloc_type_aligned_alloc(0x10uLL, v14, 0xF25309DEuLL);
  v41 = v40;
  if (v38)
  {
    memcpy(v40, v37, 4 * v38);
  }

  v42 = (v14 - v39);
  if (v42 >= 1)
  {
    bzero((*&v41 + v39), v42);
  }

  if (v37)
  {
    free(v37);
  }

  a1[7] = v41;
  if (v33 >= 1)
  {
    bzero((*&a1[5] + v29), v33);
  }

  v43 = (v61 - 1);
  v44 = a1[9].u32[1];
  v45 = a1[3];
  if (v44 < v43)
  {
    v46 = 0;
    v47 = (v43 - v44 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v48 = vdupq_n_s64(v44);
    v49 = vaddq_s64(v48, xmmword_1AFE21100);
    v50 = vaddq_s64(v48, xmmword_1AFE21110);
    v51 = vdupq_n_s64(v43 - v44 - 1);
    v52 = (*&v45 + 4 * v44 + 8);
    v53 = vdupq_n_s64(1uLL);
    v54 = vdupq_n_s64(4uLL);
    do
    {
      v55 = vdupq_n_s64(v46);
      v56 = vmovn_s64(vcgeq_u64(v51, vorrq_s8(v55, xmmword_1AFE21110)));
      v57 = vaddq_s64(v50, v53);
      if (vuzp1_s16(v56, 2).u8[0])
      {
        *(v52 - 2) = v57.i32[0];
      }

      if (vuzp1_s16(v56, 2).i8[2])
      {
        *(v52 - 1) = v57.i32[2];
      }

      v58 = vorrq_s8(v55, xmmword_1AFE21100);
      v59 = vaddq_s64(v49, v53);
      if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v51, v58))).i32[1])
      {
        *v52 = v59.i32[0];
        v52[1] = v59.i32[2];
      }

      v46 += 4;
      v49 = vaddq_s64(v49, v54);
      v50 = vaddq_s64(v50, v54);
      v52 += 4;
    }

    while (v47 != v46);
  }

  *(*&v45 + 4 * v43) = -1;
  result = vneg_f32(0xFFFFFFFFLL);
  a1[8] = result;
  a1[9].i32[1] = v61;
  return result;
}

void sub_1AF14D8BC(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, __n128 a5)
{
  v5 = a4;
  v7 = a2;
  v9 = HIDWORD(a2);
  v10 = *(a1 + 56) + 80 * a2;
  v11 = *(v10 + 72);
  if (v11 > SHIDWORD(a2))
  {
    v12 = *(a1 + 24);
    v13 = (*(v10 + 48) + 4 * (a2 >> 32));
    v14 = v11 - (a2 >> 32);
    do
    {
      v15 = *v13++;
      v16 = v12 + 8 * v15;
      LODWORD(v15) = *(v16 + 4);
      v17 = (v16 + 4);
      v18 = v15;
      if (v15 >= SHIDWORD(a2))
      {
        *v17 = v18 + a4;
      }

      --v14;
    }

    while (v14);
  }

  sub_1AF14DCC0(v10, HIDWORD(a2), a4);
  v19 = *(v10 + 68);
  if (v19 >= v9)
  {
    v20 = *(v10 + 64);
    if (v20 > v9)
    {
      *(v10 + 64) = v20 + v5;
    }

    *(v10 + 68) = v19 + v5;
  }

  if (a3 != -1)
  {
    sub_1AF14DE14(*(a1 + 56) + 80 * a3, HIDWORD(a3), v9, v5);
  }

  if (v7 + 1 < *(a1 + 64))
  {
    v21 = v9;
    while (v21 >= 2)
    {
      v22 = *(v10 + 32) + 4 * v21--;
      LODWORD(v23) = *(v22 - 4);
      if (v23 != -1)
      {
        goto LABEL_18;
      }
    }

    LODWORD(v23) = 0;
LABEL_18:
    v24 = *(a1 + 56) + 80 * (v7 + 1);
    v25 = *(v24 + 72);
    if (v23 < v25)
    {
      v26 = *(v24 + 24);
      v23 = v23;
      do
      {
        v27 = *(v26 + 4 * v23);
        if (v27 >= v9)
        {
          *(v26 + 4 * v23) = v27 + v5;
          v25 = *(v24 + 72);
        }

        ++v23;
      }

      while (v23 < v25);
    }
  }
}

__n128 sub_1AF14DA28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = (v2 + 80 * a2);
  v4 = a2 >> 32;
  v5 = a2 - 1;
  v6 = (a2 - 1);
  if (v6 == 0xFFFFFFFFLL)
  {
    v7 = (v3[2] + (v4 << 6));
    v8 = (*v3 + (v4 << 6));
    v9 = *v7;
    v10 = v7[1];
    v11 = v7[3];
    v8[2] = v7[2];
    v8[3] = v11;
    *v8 = v9;
    v8[1] = v10;
  }

  else
  {
    v13 = *(*(v2 + 80 * a2 + 24) + 4 * v4);
    sub_1AF14DA28(a1, v6 | (v13 << 32));
    v14 = 0;
    v15 = (*(*(a1 + 56) + 80 * v5) + (v13 << 6));
    v16 = *v3 + (v4 << 6);
    v17 = v3[2] + (v4 << 6);
    do
    {
      *(v16 + v14) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v15[1], *(v17 + v14), 1), *v15, COERCE_FLOAT(*(v17 + v14))), v15[2], *(v17 + v14), 2), v15[3], *(v17 + v14), 3);
      v14 += 16;
    }

    while (v14 != 64);
  }

  v18 = *v3 + (v4 << 6);
  v19 = v3[1] + (v4 << 6);
  result = *v18;
  v21 = *(v18 + 16);
  v22 = *(v18 + 48);
  *(v19 + 32) = *(v18 + 32);
  *(v19 + 48) = v22;
  *v19 = result;
  *(v19 + 16) = v21;
  return result;
}

uint64_t sub_1AF14DB20(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 48);
  if (result == -1)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (v7 >= v6)
    {
      v9 = *(a1 + 24);
      v10 = (v7 - v9) >> 3;
      if ((v10 + 1) >> 61)
      {
        sub_1AF10A1D0();
      }

      v11 = v6 - v9;
      v12 = v11 >> 2;
      if (v11 >> 2 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        sub_1AF1233A0(a1 + 24, v13);
      }

      v14 = (8 * v10);
      *v14 = a2;
      v8 = 8 * v10 + 8;
      v15 = *(a1 + 24);
      v16 = *(a1 + 32) - v15;
      v17 = v14 - v16;
      memcpy(v14 - v16, v15, v16);
      v18 = *(a1 + 24);
      *(a1 + 24) = v17;
      *(a1 + 32) = v8;
      *(a1 + 40) = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v7 = a2;
      v8 = (v7 + 1);
    }

    *(a1 + 32) = v8;
    return ((v8 - *(a1 + 24)) >> 3) - 1;
  }

  else
  {
    v5 = *(a1 + 24) + 8 * result;
    *(a1 + 48) = *(v5 + 4);
    *v5 = a2;
  }

  return result;
}

void sub_1AF14DC24(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v6 = HIDWORD(a2);
  if (a3 + 1 != a2)
  {
    v8 = sub_1AF0D5194(result, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD5B0C(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (a3 != -1)
  {
    v16 = *(result + 56);
    if (v16)
    {
      v17 = *(v16 + 80 * a3 + 32);
      if (*(v17 + 4 * (a3 >> 32)) == a4)
      {
        *(v17 + 4 * (a3 >> 32)) = v6;
      }
    }
  }
}

void sub_1AF14DCC0(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 72);
  v4 = v3 - a2;
  if (v3 - a2 < 0)
  {
    v23 = sub_1AF0D5194(result, a2);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD5B84(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  else if (v3 != a2)
  {
    v6 = a2;
    if (v3 + a3 > *(result + 76))
    {
      v8 = sub_1AF0D5194(result, a2);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD5BFC(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    v16 = (*(result + 24) + 4 * v6);
    memmove(&v16[4 * a3], v16, 4 * v4);
    v17 = (*(result + 32) + 4 * v6);
    memmove(&v17[4 * a3], v17, 4 * v4);
    v18 = (*(result + 40) + 8 * v6);
    memmove(&v18[8 * a3], v18, 8 * v4);
    v19 = (*(result + 48) + 4 * v6);
    memmove(&v19[4 * a3], v19, 4 * v4);
    v20 = (*(result + 56) + 4 * v6);
    memmove(&v20[4 * a3], v20, 4 * v4);
    memmove((*result + (v6 << 6) + (a3 << 6)), (*result + (v6 << 6)), v4 << 6);
    v21 = (*(result + 8) + (v6 << 6));
    memmove(&v21[64 * a3], v21, v4 << 6);
    v22 = (*(result + 16) + (v6 << 6));
    memmove(&v22[64 * a3], v22, v4 << 6);
  }
}

void sub_1AF14DE14(uint64_t result, uint64_t a2, int a3, int a4)
{
  v6 = a2;
  if (*(result + 72) <= a2)
  {
    v8 = sub_1AF0D5194(result, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD5C74(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = *(result + 72);
  if (v16 > v6)
  {
    v17 = *(result + 32);
    v18 = v6;
    do
    {
      v19 = *(v17 + 4 * v18);
      if (v19 >= a3)
      {
        *(v17 + 4 * v18) = v19 + a4;
        v16 = *(result + 72);
      }

      ++v18;
    }

    while (v18 < v16);
  }
}

unint64_t sub_1AF14DEB4(_BOOL8 a1, uint64_t a2, unint64_t a3)
{
  v4 = a1;
  v5 = HIDWORD(a2);
  v6 = HIDWORD(a3);
  if (a2 != a3)
  {
    v7 = sub_1AF0D5194(a1, a2);
    a1 = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDD5CEC(v7, a2, v8, v9, v10, v11, v12, v13);
    }
  }

  if (v5 > v6)
  {
    v14 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD5D64(v14, v15, v16, v17, v18, v19, v20, v21);
    }

    return -1;
  }

  v22 = a2 + 1;
  if (a2 + 1 == *(v4 + 64))
  {
    return -1;
  }

  v24 = (*(*(v4 + 56) + 80 * a2 + 32) + 4 * (a2 >> 32));
  v25 = v6 - HIDWORD(a2) + 1;
  while (1)
  {
    v27 = *v24++;
    v26 = v27;
    if (v27 != -1)
    {
      break;
    }

    if (!--v25)
    {
      v22 = -1;
      return v22 | (v26 << 32);
    }
  }

  return v22 | (v26 << 32);
}

unint64_t sub_1AF14DF98(_BOOL8 a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = HIDWORD(a2);
  v7 = HIDWORD(a3);
  if (a2 != a3)
  {
    v8 = sub_1AF0D5194(a1, a2);
    a1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDD5CEC(v8, a2, v9, v10, v11, v12, v13, v14);
    }
  }

  if (v6 > v7)
  {
    v15 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD5D64(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    return -1;
  }

  if (a2 + 1 == *(v5 + 64))
  {
    return -1;
  }

  v23 = (a3 + 1);
  v24 = (a3 >> 32) + 1;
  v25 = (*(*(v5 + 56) + 80 * a2 + 32) + 4 * (a3 >> 32));
  while (1)
  {
    v27 = *v25--;
    v26 = v27;
    if (v27 != -1)
    {
      break;
    }

    if (--v24 <= a2 >> 32)
    {
      return -1;
    }
  }

  v29 = sub_1AF14E0CC(v5, v23 | (v26 << 32));
  v30 = HIDWORD(v29);
  if (HIDWORD(v29) != 0xFFFFFFFF)
  {
    do
    {
      v31 = v29;
      v23 = v30;
      v29 = sub_1AF14E0CC(v5, v29);
      v30 = HIDWORD(v29);
    }

    while (HIDWORD(v29) != 0xFFFFFFFF);
    v26 = v23;
    LODWORD(v23) = v31;
  }

  return v23 | (v26 << 32);
}

unint64_t sub_1AF14E0CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56) + 80 * a2;
  v3 = HIDWORD(a2) + 1;
  if (HIDWORD(a2) + 1 < *(v2 + 72) && *(*(v2 + 24) + 4 * v3) == *(*(v2 + 24) + 4 * (a2 >> 32)))
  {
    return a2 | (v3 << 32);
  }

  else
  {
    return -1;
  }
}

void sub_1AF14E140()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED731BB0 = v0;
  v2 = sub_1AF16CB64(v0, v1);
  sub_1AF1DCFAC(v0, v2);

  sub_1AF1DD018();
}

uint64_t sub_1AF14E194(uint64_t a1)
{
  if (sub_1AF1CFF64(a1, 1))
  {
    return 0;
  }

  if (qword_1ED731BB8 != -1)
  {
    sub_1AFDD5DDC();
  }

  v2 = sub_1AF0D160C(qword_1ED731BB0, 0x10uLL);
  v3 = sub_1AF1CFF64(a1, 2);
  v4 = sub_1AF1CFF64(a1, 4);
  v5 = objc_opt_new();
  objc_msgSend_setWorld_(v5, v6, a1);
  objc_msgSend_setIsVFX2_(v5, v7, 1);
  objc_msgSend_setIsRenderingInRE_(v5, v8, v4);
  objc_msgSend_setSetupRenderer_(v5, v9, 0);
  objc_msgSend_setIsAuthoringWorld_(v5, v10, v3);
  objc_msgSend_setAutomaticallyPrepareScene_(v5, v11, 0);
  objc_msgSend_setEnableRuntimeScriptCompilation_(v5, v12, v3);
  v14 = sub_1AF1CF8F4(a1, v13);
  objc_msgSend_setMetalLibraryURL_(v5, v15, v14);
  objc_msgSend_setSetupAsyncRuntime_(v5, v16, 0);
  v17 = sub_1AF1CFCEC(a1);
  objc_msgSend_setAsyncRuntimeLock_(v5, v18, v17);
  v20 = sub_1AF1D13B8(a1, v19);
  objc_msgSend_setCounterStorage_(v5, v21, v20);
  objc_msgSend_setCommandQueue_(v5, v22, 0);
  if (objc_msgSend_isRenderingInRE(v5, v23, v24))
  {
    objc_msgSend_registerREinVFX2Systems(v5, v25, v26);
  }

  else
  {
    objc_msgSend_registerVFX2AuthoringSystems_(v5, v25, v3);
  }

  v27 = [_TtC3VFX8VFXScene alloc];
  v29 = objc_msgSend_initWithOptions_(v27, v28, v5);
  objc_msgSend_setName_(v29, v30, @"Presentation");
  *(v2 + 16) = v29;
  *(v2 + 24) = objc_msgSend_makeDefaultCamera(v29, v31, v32);

  return v2;
}

uint64_t sub_1AF14E33C(uint64_t a1)
{
  if (sub_1AF1CFF64(a1, 1))
  {
    return 0;
  }

  if (qword_1ED731BB8 != -1)
  {
    sub_1AFDD5DDC();
  }

  v2 = sub_1AF0D160C(qword_1ED731BB0, 0x10uLL);
  v3 = objc_opt_new();
  objc_msgSend_setWorld_(v3, v4, a1);
  objc_msgSend_setIsVFX2_(v3, v5, 1);
  v6 = sub_1AF1CFF64(a1, 4);
  objc_msgSend_setIsRenderingInRE_(v3, v7, v6);
  objc_msgSend_setSetupRenderer_(v3, v8, 0);
  v9 = sub_1AF1CFF64(a1, 2);
  objc_msgSend_setIsAuthoringWorld_(v3, v10, v9);
  objc_msgSend_setAutomaticallyPrepareScene_(v3, v11, 0);
  v13 = sub_1AF1CF8F4(a1, v12);
  objc_msgSend_setMetalLibraryURL_(v3, v14, v13);
  objc_msgSend_setSetupAsyncRuntime_(v3, v15, 0);
  v16 = [_TtC3VFX8VFXScene alloc];
  v18 = objc_msgSend_initWithOptions_(v16, v17, v3);
  objc_msgSend_setName_(v18, v19, @"Model");
  *(v2 + 16) = v18;
  *(v2 + 24) = 0;

  return v2;
}

void sub_1AF14E478(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v5 = objc_msgSend_opaqueEntityManager(v3, a2, a3);

      sub_1AF65F924(v5, a2);
    }

    else
    {
      v7 = sub_1AF0D5194(0, a2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDD5DF0(v7);
      }
    }
  }

  else
  {
    v6 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDD5E34(v6);
    }
  }
}

uint64_t sub_1AF14E52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AF12E2AC(a2, a2);
  v9 = objc_msgSend_renderTargetInfo(v6, v7, v8);
  objc_msgSend_colorPixelFormatAtIndex_(v9, v10, 0);
  objc_msgSend_depthPixelFormat(v9, v11, v12);
  objc_msgSend_sampleCount(v9, v13, v14);
  v15 = *(a1 + 16);
  sub_1AF130C80(a2, v16, v17);

  return MEMORY[0x1EEE66B58](v15, sel_encodeAuthoringWithEncoder_renderer_colorFormat_depthStencilFormat_sampleCount_, a3);
}

void sub_1AF14E5CC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v4 = a2;
  sub_1AF130920(a1, a2);
  v9 = sub_1AF12DDCC(a1, v8);
  if (v9)
  {
    v11 = v9;
    v12 = sub_1AF1D00B0(v9, v10);
    if (v12)
    {
      if (*(v12 + 154) == 1)
      {
        *(v12 + 154) = 0;
        v14 = sub_1AF1CEDE4(v11, v13);
        if (v14)
        {
          CFDictionaryApplyFunction(v14, sub_1AF14ED30, v11);
        }
      }
    }

    v15 = *(sub_1AF1CF8AC(v11, v13) + 16);
    v18 = sub_1AF130C80(a1, v16, v17);
    sub_1AF70BDB8(v18, 1);
    v21 = sub_1AF130770(a1, v19, v20);
    objc_msgSend_updateAtTime_deltaTime_frameIndex_renderer_(v15, v22, v21, v18, a3, a4);
    if (objc_msgSend_needsUpdate(v15, v23, v24) && (v4 & 1) == 0)
    {

      sub_1AF12ED38(a1, v25);
    }
  }

  else
  {
    v26 = sub_1AF0D5194(0, v10);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&dword_1AF0CE000, v26, OS_LOG_TYPE_DEFAULT, "Warning: CFXVFXSimulate -> no world yet", v27, 2u);
    }
  }
}

void sub_1AF14E718(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF12DDCC(a1, a2);
  if (v4)
  {
    v6 = v4;
    v7 = sub_1AF1CF8AC(v4, v5);
    if (v7)
    {
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);
      v10 = sub_1AF130E94(a1);
      objc_msgSend_setAdditiveWritesToAlpha_(v8, v11, v10);
      v12 = sub_1AF12EE78(a1);
      objc_msgSend_setDebugUIOptions_(v8, v13, v12);
      v16 = sub_1AF130C80(a1, v14, v15);
      v18 = sub_1AF12E2AC(a1, v17);
      v21 = objc_msgSend_currentCommandBuffer(v18, v19, v20);
      objc_msgSend_updateVFX2RenderOutputWithPointOfView_commandBuffer_renderer_particleMaterialOverride_(v8, v22, v9, v21, v16, a2);
      v24 = sub_1AF12F10C(a1, v23);
      if (v24)
      {
        v27 = v24;
        v28 = sub_1AF1B9B04(v24, v25);
        v59 = v28[1];
        v60 = *v28;
        v57 = v28[3];
        v58 = v28[2];
        v30 = sub_1AF1B9E68(v27, v29);
        v61 = v30[3];
        v55 = v30[1];
        v56 = v30[2];
        v54 = *v30;
        objc_msgSend_setWorldTransform_(v9, v31, v32, *&v60, *&v59, *&v58, *&v57);
        objc_msgSend_setLastFrameWorldTransform_(v9, v33, v34, *&v54, *&v55, *&v56, *&v61);
        v35 = sub_1AF13050C(a1, 0);
        objc_msgSend_setProjection_(v9, v36, v37, *v35, v35[2], v35[4], v35[6]);
      }

      v38 = objc_msgSend_currentFrameIndex(v18, v25, v26);
      objc_msgSend_prepareDrawCallsWithFrameIndex_renderer_(v8, v39, v38, v16);
      objc_msgSend__commitResourceCommandBufferIfNeeded(v18, v40, v41);
      v44 = sub_1AF1D00B0(v6, v42);
      if (!v44)
      {
        v45 = sub_1AF0D5194(0, v43);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDD2A58(v45, v43, v46, v47, v48, v49, v50, v51);
        }
      }

      v65 = 0u;
      *buf = v44;
      v63 = a1;
      v64 = 0;
      v66 = a2;
      sub_1AF1330D0(buf, v43);
      sub_1AF130890(a1, v52);
    }
  }

  else
  {
    v53 = sub_1AF0D5194(0, v5);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AF0CE000, v53, OS_LOG_TYPE_DEFAULT, "Warning: CFXVFXPrepareDrawCalls -> no world yet", buf, 2u);
    }
  }
}

void sub_1AF14E910(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v7 = sub_1AF12DDCC(a1, a2);
  v9 = *(sub_1AF1CF8AC(v7, v8) + 16);
  v10 = sub_1AF1D5010(a2, a3, 0);
  v12 = sub_1AF1B83E8(*(v10 + 8), v11);
  v15 = sub_1AF16AC70(v12, v13, v14);
  prof_beginFlame("CFXVFXUpdateEmitterRendererElements", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/CFXVFX/CFXCoreEntityManager.m", 358);
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1AF14EA78;
  v27[3] = &unk_1E7A7A3F0;
  v27[4] = &v30;
  v27[5] = v15;
  v28 = a4;
  v27[6] = a2;
  v29 = a3;
  v17 = objc_msgSend_enumerateDrawCall_(v9, v16, v27);
  if (*(v31 + 6) != a4)
  {
    v19 = sub_1AF0D5194(v17, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD5E78(v19, v20, v21, v22, v23, v24, v25, v26);
    }
  }

  _Block_object_dispose(&v30, 8);
  prof_endFlame();
}

void sub_1AF14EA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  prof_endFlame();
  _Unwind_Resume(a1);
}

void sub_1AF14EA78(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = objc_msgSend_emitterObjectID(a2, a2, a3);
  if (v5 == v6)
  {
    v8 = *(*(*(a1 + 32) + 8) + 24);
    if (v8 >= *(a1 + 56))
    {
      v33 = sub_1AF0D5194(v6, v7);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD5EF0(v33, v34, v35, v36, v37, v38, v39, v40);
      }
    }

    else
    {
      v9 = sub_1AF1D5010(*(a1 + 48), *(a1 + 58), v8);
      objc_msgSend_boundingBoxMin(a2, v10, v11);
      v42 = v12;
      objc_msgSend_boundingBoxMax(a2, v13, v14);
      v41 = v15;
      if (objc_msgSend_materialType(a2, v16, v17))
      {
        v20 = 3;
      }

      else
      {
        v20 = 11;
      }

      v22 = v41;
      v21 = v42;
      v21.i32[3] = 1.0;
      *(v9 + 80) = v20 | *(v9 + 80) & 0xFFF0;
      v22.i32[3] = 1.0;
      v23 = vaddq_f32(v21, v22);
      v24 = v22;
      v25 = v21;
      v21.i64[0] = 0x3F0000003F000000;
      v21.i64[1] = 0x3F0000003F000000;
      *(v9 + 16) = vmulq_f32(v23, v21);
      *(v9 + 32) = vmulq_f32(vsubq_f32(v24, v25), v21);
      *(v9 + 72) = objc_msgSend_renderingOrder(a2, v18, v19);
      if (objc_msgSend_isAdditive(a2, v26, v27))
      {
        v30 = 0x8000;
      }

      else
      {
        v30 = 0;
      }

      *(v9 + 80) = v30 & 0x8000 | *(v9 + 80) & 0x7FFF;
      v31 = *(v9 + 8);
      if (v31)
      {
        v44 = *sub_1AF1B9B04(v31, v28);
        v45 = __invert_f4(v44);
        v45.columns[3] = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v45.columns[3], v45.columns[2], *(v9 + 16), 2), v45.columns[1], *(v9 + 16), 1), v45.columns[0], COERCE_FLOAT(*(v9 + 16)));
        v45.columns[3].i32[3] = HIDWORD(*(v9 + 16));
        v32 = *(v9 + 32);
        v32.i32[1] = v32.i32[0];
        v32.i32[2] = *(v9 + 32);
        v45.columns[1] = vmlaq_f32(vmlaq_f32(vmulq_f32(vabsq_f32(v45.columns[1]), vuzp2q_s32(vdupq_lane_s32(*(v9 + 32), 1), *(v9 + 32))), v32, vabsq_f32(v45.columns[0])), vzip2q_s32(vtrn1q_s32(*(v9 + 32), *(v9 + 32)), *(v9 + 32)), vabsq_f32(v45.columns[2]));
        v43[0] = v45.columns[3];
        v43[1] = v45.columns[1];
        sub_1AF1B7B98(*(v9 + 8), v43, 1);
        sub_1AF1B7C2C(*(v9 + 8), v9 + 16);
      }

      *(v9 + 48) = objc_msgSend_customHandler(a2, v28, v29);
      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }
}

uint64_t sub_1AF14EC54(_BOOL8 a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (!a1 && (v5 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD5F68(v5, a2, a3, v6, v7, v8, v9, v10);
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
    sub_1AFDD5FE0(v11, a2, a3, v12, v13, v14, v15, v16);
  }

LABEL_6:
  v17 = *(a2 + 16);
  v18 = sub_1AF16AC70(v4, a2, a3);
  return objc_msgSend_drawCallCountWithEmitterID_(v17, v19, v18);
}

void sub_1AF14ECE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }
}

void sub_1AF14ED30(uint64_t a1, uint64_t a2)
{
  prof_beginFlame("_updateVFXCoreOpacityFromNodes", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/CFXVFX/CFXCoreEntityManager.m", 204);
  v7 = sub_1AF16A4C8(a2, v4, v5);
  if (v7)
  {
    sub_1AF1BA79C(a1, v6);
    v9 = v8;
    objc_msgSend_opacity(v7, v10, v11);
    if (*&v14 != v9)
    {
      *&v14 = v9;
      objc_msgSend_setOpacity_(v7, v12, v13, v14);
    }
  }

  prof_endFlame();
}

uint64_t sub_1AF14EDE8()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB658490 = result;
  return result;
}

void *sub_1AF14EE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6058(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (qword_1EB658498 != -1)
  {
    sub_1AFDD60D0();
  }

  result = sub_1AF0D160C(qword_1EB658490, 0x18uLL);
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}