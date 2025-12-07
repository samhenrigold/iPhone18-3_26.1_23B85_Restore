BOOL sub_19B61A35C(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  result = sub_19B61BF90(a2);
  if (result)
  {
    v5 = 3;
    v6 = 2;
    while (1)
    {
      v7 = v6;
      v8 = sub_19B601068(a2, v6, v6);
      v9 = v5;
      v10 = v5 - 2;
      if (v5 <= 2)
      {
        do
        {
          v11 = *sub_19B61C034(a1 + 12, v7, v9);
          v12 = *sub_19B61C034(a1 + 12, v7, v9);
          v8 = v8 + (-(v11 * v12) * *sub_19B61C3BC(a1, v9++));
        }

        while (v9 != 3);
      }

      *sub_19B61C3BC(a1, v7) = v8;
      if (*sub_19B61C3BC(a1, v7) <= 0.0)
      {
        break;
      }

      if (!v7)
      {
        return 1;
      }

      do
      {
        v13 = v10;
        v14 = sub_19B601068(a2, v10, v7);
        v15 = v5;
        if (v5 <= 2)
        {
          do
          {
            v16 = *sub_19B61C034(a1 + 12, v13, v15);
            v17 = *sub_19B61C034(a1 + 12, v7, v15);
            v14 = v14 + (-(v16 * v17) * *sub_19B61C3BC(a1, v15++));
          }

          while (v15 != 3);
        }

        v18 = v14 / *sub_19B61C3BC(a1, v7);
        *sub_19B61C034(a1 + 12, v13, v7) = v18;
        v10 = v13 - 1;
      }

      while (v13);
      v6 = v7 - 1;
      v5 = v7;
    }

    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
    }

    v19 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v26 = v7;
      _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_DEBUG, "D(%zu) <= 0 non-positive definite matrix!", buf, 0xCu);
    }

    v20 = sub_19B420058();
    if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
      }

      v23 = 134217984;
      v24 = v7;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 2, "D(%zu) <= 0 non-positive definite matrix!", &v23);
      v22 = v21;
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMFactoredMatrix<float, 3>::factor(const CMMatrix<T, N, N> &) [T = float, N = 3]", "CoreLocation: %s\n", v21);
      if (v22 != buf)
      {
        free(v22);
      }
    }

    return 0;
  }

  return result;
}

double sub_19B61A6A4(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!*(v1 + 10))
  {
    return 0.0;
  }

  v3 = sub_19B5BC7B8((v1 + 8));
  *&result = v3 - sub_19B447000((a1 + 12));
  return result;
}

void sub_19B61A71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v53 = *MEMORY[0x1E69E9840];
  buf[0].i64[0] = *a2;
  buf[0].i32[2] = *(a2 + 8);
  do
  {
    buf[0].f32[v6] = -buf[0].f32[v6];
    ++v6;
  }

  while (v6 != 3);
  sub_19B61AC60(buf, v48);
  v7 = 0;
  *(a1 + 64) = sub_19B61AD14(v48, (a1 + 64));
  *(a1 + 68) = v8;
  *(a1 + 72) = v9;
  do
  {
    v10 = 2;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        v12 = *sub_19B5D68B8(v48, v7, i);
        v13 = *sub_19B61C034(a1 + 40, i, v10);
        v14 = sub_19B5D68B8(v48, v7, v10);
        *v14 = *v14 + (v12 * v13);
      }

      *sub_19B5D68B8(v49, v7, v10--) = 0;
    }

    while (v10);
    *sub_19B5D68B8(v49, v7, 0) = 0;
    *sub_19B5D68B8(v49, v7, v7) = 1065353216;
    ++v7;
  }

  while (v7 != 3);
  for (j = 2; ; --j)
  {
    v16 = 0;
    buf[101].i32[j + 3] = 0;
    v17 = 0.0;
    do
    {
      v18 = *sub_19B5D68B8(v48, j, v16);
      v19 = v18 * *sub_19B5D68B8(v48, j, v16);
      v20 = v17 + (v19 * *sub_19B61C3BC(a1 + 28, v16));
      v21 = *sub_19B5D68B8(v49, j, v16);
      v22 = v21 * *sub_19B5D68B8(v49, j, v16);
      v17 = v20 + (v22 * sub_19B5D6144(a3, v16));
      buf[101].f32[j + 3] = v17;
      ++v16;
    }

    while (v16 != 3);
    if (v17 <= 0.0)
    {
      break;
    }

    if (!j)
    {
      for (k = 0; k != 3; ++k)
      {
        v43 = buf[101].i32[k + 3];
        *sub_19B61C3BC(a1 + 28, k) = v43;
      }

      goto LABEL_35;
    }

    for (m = 0; m != j; ++m)
    {
      v24 = 0;
      v25 = 0.0;
      do
      {
        v26 = *sub_19B5D68B8(v48, m, v24);
        v27 = v26 * *sub_19B61C3BC(a1 + 28, v24);
        v28 = v25 + (v27 * *sub_19B5D68B8(v48, j, v24));
        v29 = *sub_19B5D68B8(v49, m, v24);
        v30 = v29 * sub_19B5D6144(a3, v24);
        v25 = v28 + (v30 * *sub_19B5D68B8(v49, j, v24++));
      }

      while (v24 != 3);
      v31 = 0;
      *sub_19B61C034(a1 + 40, m, j) = v25 / v17;
      do
      {
        v32 = *sub_19B61C034(a1 + 40, m, j);
        v33 = *sub_19B5D68B8(v48, j, v31);
        v34 = sub_19B5D68B8(v48, m, v31);
        *v34 = *v34 - (v32 * v33);
        v35 = *sub_19B61C034(a1 + 40, m, j);
        v36 = *sub_19B5D68B8(v49, j, v31);
        v37 = sub_19B5D68B8(v49, m, v31);
        *v37 = *v37 - (v35 * v36);
        ++v31;
      }

      while (v31 != 3);
    }
  }

  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
  }

  v38 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
  {
    buf[0].i32[0] = 134217984;
    *(buf[0].i64 + 4) = j;
    _os_log_impl(&dword_19B41C000, v38, OS_LOG_TYPE_DEBUG, "D[%zu] <= 0, matrix ! positive definite", buf, 0xCu);
  }

  v39 = sub_19B420058();
  if (*(v39 + 160) > 1 || *(v39 + 164) > 1 || *(v39 + 168) > 1 || *(v39 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
    }

    v50 = 134217984;
    v51 = j;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 2, "D[%zu] <= 0, matrix ! positive definite", &v50);
    v41 = v40;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMFactoredMatrix<float, 3>::thorntonTemporalUpdate(CMMatrix<T, N, N> &, const CMVector<T, N> &) [T = float, N = 3]", "CoreLocation: %s\n", v40);
    if (v41 != buf)
    {
      free(v41);
    }
  }

LABEL_35:
  *v44.i64 = sub_19B66C264(buf, a2);
  *(a1 + 12) = sub_19B66BF70(buf, (a1 + 12), v44);
  *(a1 + 16) = v45;
  *(a1 + 20) = v46;
  *(a1 + 24) = v47;
}

void sub_19B61AC60(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  v5 = 0.0;
  do
  {
    v5 = v5 + (*(result + v4) * *(result + v4));
    v4 += 4;
  }

  while (v4 != 12);
  v6 = sqrtf(v5);
  if (v6 == 0.0)
  {
    *(a2 + 32) = 1065353216;
    *a2 = xmmword_19B7B9954;
    *(a2 + 16) = unk_19B7B9964;
  }

  else
  {
    v7 = __sincosf_stret(v6);
    v8[0] = 1.0;
    v8[1] = v7.__sinval / v6;
    v8[2] = (1.0 - v7.__cosval) / (v6 * v6);
    sub_19B61C5B4(result, v8, a2);
  }
}

float sub_19B61AD14(uint64_t a1, float *a2)
{
  for (i = 0; i != 3; ++i)
  {
    v5 = sub_19B601068(a1, i, 0) * *a2;
    *sub_19B5BC0F0(&v11, i) = v5;
    for (j = 1; j != 3; ++j)
    {
      v7 = sub_19B601068(a1, i, j);
      v8 = sub_19B5D6144(a2, j);
      v9 = sub_19B5BC0F0(&v11, i);
      *v9 = *v9 + (v7 * v8);
    }
  }

  return v11;
}

void sub_19B61ADDC(void *a1, int a2, unint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!(*(*a1 + 64))(a1))
  {
    return;
  }

  v6 = *(a1[7] + 416);
  v7 = a3 >= v6;
  v8 = a3 - v6;
  if (v8 == 0 || !v7)
  {
    return;
  }

  v9 = v8 * 0.000001;
  if (v9 <= 0.0)
  {
    return;
  }

  if (a2 == 2 || a2 == 1)
  {
    v10 = 833342583;
    goto LABEL_21;
  }

  v10 = 0;
  if (a2)
  {
LABEL_21:
    *buf = v10;
    v18 = v10;
    v19 = v10;
    v15 = 0;
    v16 = 0;
    sub_19B61A71C(a1, &v15, buf);
    return;
  }

  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
  }

  v11 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEBUG, "invalid quiescentState kInMotion, ignoring quiescent", buf, 2u);
  }

  v12 = sub_19B420058();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
    }

    LOWORD(v15) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 2, "invalid quiescentState kInMotion, ignoring quiescent", &v15, 2);
    v14 = v13;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CMSensorFusionMekf::feedQuiescent(CMDeviceMotionInputs::QuiescentState, uint64_t)", "CoreLocation: %s\n", v13);
    if (v14 != buf)
    {
      free(v14);
    }
  }
}

void sub_19B61B024(uint64_t a1, float32x2_t *a2, unint64_t a3)
{
  if ((*(*a1 + 64))(a1))
  {
    v6 = *(a1 + 56);
    v7 = *(v6 + 416);
    v8 = a3 >= v7;
    v9 = a3 - v7;
    if (v9 != 0 && v8)
    {
      v10 = v9 * 0.000001;
      if (v10 > 0.0)
      {
        v11 = vsub_f32(*a2, *(v6 + 452));
        v12 = a2[1].f32[0] - *(v6 + 460);
        v45 = v11;
        v46 = v12;
        v13 = vaddv_f32(vmul_f32(v11, v11));
        v14 = v12 * v12;
        v43 = 0;
        v44 = 0;
        v38 = v9 * 0.000001;
        if (*(a1 + 9) == 1)
        {
          v15 = 0;
          v41 = vmul_f32(v11, vdup_n_s32(0x3D23D70Au));
          v42 = v12 * 0.04;
          do
          {
            v16 = sub_19B5BC0F0(&v41, v15);
            v17 = fminf(fmaxf(*v16 * *v16, 0.0027416), 9.8696);
            *sub_19B5BC0F0(&v43, v15++) = v17;
          }

          while (v15 != 3);
          *(a1 + 9) = 0;
          v10 = v38;
        }

        v18 = 0;
        v19 = v13 + v14;
        v20 = v10 * v10;
        v21 = (v10 * 0.0017) * (v10 * 0.0017);
        v22 = (v10 * 17.453) * (v10 * 17.453);
        do
        {
          v23 = (v20 * sub_19B5D6144(*(a1 + 56) + 428, v18)) + (v38 * 0.000000010966);
          v24 = sub_19B5BC0F0(&v45, v18);
          v25 = v23 + (((*v24 * 0.00033) * v38) * ((*v24 * 0.00033) * v38));
          v26 = sub_19B5BC0F0(&v45, v18);
          v27 = v25 + ((v19 - (*v26 * *v26)) * v21);
          v28 = sub_19B5BC0F0(&v45, v18);
          v29 = *v28;
          if (*v28 <= 0.0)
          {
            v29 = -*v28;
          }

          v30 = v29 <= 27.925;
          v31 = 0.0;
          if (!v30)
          {
            v31 = v22;
          }

          v32 = *sub_19B5BC0F0(&v43, v18) + (v27 + v31);
          *sub_19B5BC0F0(&v41, v18++) = v32;
        }

        while (v18 != 3);
        v33 = *(a1 + 56);
        v34 = (((*(v33 + 472) + a2[1].f32[0]) * 0.5) - *(v33 + 460)) * v38;
        v39 = vmul_n_f32(vsub_f32(vmul_f32(vadd_f32(*(v33 + 464), *a2), 0x3F0000003F000000), *(v33 + 452)), v38);
        v40 = v34;
        sub_19B61A71C(a1, &v39, &v41);
        v35 = 0;
        v36 = a2->f32[0];
        if (a2->f32[0] <= 0.0)
        {
          v36 = -a2->f32[0];
        }

        do
        {
          v37 = a2->f32[v35 + 1];
          if (v37 <= 0.0)
          {
            v37 = -v37;
          }

          if (v37 > v36)
          {
            v36 = v37;
          }

          ++v35;
        }

        while (v35 != 2);
        if (v36 > 27.925)
        {
          *(a1 + 80) = 1;
        }
      }
    }
  }
}

uint64_t sub_19B61B33C(float32x2_t *a1)
{
  if ((a1[1].i8[2] & 1) == 0)
  {
    (*(*a1 + 160))(a1);
    return 0;
  }

  v2 = a1[7];
  v3 = v2[103].u8[4];
  if (a1[1].i8[0])
  {
    v4 = 1;
    if (!v2[103].i8[4])
    {
      a1[10] = 1;
      a1[1].i8[1] = 1;
      v4 = 0;
    }
  }

  else
  {
    v4 = v3 != 0;
  }

  a1[1].i8[0] = v4;
  v6 = a1[10];
  if (v6)
  {
    v7 = 1.0 / v6;
    if (v7 < 0.001)
    {
      v6 = 999;
      a1[10] = 999;
      v7 = 0.001;
    }
  }

  else
  {
    v7 = 1.0;
  }

  if (v2[30].i8[4] == 1)
  {
    v8 = ((1.0 - v7) * a1[9].f32[0]) + (v7 * v2[30].f32[0]);
    a1[8] = vadd_f32(vmul_n_f32(a1[8], 1.0 - v7), vmul_n_f32(v2[29], v7));
    a1[9].f32[0] = v8;
    a1[10] = (v6 + 1);
    v3 = v2[103].u8[4];
  }

  if (!v3 && v2[35].i32[0] != v2[34].u16[3])
  {
    goto LABEL_53;
  }

  v9 = v2[1].u16[1];
  if (v2[1].i32[1] == v9)
  {
    v58 = v7;
    sub_19B5E9EFC(&v2[1], 0, v9);
    HIDWORD(v60) = v11;
    v61 = v12;
    if (v10 <= 0.0)
    {
      v13 = -v10;
    }

    else
    {
      v13 = v10;
    }

    for (i = 4; i != 12; i += 4)
    {
      v15 = *(&v60 + i);
      if (v15 <= 0.0)
      {
        v15 = -v15;
      }

      if (v15 > v13)
      {
        v13 = v15;
      }
    }

    v16 = sub_19B5BF0D0((*&a1[7] + 8), 0, *(*&a1[7] + 10));
    v17 = 0;
    v60 = __PAIR64__(v18, LODWORD(v16));
    v61 = v19;
    v20 = 0.0;
    do
    {
      v20 = v20 + (*(&v60 + v17) * *(&v60 + v17));
      v17 += 4;
    }

    while (v17 != 12);
    v21 = sqrtf(v13);
    v22 = sqrtf(v20) + -1.0;
    v23 = a1[7];
    v24 = 0.0;
    if (*(*&v23 + 828))
    {
      v25 = 0.0;
    }

    else
    {
      v25 = sub_19B5BE518(*&v23 + 248, 32 - *(*&v23 + 488), *(*&v23 + 488));
      v23 = a1[7];
    }

    v26 = fabsf(v22);
    v27 = sub_19B61B954(flt_19B7B98BC, flt_19B7B98C8, 3, v21);
    v28 = sub_19B5BF0D0((*&v23 + 8), 0, *(*&v23 + 10));
    v29 = 0;
    v60 = __PAIR64__(v30, LODWORD(v28));
    v61 = v31;
    do
    {
      v24 = v24 + (*(&v60 + v29) * *(&v60 + v29));
      v29 += 4;
    }

    while (v29 != 12);
    v32 = sub_19B61B954(flt_19B7B98D4, flt_19B7B98F0, 7, sqrtf(v24) + -1.0);
    v2 = a1[7];
    if (v21 < 0.1 && v26 < 0.12 && v25 < 0.05)
    {
      v33 = sub_19B61B954(flt_19B7B990C, flt_19B7B9918, 3, v25);
      if (v27 >= v32)
      {
        v34 = v32;
      }

      else
      {
        v34 = v27;
      }

      if (v34 < v33)
      {
        v33 = v34;
      }

      v35 = v33 * v33;
      goto LABEL_44;
    }

    v3 = v2[103].u8[4];
    v7 = v58;
  }

  v35 = 0.0;
  if (!v3)
  {
LABEL_53:
    if (v2[30].i8[4] == 1)
    {
      v43 = 0.0;
      v44 = 16;
      v45 = v7 / 0.001;
      do
      {
        v43 = v43 + (a1->f32[v44] * a1->f32[v44]);
        ++v44;
      }

      while (v44 != 19);
      v46 = sqrtf(v43);
      v47 = v46 + -1.0;
      if ((v46 + -1.0) <= 0.0)
      {
        v47 = -(v46 + -1.0);
      }

      v48 = acosf(1.0 / (v47 + 1.0));
      if (v46 < 1.0 && v48 <= (((1.0 - v46) * 180.0) * 0.017453))
      {
        v48 = ((1.0 - v46) * 180.0) * 0.017453;
      }

      v49 = 0;
      v50 = v48 * v48;
      v51 = a1[8];
      v52 = a1[9].f32[0];
      v60 = v51;
      v61 = v52;
      v53 = 0.0;
      do
      {
        v53 = v53 + (*(&v60 + v49) * *(&v60 + v49));
        v49 += 4;
      }

      while (v49 != 12);
      if ((v45 * 0.00030462) <= v50)
      {
        v35 = v50;
      }

      else
      {
        v35 = v45 * 0.00030462;
      }

      if (sqrtf(v53) > 0.00000011921)
      {
        v54 = 0;
        v55 = 0;
        do
        {
          *v55.i32 = *v55.i32 + (*(&v60 + v54) * *(&v60 + v54));
          v54 += 4;
        }

        while (v54 != 12);
        *v55.i32 = sqrtf(*v55.i32);
        v51 = vdiv_f32(v51, vdup_lane_s32(v55, 0));
        v52 = v52 / *v55.i32;
      }

      v60 = v51;
      v61 = v52;
      goto LABEL_71;
    }

    return 0;
  }

LABEL_44:
  v36 = sub_19B5BF344(&v2[1], 7uLL);
  v37 = 0;
  v38 = *v36;
  v39 = *(v36 + 2);
  v60 = *v36;
  v61 = v39;
  v40 = 0.0;
  do
  {
    v40 = v40 + (*(&v60 + v37) * *(&v60 + v37));
    v37 += 4;
  }

  while (v37 != 12);
  if (sqrtf(v40) > 0.00000011921)
  {
    v41 = 0;
    v42 = 0;
    do
    {
      *v42.i32 = *v42.i32 + (*(&v60 + v41) * *(&v60 + v41));
      v41 += 4;
    }

    while (v41 != 12);
    *v42.i32 = sqrtf(*v42.i32);
    v38 = vdiv_f32(v38, vdup_lane_s32(v42, 0));
    v39 = v39 / *v42.i32;
  }

  v60 = v38;
  v61 = v39;
  if (*(*&a1[7] + 828))
  {
    v35 = 0.1;
  }

LABEL_71:
  v59[0] = sub_19B447000(&a1[1] + 1);
  v59[1] = v56;
  v59[2] = v57;
  sub_19B61B858(a1, &v60, v59, v35);
  return 1;
}

void sub_19B61B858(uint64_t a1, float32x2_t *a2, uint64_t a3, float a4)
{
  v5 = *(a3 + 8);
  v6 = a2[1].f32[0] - v5;
  v7 = *a3;
  v32 = vsub_f32(*a2, *a3);
  v33 = v6;
  v8 = *(a3 + 4);
  v26[0] = 0;
  *&v26[1] = v5;
  v27 = vneg_f32(v8);
  v28 = 0;
  v29 = v7;
  v30 = -v7.f32[0];
  v31 = 0;
  *v25 = a4;
  *&v25[1] = a4;
  *&v25[2] = a4;
  sub_19B61B9E0((a1 + 28), v26, v25, &v32);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_19B447000((a1 + 12));
  v18 = ((v14 * v16) + (v12 * v17)) + (v10 * v15);
  v24[0] = v10 - (v15 * v18);
  v24[1] = v12 - (v17 * v18);
  v24[2] = v14 - (v16 * v18);
  *v19.i64 = sub_19B66C264(&v23, v24);
  *(a1 + 12) = sub_19B66BF70(&v23, (a1 + 12), v19);
  *(a1 + 16) = v20;
  *(a1 + 20) = v21;
  *(a1 + 24) = v22;
}

float sub_19B61B954(float *a1, float *a2, uint64_t a3, float a4)
{
  if (*a1 >= a4)
  {
    return *a2;
  }

  v4 = a3 - 1;
  if (a1[a3 - 1] <= a4)
  {
    return a2[v4];
  }

  v5 = a1 + 1;
  for (i = a2; ; ++i)
  {
    v7 = *(v5 - 1);
    if (v7 <= a4)
    {
      v8 = *v5;
      if (*v5 >= a4)
      {
        break;
      }
    }

    ++v5;
    if (!--v4)
    {
      return *a2;
    }
  }

  v10 = v8 - v7;
  if ((v8 - v7) <= 0.0)
  {
    v11 = *i;
    v12 = 0.0;
  }

  else
  {
    v11 = *i;
    v12 = (i[1] - *i) / v10;
  }

  return v11 + (v12 * (a4 - v7));
}

void sub_19B61B9E0(float *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v7 = 0;
  *&v48[8] = *MEMORY[0x1E69E9840];
  v41 = 0;
  v40 = 0;
LABEL_2:
  v8 = 0;
  v9 = -1;
  do
  {
    v10 = sub_19B601068(a2, v7, v8);
    v11 = v9;
    if (v8)
    {
      do
      {
        v12 = sub_19B601068(a2, v7, v11);
        v10 = v10 + (v12 * *sub_19B61C034((a1 + 3), v11--, v8));
      }

      while (v11 != -1);
    }

    *&v48[4 * v8 - 4] = v10;
    v46[v8] = v10 * *sub_19B61C3BC(a1, v8);
    ++v8;
    ++v9;
  }

  while (v8 != 3);
  v13 = sub_19B5D6144(v4, v7);
  v14 = v13 + (v47 * v46[0]);
  if (v14 > 0.0)
  {
    v15 = 1.0 / v14;
    v16 = sub_19B5D6144(v4, v7);
    v17 = 0;
    *a1 = *a1 * ((1.0 / v14) * v16);
    v18 = v48;
    v19 = &v46[1];
    v20 = 1;
    while (1)
    {
      v21 = v14 + (*v18 * *v19);
      if (v21 <= 0.0)
      {
        break;
      }

      v22 = v17;
      v23 = -(*v18 * v15);
      v15 = 1.0 / v21;
      v24 = sub_19B61C3BC(a1, v20);
      v25 = 0;
      *v24 = (v14 * (1.0 / v21)) * *v24;
      do
      {
        v26 = *sub_19B61C034((a1 + 3), v25, v20);
        v27 = v46[v25];
        *sub_19B61C034((a1 + 3), v25, v20) = v26 + (v27 * v23);
        v46[v25++] = v27 + (*v19 * v26);
      }

      while (v20 != v25);
      v17 = 1;
      v14 = v21;
      v19 = &v46[2];
      v18 = &v48[4];
      v20 = 2;
      if (v22)
      {
        v28 = 0;
        v29 = v15 * sub_19B5D6144(a4, v7);
        do
        {
          v30 = v46[v28];
          v31 = sub_19B5BC0F0(&v40, v28);
          *v31 = *v31 + (v29 * v30);
          ++v28;
        }

        while (v28 != 3);
        ++v7;
        v4 = a3;
        if (v7 != 3)
        {
          goto LABEL_2;
        }

        return;
      }
    }

    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
    }

    v32 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v45 = v7;
      _os_log_impl(&dword_19B41C000, v32, OS_LOG_TYPE_DEBUG, "%zu: alpha <= 0, matrix ! positive definite", buf, 0xCu);
    }

    v33 = sub_19B420058();
    if (*(v33 + 160) <= 1 && *(v33 + 164) <= 1 && *(v33 + 168) <= 1 && !*(v33 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_25;
  }

  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
  }

  v36 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v45 = v7;
    _os_log_impl(&dword_19B41C000, v36, OS_LOG_TYPE_DEBUG, "%zu: alpha <= 0, matrix ! positive definite", buf, 0xCu);
  }

  v37 = sub_19B420058();
  if (*(v37 + 160) > 1 || *(v37 + 164) > 1 || *(v37 + 168) > 1 || *(v37 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
LABEL_38:
      dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
    }

LABEL_25:
    v42 = 134217984;
    v43 = v7;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 2, "%zu: alpha <= 0, matrix ! positive definite", &v42);
    v35 = v34;
    sub_19B6BB7CC("Generic", 1, 0, 2, "CMVector<T, N> CMFactoredMatrix<float, 3>::biermanObservationalUpdate(const CMMatrix<T, P, N> &, const CMVector<T, P> &, const CMVector<T, P> &) [T = float, N = 3, P = 3UL]", "CoreLocation: %s\n", v34);
    if (v35 != buf)
    {
      free(v35);
    }
  }
}

uint64_t sub_19B61BF20(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*(v1 + 424) == 1)
  {
    v2 = *(v1 + 416);
    if (v2)
    {
      LOBYTE(v2) = *(a1 + 10);
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

BOOL sub_19B61BF90(uint64_t a1)
{
  v2 = 0;
  v3 = 1;
LABEL_2:
  v4 = v3;
  v5 = v2 + 1;
  while (1)
  {
    v6 = sub_19B601068(a1, v2, v5);
    v7 = v6 - sub_19B601068(a1, v5, v2);
    if (v7 <= 0.0)
    {
      v7 = -v7;
    }

    if (v7 > 1.0e-16)
    {
      return v7 <= 1.0e-16;
    }

    v8 = v5 == 2;
    v5 = 2;
    if (v8)
    {
      v3 = 0;
      v2 = 1;
      if (v4)
      {
        goto LABEL_2;
      }

      return v7 <= 1.0e-16;
    }
  }
}

uint64_t sub_19B61C034(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3 >= 3)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v21 = a3;
      v22 = 2048;
      v23 = 3;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMFactoredMatrix.h, line 237,invalid col %zu > %zu.", buf, 0x16u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
      }

      v16 = 134218240;
      v17 = a3;
      v18 = 2048;
      v19 = 3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMFactoredMatrix.h, line 237,invalid col %zu > %zu.", &v16, 22);
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMFactoredMatrix<float, 3>::UnitaryUpperTriangularMatrix::operator()(size_t, size_t) [T = float, N = 3]", "CoreLocation: %s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  if (a3 <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
    }

    v11 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v21 = a3;
      v22 = 2048;
      v23 = a2;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "Assertion failed: col > row, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMFactoredMatrix.h, line 238,invalid element %zu <= %zu.", buf, 0x16u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
      }

      v16 = 134218240;
      v17 = a3;
      v18 = 2048;
      v19 = a2;
      LODWORD(v15) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: col > row, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMFactoredMatrix.h, line 238,invalid element %zu <= %zu.", &v16, v15);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMFactoredMatrix<float, 3>::UnitaryUpperTriangularMatrix::operator()(size_t, size_t) [T = float, N = 3]", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  return a1 + 4 * (a2 + (((a3 - 1) * a3) >> 1));
}

uint64_t sub_19B61C3BC(uint64_t a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
    }

    v5 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v14 = a2;
      v15 = 2048;
      v16 = 3;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "Assertion failed: row < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMFactoredMatrix.h, line 191,invalid row %zu > %zu.", buf, 0x16u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
      }

      v9 = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: row < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMFactoredMatrix.h, line 191,invalid row %zu > %zu.", &v9, 22);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMFactoredMatrix<float, 3>::DiagonalMatrix::operator()(size_t) [T = float, N = 3]", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  return a1 + 4 * a2;
}

float sub_19B61C5B4@<S0>(uint64_t a1@<X0>, float *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = 0;
  v5 = 0.0;
  do
  {
    v5 = v5 + (*(a1 + v4) * *(a1 + v4));
    v4 += 4;
  }

  while (v4 != 12);
  v6 = *a2;
  *a3 = *a2;
  *(a3 + 4) = 0;
  *(a3 + 12) = 0;
  *(a3 + 16) = v6;
  *(a3 + 20) = 0;
  *(a3 + 28) = 0;
  *(a3 + 32) = v6;
  result = sqrtf(v5);
  if (result != 0.0)
  {
    v8 = 0;
    v9 = *a1;
    v10 = -*a1;
    v11 = *(a1 + 4);
    DWORD1(v26) = v11.i32[1];
    *(&v26 + 1) = vneg_f32(v11);
    LODWORD(v26) = 0;
    LODWORD(v27) = 0;
    *(&v27 + 4) = __PAIR64__(v11.u32[0], LODWORD(v9));
    *(&v27 + 3) = v10;
    v28 = 0;
    v12 = a2[1];
    v22 = 0;
    v20 = v26;
    v21 = v27;
    do
    {
      *(&v20 + v8) = v12 * *(&v20 + v8);
      v8 += 4;
    }

    while (v8 != 36);
    v13 = 0;
    v14 = a2[2];
    v23 = v26;
    v24 = v27;
    v25 = v28;
    do
    {
      *(&v23 + v13) = v14 * *(&v23 + v13);
      v13 += 4;
    }

    while (v13 != 36);
    v17[0] = v23;
    v17[1] = v24;
    v18 = v25;
    sub_19B604B68(v17, &v26, v19);
    for (i = 0; i != 9; ++i)
    {
      *(&v20 + i) = sub_19B5DB794(v19, i) + *(&v20 + i);
    }

    v16 = 0;
    v23 = v20;
    v24 = v21;
    v25 = v22;
    do
    {
      result = sub_19B5DB794(&v23, v16) + *(a3 + 4 * v16);
      *(a3 + 4 * v16++) = result;
    }

    while (v16 != 9);
  }

  return result;
}

uint64_t sub_19B61C754()
{
  if (qword_1ED71CAF8 != -1)
  {
    dispatch_once(&qword_1ED71CAF8, &unk_1F0E291C0);
  }

  return qword_1ED71CAF0;
}

void sub_19B61C79C()
{
  if ((sub_19B423E34() & 0x10) != 0)
  {
    operator new();
  }
}

void sub_19B61C9BC(_Unwind_Exception *a1)
{
  v5 = v1[15];
  if (v5)
  {
    sub_19B41FFEC(v5);
  }

  sub_19B61CA20(v3, 0);
  sub_19B674784(v1);
  MEMORY[0x19EAE76F0](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_19B61CA20(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_19B71B198(result);

    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

void sub_19B61CA6C(uint64_t a1, _OWORD *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (qword_1EAFE2890 != -1)
  {
    dispatch_once(&qword_1EAFE2890, &unk_1F0E28720);
  }

  v4 = qword_1EAFE2898;
  if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "Received Bias Notification", buf, 2u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E28720);
    }

    LOWORD(v9[0]) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2898, 2, "Received Bias Notification", v9, 2);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPressure::onBias(int, const CLPressureBias_Type::Notification &, const CLPressureBias_Type::NotificationData &)", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  v9[0] = *a2;
  *(v9 + 13) = *(a2 + 13);
  v8 = sub_19B420D84();
  *buf = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = sub_19B61CD38;
  v13 = &unk_1E75333A0;
  v14 = v3;
  v15[0] = v9[0];
  *(v15 + 13) = *(v9 + 13);
  sub_19B421668(v8, buf);
}

void *sub_19B61CC94(void *a1)
{
  *a1 = &unk_1F0E34298;
  v2 = a1[15];
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  sub_19B61CA20(a1 + 5, 0);

  return sub_19B674784(a1);
}

void sub_19B61CD00(void *a1)
{
  sub_19B61CC94(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B61CD38(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  *(v1 + 81) = *(result + 53);
  *(v1 + 68) = v2;
  if (*(result + 52) != 3.4028e38 || *(result + 44) != 0.0 || *(result + 48) != 0.0)
  {
    *(v1 + 49) = 1;
  }

  return result;
}

double sub_19B61CD88(void *a1, unsigned int a2, uint64_t *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a2 > 1)
  {
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E28420);
    }

    v22 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      *&buf[4] = a2;
      _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_FAULT, "Unrecognized pressure notification %{public}d", buf, 8u);
    }

    v23 = sub_19B420058();
    if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || (v13 = 0.0, *(v23 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2840 != -1)
      {
        dispatch_once(&qword_1EAFE2840, &unk_1F0E28420);
      }

      *v45 = 67240192;
      *&v45[4] = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2860, 17, "Unrecognized pressure notification %{public}d", v45, 8);
      v25 = v24;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLPressure::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v24);
      if (v25 != buf)
      {
        free(v25);
      }

      return 0.0;
    }
  }

  else
  {
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E28420);
    }

    v5 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_INFO))
    {
      v6 = *a3;
      *buf = 134349056;
      *&buf[4] = v6;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "Setting pressure data update interval to %{public}f", buf, 0xCu);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2840 != -1)
      {
        dispatch_once(&qword_1EAFE2840, &unk_1F0E28420);
      }

      v8 = *a3;
      *v45 = 134349056;
      *&v45[4] = v8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2860, 1, "Setting pressure data update interval to %{public}f", v45, 12);
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLPressure::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    v11 = 0;
    v12 = 1;
    v13 = 0.0;
    do
    {
      v14 = v12;
      v15 = sub_19B42753C(a1, v11);
      if (v13 == 0.0 || (v15 > 0.0 ? (v16 = v15 < v13) : (v16 = 0), v16))
      {
        v13 = v15;
      }

      v12 = 0;
      v11 = 1;
    }

    while ((v14 & 1) != 0);
    a1[7] = 0;
    if (a1[5])
    {
      v17 = sub_19B42753C(a1, 1);
      v18 = a1[5];
      v19 = *(v18 + 8);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      if (v17 == 0.0)
      {
        v20 = sub_19B71B6E8;
      }

      else
      {
        v20 = sub_19B71B1EC;
      }

      v42 = v20;
      v43 = &unk_1E75327D8;
      v44 = v18;
      dispatch_sync(v19, buf);
    }

    if (!a1[14] && (sub_19B423E34() & 0x10) != 0)
    {
      v26 = sub_19B42CAAC();
      *v45 = 0x3100000020;
      v45[8] = 0;
      sub_19B42C428(v26);
    }

    v29 = a1[14];
    v28 = a1 + 14;
    v27 = v29;
    v30 = rint(v13 * 1000000.0);
    if (v13 < 0.0)
    {
      v31 = 0;
    }

    else
    {
      v31 = v30;
    }

    sub_19B4238F4(v27, v31);
    v32 = sub_19B424A2C(*v28, v13);
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E28420);
    }

    v33 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      *&buf[4] = v32;
      _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_INFO, "Setting pressure batch interval to: %{public}ld us", buf, 0xCu);
    }

    v34 = sub_19B420058();
    if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2840 != -1)
      {
        dispatch_once(&qword_1EAFE2840, &unk_1F0E28420);
      }

      v39 = 134349056;
      v40 = v32;
      LODWORD(v38) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2860, 1, "Setting pressure batch interval to: %{public}ld us", &v39, v38);
      v36 = v35;
      sub_19B6BB7CC("Generic", 1, 0, 2, "CFTimeInterval CLPressure::setPressureUpdateInterval()", "CoreLocation: %s\n", v35);
      if (v36 != buf)
      {
        free(v36);
      }
    }
  }

  return v13;
}

void sub_19B61D3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = *MEMORY[0x1E69E9840];
  if (IOHIDEventGetType() == 31)
  {
    IOHIDEventGetFloatValue();
    v6 = v5;
    TimeStamp = IOHIDEventGetTimeStamp();
    v8 = sub_19B41E070(TimeStamp);
    if (sub_19B42753C(a1, 0) != 0.0 || sub_19B42753C(a1, 1) != 0.0)
    {
      v9 = v6;
      v33 = v8;
      *&v34 = LODWORD(v9);
      v10 = *(a1 + 56);
      if (v10 == 0.0 || v8 - v10 > *(a1 + 104))
      {
        v11 = *(a1 + 112);
        if (v11)
        {
          v12 = (*(*v11 + 24))(v11, @"AppleVoltageDictionary");
          v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, @"PRESSURE_TEMP");
          objc_msgSend_floatValue(v14, v15, v16);
          *(a1 + 64) = v17 / 100.0;

          v18 = v14 != 0;
        }

        else
        {
          v18 = 0;
        }

        if (qword_1EAFE2840 != -1)
        {
          dispatch_once(&qword_1EAFE2840, &unk_1F0E28420);
        }

        v19 = qword_1EAFE2860;
        if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          LODWORD(v46) = v18;
          _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_DEBUG, "Pressure Temperature=%d", buf, 8u);
        }

        v20 = sub_19B420058();
        if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2840 != -1)
          {
            dispatch_once(&qword_1EAFE2840, &unk_1F0E28420);
          }

          v35 = 67109120;
          LODWORD(v36) = v18;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2860, 2, "Pressure Temperature=%d", &v35);
          v22 = v21;
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPressure::onPressureData(const CLMotionTypePressure &, const CLMotionTypeTimestamp &)", "CoreLocation: %s\n", v21);
          if (v22 != buf)
          {
            free(v22);
          }
        }

        *(a1 + 56) = v8;
      }

      v23 = *(a1 + 64);
      HIDWORD(v34) = v23;
      if (*(a1 + 48) == 1)
      {
        sub_19B517F80(buf);
        sub_19B531B08(buf);
        Current = CFAbsoluteTimeGetCurrent();
        v57 |= 1u;
        v55 = Current;
        sub_19B5A06B4(v56);
        v25 = v56[1];
        *(v25 + 24) |= 1u;
        *(v25 + 8) = v8;
        v26 = v56[1];
        *(v26 + 24) |= 2u;
        *(v26 + 16) = v9;
        v27 = v56[1];
        *(v27 + 24) |= 4u;
        *(v27 + 20) = v23;
        sub_19B51DBD4(buf);
      }

      if (sub_19B42753C(a1, 0) != 0.0)
      {
        sub_19B41DF08(a1, 0, &v33, 16);
      }

      if (*(a1 + 49) == 1)
      {
        *&v34 = *&v34 + (-(*(a1 + 76) - (*(a1 + 72) * fminf(*(a1 + 80), *(&v34 + 1)))) / -1000.0);
      }

      if (sub_19B42753C(a1, 1) != 0.0)
      {
        sub_19B41DF08(a1, 1, &v33, 16);
      }

      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E28720);
      }

      v28 = qword_1EAFE2898;
      if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316162;
        v46 = "Pressure";
        v47 = 2048;
        v48 = *&v34;
        v49 = 2048;
        v50 = *(&v34 + 1);
        v51 = 2048;
        v52 = v33;
        v53 = 2048;
        v54 = v9;
        _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_DEBUG, "Type,%s,pressure,%.6f,temperature,%.3f,timestamp,%f,rawPressure,%.6f", buf, 0x34u);
      }

      v29 = sub_19B420058();
      if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2890 != -1)
        {
          dispatch_once(&qword_1EAFE2890, &unk_1F0E28720);
        }

        v35 = 136316162;
        v36 = "Pressure";
        v37 = 2048;
        v38 = *&v34;
        v39 = 2048;
        v40 = *(&v34 + 1);
        v41 = 2048;
        v42 = v33;
        v43 = 2048;
        v44 = v9;
        LODWORD(v32) = 52;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2898, 2, "Type,%s,pressure,%.6f,temperature,%.3f,timestamp,%f,rawPressure,%.6f", &v35, v32, v33, v34);
        v31 = v30;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPressure::onPressureData(const CLMotionTypePressure &, const CLMotionTypeTimestamp &)", "CoreLocation: %s\n", v30);
        if (v31 != buf)
        {
          free(v31);
        }
      }
    }
  }
}

void sub_19B61D988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_19B51DBD4(va);
  _Unwind_Resume(a1);
}

os_log_t sub_19B61D9A4()
{
  result = os_log_create("com.apple.locationd.Motion", "Sensors");
  qword_1EAFE2898 = result;
  return result;
}

os_log_t sub_19B61D9D4()
{
  result = os_log_create("com.apple.locationd.Motion", "Pressure");
  qword_1EAFE2860 = result;
  return result;
}

uint64_t sub_19B61DA04(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v15 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = *a3;
  *(a1 + 16) = a4;
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E28320);
  }

  v6 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v14 = a2;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "motion default ignored,'%{public}s'.", buf, 0xCu);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28320);
    }

    v11 = 136446210;
    v12 = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 1, "motion default ignored,'%{public}s'.", &v11, 12);
    v9 = v8;
    sub_19B6BB7CC("Generic", 1, 0, 2, "CLMotionDefaultsWrite<double>::CLMotionDefaultsWrite(const char *, const T &, const BOOL) [T = double]", "CoreLocation: %s\n", v8);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  return a1;
}

void sub_19B61DF7C(uint64_t a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isWakeGestureAvailable(CMWakeGestureManager, a2, a3))
  {
    v3 = [CMWakeGestureManager alloc];
    qword_1ED71CB08 = objc_msgSend_initWithQueue_(v3, v4, 0);
  }

  else
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v5 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "CMWakeGestureManager is not supported on this platform!", buf, 2u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }

      v9[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C798, 17, "CMWakeGestureManager is not supported on this platform!", v9, 2);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "+[CMWakeGestureManager sharedManager]_block_invoke", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }
}

void sub_19B61E48C()
{
  v17 = *MEMORY[0x1E69E9840];
  size = 0;
  if (!sysctlbyname("kern.bootargs", 0, &size, 0, 0))
  {
    v0 = malloc_type_malloc(size, 0x100004077774924uLL);
    if (v0)
    {
      v1 = v0;
      if (!sysctlbyname("kern.bootargs", v0, &size, 0, 0))
      {
        v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v2, v1);
        v11 = 0u;
        v12 = 0u;
        v13 = 0u;
        v14 = 0u;
        v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F0E6A188, v4, &v11, v16, 16);
        if (v5)
        {
          v7 = v5;
          v8 = 0;
          v9 = *v12;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v12 != v9)
              {
                objc_enumerationMutation(&unk_1F0E6A188);
              }

              v8 |= objc_msgSend_containsString_(v3, v6, *(*(&v11 + 1) + 8 * i));
            }

            v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F0E6A188, v6, &v11, v16, 16);
          }

          while (v7);
        }

        else
        {
          LOBYTE(v8) = 0;
        }

        byte_1EAFE2FA8 = v8 & 1;
      }

      free(v1);
    }
  }
}

void sub_19B61E6A8(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 140) = 0;
  Weak = objc_loadWeak((*(a1 + 32) + 144));
  objc_storeWeak((*(a1 + 32) + 152), Weak);
  objc_loadWeak((*(a1 + 32) + 152));
  if (objc_opt_respondsToSelector())
  {
    *(*(a1 + 32) + 140) |= 1u;
  }

  objc_loadWeak((*(a1 + 32) + 152));
  if (objc_opt_respondsToSelector())
  {
    *(*(a1 + 32) + 140) |= 4u;
  }

  objc_loadWeak((*(a1 + 32) + 152));
  if (objc_opt_respondsToSelector())
  {
    *(*(a1 + 32) + 140) |= 8u;
  }

  objc_loadWeak((*(a1 + 32) + 152));
  if (objc_opt_respondsToSelector())
  {
    *(*(a1 + 32) + 140) |= 0x10u;
  }

  if (qword_1ED71C790 != -1)
  {
    dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
  }

  v3 = qword_1ED71C798;
  if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 140);
    *buf = 67109120;
    v11 = v4;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "CMWakeGestureManagerDelegate selectors: %x", buf, 8u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v6 = *(*(a1 + 32) + 140);
    v9[0] = 67109120;
    v9[1] = v6;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C798, 0, "CMWakeGestureManagerDelegate selectors: %x", v9);
    v8 = v7;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWakeGestureManager setDelegate:]_block_invoke", "CoreLocation: %s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }
  }
}

uint64_t sub_19B61F87C(uint64_t a1, uint64_t a2)
{
  if (!*(*(a1 + 32) + 24))
  {
    operator new();
  }

  return sub_19B7915DC();
}

void sub_19B61F9C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B623620;
  block[3] = &unk_1E7532988;
  block[4] = a2;
  dispatch_async(v2, block);
}

uint64_t sub_19B61FD78(void *a1, uint64_t a2)
{
  if (*(a1[4] + 24))
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1[4], @"com.apple.CoreMotion.WakeGesturePreferencesChanged", 0);
    v7 = objc_msgSend_defaultCenter(MEMORY[0x1E696ABB0], v5, v6);
    objc_msgSend_removeObserver_name_object_(v7, v8, a1[4], @"CMSendWakeGestureNotification", 0);
    v9 = sub_19B7915DC();
    sub_19B426A14(v9, 0, *(a1[4] + 24));
    v10 = a1[4];
    v11 = *(v10 + 24);
    if (v11)
    {
      (*(*v11 + 8))(v11);
      v10 = a1[4];
    }

    *(v10 + 24) = 0;
    v2 = vars8;
  }

  return sub_19B7915DC();
}

void sub_19B6200D4(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = sub_19B7915DC();
  v4 = *(a1 + 32);
  *buf = 1285;
  buf[2] = v4;
  if (!sub_19B7931A8(v3, buf, 4))
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v5 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "Unable to send display state", buf, 2u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }

      v9[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C798, 17, "Unable to send display state", v9, 2);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWakeGestureManager setBacklightState:]_block_invoke", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }
}

void sub_19B620298(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C790 != -1)
  {
    dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
  }

  v2 = qword_1ED71C798;
  if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 49);
    *buf = 67240704;
    v18 = v3;
    v19 = 1026;
    v20 = v4;
    v21 = 1026;
    v22 = v5;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "setBacklightState,backlight,%{public}d,displayActive,%{public}u,prevDisplayActive,%{public}u", buf, 0x14u);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 49);
    v12[0] = 67240704;
    v12[1] = v7;
    v13 = 1026;
    v14 = v8;
    v15 = 1026;
    v16 = v9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C798, 0, "setBacklightState,backlight,%{public}d,displayActive,%{public}u,prevDisplayActive,%{public}u", v12, 20);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWakeGestureManager setBacklightState:]_block_invoke", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    *(*(a1 + 32) + 56) = 1;
  }
}

BOOL sub_19B6205A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_19B7915DC();
  v4 = *(a1 + 40);
  v8 = 259;
  v9 = (v4 * 1000000.0);
  *(*(*(a1 + 32) + 8) + 24) = sub_19B7931A8(v3, &v8, 10);
  v5 = *(*(a1 + 32) + 8);
  if (*(v5 + 24) == 1)
  {
    v6 = *(a1 + 48);
    v8 = 515;
    v9 = (v6 * 1000000.0);
    result = sub_19B7931A8(v3, &v8, 10);
    v5 = *(*(a1 + 32) + 8);
  }

  else
  {
    result = 0;
  }

  *(v5 + 24) = result;
  return result;
}

void sub_19B6206DC(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v5 = objc_msgSend_toRaw_(v3, v4, *(a1 + 40));
  v6 = sub_19B7915DC();
  v7 = *(a1 + 48);
  buf[0] = 3;
  buf[1] = v5;
  *&buf[2] = (v7 * 1000000.0);
  if (!sub_19B7931A8(v6, buf, 10))
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v8 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 48);
      *buf = 67240448;
      *&buf[4] = v5;
      *&buf[8] = 2048;
      v18 = v9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "Error simulating gesture: %{public}u, delay,%f", buf, 0x12u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }

      v11 = *(a1 + 48);
      v14[0] = 67240448;
      v14[1] = v5;
      v15 = 2048;
      v16 = v11;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C798, 16, "Error simulating gesture: %{public}u, delay,%f", v14, 18);
      v13 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWakeGestureManager simulateGesture:after:]_block_invoke", "CoreLocation: %s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }
}

void sub_19B620BD4(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = sub_19B7915DC();
  if (!sub_19B79374C(v3, *(a1 + 32), *(a1 + 36)))
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v4 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_ERROR, "Wake Gesture: Error sending night stand control mode to detector", buf, 2u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }

      v8[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C798, 16, "Wake Gesture: Error sending night stand control mode to detector", v8, 2);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWakeGestureManager setNightStandWakeEnabled:withConfiguration:]_block_invoke", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }
}

void sub_19B620DFC(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 24))
  {
    v3 = *(v1 + 140);
    if ((v3 & 0x10) != 0)
    {
      v12 = [CMWakeGestureEvent alloc];
      v13 = *(a1 + 40);
      v14 = mach_absolute_time();
      v15 = sub_19B41E070(v14);
      v28 = objc_msgSend_initWithState_type_orientation_timestamp_(v12, v16, v13, 2, 0, v15);
      Weak = objc_loadWeak((*(a1 + 32) + 152));
      objc_msgSend_wakeGestureManager_didUpdateWakeGestureEvent_(Weak, v18, *(a1 + 32), v28);
    }

    else if ((v3 & 8) != 0)
    {
      v19 = objc_loadWeak((v1 + 152));
      v21 = *(a1 + 32);
      v20 = *(a1 + 40);
      v23 = mach_absolute_time();

      objc_msgSend_wakeGestureManager_didUpdateWakeGesture_orientation_detectedAt_(v19, v22, v21, v20, 0, v23);
    }

    else if ((v3 & 4) != 0)
    {
      v24 = objc_loadWeak((v1 + 152));
      v26 = *(a1 + 32);
      v27 = *(a1 + 40);

      objc_msgSend_wakeGestureManager_didUpdateWakeGesture_orientation_(v24, v25, v26, v27, 0);
    }

    else if (v3)
    {
      v4 = objc_loadWeak((v1 + 152));
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);

      objc_msgSend_wakeGestureManager_didUpdateWakeGesture_(v4, v5, v6, v7);
    }
  }

  else
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v8 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Unable to invoke delegate. Please call startWakeGestureUpdates first.", buf, 2u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }

      v29[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C798, 17, "Unable to invoke delegate. Please call startWakeGestureUpdates first.", v29, 2);
      v11 = v10;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWakeGestureManager invokeDelegateWithState:]_block_invoke", "CoreLocation: %s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }
}

void sub_19B62142C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B41FFEC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6219B8(uint64_t a1, const char *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"spuLatencyMS";
  v5[0] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], a2, *(a1 + 32));
  return objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v2, v5, &v4, 1);
}

uint64_t sub_19B621AB4(uint64_t a1, const char *a2, uint64_t a3)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v20[0] = @"notification";
  v4 = MEMORY[0x1E696AD98];
  v5 = objc_msgSend_state(*(a1 + 32), a2, a3);
  v21[0] = objc_msgSend_numberWithInt_(v4, v6, v5);
  v20[1] = @"whileDisplay";
  v21[1] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v7, *(a1 + 40));
  v20[2] = @"processName";
  v10 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v8, v9);
  v21[2] = objc_msgSend_processName(v10, v11, v12);
  v20[3] = @"type";
  v13 = MEMORY[0x1E696AD98];
  v16 = objc_msgSend_type(*(a1 + 32), v14, v15);
  v21[3] = objc_msgSend_numberWithInt_(v13, v17, v16);
  return objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v18, v21, v20, 4);
}

void sub_19B622178(uint64_t a1)
{
  v100 = *MEMORY[0x1E69E9840];
  if (!objc_loadWeak((a1 + 40)))
  {
    return;
  }

  if (!*(*(a1 + 32) + 40))
  {
    operator new();
  }

  sub_19B451364((a1 + 64), *(*(a1 + 32) + 40));
  v2 = *(*(a1 + 32) + 40);
  v3 = v2[9];
  v4 = v2[10];
  v5 = v2[11];
  v6 = v2[12];
  v7 = v2[13];
  v81 = v2[14];
  v9 = objc_msgSend_stringForNotification_(CMWakeGestureManager, v8, v3);
  v11 = objc_msgSend_stringForMode_(CMWakeGestureManager, v10, v6);
  started = objc_msgSend_stringForStartPose_(CMWakeGestureManager, v12, v4);
  v15 = objc_msgSend_stringForViewPose_(CMWakeGestureManager, v14, v5);
  if (v7)
  {
    v16 = 1;
  }

  else
  {
    *(*(a1 + 32) + 64) = *(a1 + 48);
    v16 = 2;
  }

  *(*(a1 + 32) + 56) = v16;
  if (qword_1ED71C790 != -1)
  {
    dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
  }

  v17 = qword_1ED71C798;
  if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67241730;
    *v93 = v3;
    *&v93[4] = 2114;
    *&v93[6] = v9;
    *&v93[14] = 2114;
    *&v93[16] = v11;
    *&v93[24] = 2114;
    *&v93[26] = started;
    v94 = 2114;
    v95 = v15;
    v96 = 1026;
    v97 = v7;
    v98 = 1026;
    v99 = v81;
    _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEFAULT, "Gesture notification: %{public}d(%{public}@), Mode:%{public}@, Start:%{public}@, End:%{public}@, HostAwake, %{public}d, Inferred:%{public}u", buf, 0x3Cu);
  }

  v18 = sub_19B420058();
  if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v84 = 67241730;
    *v85 = v3;
    *&v85[4] = 2114;
    *&v85[6] = v9;
    *&v85[14] = 2114;
    *&v85[16] = v11;
    *&v85[24] = 2114;
    *&v85[26] = started;
    v86 = 2114;
    v87 = v15;
    v88 = 1026;
    v89 = v7;
    v90 = 1026;
    v91 = v81;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C798, 0, "Gesture notification: %{public}d(%{public}@), Mode:%{public}@, Start:%{public}@, End:%{public}@, HostAwake, %{public}d, Inferred:%{public}u", &v84, 60);
    v20 = v19;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWakeGestureManager onWakeUpdated:]_block_invoke", "CoreLocation: %s\n", v19);
    if (v20 != buf)
    {
      free(v20);
    }
  }

  v21 = objc_opt_class();
  v23 = objc_msgSend_toState_(v21, v22, v3);
  Current = CFAbsoluteTimeGetCurrent();
  if (!v23 || (v26 = Current, v27 = *(a1 + 32), v23 == *(v27 + 48)) && Current - *(v27 + 88) <= 1.0)
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v28 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_DEBUG, "Skipping redundant gesture update", buf, 2u);
    }

    v29 = sub_19B420058();
    if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }

      LOWORD(v84) = 0;
      LODWORD(v80) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C798, 2, "Skipping redundant gesture update", &v84, v80);
      v31 = v30;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWakeGestureManager onWakeUpdated:]_block_invoke", "CoreLocation: %s\n", v30);
LABEL_33:
      if (v31 != buf)
      {
        free(v31);
      }

      return;
    }

    return;
  }

  if (objc_msgSend_isEqual_(v11, v24, @"Nightstand") && (*(*(a1 + 32) + 136) & 1) == 0)
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v45 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v45, OS_LOG_TYPE_DEBUG, "Skipping nightstand mode gestures for non-nightstand clients", buf, 2u);
    }

    v46 = sub_19B420058();
    if (*(v46 + 160) > 1 || *(v46 + 164) > 1 || *(v46 + 168) > 1 || *(v46 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }

      LOWORD(v84) = 0;
      LODWORD(v80) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C798, 2, "Skipping nightstand mode gestures for non-nightstand clients", &v84, v80);
      v31 = v47;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWakeGestureManager onWakeUpdated:]_block_invoke", "CoreLocation: %s\n", v47);
      goto LABEL_33;
    }

    return;
  }

  if (objc_msgSend_isEqual_(v11, v32, @"Nightstand"))
  {
    v33 = 7;
  }

  else
  {
    v33 = 2;
  }

  v34 = [CMWakeGestureEvent alloc];
  v35 = sub_19B41E070(*(a1 + 48));
  v37 = objc_msgSend_initWithState_type_orientation_timestamp_(v34, v36, v23, v33, v81, v35);
  v38 = *(a1 + 32);
  v39 = *(v38 + 140);
  if ((v39 & 0x10) != 0)
  {
    Weak = objc_loadWeak((v38 + 152));
    objc_msgSend_wakeGestureManager_didUpdateWakeGestureEvent_(Weak, v44, *(a1 + 32), v37);
LABEL_69:
    sub_19B421798();
    v54 = mach_absolute_time();
    sub_19B41E070(v54);
    kdebug_trace();
    if (v6)
    {
      objc_msgSend_sendWakeTriggerAnalytics_withDisplay_(*(a1 + 32), v55, v37, *(*(a1 + 32) + 104) <= 0.0);
    }

    v56 = *(a1 + 32);
    if (*(v56 + 120) == 1)
    {
      v82[0] = @"mode";
      v83[0] = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v55, v6);
      v82[1] = @"event";
      v83[1] = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v57, v3);
      v82[2] = @"display";
      if (*(*(a1 + 32) + 104) <= 0.0)
      {
        v59 = &unk_1F0E6A4C8;
      }

      else
      {
        v59 = &unk_1F0E6A4B0;
      }

      v83[2] = v59;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v58, v83, v82, 3);
      PLLogTimeSensitiveRegisteredEvent();
      v56 = *(a1 + 32);
    }

    *(v56 + 88) = v26;
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v60 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_DEFAULT))
    {
      v61 = objc_opt_class();
      v63 = objc_msgSend_stringForGestureState_(v61, v62, v23);
      v64 = sub_19B41E070(**(a1 + 56));
      v65 = mach_absolute_time();
      v66 = sub_19B41E070(v65);
      *buf = 138543874;
      *v93 = v63;
      *&v93[8] = 2050;
      *&v93[10] = v64;
      *&v93[18] = 2050;
      *&v93[20] = v66;
      _os_log_impl(&dword_19B41C000, v60, OS_LOG_TYPE_DEFAULT, "Gesture state notified,%{public}@,eventTimestamp,%{public}f,currentTime,%{public}f", buf, 0x20u);
    }

    v67 = sub_19B420058();
    if (*(v67 + 160) > 1 || *(v67 + 164) > 1 || *(v67 + 168) > 1 || *(v67 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }

      v70 = qword_1ED71C798;
      v71 = objc_opt_class();
      v73 = objc_msgSend_stringForGestureState_(v71, v72, v23);
      v74 = sub_19B41E070(**(a1 + 56));
      v75 = mach_absolute_time();
      v76 = sub_19B41E070(v75);
      v84 = 138543874;
      *v85 = v73;
      *&v85[8] = 2050;
      *&v85[10] = v74;
      *&v85[18] = 2050;
      *&v85[20] = v76;
      LODWORD(v80) = 32;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v70, 0, "Gesture state notified,%{public}@,eventTimestamp,%{public}f,currentTime,%{public}f", &v84, v80);
      v78 = v77;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWakeGestureManager onWakeUpdated:]_block_invoke", "CoreLocation: %s\n", v77);
      if (v78 != buf)
      {
        free(v78);
      }
    }

    v79 = *(a1 + 32);
    if (*(v79 + 122) == 1 && *(v79 + 104) < 0.0 && v23 == 1)
    {
      objc_msgSend_playAlert(v79, v68, v69);
      v79 = *(a1 + 32);
    }

    *(v79 + 48) = v23;
    return;
  }

  if ((v39 & 8) != 0)
  {
    v48 = objc_loadWeak((v38 + 152));
    objc_msgSend_wakeGestureManager_didUpdateWakeGesture_orientation_detectedAt_(v48, v49, *(a1 + 32), v23, v81, *(a1 + 48));
    goto LABEL_69;
  }

  if ((v39 & 4) != 0)
  {
    v50 = objc_loadWeak((v38 + 152));
    objc_msgSend_wakeGestureManager_didUpdateWakeGesture_orientation_(v50, v51, *(a1 + 32), v23, v81);
    goto LABEL_69;
  }

  if (v39)
  {
    v52 = objc_loadWeak((v38 + 152));
    objc_msgSend_wakeGestureManager_didUpdateWakeGesture_(v52, v53, *(a1 + 32), v23);
    goto LABEL_69;
  }

  if (qword_1ED71C790 != -1)
  {
    dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
  }

  v40 = qword_1ED71C798;
  if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v40, OS_LOG_TYPE_FAULT, "No valid delegate found.", buf, 2u);
  }

  v41 = sub_19B420058();
  if ((*(v41 + 160) & 0x80000000) == 0 || (*(v41 + 164) & 0x80000000) == 0 || (*(v41 + 168) & 0x80000000) == 0 || *(v41 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    LOWORD(v84) = 0;
    LODWORD(v80) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C798, 17, "No valid delegate found.", &v84, v80);
    v31 = v42;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWakeGestureManager onWakeUpdated:]_block_invoke", "CoreLocation: %s\n", v42);
    goto LABEL_33;
  }
}

id sub_19B622DF8(uint64_t a1)
{
  result = objc_loadWeak((a1 + 40));
  if (result)
  {
    *(*(a1 + 32) + 56) = 1;
  }

  return result;
}

id sub_19B622EE8(uint64_t a1)
{
  result = objc_loadWeak((a1 + 40));
  if (result && *(a1 + 48) == -536870352 && *(*(a1 + 32) + 56) == 2)
  {
    result = objc_msgSend_logWakeLatency(result, v3, v4);
    *(*(a1 + 32) + 56) = 1;
  }

  return result;
}

void sub_19B62303C(NSObject *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C790 != -1)
  {
    dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
  }

  v2 = qword_1ED71C798;
  if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "Attempt re-enabling detected state recognition", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) <= 1 && *(v3 + 164) <= 1 && *(v3 + 168) <= 1 && !*(v3 + 152))
  {
    goto LABEL_12;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1ED71C790 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v15[0] = 0;
    LODWORD(v14) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C798, 1, "Attempt re-enabling detected state recognition", v15, v14);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWakeGestureManager(BiometricKit) reenableDetectedStateRecognition]_block_invoke", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }

LABEL_12:
    if ((atomic_load_explicit(&qword_1ED71CB18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71CB18))
    {
      qword_1ED71CB10 = &unk_1F0E6A1A0;
      __cxa_guard_release(&qword_1ED71CB18);
    }

    if (objc_msgSend_containsObject_(qword_1ED71CB10, v4, *(a1[4].isa + 14)))
    {
      break;
    }

    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v12 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "[intendedClientList containsObject:fProcessName]";
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:This is not the SPI you are looking for, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }
    }

    v13 = qword_1ED71C798;
    if (os_signpost_enabled(qword_1ED71C798))
    {
      *buf = 68289539;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "[intendedClientList containsObject:fProcessName]";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "This is not the SPI you are looking for", "{msg%{public}.0s:This is not the SPI you are looking for, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }
    }

    a1 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "[intendedClientList containsObject:fProcessName]";
      _os_log_impl(&dword_19B41C000, a1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:This is not the SPI you are looking for, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/Gesture/CMWakeGesturePhone.mm", 986, "[CMWakeGestureManager(BiometricKit) reenableDetectedStateRecognition]_block_invoke");
    __break(1u);
LABEL_40:
    dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
  }

  v7 = sub_19B7915DC();
  *buf = 1797;
  if (!sub_19B7931A8(v7, buf, 4))
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v8 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "Unable to send reenable-detected hint", buf, 2u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }

      v15[0] = 0;
      LODWORD(v14) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C798, 16, "Unable to send reenable-detected hint", v15, v14);
      v11 = v10;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWakeGestureManager(BiometricKit) reenableDetectedStateRecognition]_block_invoke", "CoreLocation: %s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }
}

os_log_t sub_19B6235B8()
{
  result = os_log_create("com.apple.locationd.Motion", "WakeGesture");
  qword_1ED71C798 = result;
  return result;
}

void sub_19B62362C(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B623668(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B6238E8(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      (*(*a2 + 32))(a2, a1);
    }

    else if (v2 == 255)
    {
      return 0;
    }
  }

  else if (v2 == 1)
  {
    (*(*a2 + 16))(a2, a1);
  }

  else if (v2 == 2)
  {
    (*(*a2 + 24))(a2, a1);
  }

  return 1;
}

uint64_t sub_19B6241D0(uint64_t a1, uint64_t a2, _DWORD *a3, char a4)
{
  v15 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 4) = *a3;
  *(a1 + 8) = a4;
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E28660);
  }

  v6 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v14 = a2;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "motion default ignored,'%{public}s'.", buf, 0xCu);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28660);
    }

    v11 = 136446210;
    v12 = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 1, "motion default ignored,'%{public}s'.", &v11, 12);
    v9 = v8;
    sub_19B6BB7CC("Generic", 1, 0, 2, "CLMotionDefaultsWrite<int>::CLMotionDefaultsWrite(const char *, const T &, const BOOL) [T = int]", "CoreLocation: %s\n", v8);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  return a1;
}

CMOnBodyStatusManager *sub_19B62491C()
{
  result = objc_alloc_init(CMOnBodyStatusManager);
  qword_1ED71CB20 = result;
  return result;
}

void sub_19B624AD4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3[1])
  {
    objc_msgSend_connect(v3, a2, a3);
  }

  operator new();
}

void sub_19B624D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B624D8C(void *a1, CLConnectionMessage **a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v4, v8, v5, v6, v7, 0);
  if (!*a2 || (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9)) == 0)
  {
    v16 = a1[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B6250E0;
    block[3] = &unk_1E7532B40;
    block[4] = a1[6];
    v18 = block;
    goto LABEL_6;
  }

  v12 = DictionaryOfClasses;
  v13 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v11, @"CMErrorMessage");
  v15 = objc_msgSend_objectForKeyedSubscript_(v12, v14, @"CMOnBodyStatusData");
  if (v13)
  {
    *(a1[5] + 16) = 0;
    v16 = a1[4];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_19B625144;
    v28[3] = &unk_1E7532B90;
    v17 = a1[6];
    v28[4] = v13;
    v28[5] = v17;
    v18 = v28;
LABEL_6:
    dispatch_async(v16, v18);
    return;
  }

  if (v15)
  {
    v19 = a1[4];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_19B6251BC;
    v27[3] = &unk_1E7532B90;
    v20 = a1[6];
    v27[4] = v15;
    v27[5] = v20;
    v18 = v27;
    v16 = v19;
    goto LABEL_6;
  }

  if (qword_1EAFE2A48 != -1)
  {
    dispatch_once(&qword_1EAFE2A48, &unk_1F0E3A6D8);
  }

  v21 = qword_1EAFE2A50;
  if (os_log_type_enabled(qword_1EAFE2A50, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_FAULT, "Unable to parse message when starting updates to queue!", buf, 2u);
  }

  v22 = sub_19B420058();
  if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A48 != -1)
    {
      dispatch_once(&qword_1EAFE2A48, &unk_1F0E3A6D8);
    }

    v26 = 0;
    LODWORD(v25) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A50, 17, "Unable to parse message when starting updates to queue!", &v26, v25);
    v24 = v23;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMOnBodyStatusManager connect]_block_invoke", "CoreLocation: %s\n", v23);
    if (v24 != buf)
    {
      free(v24);
    }
  }
}

uint64_t sub_19B6250E0(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B625144(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_integerValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

void sub_19B6251D4(uint64_t a1, CLConnectionMessage **a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2A48 != -1)
  {
    dispatch_once(&qword_1EAFE2A48, &unk_1F0E3A6D8);
  }

  v3 = qword_1EAFE2A50;
  if (os_log_type_enabled(qword_1EAFE2A50, OS_LOG_TYPE_DEBUG))
  {
    v4 = CLConnectionMessage::name(*a2);
    if (*(v4 + 23) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *v4;
    }

    *buf = 136315138;
    v15 = v5;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "Default handler received message %s", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A48 != -1)
    {
      dispatch_once(&qword_1EAFE2A48, &unk_1F0E3A6D8);
    }

    v7 = qword_1EAFE2A50;
    v8 = CLConnectionMessage::name(*a2);
    if (*(v8 + 23) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *v8;
    }

    v12 = 136315138;
    v13 = v9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v7, 2, "Default handler received message %s", &v12);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMOnBodyStatusManager connect]_block_invoke", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }
}

void sub_19B625710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  if (a22)
  {
    sub_19B41FFEC(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B625860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B625894()
{
  result = os_log_create("com.apple.locationd.Motion", "OnBody");
  qword_1EAFE2A50 = result;
  return result;
}

void *sub_19B625938(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B625994((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B625994(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B6259EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B625AE8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v16, v15, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_19B625D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  v12 = *(v10 - 80);
  if (v12)
  {
    sub_19B41FFEC(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B625DD4(uint64_t a1, CLConnectionMessage **a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0 && (v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage")) != 0)
  {
    v13 = objc_msgSend_intValue(v10, v11, v12);
  }

  else
  {
    v13 = 103;
  }

  if (qword_1EAFE29D8 != -1)
  {
    dispatch_once(&qword_1EAFE29D8, &unk_1F0E28A60);
  }

  v14 = qword_1EAFE29E0;
  if (os_log_type_enabled(qword_1EAFE29E0, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v21 = v13;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Failed with CMError code %{public}d", buf, 8u);
  }

  v15 = sub_19B420058();
  if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE29D8 != -1)
    {
      dispatch_once(&qword_1EAFE29D8, &unk_1F0E28A60);
    }

    v19[0] = 67240192;
    v19[1] = v13;
    LODWORD(v18) = 8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE29E0, 17, "Failed with CMError code %{public}d", v19, v18);
    v17 = v16;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMOdometerProxy _startDaemonConnection]_block_invoke", "CoreLocation: %s\n", v16);
    if (v17 != buf)
    {
      free(v17);
    }
  }
}

uint64_t sub_19B625FFC(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v8 = objc_msgSend_setWithObjects_(v4, v7, v5, v6, 0);
  result = *a2;
  if (*a2)
  {
    result = CLConnectionMessage::getDictionaryOfClasses(result, v8);
    if (result)
    {
      v11 = objc_msgSend_objectForKeyedSubscript_(result, v10, @"CMOdometerGpsAvailability");
      v16 = objc_msgSend_BOOLValue(v11, v12, v13);
      result = *(a1 + 32);
      v17 = v16;
      if (*(result + 40) != v16)
      {
        v18 = objc_msgSend_odometer(result, v14, v15);
        objc_msgSend_delegate(v18, v19, v20);
        v23 = objc_opt_respondsToSelector();
        result = *(a1 + 32);
        if (v23)
        {
          v24 = objc_msgSend_odometer(result, v21, v22);
          v27 = objc_msgSend_delegate(v24, v25, v26);
          v30 = objc_msgSend_odometer(*(a1 + 32), v28, v29);
          objc_msgSend_odometer_didUpdateGpsAvailability_(v27, v31, v30, v17);
          result = *(a1 + 32);
        }
      }

      *(result + 40) = v17;
    }
  }

  return result;
}

void sub_19B6260F0(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE29D8 != -1)
    {
      dispatch_once(&qword_1EAFE29D8, &unk_1F0E28A60);
    }

    v6 = qword_1EAFE29E0;
    if (os_log_type_enabled(qword_1EAFE29E0, OS_LOG_TYPE_INFO))
    {
      v7 = getpid();
      v8 = *(a1 + 32);
      *buf = 138412802;
      v22 = v5;
      v23 = 1024;
      v24 = v7;
      v25 = 2048;
      v26 = v8;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "CMOdometer client connection interrupt, %@, %d, %p", buf, 0x1Cu);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE29D8 != -1)
      {
        dispatch_once(&qword_1EAFE29D8, &unk_1F0E28A60);
      }

      v10 = qword_1EAFE29E0;
      v11 = getpid();
      v12 = *(a1 + 32);
      v15 = 138412802;
      v16 = v5;
      v17 = 1024;
      v18 = v11;
      v19 = 2048;
      v20 = v12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v10, 1, "CMOdometer client connection interrupt, %@, %d, %p", &v15, 28);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMOdometerProxy _startDaemonConnection]_block_invoke", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }
}

void sub_19B62649C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, std::__shared_weak_count *a19, int a20, __int16 a21, char a22, char a23)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6264E0(uint64_t a1, CLConnectionMessage **a2, uint64_t a3)
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 32) + 32);
  if (v4)
  {
    v6 = objc_msgSend_copy(v4, a2, a3);
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v12 = objc_msgSend_setWithObjects_(v7, v11, v8, v9, v10, 0);
    if (!*a2)
    {
      goto LABEL_7;
    }

    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v12);
    if (!DictionaryOfClasses)
    {
      goto LABEL_7;
    }

    v15 = DictionaryOfClasses;
    v16 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v14, @"CMOdometerDataObject");
    v18 = objc_msgSend_objectForKeyedSubscript_(v15, v17, @"CMErrorMessage");
    if (v18)
    {
      v21 = *(*(a1 + 32) + 16);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B6268BC;
      block[3] = &unk_1E7532B90;
      block[4] = v18;
      block[5] = v6;
      v22 = block;
      v23 = v21;
    }

    else
    {
      if (!v16)
      {
        if (qword_1EAFE29D8 != -1)
        {
          dispatch_once(&qword_1EAFE29D8, &unk_1F0E28A60);
        }

        v34 = qword_1EAFE29E0;
        if (os_log_type_enabled(qword_1EAFE29E0, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v34, OS_LOG_TYPE_FAULT, "Unable to parse kCLConnectionMessageOdometerUpdate message!", buf, 2u);
        }

        v35 = sub_19B420058();
        if ((*(v35 + 160) & 0x80000000) == 0 || (*(v35 + 164) & 0x80000000) == 0 || (*(v35 + 168) & 0x80000000) == 0 || *(v35 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE29D8 != -1)
          {
            dispatch_once(&qword_1EAFE29D8, &unk_1F0E28A60);
          }

          v66[0] = 0;
          LODWORD(v65) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE29E0, 17, "Unable to parse kCLConnectionMessageOdometerUpdate message!", v66, v65);
          v37 = v36;
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMOdometerProxy _startOdometerUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v36);
          if (v37 != buf)
          {
            free(v37);
          }
        }

        goto LABEL_7;
      }

      objc_msgSend_totalDistance(*(a1 + 32), v19, v20);
      v26 = MEMORY[0x1E695DF00];
      if (v27 < 0.0)
      {
        objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v24, v25);
        objc_msgSend_setStartDate_(*(a1 + 32), v28, v29);
        objc_msgSend_setTotalDistance_(*(a1 + 32), v30, v31, 0.0);
        objc_msgSend_setAverageSpeed_(*(a1 + 32), v32, v33, 0.0);
        goto LABEL_7;
      }

      objc_msgSend_startDate(*(a1 + 32), v24, v25);
      v40 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v26, v38, v39);
      v41 = *(a1 + 32);
      v44 = objc_msgSend_distance(v16, v42, v43);
      objc_msgSend_doubleValue(v44, v45, v46);
      v48 = v47;
      objc_msgSend_totalDistance(v41, v49, v50);
      objc_msgSend_setTotalDistance_(v41, v52, v53, v48 + v51);
      v56 = objc_msgSend_endDate(v16, v54, v55);
      objc_msgSend_timeIntervalSinceDate_(v56, v57, v40);
      v61 = v60;
      v62 = 0.0;
      if (v61 > 0.1)
      {
        objc_msgSend_totalDistance(*(a1 + 32), v58, v59, 0.0);
        v62 = v63 / v61;
      }

      objc_msgSend_setAverageSpeed_(*(a1 + 32), v58, v59, v62);
      v64 = *(a1 + 32);
      v23 = *(v64 + 16);
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = sub_19B626950;
      v67[3] = &unk_1E7533678;
      v67[4] = v16;
      v67[5] = v64;
      v67[6] = v40;
      v67[7] = v6;
      v22 = v67;
    }

    dispatch_async(v23, v22);
LABEL_7:
  }
}

void sub_19B6268BC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v7 = objc_msgSend_integerValue(*(a1 + 32), v5, v6);
  v9 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v8, @"CMErrorDomain", v7, 0);
  (*(v4 + 16))(v4, 0, v9);

  objc_autoreleasePoolPop(v2);
}

void sub_19B626950(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_copy(*(a1 + 32), v3, v4);
  v6 = MEMORY[0x1E696AD98];
  objc_msgSend_averageSpeed(*(a1 + 40), v7, v8);
  v11 = objc_msgSend_numberWithDouble_(v6, v9, v10);
  objc_msgSend_setAverageSpeed_(v5, v12, v11);
  v13 = MEMORY[0x1E696AD98];
  objc_msgSend_totalDistance(*(a1 + 40), v14, v15);
  v18 = objc_msgSend_numberWithDouble_(v13, v16, v17);
  objc_msgSend_setDistance_(v5, v19, v18);
  objc_msgSend_updateStartDate_(v5, v20, *(a1 + 48));
  (*(*(a1 + 56) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_19B626B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B626C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B626E48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (v24)
  {
    sub_19B41FFEC(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B626E8C(uint64_t a1, CLConnectionMessage **a2)
{
  v97 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v10 = objc_msgSend_setWithObjects_(v4, v9, v5, v6, v7, v8, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v10);
    if (DictionaryOfClasses)
    {
      v13 = DictionaryOfClasses;
      v14 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v12, @"CMCyclingWorkoutDistanceDataArray");
      v16 = objc_msgSend_objectForKeyedSubscript_(v13, v15, @"CMErrorMessage");
      if (v16)
      {
        v19 = *(*(a1 + 32) + 16);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_19B627324;
        block[3] = &unk_1E7532B90;
        v20 = *(a1 + 40);
        block[4] = v16;
        block[5] = v20;
        v21 = block;
        v22 = v19;
LABEL_5:
        dispatch_async(v22, v21);
        return;
      }

      if (v14 && objc_msgSend_count(v14, v17, v18))
      {
        objc_msgSend_totalCyclingDistance(*(a1 + 32), v23, v24);
        if (v27 < 0.0)
        {
          Object = objc_msgSend_firstObject(v14, v25, v26);
          v31 = objc_msgSend_endDate(Object, v29, v30);
          objc_msgSend_timeIntervalSinceReferenceDate(v31, v32, v33);
          objc_msgSend_setCyclingStartDate_(*(a1 + 32), v34, v35);
          objc_msgSend_setTotalCyclingDistance_(*(a1 + 32), v36, v37, 0.0);
        }

        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v25, &v90, v96, 16);
        if (v38)
        {
          v41 = v38;
          v42 = *v91;
          do
          {
            for (i = 0; i != v41; ++i)
            {
              if (*v91 != v42)
              {
                objc_enumerationMutation(v14);
              }

              v44 = *(*(&v90 + 1) + 8 * i);
              v45 = MEMORY[0x1E695DF00];
              objc_msgSend_cyclingStartDate(*(a1 + 32), v39, v40);
              v48 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v45, v46, v47);
              v49 = *(a1 + 32);
              v52 = objc_msgSend_distance(v44, v50, v51);
              objc_msgSend_doubleValue(v52, v53, v54);
              v56 = v55;
              objc_msgSend_totalCyclingDistance(v49, v57, v58);
              objc_msgSend_setTotalCyclingDistance_(v49, v60, v61, v56 + v59);
              v64 = objc_msgSend_endDate(v44, v62, v63);
              objc_msgSend_timeIntervalSinceDate_(v64, v65, v48);
              v69 = v68;
              v70 = 0.0;
              if (v69 > 0.1)
              {
                objc_msgSend_totalCyclingDistance(*(a1 + 32), v66, v67, 0.0);
                v70 = v71 / v69;
              }

              v72 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v66, v67, v70);
              objc_msgSend_setAverageSpeed_(v44, v73, v72);
              v74 = MEMORY[0x1E696AD98];
              objc_msgSend_totalCyclingDistance(*(a1 + 32), v75, v76);
              v79 = objc_msgSend_numberWithDouble_(v74, v77, v78);
              objc_msgSend_setDistance_(v44, v80, v79);
              objc_msgSend_updateStartDate_(v44, v81, v48);
            }

            v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v39, &v90, v96, 16);
          }

          while (v41);
        }

        v22 = *(*(a1 + 32) + 16);
        v89[0] = MEMORY[0x1E69E9820];
        v89[1] = 3221225472;
        v89[2] = sub_19B62739C;
        v89[3] = &unk_1E7532B90;
        v82 = *(a1 + 40);
        v89[4] = v14;
        v89[5] = v82;
        v21 = v89;
        goto LABEL_5;
      }

      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28A00);
      }

      v83 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v83, OS_LOG_TYPE_FAULT, "Unable to parse kCLConnectionMessageCyclingWorkoutDistanceUpdate message!", buf, 2u);
      }

      v84 = sub_19B420058();
      if ((*(v84 + 160) & 0x80000000) == 0 || (*(v84 + 164) & 0x80000000) == 0 || (*(v84 + 168) & 0x80000000) == 0 || *(v84 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28A00);
        }

        v88[0] = 0;
        LODWORD(v87) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Unable to parse kCLConnectionMessageCyclingWorkoutDistanceUpdate message!", v88, v87);
        v86 = v85;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMOdometerProxy _startCyclingWorkoutDistanceUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v85);
        if (v86 != buf)
        {
          free(v86);
        }
      }
    }
  }
}

uint64_t sub_19B627324(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_integerValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

void sub_19B6274BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    sub_19B41FFEC(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B627ADC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_odometerProxy(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v4, sel__startOdometerUpdatesWithHandler_, v5);
}

uint64_t sub_19B627B98(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_odometerProxy(*(a1 + 32), a2, a3);

  return objc_msgSend__stopOdometerUpdates(v3, v4, v5);
}

uint64_t sub_19B627CA8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_odometerProxy(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v4, sel__startCyclingWorkoutDistanceUpdatesWithHandler_, v5);
}

uint64_t sub_19B627D64(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_odometerProxy(*(a1 + 32), a2, a3);

  return objc_msgSend__stopCyclingWorkoutDistanceUpdates(v3, v4, v5);
}

os_log_t sub_19B627DB4()
{
  result = os_log_create("com.apple.locationd.Motion", "Odometer");
  qword_1EAFE29E0 = result;
  return result;
}

void *sub_19B627E58(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B627EB4((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B627EB4(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B627F0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B627FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6290B8(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  switch(v2)
  {
    case 255:
      return 0;
    case 2:
      (*(*a2 + 24))(a2, a1);
      break;
    case 1:
      (*(*a2 + 16))(a2, a1);
      break;
  }

  return 1;
}

void sub_19B62977C(float a1, float a2, float a3, float a4)
{
  v5 = a1;
  v28 = *MEMORY[0x1E69E9840];
  if (a2 <= 5.0)
  {
    v6 = a2;
  }

  else
  {
    v6 = 5.0;
  }

  if (a2 < 0.0)
  {
    v6 = 0.0;
  }

  v7 = 25.0;
  if (a1 <= 25.0)
  {
    v7 = a1;
  }

  if (a1 < 0.0)
  {
    v7 = 0.0;
  }

  if (a4 != 0.0)
  {
    a2 = v6;
    v5 = v7;
  }

  if (a3 > 0.0)
  {
    v8 = v5 * 0.194;
    v9 = a2 * 7.884;
    v10 = pow(v5, 3.0) * 0.167999998 / a3;
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E29240);
    }

    v11 = qword_1EAFE2830;
    if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      v23 = v8;
      v24 = 2048;
      v25 = v9;
      v26 = 2048;
      v27 = v10;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEBUG, "Cycle, RollingResistance,%f,gravity,%f,wind,%f", buf, 0x20u);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E29240);
      }

      v16 = 134218496;
      v17 = v8;
      v18 = 2048;
      v19 = v9;
      v20 = 2048;
      v21 = v10;
      LODWORD(v15) = 32;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2830, 2, "Cycle, RollingResistance,%f,gravity,%f,wind,%f", COERCE_DOUBLE(&v16), v15);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 2, "float CLCalorieWorkRateRegression::computeCyclingMets(float, float, float, float)", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }
}

os_log_t sub_19B629A20()
{
  result = os_log_create("com.apple.locationd.Motion", "Calorimetry");
  qword_1EAFE2830 = result;
  return result;
}

uint64_t sub_19B629A50(uint64_t a1, double a2)
{
  v17 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = 0x1000000000;
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E29260);
  }

  v4 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v16 = a2;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "[CMResampleAccessoryDeviceMotion] Constructed CMResampleAccessoryDeviceMotion. Set output sample period to: %.4f s", buf, 0xCu);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29260);
    }

    v13 = 134217984;
    v14 = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "[CMResampleAccessoryDeviceMotion] Constructed CMResampleAccessoryDeviceMotion. Set output sample period to: %.4f s", COERCE_DOUBLE(&v13));
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 2, "CMResampleAccessoryDeviceMotion::CMResampleAccessoryDeviceMotion(const CLMotionTypeTimestamp)", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if (a2 < 0.005 || a2 > 0.05)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29260);
    }

    v8 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v16 = a2;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "[CMResampleAccessoryDeviceMotion] Invalid output sample period: %.4f s", buf, 0xCu);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29260);
      }

      v13 = 134217984;
      v14 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 16, "[CMResampleAccessoryDeviceMotion] Invalid output sample period: %.4f s", COERCE_DOUBLE(&v13));
      v11 = v10;
      sub_19B6BB7CC("Generic", 1, 0, 0, "CMResampleAccessoryDeviceMotion::CMResampleAccessoryDeviceMotion(const CLMotionTypeTimestamp)", "CoreLocation: %s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  return a1;
}

uint64_t sub_19B629DA8(uint64_t a1, uint64_t a2, float32x4_t a3)
{
  result = 0;
  v137 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  if (*a1 >= 0.005 && v5 <= 0.05)
  {
    v7 = *(a1 + 10);
    if (!*(a1 + 10))
    {
LABEL_22:
      v24 = (a1 + 8);
      v25 = a2;
      goto LABEL_23;
    }

    v8 = *(a2 + 48);
    v9 = a1 + 16;
    v10 = *(a1 + 8);
    v11 = v7 + v10 - 1;
    v12 = *(a1 + 12);
    if (v11 >= v12)
    {
      v13 = *(a1 + 12);
    }

    else
    {
      v13 = 0;
    }

    if (v8 <= *(v9 + ((v11 - v13) << 6) + 48))
    {
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29260);
      }

      v26 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_ERROR))
      {
        v27 = *(a2 + 48);
        v28 = *(a1 + 8);
        v29 = *(v9 + (v28 << 6) + 48);
        v30 = v28 + *(a1 + 10) - 1;
        v31 = *(a1 + 12);
        if (v30 < v31)
        {
          v31 = 0;
        }

        v32 = *(v9 + ((v30 - v31) << 6) + 48);
        *buf = 134218496;
        *&buf[4] = v27;
        *&buf[12] = 2048;
        *&buf[14] = v29;
        *&buf[22] = 2048;
        *&buf[24] = v32;
        _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_ERROR, "[CMResampleAccessoryDeviceMotion]:[feedDMData] Invalid backwards or repeated timestamp, rejecting input. Input timestamp: %.4f s, buffer front: %.4f s, buffer back: %.4f s", buf, 0x20u);
      }

      v33 = sub_19B420058();
      if ((*(v33 + 160) & 0x80000000) == 0 || (*(v33 + 164) & 0x80000000) == 0 || (*(v33 + 168) & 0x80000000) == 0 || *(v33 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E29260);
        }

        v34 = *(a2 + 48);
        v35 = *(a1 + 8);
        v36 = *(v9 + (v35 << 6) + 48);
        v37 = v35 + *(a1 + 10) - 1;
        v38 = *(a1 + 12);
        if (v37 < v38)
        {
          v38 = 0;
        }

        v39 = *(v9 + ((v37 - v38) << 6) + 48);
        *v132 = 134218496;
        *&v132[4] = v34;
        *&v132[12] = 2048;
        *&v132[14] = v36;
        v133 = 2048;
        v134 = v39;
        LODWORD(v121) = 32;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 16, "[CMResampleAccessoryDeviceMotion]:[feedDMData] Invalid backwards or repeated timestamp, rejecting input. Input timestamp: %.4f s, buffer front: %.4f s, buffer back: %.4f s", COERCE_DOUBLE(v132), v121, v122);
        v41 = v40;
        sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CMResampleAccessoryDeviceMotion::feedDMData(const InputData &)", "CoreLocation: %s\n", v40);
        if (v41 != buf)
        {
          free(v41);
        }
      }
    }

    else
    {
      v14 = *(v9 + (v10 << 6) + 48);
      v15 = v8 - v14;
      if (v8 - v14 > v5 + 0.1)
      {
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E29260);
        }

        v16 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
        {
          v17 = *(v9 + (*(a1 + 8) << 6) + 48);
          v18 = *(a2 + 48);
          *buf = 134218496;
          *&buf[4] = v15;
          *&buf[12] = 2048;
          *&buf[14] = v17;
          *&buf[22] = 2048;
          *&buf[24] = v18;
          _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEBUG, "[CMResampleAccessoryDeviceMotion] Sample too far ahead by: %.6f s, last timestamp: %.6f s, this timestamp: %.6f s", buf, 0x20u);
        }

        v19 = sub_19B420058();
        if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E29260);
          }

          v20 = *(v9 + (*(a1 + 8) << 6) + 48);
          v21 = *(a2 + 48);
          *v132 = 134218496;
          *&v132[4] = v15;
          *&v132[12] = 2048;
          *&v132[14] = v20;
          v133 = 2048;
          v134 = v21;
          LODWORD(v121) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "[CMResampleAccessoryDeviceMotion] Sample too far ahead by: %.6f s, last timestamp: %.6f s, this timestamp: %.6f s", COERCE_DOUBLE(v132), v121, v122);
          v23 = v22;
          sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMResampleAccessoryDeviceMotion::feedDMData(const InputData &)", "CoreLocation: %s\n", v22);
          if (v23 != buf)
          {
            free(v23);
          }
        }

        *(a1 + 8) = 0;
        goto LABEL_22;
      }

      if (v15 >= v5)
      {
        v58 = v5 + v14;
        if (v5 + v14 >= v8)
        {
          return 1;
        }

        v59 = 1;
        while (1)
        {
          v60 = *(a1 + 8) + *(a1 + 10) - 1;
          v61 = *(a1 + 12);
          if (v60 < v61)
          {
            v61 = 0;
          }

          v62 = v9 + ((v60 - v61) << 6);
          v63 = *(v62 + 48);
          if (v58 - v63 < 0.001)
          {
            break;
          }

          v64 = (v58 - v63) / (v8 - v63);
          a3.i64[0] = 1.0;
          if (v64 < 0.0 || v64 > 1.0)
          {
            if (qword_1ED71C820 != -1)
            {
              dispatch_once(&qword_1ED71C820, &unk_1F0E28840);
            }

            v113 = off_1ED71C828;
            if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_19B41C000, v113, OS_LOG_TYPE_FAULT, "Assertion failed: interpolationRatio >= 0 && interpolationRatio <= 1, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/Accessory/CMResampleAccessoryDeviceMotion.cpp, line 177,Invalid interpolationRatio..", buf, 2u);
            }

            v114 = sub_19B420058();
            if ((*(v114 + 160) & 0x80000000) == 0 || (*(v114 + 164) & 0x80000000) == 0 || (*(v114 + 168) & 0x80000000) == 0 || *(v114 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED71C820 != -1)
              {
                dispatch_once(&qword_1ED71C820, &unk_1F0E28840);
              }

              *v132 = 0;
              LODWORD(v121) = 2;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: interpolationRatio >= 0 && interpolationRatio <= 1, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/Accessory/CMResampleAccessoryDeviceMotion.cpp, line 177,Invalid interpolationRatio..", v132, *&v121);
              v116 = v115;
              sub_19B6BB7CC("Generic", 1, 0, 0, "void CMResampleAccessoryDeviceMotion::interpolate(const InputData &)", "CoreLocation: %s\n", v115);
              if (v116 != buf)
              {
                free(v116);
              }
            }
          }

          v66 = *(a1 + 8) + *(a1 + 10) - 1;
          v67 = *(a1 + 12);
          if (v66 < v67)
          {
            v67 = 0;
          }

          v68 = v9 + ((v66 - v67) << 6);
          v69 = *(a2 + 36);
          v70 = *(v68 + 36);
          v71 = v64;
          v72 = *(a2 + 28);
          v73 = *(v68 + 28);
          v74 = v71 < 0.0 || v71 > 1.0;
          v129 = v64;
          if (v74)
          {
            if (qword_1ED71C820 != -1)
            {
              dispatch_once(&qword_1ED71C820, &unk_1F0E28840);
            }

            log = off_1ED71C828;
            if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_19B41C000, log, OS_LOG_TYPE_FAULT, "Assertion failed: t >= 0 && t <= 1, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/Accessory/CMResampleAccessoryDeviceMotion.cpp, line 15,Invalid time t for slerp.", buf, 2u);
            }

            v117 = sub_19B420058();
            v71 = v64;
            if ((*(v117 + 160) & 0x80000000) == 0 || (*(v117 + 164) & 0x80000000) == 0 || (*(v117 + 168) & 0x80000000) == 0 || *(v117 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED71C820 != -1)
              {
                dispatch_once(&qword_1ED71C820, &unk_1F0E28840);
              }

              *v132 = 0;
              LODWORD(v121) = 2;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: t >= 0 && t <= 1, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/Accessory/CMResampleAccessoryDeviceMotion.cpp, line 15,Invalid time t for slerp.", v132, *&v121);
              loga = v118;
              sub_19B6BB7CC("Generic", 1, 0, 0, "CMOQuaternion (anonymous namespace)::slerp(const CMOQuaternion &, const CMOQuaternion &, float)", "CoreLocation: %s\n", v118);
              if (loga != buf)
              {
                free(loga);
              }

              v71 = v64;
            }
          }

          a3.f32[0] = (v69 - v70) * v71;
          v75 = vadd_f32(v73, vmul_n_f32(vsub_f32(v72, v73), v71));
          v76 = v70 + a3.f32[0];
          v77.f32[0] = sub_19B66BFF4(v68, a3);
          *v132 = v77.i32[0];
          *&v132[4] = v78;
          *&v132[8] = v79;
          *&v132[12] = v80;
          *buf = sub_19B66BF70(a2, v132, v77);
          *&buf[4] = v81;
          *&buf[8] = v82;
          *&buf[12] = v83;
          v84 = sub_19B66C31C(buf);
          v87 = 0;
          *v131 = v84;
          *&v131[1] = v85;
          *&v131[2] = v86;
          v88 = 0.0;
          do
          {
            v88 = v88 + (*&v131[v87] * *&v131[v87]);
            ++v87;
          }

          while (v87 != 3);
          if (sqrtf(v88) > 3.14159265)
          {
            *buf = sub_19B66C038(buf);
            *&buf[4] = v89;
            *&buf[8] = v90;
            *&buf[12] = v91;
            v84 = sub_19B66C31C(buf);
          }

          v92 = 0.0;
          if (v129 >= 0.0)
          {
            v92 = v64;
          }

          if (v92 > 1.0)
          {
            v92 = 1.0;
          }

          v130[0] = v92 * v84;
          v130[1] = v92 * v85;
          v130[2] = v92 * v86;
          *v93.i64 = sub_19B66C264(v132, v130);
          *v132 = sub_19B66BF70(v132, v68, v93);
          *&v132[4] = v94;
          *&v132[8] = v95;
          *&v132[12] = v96;
          v97 = *(a1 + 8) + *(a1 + 10) - 1;
          v98 = *(a1 + 12);
          if (v97 < v98)
          {
            v98 = 0;
          }

          v99 = v9 + ((v97 - v98) << 6);
          v100 = sub_19B447000(v99);
          v125 = v101;
          logb = v100;
          v103 = v102 + *(v99 + 24);
          v104 = sub_19B447000(a2);
          v123 = v105;
          v124 = v104;
          v107 = v103 + (((v106 + *(a2 + 24)) - v103) * v129);
          v108.f32[0] = sub_19B447000(v132);
          *&v109 = *(v99 + 48) + (*(a2 + 48) - *(v99 + 48)) * v64;
          *buf = *v132;
          v110 = vadd_f32(*(v99 + 16), __PAIR64__(v125, LODWORD(logb)));
          v108.i32[1] = v111;
          *&buf[16] = vsub_f32(vadd_f32(v110, vmul_n_f32(vsub_f32(vadd_f32(*(a2 + 16), __PAIR64__(v123, LODWORD(v124))), v110), v129)), v108);
          *&buf[24] = v107 - v112;
          *&buf[28] = v75;
          *&buf[36] = v76;
          buf[40] = *(a2 + 40);
          *&buf[44] = *(a2 + 44);
          v136 = v109;
          if (v59)
          {
            *(a1 + 8) = 0;
          }

          sub_19B62AA10((a1 + 8), buf);
          v59 = 0;
          v58 = v58 + *a1;
          result = 1;
          if (v58 >= v8)
          {
            return result;
          }
        }

        v119 = *(v62 + 16);
        *buf = *v62;
        *&buf[16] = v119;
        v120 = *(v62 + 48);
        *&buf[32] = *(v62 + 32);
        v136 = v120;
        *(a1 + 8) = 0;
        v24 = (a1 + 8);
        v25 = buf;
LABEL_23:
        sub_19B62AA10(v24, v25);
        return 1;
      }

      if (v12 == v7)
      {
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E29260);
        }

        v42 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_ERROR))
        {
          v43 = *(a2 + 48);
          v44 = *(a1 + 8);
          v45 = *(v9 + (v44 << 6) + 48);
          v46 = v44 + *(a1 + 10) - 1;
          v47 = *(a1 + 12);
          if (v46 < v47)
          {
            v47 = 0;
          }

          v48 = *(v9 + ((v46 - v47) << 6) + 48);
          *buf = 134218496;
          *&buf[4] = v43;
          *&buf[12] = 2048;
          *&buf[14] = v45;
          *&buf[22] = 2048;
          *&buf[24] = v48;
          _os_log_impl(&dword_19B41C000, v42, OS_LOG_TYPE_ERROR, "[CMResampleAccessoryDeviceMotion]:[feedDMData] Too many consecutive over-closely spaced sampled received. This suggests an input sampling rate anomaly. Input timestamp: %.4f s, First / last timestamp in the buffer : %.4f s / %.4f s . The resampling will still continue but in a non-ideal rate.", buf, 0x20u);
        }

        v49 = sub_19B420058();
        if ((*(v49 + 160) & 0x80000000) == 0 || (*(v49 + 164) & 0x80000000) == 0 || (*(v49 + 168) & 0x80000000) == 0 || *(v49 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E29260);
          }

          v50 = *(a2 + 48);
          v51 = *(a1 + 8);
          v52 = *(v9 + (v51 << 6) + 48);
          v53 = v51 + *(a1 + 10) - 1;
          v54 = *(a1 + 12);
          if (v53 < v54)
          {
            v54 = 0;
          }

          v55 = *(v9 + ((v53 - v54) << 6) + 48);
          *v132 = 134218496;
          *&v132[4] = v50;
          *&v132[12] = 2048;
          *&v132[14] = v52;
          v133 = 2048;
          v134 = v55;
          LODWORD(v121) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 16, "[CMResampleAccessoryDeviceMotion]:[feedDMData] Too many consecutive over-closely spaced sampled received. This suggests an input sampling rate anomaly. Input timestamp: %.4f s, First / last timestamp in the buffer : %.4f s / %.4f s . The resampling will still continue but in a non-ideal rate.", COERCE_DOUBLE(v132), v121, v122);
          v57 = v56;
          sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CMResampleAccessoryDeviceMotion::feedDMData(const InputData &)", "CoreLocation: %s\n", v56);
          if (v57 != buf)
          {
            free(v57);
          }
        }
      }

      sub_19B62AA10((a1 + 8), a2);
    }

    return 0;
  }

  return result;
}

unsigned __int16 *sub_19B62AA10(unsigned __int16 *result, __int128 *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  v4 = &result[32 * (v3 - v2)];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  *(v4 + 28) = a2[3];
  *(v4 + 4) = v6;
  *(v4 + 20) = v7;
  *(v4 + 12) = v5;
  v8 = result[1];
  v9 = *(result + 1);
  if (v9 <= v8)
  {
    v10 = *result + 1;
    if (v10 < v9)
    {
      LOWORD(v9) = 0;
    }

    *result = v10 - v9;
  }

  else
  {
    result[1] = v8 + 1;
  }

  return result;
}

uint64_t *sub_19B62AAD4(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 472);
  if (v2)
  {
    v3 = result[1];
    v4 = *(result + 4);
    v5 = *result;
    return v2(&v3, *(a2 + 480));
  }

  return result;
}

uint64_t *sub_19B62AB20(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 496);
  if (v2)
  {
    v3 = result[1];
    v4 = *(result + 4);
    v5 = *result;
    return v2(&v3, *(a2 + 504));
  }

  return result;
}

void sub_19B62AE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B62BB88(uint64_t a1, uint64_t a2)
{
  v4 = [CMAmbientPressureData alloc];
  LODWORD(v5) = *(a2 + 8);
  LODWORD(v6) = *(a2 + 12);
  v9 = objc_msgSend_initWithPressure_andTimestamp_(v4, v7, v8, v5, v6, *a2);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_19B62BC28;
  v13[3] = &unk_1E7532B90;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13[4] = v9;
  v13[5] = v11;
  objc_msgSend_addOperationWithBlock_(v10, v12, v13);
}

void sub_19B62BEC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (*(v45 - 73) < 0)
  {
    operator delete(v44[204]);
  }

  if (a44 < 0)
  {
    operator delete(*v44);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B62CD1C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_attitudeReferenceFrame(v3, a2, a3);

  return MEMORY[0x1EEE66B58](v3, sel_startDeviceMotionUpdatesPrivateUsingReferenceFrame_toQueue_withHandler_, v4);
}

uint64_t sub_19B62CDF4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_attitudeReferenceFrame(v3, a2, a3);

  return MEMORY[0x1EEE66B58](v3, sel_startDeviceMotionUpdatesPrivateUsingReferenceFrame_toQueue_withHandler_, v4);
}

uint64_t sub_19B62D6F4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_attitudeReferenceFrame(v3, a2, a3);

  return MEMORY[0x1EEE66B58](v3, sel_startDeviceMotionUpdatesPrivateUsingReferenceFrame_toQueue_withHandler_, v4);
}

uint64_t sub_19B62D7CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_attitudeReferenceFrame(v3, a2, a3);

  return MEMORY[0x1EEE66B58](v3, sel_startDeviceMotionUpdatesPrivateUsingReferenceFrame_toQueue_withHandler_, v4);
}

void sub_19B62DEFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  if (a22)
  {
    sub_19B41FFEC(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B62DF34(uint64_t a1, char *a2, uint64_t a3)
{
  if (!a2 || ((v5 = objc_msgSend_objectForKeyedSubscript_(a2, a2, @"CMErrorMessage"), v7 = objc_msgSend_objectForKeyedSubscript_(a2, v6, @"CMReturnCode"), !v5) ? (v8 = v7 == 0) : (v8 = 1), v8 || (objc_msgSend_BOOLValue(v7, a2, a3) & 1) == 0))
  {
    v9 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3);
    objc_msgSend_removeItemAtURL_error_(v9, v10, *(a1 + 32), 0);
  }

  v11 = *(*(a1 + 40) + 16);

  return v11();
}

void sub_19B62E06C(uint64_t a1)
{
  v2 = sub_19B43D9C4();
  v5 = objc_msgSend_vendor(v2, v3, v4);
  v7 = objc_msgSend_proxyForService_(v5, v6, @"CLGyroCalibrationDatabase");
  if (objc_msgSend_syncgetWipeDatabase(v7, v8, v9))
  {
    *(*(a1 + 32) + 264) = 0x3F847AE147AE147BLL;
    *(*(a1 + 32) + 296) = 19;
    v10 = [CLDeviceMotionProperties alloc];
    v12 = objc_msgSend_initWithMode_(v10, v11, *(*(a1 + 32) + 296));
    if (!*(*(a1 + 32) + 256))
    {
      operator new();
    }

    v13 = sub_19B424AE0();
    v14 = *(a1 + 32);
    v15 = *(v14 + 256);
    v16 = *(v14 + 264);

    sub_19B439EF4(v13, v15, v16);
  }
}

void sub_19B62FACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak(v27);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a23);
  _Unwind_Resume(a1);
}

void *sub_19B62FB1C(uint64_t a1)
{
  result = objc_loadWeak((a1 + 32));
  if (result)
  {
    v2 = result[1];
    v3 = v2[72];
    v2[72] = 0;
    if (v3)
    {
      sub_19B6B160C(v3);
      objc_msgSend_setFDisplayGravityHandler_(v2, v4, 0);
      v5 = sub_19B6B1560(v3);
      return MEMORY[0x19EAE76F0](v5, 0x1020C407EC6A881);
    }
  }

  return result;
}

void sub_19B62FB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B639A54(va, 0);
  _Unwind_Resume(a1);
}

void sub_19B62FBBC(uint64_t a1)
{
  to[6] = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v3 = Weak;
    objc_copyWeak(to, (a1 + 32));
    objc_msgSend_updateDeviceMotionMode(v3, v4, v5);
    operator new();
  }
}

double sub_19B62FD38(uint64_t a1, uint64_t a2)
{
  objc_copyWeak((a1 + 32), (a2 + 32));
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_19B62FE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  IOHIDEventGetVendorDefinedData();
  if (qword_1EAFE2810 != -1)
  {
    dispatch_once(&qword_1EAFE2810, &unk_1F0E3A878);
  }

  v4 = qword_1EAFE2838;
  if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Empty payload", buf, 2u);
  }

  v5 = sub_19B420058();
  if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E3A878);
    }

    LOWORD(v8) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2838, 17, "Empty payload", &v8, 2);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 0, "static void CLIspDataVisitor::onOscarData(void *, void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }
}

uint64_t sub_19B630224(uint64_t a1)
{
  *a1 = &unk_1F0E32D70;
  v2 = sub_19B420D84();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B6302F8;
  v7[3] = &unk_1E75327D8;
  v7[4] = a1;
  sub_19B420C9C(v2, v7);

  v3 = *(a1 + 48);
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    sub_19B41FFEC(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    sub_19B41FFEC(v5);
  }

  return a1;
}

void sub_19B6302F8(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E3A858);
  }

  v2 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[CLIspDataVisitor] closing HidInterfaces", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3A858);
    }

    v9[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 0, "[CLIspDataVisitor] closing HidInterfaces", v9, 2);
    v5 = v4;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CLIspDataVisitor::~CLIspDataVisitor()_block_invoke", "CoreLocation: %s\n", v4);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = v1[2];
  v1[1] = 0;
  v1[2] = 0;
  if (v6)
  {
    sub_19B41FFEC(v6);
  }

  v7 = v1[4];
  v1[3] = 0;
  v1[4] = 0;
  if (v7)
  {
    sub_19B41FFEC(v7);
  }

  v8 = v1[6];
  v1[5] = 0;
  v1[6] = 0;
  if (v8)
  {
    sub_19B41FFEC(v8);
  }
}

void sub_19B6304DC(uint64_t a1)
{
  sub_19B630224(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B630514(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, a2 + 1, 54);
  }

  return result;
}

void sub_19B630710(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v19, v20, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_19B630740(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (*(v3 + 560) == 1)
  {
    v6[7] = v1;
    v6[8] = v2;
    *(v3 + 560) = 0;
    v5 = sub_19B420D84();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_19B6307D8;
    v6[3] = &unk_1E7532988;
    v6[4] = *(a1 + 32);
    sub_19B421668(v5, v6);
  }
}

void sub_19B6307D8(uint64_t a1, const char *a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(v2 + 560) & 1) == 0)
  {
    *(v2 + 560) = 1;
    v7[0] = @"CMSidebandSensorFusionEnable";
    v3 = a1 + 32;
    v8[0] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, *(*(a1 + 32) + 560));
    v7[1] = @"CMSidebandSensorFusionLatency";
    v8[1] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v4, *(*v3 + 561));
    v7[2] = @"CMSidebandSensorFusionSnoop";
    v8[2] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v5, *(*v3 + 562));
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v8, v7, 3);
    sub_19B639BD4();
  }
}

void sub_19B630938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B631388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32)
{
  (*(*v32 + 8))(v32, a2, a3, a4, a5, a6, a7, a8);
  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  if (a32)
  {
    sub_19B41FFEC(a32);
  }

  _Unwind_Resume(a1);
}

void *sub_19B631454(uint64_t a1, const char *a2)
{
  result = objc_msgSend_setSidebandSensorFusionEnable_measureLatency_withSnoopHandler_(*(a1 + 32), a2, *(a1 + 56), *(a1 + 57), *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_19B631BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B631C4C(uint64_t a1, const char *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 568))
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v3 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[MotionManager] CLIspDataVisitor reset", buf, 2u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }

      v12[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 0, "[MotionManager] CLIspDataVisitor reset", v12, 2);
      v6 = v5;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager setSidebandTimeSyncHandler:]_block_invoke", "CoreLocation: %s\n", v5);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    operator new();
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B631EF0;
  v9[3] = &unk_1E7533870;
  v11 = *(a1 + 48);
  v10 = *(a1 + 32);
  v7 = *(v10 + 568);
  v8 = *(v7 + 64);
  *(v7 + 64) = objc_msgSend_copy(v9, a2, a3);
}

intptr_t sub_19B631EF0(void *a1, uint64_t a2, uint64_t a3)
{
  *(*(a1[5] + 8) + 24) = a2;
  *(*(a1[6] + 8) + 24) = a3;
  return dispatch_semaphore_signal(*(a1[4] + 1088));
}

uint64_t sub_19B631F2C(uint64_t result, const char *a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 568);
  if (v3)
  {
    v4 = result;
    v5 = *(v3 + 64);
    *(v3 + 64) = objc_msgSend_copy(*(result + 40), a2, a3);

    v6 = *(v4 + 32);
    result = *(v6 + 568);
    if (!*(result + 56) && !*(result + 64))
    {
      *(v6 + 568) = 0;
      v7 = *(*result + 8);

      return v7();
    }
  }

  return result;
}

void sub_19B63207C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B63218C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B6321A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = v4[1];
  result = objc_msgSend_isDeviceMotionActive(v4, a2, a3);
  if ((result & 1) != 0 || *(v5 + 512))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    *(v5 + 584) = *(a1 + 48);
  }

  return result;
}

void sub_19B632288(uint64_t a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((objc_msgSend_isDeviceMotionActive(*(a1 + 32), a2, a3) & 1) != 0 || (v4 = *(a1 + 40), *(v4 + 512)))
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v5 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "DeviceMotion is active.  Cannot set power conservation mode", buf, 2u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }

      v9[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 17, "DeviceMotion is active.  Cannot set power conservation mode", v9, 2);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionManager setPowerConservationMode:]_block_invoke", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  else
  {
    *(v4 + 588) = *(a1 + 48);
  }
}

id sub_19B6327C8(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!*(a1 + 32))
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, *(a1 + 56), *(a1 + 40), @"CMMotionManager.mm", 2951, @"Invalid parameter not satisfying: %@", @"queue");
  }

  if (!*(a1 + 48))
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, *(a1 + 56), *(a1 + 40), @"CMMotionManager.mm", 2952, @"Invalid parameter not satisfying: %@", @"handler");
  }

  result = objc_msgSend_isDeviceMotionAvailable(*(a1 + 40), a2, a3);
  if ((result & 1) == 0)
  {
    v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    result = objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, *(a1 + 56), *(a1 + 40), @"CMMotionManager.mm", 2954, @"Device motion is unavailable on this platform");
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 624);
  if (v8 != *(a1 + 32))
  {

    result = *(a1 + 32);
    *(v7 + 624) = result;
  }

  v9 = *(v7 + 616);
  if (v9 != *(a1 + 48))
  {

    result = objc_msgSend_copy(*(a1 + 48), v10, v11);
    *(v7 + 616) = result;
  }

  return result;
}

void sub_19B632974(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 624);
  if (v2)
  {

    *(v1 + 624) = 0;
  }

  v3 = *(v1 + 616);
  if (v3)
  {

    *(v1 + 616) = 0;
  }
}

void sub_19B638564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a38)
  {
    operator delete(a38);
  }

  _Unwind_Resume(a1);
}

void sub_19B638DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  MEMORY[0x19EAE76F0](v9, 0x81C4018A671A6, a3, a4, a5);
  sub_19B60DA60(va);
  _Unwind_Resume(a1);
}

double sub_19B639268(float a1, float a2, float a3, float a4, float a5, float a6)
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = 0;
  v39 = a1;
  v40 = a2;
  v41 = a3;
  v13 = 0.0;
  do
  {
    v13 = v13 + (*(&v39 + v12) * *(&v39 + v12));
    v12 += 4;
  }

  while (v12 != 12);
  if (sqrtf(v13) > 0.00000011921)
  {
    v14 = 0;
    v15 = 0.0;
    do
    {
      v15 = v15 + (*(&v39 + v14) * *(&v39 + v14));
      v14 += 4;
    }

    while (v14 != 12);
    v16 = sqrtf(v15);
    v11 = v11 / v16;
    v10 = a2 / v16;
    v9 = a3 / v16;
  }

  v17 = 0;
  v39 = a4;
  v40 = a5;
  v18 = 0.0;
  v41 = a6;
  do
  {
    v18 = v18 + (*(&v39 + v17) * *(&v39 + v17));
    v17 += 4;
  }

  while (v17 != 12);
  if (sqrtf(v18) > 0.00000011921)
  {
    v19 = 0;
    v20 = 0.0;
    do
    {
      v20 = v20 + (*(&v39 + v19) * *(&v39 + v19));
      v19 += 4;
    }

    while (v19 != 12);
    v21 = sqrtf(v20);
    v8 = a4 / v21;
    v7 = a5 / v21;
    v6 = a6 / v21;
  }

  v22 = ((v9 * v6) + (v10 * v7)) + (v11 * v8);
  v23 = 1.0;
  if (v22 < 1.0)
  {
    v23 = -1.0;
    if (v22 > -1.0)
    {
      v23 = ((v9 * v6) + (v10 * v7)) + (v11 * v8);
    }
  }

  *&result = acosf(v23);
  if (*&result < 0.7854)
  {
    v25 = 0;
    v39 = (v10 * v6) - (v9 * v7);
    v40 = (v9 * v8) - (v11 * v6);
    v41 = (v11 * v7) - (v10 * v8);
    v26 = 0.0;
    do
    {
      v26 = v26 + (*(&v39 + v25) * *(&v39 + v25));
      v25 += 4;
    }

    while (v25 != 12);
    if (sqrtf(v26) >= 1.0)
    {
      goto LABEL_34;
    }

    v27 = 0;
    v38[0] = (v10 * v6) - (v9 * v7);
    v38[1] = (v9 * v8) - (v11 * v6);
    v28 = 0.0;
    v38[2] = (v11 * v7) - (v10 * v8);
    do
    {
      v28 = v28 + (v38[v27] * v38[v27]);
      ++v27;
    }

    while (v27 != 3);
    v29 = sqrtf(v28);
    v30 = -1.0;
    if (v29 > -1.0)
    {
LABEL_34:
      v31 = 0;
      v37[0] = (v10 * v6) - (v9 * v7);
      v37[1] = (v9 * v8) - (v11 * v6);
      v32 = 0.0;
      v37[2] = (v11 * v7) - (v10 * v8);
      do
      {
        v32 = v32 + (v37[v31] * v37[v31]);
        ++v31;
      }

      while (v31 != 3);
      v33 = sqrtf(v32);
      v30 = 1.0;
      if (v33 < 1.0)
      {
        v34 = 0;
        v36[0] = (v10 * v6) - (v9 * v7);
        v36[1] = (v9 * v8) - (v11 * v6);
        v35 = 0.0;
        v36[2] = (v11 * v7) - (v10 * v8);
        do
        {
          v35 = v35 + (v36[v34] * v36[v34]);
          ++v34;
        }

        while (v34 != 3);
        v30 = sqrtf(v35);
      }
    }

    *&result = asinf(v30);
  }

  return result;
}

os_log_t sub_19B639648()
{
  result = os_log_create("com.apple.locationd.Motion", "Pressure");
  qword_1EAFE2860 = result;
  return result;
}

void sub_19B6396A4(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));

  JUMPOUT(0x19EAE76F0);
}

void sub_19B639788(id *a1)
{
  objc_destroyWeak(a1 + 1);

  operator delete(a1);
}

void sub_19B6397C4(uint64_t a1, double *a2)
{
  if (objc_loadWeak((a1 + 8)))
  {
    v4 = [CMDisplayGravity alloc];
    v5 = *(a2 + 1);
    block = *a2;
    v11 = v5;
    v12 = *(a2 + 2);
    v7 = objc_msgSend_initWithDisplayGravity_timestamp_(v4, v6, &block, a2[6]);
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 3321888768;
    *&v11 = sub_19B639904;
    *(&v11 + 1) = &unk_1F0E3A818;
    objc_copyWeak(&v8, (a1 + 8));
    v9 = v7;
    objc_copyWeak(&v12, &v8);
    *(&v12 + 1) = v9;
    dispatch_async(MEMORY[0x1E69E96A0], &block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v12);
  }
}

uint64_t sub_19B6398B8(uint64_t a1, uint64_t a2)
{
  if (sub_19B51106C(a2, &unk_1F0E3A848))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_19B639904(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));
  if (Weak && (v5 = Weak[1], objc_msgSend_fDisplayGravityHandler(v5, v3, v4)))
  {
    v8 = objc_msgSend_fDisplayGravityHandler(v5, v6, v7);
    v9 = *(a1 + 40);
    v10 = *(v8 + 16);

    v10(v8, v9);
  }

  else
  {
    v11 = *(a1 + 40);
  }
}

uint64_t sub_19B6399D4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_19B639A54(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_19B6B1560(result);

    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

os_log_t sub_19B639AA0()
{
  result = os_log_create("com.apple.locationd.Motion", "AOP");
  qword_1EAFE2838 = result;
  return result;
}

void sub_19B639AD4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B639B0C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_19B639B3C(uint64_t a1, uint64_t a2)
{
  if (sub_19B51106C(a2, &unk_1F0E349C8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_19B639B7C(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_19B4C5080();
}

void *sub_19B639C48(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B639CA4((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B639CA4(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B639CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B639D1C(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B639D58(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B639D90(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_19B639DC0(uint64_t a1, uint64_t a2)
{
  if (sub_19B51106C(a2, &unk_1F0E34900))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_19B639E04(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B639E4C(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B63DB50(_Unwind_Exception *a1)
{
  v3 = v1;
  MEMORY[0x19EAE76F0](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_19B63DB90(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return MEMORY[0x1EEE66B58](a2, sel__feedAccessoryConfig_, result);
  }

  return result;
}

uint64_t sub_19B63E704(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return MEMORY[0x1EEE66B58](a2, sel__feedSourceDeviceIMU_, result);
  }

  return result;
}

uint64_t sub_19B63E718(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return MEMORY[0x1EEE66B58](a2, sel__feedAccessoryDeviceMotion_, result);
  }

  return result;
}

uint64_t sub_19B63E730(uint64_t a1, void *a2, uint64_t a3)
{
  v121 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  if (v5[561] == 1)
  {
    objc_sync_enter(*(a1 + 32));
    v6 = *(*(a1 + 32) + 720);
    v9 = objc_msgSend_motionActivity(a2, v7, v8);
    sub_19B5E7094(v6, v9);
    objc_sync_exit(v5);
  }

  v10 = objc_msgSend_motionActivity(a2, a2, a3);
  v11 = *v10;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v12 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
  {
    v13 = CLMotionActivity::activityTypeToString(*(*(a1 + 32) + 264));
    *buf = 136446466;
    v118 = v13;
    v119 = 2082;
    v120 = CLMotionActivity::activityTypeToString(v11);
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_INFO, "[CMMediaSession] Previous Source Activity: %{public}s, Current Source Activity: %{public}s", buf, 0x16u);
  }

  v14 = sub_19B420058();
  if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v15 = off_1EAFE29A0;
    v16 = CLMotionActivity::activityTypeToString(*(*(a1 + 32) + 264));
    v113 = 136446466;
    v114 = v16;
    v115 = 2082;
    v116 = CLMotionActivity::activityTypeToString(v11);
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v15, 1, "[CMMediaSession] Previous Source Activity: %{public}s, Current Source Activity: %{public}s", &v113, 22);
    v18 = v17;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  v19 = *(a1 + 32);
  objc_sync_enter(v19);
  v20 = *(*(a1 + 32) + 8);
  if (!v10[2])
  {
    sub_19B738A58(v20 + 5232, v10);
  }

  sub_19B7113D0(*(v20 + 37736), v10);
  v21 = *(a1 + 32);
  v22 = *(v21 + 240);
  if (v22)
  {
    v23 = *(v21 + 264);
    if ((v23 > 0xB || ((1 << v23) & 0xC06) == 0) && v11 <= 0xB && ((1 << v11) & 0xC06) != 0)
    {
      sub_19B6A7EE8((v22 + 32), @"staticActivityStateDuration");
      v21 = *(a1 + 32);
      v55 = *(v21 + 268);
      if (v55 <= 0x29 && ((1 << v55) & 0x20000000110) != 0)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v56 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v56, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source entered static. Headset is pedestrian. Case 1-1.", buf, 2u);
        }

        v57 = sub_19B420058();
        if (*(v57 + 160) > 1 || *(v57 + 164) > 1 || *(v57 + 168) > 1 || *(v57 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          LOWORD(v113) = 0;
          LODWORD(v112) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Source entered static. Headset is pedestrian. Case 1-1.", &v113, v112);
          v59 = v58;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v58);
          if (v59 != buf)
          {
            free(v59);
          }
        }

        sub_19B6A7EE8((*(*(a1 + 32) + 240) + 512), @"srcActivityStationaryAndHeadsetActivityPedestrianDuration");
        v21 = *(a1 + 32);
        v55 = *(v21 + 268);
      }

      if (v55 == 3)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v60 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v60, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source entered static. Headset is other moving. Case 2-1.", buf, 2u);
        }

        v61 = sub_19B420058();
        if (*(v61 + 160) > 1 || *(v61 + 164) > 1 || *(v61 + 168) > 1 || *(v61 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          LOWORD(v113) = 0;
          LODWORD(v112) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Source entered static. Headset is other moving. Case 2-1.", &v113, v112);
          v63 = v62;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v62);
          if (v63 != buf)
          {
            free(v63);
          }
        }

        sub_19B6A7EE8((*(*(a1 + 32) + 240) + 528), @"srcActivityStationaryAndHeadsetActivityOtherMovingDuration");
        v21 = *(a1 + 32);
        v55 = *(v21 + 268);
      }

      if (v55 == 2)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v64 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v64, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source entered static. Headset is static. Case 3-1.", buf, 2u);
        }

        v65 = sub_19B420058();
        if (*(v65 + 160) > 1 || *(v65 + 164) > 1 || *(v65 + 168) > 1 || *(v65 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          LOWORD(v113) = 0;
          LODWORD(v112) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Source entered static. Headset is static. Case 3-1.", &v113, v112);
          v67 = v66;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v66);
          if (v67 != buf)
          {
            free(v67);
          }
        }

        sub_19B6A7EE8((*(*(a1 + 32) + 240) + 544), @"srcActivityStationaryAndHeadsetActivityStationaryDuration");
        v21 = *(a1 + 32);
      }
    }

    v24 = *(v21 + 264);
    if (v24 <= 0xB && ((1 << v24) & 0xC06) != 0 && (v11 > 0xB || ((1 << v11) & 0xC06) == 0))
    {
      sub_19B6A80D8((*(v21 + 240) + 32), @"staticActivityStateDuration");
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v68 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v68, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source exiting static. Headset don't care. Case 1-3 and 1-4.", buf, 2u);
      }

      v69 = sub_19B420058();
      if (*(v69 + 160) > 1 || *(v69 + 164) > 1 || *(v69 + 168) > 1 || *(v69 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v113) = 0;
        LODWORD(v112) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Source exiting static. Headset don't care. Case 1-3 and 1-4.", &v113, v112);
        v71 = v70;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v70);
        if (v71 != buf)
        {
          free(v71);
        }
      }

      v72 = *(*(a1 + 32) + 240);
      if (*(v72 + 512) > 0.0)
      {
        sub_19B6A80D8((v72 + 512), &stru_1F0E3D7A0);
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v73 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v73, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source exiting static. Headset don't care. Case 2-3 and 2-4.", buf, 2u);
      }

      v74 = sub_19B420058();
      if (*(v74 + 160) > 1 || *(v74 + 164) > 1 || *(v74 + 168) > 1 || *(v74 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v113) = 0;
        LODWORD(v112) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Source exiting static. Headset don't care. Case 2-3 and 2-4.", &v113, v112);
        v76 = v75;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v75);
        if (v76 != buf)
        {
          free(v76);
        }
      }

      v77 = *(*(a1 + 32) + 240);
      if (*(v77 + 528) > 0.0)
      {
        sub_19B6A80D8((v77 + 528), &stru_1F0E3D7A0);
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v78 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v78, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source exiting static. Headset don't care. Case 3-3 and 3-4.", buf, 2u);
      }

      v79 = sub_19B420058();
      if (*(v79 + 160) > 1 || *(v79 + 164) > 1 || *(v79 + 168) > 1 || *(v79 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v113) = 0;
        LODWORD(v112) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Source exiting static. Headset don't care. Case 3-3 and 3-4.", &v113, v112);
        v81 = v80;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v80);
        if (v81 != buf)
        {
          free(v81);
        }
      }

      v21 = *(a1 + 32);
      v82 = *(v21 + 240);
      if (*(v82 + 544) > 0.0)
      {
        sub_19B6A80D8((v82 + 544), &stru_1F0E3D7A0);
        v21 = *(a1 + 32);
      }
    }

    v25 = *(v21 + 264);
    if (v25 != 4 && v25 != 41 && (v11 == 41 || v11 == 4))
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v26 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source entering walking.", buf, 2u);
      }

      v27 = sub_19B420058();
      if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v113) = 0;
        LODWORD(v112) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Source entering walking.", &v113, v112);
        v29 = v28;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v28);
        if (v29 != buf)
        {
          free(v29);
        }
      }

      sub_19B6A7EE8((*(*(a1 + 32) + 240) + 560), @"srcActivityWalking");
      v21 = *(a1 + 32);
      if (*(v21 + 268) == 4)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v30 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source entered walking. Headset is already walking. Case 4-1.", buf, 2u);
        }

        v31 = sub_19B420058();
        if (*(v31 + 160) > 1 || *(v31 + 164) > 1 || *(v31 + 168) > 1 || *(v31 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          LOWORD(v113) = 0;
          LODWORD(v112) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Source entered walking. Headset is already walking. Case 4-1.", &v113, v112);
          v33 = v32;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v32);
          if (v33 != buf)
          {
            free(v33);
          }
        }

        sub_19B6A7EE8((*(*(a1 + 32) + 240) + 576), @"srcActivityWalkingWhenHeadsetActivityWalking");
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v34 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v34, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source entered walking. Headset is already walking. Case 7-1.", buf, 2u);
        }

        v35 = sub_19B420058();
        if (*(v35 + 160) > 1 || *(v35 + 164) > 1 || *(v35 + 168) > 1 || *(v35 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          LOWORD(v113) = 0;
          LODWORD(v112) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Source entered walking. Headset is already walking. Case 7-1.", &v113, v112);
          v37 = v36;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v36);
          if (v37 != buf)
          {
            free(v37);
          }
        }

        sub_19B6A7EE8((*(*(a1 + 32) + 240) + 624), @"headsetActivityWalkingWhenSrcActivityWalking");
        v21 = *(a1 + 32);
      }
    }

    v38 = *(v21 + 264);
    if ((v38 == 41 || v38 == 4) && v11 != 4 && v11 != 41)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v39 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v39, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source exiting walking.", buf, 2u);
      }

      v40 = sub_19B420058();
      if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v113) = 0;
        LODWORD(v112) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Source exiting walking.", &v113, v112);
        v42 = v41;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v41);
        if (v42 != buf)
        {
          free(v42);
        }
      }

      v43 = *(*(a1 + 32) + 240);
      if (*(v43 + 560) > 0.0)
      {
        sub_19B6A80D8((v43 + 560), &stru_1F0E3D7A0);
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v44 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v44, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source exiting walking. Headset don't care. Case 4-3 and 4-4.", buf, 2u);
      }

      v45 = sub_19B420058();
      if (*(v45 + 160) > 1 || *(v45 + 164) > 1 || *(v45 + 168) > 1 || *(v45 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v113) = 0;
        LODWORD(v112) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Source exiting walking. Headset don't care. Case 4-3 and 4-4.", &v113, v112);
        v47 = v46;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v46);
        if (v47 != buf)
        {
          free(v47);
        }
      }

      v48 = *(*(a1 + 32) + 240);
      if (*(v48 + 576) > 0.0)
      {
        sub_19B6A80D8((v48 + 576), &stru_1F0E3D7A0);
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v49 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v49, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source exiting walking. Headset don't care. Case 7-3 and 7-4.", buf, 2u);
      }

      v50 = sub_19B420058();
      if (*(v50 + 160) > 1 || *(v50 + 164) > 1 || *(v50 + 168) > 1 || *(v50 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v113) = 0;
        LODWORD(v112) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Source exiting walking. Headset don't care. Case 7-3 and 7-4.", &v113, v112);
        v52 = v51;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v51);
        if (v52 != buf)
        {
          free(v52);
        }
      }

      v21 = *(a1 + 32);
      v53 = *(v21 + 240);
      if (*(v53 + 624) > 0.0)
      {
        sub_19B6A80D8((v53 + 624), &stru_1F0E3D7A0);
        v21 = *(a1 + 32);
      }
    }

    v54 = *(v21 + 264);
    if (v54 > 51)
    {
      if (v54 == 52 || v54 == 56)
      {
        goto LABEL_215;
      }
    }

    else
    {
      if (!v54)
      {
        goto LABEL_119;
      }

      if (v54 == 5)
      {
        goto LABEL_215;
      }
    }

    if ((v54 & 0xFFFFFFFE) == 0xA)
    {
      goto LABEL_215;
    }

LABEL_119:
    if (v11 > 51)
    {
      if (v11 != 52 && v11 != 56)
      {
        goto LABEL_212;
      }
    }

    else
    {
      if (!v11)
      {
        goto LABEL_215;
      }

      if (v11 != 5)
      {
LABEL_212:
        if ((v11 & 0xFFFFFFFE) != 0xA)
        {
          goto LABEL_215;
        }
      }
    }

    sub_19B6A7EE8((*(v21 + 240) + 48), @"vehicularActivityStateDuration");
    v21 = *(a1 + 32);
    if ((*(*(v21 + 8) + 16080) & 1) == 0)
    {
      sub_19B6A7EE8((*(v21 + 240) + 80), @"inVehicle2IMUDuration");
      v21 = *(a1 + 32);
    }

LABEL_215:
    v83 = *(v21 + 264);
    if (v83 > 51)
    {
      if (v83 == 52 || v83 == 56)
      {
        goto LABEL_222;
      }
    }

    else
    {
      if (!v83)
      {
        goto LABEL_233;
      }

      if (v83 == 5)
      {
LABEL_222:
        if (v11 > 51)
        {
          if (v11 == 52 || v11 == 56)
          {
            goto LABEL_233;
          }
        }

        else
        {
          if (!v11)
          {
LABEL_229:
            sub_19B6A80D8((*(v21 + 240) + 48), @"vehicularActivityStateDuration");
            v21 = *(a1 + 32);
            v84 = *(v21 + 240);
            if (*(v84 + 80) > 0.0)
            {
              sub_19B6A80D8((v84 + 80), &stru_1F0E3D7A0);
              v21 = *(a1 + 32);
              v84 = *(v21 + 240);
            }

            v86 = *(v84 + 160);
            v85 = (v84 + 160);
            if (v86 > 0.0)
            {
              sub_19B6A80D8(v85, &stru_1F0E3D7A0);
              v21 = *(a1 + 32);
            }

            goto LABEL_233;
          }

          if (v11 == 5)
          {
LABEL_233:
            v87 = *(v21 + 264);
            if ((v87 > 0x29 || ((1 << v87) & 0x20000000110) == 0) && v11 <= 0x29 && ((1 << v11) & 0x20000000110) != 0)
            {
              sub_19B6A7EE8((*(v21 + 240) + 64), @"pedestrianActivityStateDuration");
              v21 = *(a1 + 32);
              if ((*(*(v21 + 8) + 16080) & 1) == 0)
              {
                sub_19B6A7EE8((*(v21 + 240) + 96), @"srcPedestrian2IMUDuration");
                v21 = *(a1 + 32);
              }

              v90 = *(v21 + 268);
              if (v90 <= 0x29 && ((1 << v90) & 0x20000000110) != 0)
              {
                if (qword_1EAFE2998 != -1)
                {
                  dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                }

                v91 = off_1EAFE29A0;
                if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(&dword_19B41C000, v91, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source entered pedestrian. Headset is already pedestrian. Case 5-1.", buf, 2u);
                }

                v92 = sub_19B420058();
                if (*(v92 + 160) > 1 || *(v92 + 164) > 1 || *(v92 + 168) > 1 || *(v92 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE2998 != -1)
                  {
                    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                  }

                  LOWORD(v113) = 0;
                  LODWORD(v112) = 2;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Source entered pedestrian. Headset is already pedestrian. Case 5-1.", &v113, v112);
                  v94 = v93;
                  sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v93);
                  if (v94 != buf)
                  {
                    free(v94);
                  }
                }

                sub_19B6A7EE8((*(*(a1 + 32) + 240) + 592), @"srcActivityPedestrianWhenHeadsetActivityPedestrian");
                if (qword_1EAFE2998 != -1)
                {
                  dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                }

                v95 = off_1EAFE29A0;
                if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(&dword_19B41C000, v95, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source entered pedestrian. Headset is already pedestrian. Case 6-1.", buf, 2u);
                }

                v96 = sub_19B420058();
                if (*(v96 + 160) > 1 || *(v96 + 164) > 1 || *(v96 + 168) > 1 || *(v96 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE2998 != -1)
                  {
                    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                  }

                  LOWORD(v113) = 0;
                  LODWORD(v112) = 2;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Source entered pedestrian. Headset is already pedestrian. Case 6-1.", &v113, v112);
                  v98 = v97;
                  sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v97);
                  if (v98 != buf)
                  {
                    free(v98);
                  }
                }

                sub_19B6A7EE8((*(*(a1 + 32) + 240) + 608), @"headsetActivityPedestrianWhenSessionSrcActivityPedestrian");
                v21 = *(a1 + 32);
              }
            }

            v88 = *(v21 + 264);
            if (v88 <= 0x29 && ((1 << v88) & 0x20000000110) != 0 && (v11 > 0x29 || ((1 << v11) & 0x20000000110) == 0))
            {
              sub_19B6A80D8((*(v21 + 240) + 64), @"pedestrianActivityStateDuration");
              v99 = *(*(a1 + 32) + 240);
              if (*(v99 + 96) > 0.0)
              {
                sub_19B6A80D8((v99 + 96), &stru_1F0E3D7A0);
                v99 = *(*(a1 + 32) + 240);
              }

              v101 = *(v99 + 176);
              v100 = (v99 + 176);
              if (v101 > 0.0)
              {
                sub_19B6A80D8(v100, &stru_1F0E3D7A0);
              }

              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
              }

              v102 = off_1EAFE29A0;
              if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(&dword_19B41C000, v102, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source exiting pedestrian. Headset don't care. Case 5-3 and 5-4.", buf, 2u);
              }

              v103 = sub_19B420058();
              if (*(v103 + 160) > 1 || *(v103 + 164) > 1 || *(v103 + 168) > 1 || *(v103 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE2998 != -1)
                {
                  dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                }

                LOWORD(v113) = 0;
                LODWORD(v112) = 2;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Source exiting pedestrian. Headset don't care. Case 5-3 and 5-4.", &v113, v112);
                v105 = v104;
                sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v104);
                if (v105 != buf)
                {
                  free(v105);
                }
              }

              v106 = *(*(a1 + 32) + 240);
              if (*(v106 + 592) > 0.0)
              {
                sub_19B6A80D8((v106 + 592), &stru_1F0E3D7A0);
              }

              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
              }

              v107 = off_1EAFE29A0;
              if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(&dword_19B41C000, v107, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Source exiting pedestrian. Headset don't care. Case 6-3 and 6-4.", buf, 2u);
              }

              v108 = sub_19B420058();
              if (*(v108 + 160) > 1 || *(v108 + 164) > 1 || *(v108 + 168) > 1 || *(v108 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE2998 != -1)
                {
                  dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                }

                LOWORD(v113) = 0;
                LODWORD(v112) = 2;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Source exiting pedestrian. Headset don't care. Case 6-3 and 6-4.", &v113, v112);
                v110 = v109;
                sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v109);
                if (v110 != buf)
                {
                  free(v110);
                }
              }

              v21 = *(a1 + 32);
              v111 = *(v21 + 240);
              if (*(v111 + 608) > 0.0)
              {
                sub_19B6A80D8((v111 + 608), &stru_1F0E3D7A0);
                v21 = *(a1 + 32);
              }
            }

            *(v21 + 264) = v11;
            return objc_sync_exit(v19);
          }
        }

        if ((v11 & 0xFFFFFFFE) != 0xA)
        {
          goto LABEL_229;
        }

        goto LABEL_233;
      }
    }

    if ((v83 & 0xFFFFFFFE) != 0xA)
    {
      goto LABEL_233;
    }

    goto LABEL_222;
  }

  return objc_sync_exit(v19);
}

void sub_19B64048C(uint64_t a1, const char *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v4 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = a3;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_ERROR, "[CMMediaSession][HeadsetActivity] Status encountered an error: %{public}@", buf, 0xCu);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v14 = 138543362;
      v15 = a3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMMediaSession][HeadsetActivity] Status encountered an error: %{public}@", &v14, 12);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  else
  {
    v8 = *(a1 + 32);
    if (a2 == 1)
    {
      v9 = *(v8 + 608);
      v10 = *(v8 + 616);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_19B64070C;
      v13[3] = &unk_1E7533A40;
      v13[4] = v8;
      objc_msgSend_startActivityUpdatesToQueue_withHandler_(v9, 1, v10, v13);
    }

    else
    {
      v11 = *(v8 + 616);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_19B642FB0;
      v12[3] = &unk_1E7532988;
      v12[4] = v8;
      objc_msgSend_addOperationWithBlock_(v11, a2, v12);
    }
  }
}

void sub_19B64070C(uint64_t a1, void *a2, const char *a3)
{
  v145 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v4 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v142 = a3;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_ERROR, "[CMMediaSession][HeadsetActivity] Activity encountered an error: %{public}@", buf, 0xCu);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v137 = 138543362;
      v138 = a3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMMediaSession][HeadsetActivity] Activity encountered an error: %{public}@", &v137, 12);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v6);
LABEL_12:
      if (v7 != buf)
      {
        free(v7);
      }

      return;
    }

    return;
  }

  if (a2)
  {
    v9 = *objc_msgSend_motionActivity(a2, a2, 0);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v10 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      v11 = CLMotionActivity::activityTypeToString(*(*(a1 + 32) + 268));
      *buf = 136315394;
      v142 = v11;
      v143 = 2080;
      v144 = CLMotionActivity::activityTypeToString(v9);
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_INFO, "[CMMediaSession][HeadsetActivity] Previous Headphone Activity: %s, Current headphone activity: %s", buf, 0x16u);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v13 = off_1EAFE29A0;
      v14 = CLMotionActivity::activityTypeToString(*(*(a1 + 32) + 268));
      v137 = 136315394;
      v138 = v14;
      v139 = 2080;
      v140 = CLMotionActivity::activityTypeToString(v9);
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v13, 1, "[CMMediaSession][HeadsetActivity] Previous Headphone Activity: %s, Current headphone activity: %s", &v137, 22);
      v16 = v15;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    v17 = *(a1 + 32);
    objc_sync_enter(v17);
    v18 = *(a1 + 32);
    v19 = *(v18 + 240);
    if (!v19)
    {
      goto LABEL_281;
    }

    v20 = *(v18 + 268);
    if (v20 == 3 || v9 != 3)
    {
      if (v20 == 3 && v9 != 3)
      {
        sub_19B6A80D8((v19 + 432), @"headsetActivityOtherDuration");
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v33 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset other moving stopped.", buf, 2u);
        }

        v34 = sub_19B420058();
        if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          LOWORD(v137) = 0;
          LODWORD(v136) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Headset other moving stopped.", &v137, v136);
          v36 = v35;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v35);
          if (v36 != buf)
          {
            free(v36);
          }
        }

        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v37 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v37, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset exiting other moving. Source don't care. Case 2-7 and 2-8.", buf, 2u);
        }

        v38 = sub_19B420058();
        if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          LOWORD(v137) = 0;
          LODWORD(v136) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Headset exiting other moving. Source don't care. Case 2-7 and 2-8.", &v137, v136);
          v40 = v39;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v39);
          if (v40 != buf)
          {
            free(v40);
          }
        }

        v18 = *(a1 + 32);
        v41 = *(v18 + 240);
        if (*(v41 + 528) > 0.0)
        {
          sub_19B6A80D8((v41 + 528), &stru_1F0E3D7A0);
          v18 = *(a1 + 32);
        }
      }

      if (*(v18 + 268) != 4 && v9 == 4)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v42 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v42, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset walking started.", buf, 2u);
        }

        v43 = sub_19B420058();
        if (*(v43 + 160) > 1 || *(v43 + 164) > 1 || *(v43 + 168) > 1 || *(v43 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          LOWORD(v137) = 0;
          LODWORD(v136) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Headset walking started.", &v137, v136);
          v45 = v44;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v44);
          if (v45 != buf)
          {
            free(v45);
          }
        }

        sub_19B6A7EE8((*(*(a1 + 32) + 240) + 448), @"headsetActivityWalkingDuration");
        v46 = *(*(a1 + 32) + 268);
        goto LABEL_140;
      }
    }

    else
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v21 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headphone other moving started.", buf, 2u);
      }

      v22 = sub_19B420058();
      if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v137) = 0;
        LODWORD(v136) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Headphone other moving started.", &v137, v136);
        v24 = v23;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v23);
        if (v24 != buf)
        {
          free(v24);
        }
      }

      sub_19B6A7EE8((*(*(a1 + 32) + 240) + 432), @"headsetActivityOtherDuration");
      v18 = *(a1 + 32);
      v25 = *(v18 + 264);
      if (v25 <= 0xB && ((1 << v25) & 0xC06) != 0)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v26 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset entered other moving. Source already static. Case 2-5.", buf, 2u);
        }

        v27 = sub_19B420058();
        if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          LOWORD(v137) = 0;
          LODWORD(v136) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Headset entered other moving. Source already static. Case 2-5.", &v137, v136);
          v29 = v28;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v28);
          if (v29 != buf)
          {
            free(v29);
          }
        }

        sub_19B6A7EE8((*(*(a1 + 32) + 240) + 528), @"srcActivityStationaryAndHeadsetActivityOtherMovingDuration");
        v18 = *(a1 + 32);
      }
    }

    v46 = *(v18 + 268);
    if (v46 == 4 && v9 != 4)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v47 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v47, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset walking stopped.", buf, 2u);
      }

      v48 = sub_19B420058();
      if (*(v48 + 160) > 1 || *(v48 + 164) > 1 || *(v48 + 168) > 1 || *(v48 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v137) = 0;
        LODWORD(v136) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Headset walking stopped.", &v137, v136);
        v50 = v49;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v49);
        if (v50 != buf)
        {
          free(v50);
        }
      }

      sub_19B6A80D8((*(*(a1 + 32) + 240) + 448), @"headsetActivityWalkingDuration");
      v46 = *(*(a1 + 32) + 268);
    }

    if (v46 != 8 && v9 == 8)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v51 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v51, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset running started.", buf, 2u);
      }

      v52 = sub_19B420058();
      if (*(v52 + 160) > 1 || *(v52 + 164) > 1 || *(v52 + 168) > 1 || *(v52 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v137) = 0;
        LODWORD(v136) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Headset running started.", &v137, v136);
        v54 = v53;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v53);
        if (v54 != buf)
        {
          free(v54);
        }
      }

      sub_19B6A7EE8((*(*(a1 + 32) + 240) + 464), @"headsetActivityRunningDuration");
      v46 = *(*(a1 + 32) + 268);
      goto LABEL_184;
    }

LABEL_140:
    if (v46 == 8 && v9 != 8)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v55 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v55, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset running stopped.", buf, 2u);
      }

      v56 = sub_19B420058();
      if (*(v56 + 160) > 1 || *(v56 + 164) > 1 || *(v56 + 168) > 1 || *(v56 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v137) = 0;
        LODWORD(v136) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Headset running stopped.", &v137, v136);
        v58 = v57;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v57);
        if (v58 != buf)
        {
          free(v58);
        }
      }

      sub_19B6A80D8((*(*(a1 + 32) + 240) + 464), @"headsetActivityRunningDuration");
      v46 = *(*(a1 + 32) + 268);
    }

    if (v46 != 2 && v9 == 2)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v59 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v59, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset static started.", buf, 2u);
      }

      v60 = sub_19B420058();
      if (*(v60 + 160) > 1 || *(v60 + 164) > 1 || *(v60 + 168) > 1 || *(v60 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v137) = 0;
        LODWORD(v136) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Headset static started.", &v137, v136);
        v62 = v61;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v61);
        if (v62 != buf)
        {
          free(v62);
        }
      }

      sub_19B6A7EE8((*(*(a1 + 32) + 240) + 480), @"headsetActivityStationaryDuration");
      v63 = *(*(a1 + 32) + 264);
      if (v63 <= 0xB && ((1 << v63) & 0xC06) != 0)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v64 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v64, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset entered static. Source is already static. Case 3-5.", buf, 2u);
        }

        v65 = sub_19B420058();
        if (*(v65 + 160) > 1 || *(v65 + 164) > 1 || *(v65 + 168) > 1 || *(v65 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          LOWORD(v137) = 0;
          LODWORD(v136) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Headset entered static. Source is already static. Case 3-5.", &v137, v136);
          v67 = v66;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v66);
          if (v67 != buf)
          {
            free(v67);
          }
        }

        sub_19B6A7EE8((*(*(a1 + 32) + 240) + 544), @"srcActivityStationaryAndHeadsetActivityStationaryDuration");
      }

      goto LABEL_212;
    }

LABEL_184:
    if (v46 == 2 && v9 != 2)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v68 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v68, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset static stopped.", buf, 2u);
      }

      v69 = sub_19B420058();
      if (*(v69 + 160) > 1 || *(v69 + 164) > 1 || *(v69 + 168) > 1 || *(v69 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v137) = 0;
        LODWORD(v136) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Headset static stopped.", &v137, v136);
        v71 = v70;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v70);
        if (v71 != buf)
        {
          free(v71);
        }
      }

      sub_19B6A80D8((*(*(a1 + 32) + 240) + 480), @"headsetActivityStationaryDuration");
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v72 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v72, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset exited static. Source is don't care. Case 3-7 and 3-8.", buf, 2u);
      }

      v73 = sub_19B420058();
      if (*(v73 + 160) > 1 || *(v73 + 164) > 1 || *(v73 + 168) > 1 || *(v73 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v137) = 0;
        LODWORD(v136) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Headset exited static. Source is don't care. Case 3-7 and 3-8.", &v137, v136);
        v75 = v74;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v74);
        if (v75 != buf)
        {
          free(v75);
        }
      }

      v76 = *(*(a1 + 32) + 240);
      if (*(v76 + 544) > 0.0)
      {
        sub_19B6A80D8((v76 + 544), &stru_1F0E3D7A0);
      }
    }

LABEL_212:
    v77 = *(a1 + 32);
    v78 = *(v77 + 268);
    if ((v78 > 0x29 || ((1 << v78) & 0x20000000110) == 0) && v9 <= 0x29 && ((1 << v9) & 0x20000000110) != 0)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v100 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v100, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset pedestrian started.", buf, 2u);
      }

      v101 = sub_19B420058();
      if (*(v101 + 160) > 1 || *(v101 + 164) > 1 || *(v101 + 168) > 1 || *(v101 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v137) = 0;
        LODWORD(v136) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Headset pedestrian started.", &v137, v136);
        v103 = v102;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v102);
        if (v103 != buf)
        {
          free(v103);
        }
      }

      sub_19B6A7EE8((*(*(a1 + 32) + 240) + 496), @"headsetActivityPedestrianDuration");
      v77 = *(a1 + 32);
      v104 = *(v77 + 264);
      if (v104 <= 0xB && ((1 << v104) & 0xC06) != 0)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v105 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v105, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset entered ped. Source is already static. Case 1-5.", buf, 2u);
        }

        v106 = sub_19B420058();
        if (*(v106 + 160) > 1 || *(v106 + 164) > 1 || *(v106 + 168) > 1 || *(v106 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          LOWORD(v137) = 0;
          LODWORD(v136) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Headset entered ped. Source is already static. Case 1-5.", &v137, v136);
          v108 = v107;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v107);
          if (v108 != buf)
          {
            free(v108);
          }
        }

        sub_19B6A7EE8((*(*(a1 + 32) + 240) + 512), @"srcActivityStationaryAndHeadsetActivityPedestrianDuration");
        v77 = *(a1 + 32);
        v104 = *(v77 + 264);
      }

      if (v104 <= 0x29 && ((1 << v104) & 0x20000000110) != 0)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v109 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v109, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset entered pedestrian. Source is already pedestrian. Case 5-5.", buf, 2u);
        }

        v110 = sub_19B420058();
        if (*(v110 + 160) > 1 || *(v110 + 164) > 1 || *(v110 + 168) > 1 || *(v110 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          LOWORD(v137) = 0;
          LODWORD(v136) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Headset entered pedestrian. Source is already pedestrian. Case 5-5.", &v137, v136);
          v112 = v111;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v111);
          if (v112 != buf)
          {
            free(v112);
          }
        }

        sub_19B6A7EE8((*(*(a1 + 32) + 240) + 592), @"srcActivityPedestrianWhenHeadsetActivityPedestrian");
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v113 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v113, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset entered pedestrian. Source is already pedestrian. Case 6-5.", buf, 2u);
        }

        v114 = sub_19B420058();
        if (*(v114 + 160) > 1 || *(v114 + 164) > 1 || *(v114 + 168) > 1 || *(v114 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          LOWORD(v137) = 0;
          LODWORD(v136) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Headset entered pedestrian. Source is already pedestrian. Case 6-5.", &v137, v136);
          v116 = v115;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v115);
          if (v116 != buf)
          {
            free(v116);
          }
        }

        sub_19B6A7EE8((*(*(a1 + 32) + 240) + 608), @"headsetActivityPedestrianWhenSessionSrcActivityPedestrian");
        v77 = *(a1 + 32);
      }
    }

    v79 = *(v77 + 268);
    if (v79 <= 0x29 && ((1 << v79) & 0x20000000110) != 0 && (v9 > 0x29 || ((1 << v9) & 0x20000000110) == 0))
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v117 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v117, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset pedestrian stopped.", buf, 2u);
      }

      v118 = sub_19B420058();
      if (*(v118 + 160) > 1 || *(v118 + 164) > 1 || *(v118 + 168) > 1 || *(v118 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v137) = 0;
        LODWORD(v136) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Headset pedestrian stopped.", &v137, v136);
        v120 = v119;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v119);
        if (v120 != buf)
        {
          free(v120);
        }
      }

      sub_19B6A80D8((*(*(a1 + 32) + 240) + 496), @"headsetActivityPedestrianDuration");
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v121 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v121, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset exiting pedestrian. Source is don't care. Case 1-7 and 1-8.", buf, 2u);
      }

      v122 = sub_19B420058();
      if (*(v122 + 160) > 1 || *(v122 + 164) > 1 || *(v122 + 168) > 1 || *(v122 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v137) = 0;
        LODWORD(v136) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Headset exiting pedestrian. Source is don't care. Case 1-7 and 1-8.", &v137, v136);
        v124 = v123;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v123);
        if (v124 != buf)
        {
          free(v124);
        }
      }

      v125 = *(*(a1 + 32) + 240);
      if (*(v125 + 512) > 0.0)
      {
        sub_19B6A80D8((v125 + 512), &stru_1F0E3D7A0);
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v126 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v126, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset exiting pedestrian. Source is don't care. Case 5-7 and 5-8.", buf, 2u);
      }

      v127 = sub_19B420058();
      if (*(v127 + 160) > 1 || *(v127 + 164) > 1 || *(v127 + 168) > 1 || *(v127 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v137) = 0;
        LODWORD(v136) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Headset exiting pedestrian. Source is don't care. Case 5-7 and 5-8.", &v137, v136);
        v129 = v128;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v128);
        if (v129 != buf)
        {
          free(v129);
        }
      }

      v130 = *(*(a1 + 32) + 240);
      if (*(v130 + 592) > 0.0)
      {
        sub_19B6A80D8((v130 + 592), &stru_1F0E3D7A0);
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v131 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v131, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset exiting pedestrian. Source is don't care. Case 6-7 and 6-8.", buf, 2u);
      }

      v132 = sub_19B420058();
      if (*(v132 + 160) > 1 || *(v132 + 164) > 1 || *(v132 + 168) > 1 || *(v132 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v137) = 0;
        LODWORD(v136) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Headset exiting pedestrian. Source is don't care. Case 6-7 and 6-8.", &v137, v136);
        v134 = v133;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v133);
        if (v134 != buf)
        {
          free(v134);
        }
      }

      v77 = *(a1 + 32);
      v135 = *(v77 + 240);
      if (*(v135 + 608) > 0.0)
      {
        sub_19B6A80D8((v135 + 608), &stru_1F0E3D7A0);
        v77 = *(a1 + 32);
      }
    }

    v80 = *(v77 + 268);
    if (v80 != 4 && v80 != 41 && (v9 == 41 || v9 == 4))
    {
      v81 = *(v77 + 264);
      if (v81 == 41 || v81 == 4)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v82 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v82, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset entered walking. Source is already walking. Case 4-5.", buf, 2u);
        }

        v83 = sub_19B420058();
        if (*(v83 + 160) > 1 || *(v83 + 164) > 1 || *(v83 + 168) > 1 || *(v83 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          LOWORD(v137) = 0;
          LODWORD(v136) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Headset entered walking. Source is already walking. Case 4-5.", &v137, v136);
          v85 = v84;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v84);
          if (v85 != buf)
          {
            free(v85);
          }
        }

        sub_19B6A7EE8((*(*(a1 + 32) + 240) + 576), @"srcActivityWalkingWhenHeadsetActivityWalking");
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v86 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v86, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset entered walking. Source is already walking. Case 7-5.", buf, 2u);
        }

        v87 = sub_19B420058();
        if (*(v87 + 160) > 1 || *(v87 + 164) > 1 || *(v87 + 168) > 1 || *(v87 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          LOWORD(v137) = 0;
          LODWORD(v136) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Headset entered walking. Source is already walking. Case 7-5.", &v137, v136);
          v89 = v88;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v88);
          if (v89 != buf)
          {
            free(v89);
          }
        }

        sub_19B6A7EE8((*(*(a1 + 32) + 240) + 624), @"headsetActivityWalkingWhenSrcActivityWalking");
        v80 = *(*(a1 + 32) + 268);
      }
    }

    if ((v80 == 41 || v80 == 4) && v9 != 4 && v9 != 41)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v90 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v90, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset exiting walking. Source is don't care. Case 4-7 and 4-8.", buf, 2u);
      }

      v91 = sub_19B420058();
      if (*(v91 + 160) > 1 || *(v91 + 164) > 1 || *(v91 + 168) > 1 || *(v91 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v137) = 0;
        LODWORD(v136) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Headset exiting walking. Source is don't care. Case 4-7 and 4-8.", &v137, v136);
        v93 = v92;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v92);
        if (v93 != buf)
        {
          free(v93);
        }
      }

      v94 = *(*(a1 + 32) + 240);
      if (*(v94 + 576) > 0.0)
      {
        sub_19B6A80D8((v94 + 576), &stru_1F0E3D7A0);
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v95 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v95, OS_LOG_TYPE_DEBUG, "[CMMediaSession][HeadsetActivity] Headset exiting walking. Source is don't care. Case 7-7 and 7-8.", buf, 2u);
      }

      v96 = sub_19B420058();
      if (*(v96 + 160) > 1 || *(v96 + 164) > 1 || *(v96 + 168) > 1 || *(v96 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v137) = 0;
        LODWORD(v136) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMMediaSession][HeadsetActivity] Headset exiting walking. Source is don't care. Case 7-7 and 7-8.", &v137, v136);
        v98 = v97;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v97);
        if (v98 != buf)
        {
          free(v98);
        }
      }

      v99 = *(*(a1 + 32) + 240);
      if (*(v99 + 624) > 0.0)
      {
        sub_19B6A80D8((v99 + 624), &stru_1F0E3D7A0);
      }
    }

LABEL_281:
    objc_sync_exit(v17);
    *(*(a1 + 32) + 268) = v9;
    return;
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v30 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_ERROR, "[CMMediaSession][HeadsetActivity] No activity returned!", buf, 2u);
  }

  v31 = sub_19B420058();
  if ((*(v31 + 160) & 0x80000000) == 0 || (*(v31 + 164) & 0x80000000) == 0 || (*(v31 + 168) & 0x80000000) == 0 || *(v31 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    LOWORD(v137) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[CMMediaSession][HeadsetActivity] No activity returned!", &v137, 2);
    v7 = v32;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v32);
    goto LABEL_12;
  }
}

void sub_19B642FB0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v2 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[CMMediaSession][HeadsetActivity] Device disconnected. Resetting headphone activity type to unknown.", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v6[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession][HeadsetActivity] Device disconnected. Resetting headphone activity type to unknown.", v6, 2);
    v5 = v4;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]_block_invoke", "CoreLocation: %s\n", v4);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  *(*(a1 + 32) + 268) = 0;
}

void sub_19B6431F8(uint64_t a1)
{
  v2 = mach_continuous_time();
  v3 = sub_19B41E070(v2);
  v4 = v3;
  v5 = *(a1 + 32);
  if (*(v5 + 561) == 1)
  {
    sub_19B5E6BD8(*(v5 + 720), v3);
    v5 = *(a1 + 32);
  }

  v6 = *(v5 + 8);
  sub_19B69A71C(v6);
  v7 = *(v6 + 37736);

  sub_19B710554(v7, (v4 * 1000000.0));
}

void *sub_19B6444CC(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[281];
    if (v3)
    {
      v2[282] = v3;
      operator delete(v3);
    }

    v4 = v2[275];
    if (v4)
    {
      v2[276] = v4;
      operator delete(v4);
    }

    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

void sub_19B644550(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2)
  {
    *(a1 + 16) = 0;
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v3 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
  {
    if (a2)
    {
      v4 = "Yes";
    }

    else
    {
      v4 = "No";
    }

    *buf = 136315138;
    v12 = v4;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_INFO, "[RelDM] Resetting UnTimesyncedAuxSampleHelper. Clearing buffer: %s", buf, 0xCu);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    if (a2)
    {
      v6 = "Yes";
    }

    else
    {
      v6 = "No";
    }

    v9 = 136315138;
    v10 = v6;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[RelDM] Resetting UnTimesyncedAuxSampleHelper. Clearing buffer: %s", &v9);
    v8 = v7;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDM::UnTimesyncedAuxSampleHelper::reset(BOOL)", "CoreLocation: %s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }
  }
}

void sub_19B646B34(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend__stopJitterBufferLevelRetryTimer(*(a1 + 32), a2, a3);
  *(*(a1 + 32) + 744) = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 2;
  v4 = *(*(a1 + 32) + 744);
  v5 = dispatch_time(0, 1000000000);
  dispatch_source_set_timer(v4, v5, 0x3B9ACA00uLL, 0x3B9ACA00uLL);
  v6 = *(a1 + 32);
  v7 = *(v6 + 744);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B646C50;
  v8[3] = &unk_1E75338E8;
  v8[4] = v6;
  v8[5] = v9;
  dispatch_source_set_event_handler(v7, v8);
  dispatch_resume(*(*(a1 + 32) + 744));
  _Block_object_dispose(v9, 8);
}

void sub_19B646C50(uint64_t a1, const char *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  objc_msgSend__feedAdaptiveLatencyJitterBufferLevel(*(a1 + 32), a2, a3);
  if (*(*(a1 + 32) + 752) != -1)
  {
LABEL_2:
    objc_msgSend__stopJitterBufferLevelRetryTimer(*(a1 + 32), v4, v5);
    return;
  }

  if (*(*(*(a1 + 40) + 8) + 24) < 1)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v10 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Failed to feed JBL value, using default value for prediction", buf, 2u);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      LOWORD(v14) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Failed to feed JBL value, using default value for prediction", &v14, 2);
      v13 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startJitterBufferLevelRetryTimer]_block_invoke", "CoreLocation: %s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    goto LABEL_2;
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v6 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    v17 = 0x3FF0000000000000;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Failed to feed JBL value, retrying in %{public}.1f sec", buf, 0xCu);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v14 = 134349056;
    v15 = 0x3FF0000000000000;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Failed to feed JBL value, retrying in %{public}.1f sec", &v14, 12);
    v9 = v8;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startJitterBufferLevelRetryTimer]_block_invoke", "CoreLocation: %s\n", v8);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  --*(*(*(a1 + 40) + 8) + 24);
}

uint64_t sub_19B650C48(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  sub_19B6D6344();
  v2 = sub_19B7851B0();
  *(*(a1 + 32) + 752) = sub_19B788BEC(v2);
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v3 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 752);
    *buf = 67240192;
    v32 = v4;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Current JBL: %{public}u", buf, 8u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v6 = *(*(a1 + 32) + 752);
    v30[0] = 67240192;
    v30[1] = v6;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[CMMediaSession] Current JBL: %{public}u", v30, 8);
    v8 = v7;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAdaptiveLatencyJitterBufferLevel]_block_invoke", "CoreLocation: %s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  v9 = mach_continuous_time();
  v10 = sub_19B41E070(v9);
  v11 = v10;
  v12 = *(a1 + 32);
  v13 = *(v12 + 752);
  if (v13 != 0xFFFF)
  {
    v14 = *(v12 + 8);
    if (v14)
    {
      sub_19B6F6664(v14, v13, *(v12 + 754), (v10 * 1000000.0));
      v12 = *(a1 + 32);
    }

    v15 = *(v12 + 240);
    if (v15)
    {
      LOWORD(v10) = *(v12 + 752);
      v16 = *&v10;
      v17 = *(v15 + 1000);
      if (v17 <= v16)
      {
        v17 = v16;
      }

      *(v15 + 1000) = v17;
      v18 = *(v15 + 992);
      if (v18 >= v16)
      {
        v18 = v16;
      }

      *(v15 + 992) = v18;
      *(v15 + 1008) = *(v15 + 1008) + v16;
      ++*(v15 + 1016);
      v19 = a1 + 32;
      sub_19B5C9FEC(*(*(a1 + 32) + 240), *(*(a1 + 32) + 752));
      if (*(*v19 + 752) > *(*v19 + 754))
      {
        v20 = *(*v19 + 240);
        v21 = *(v20 + 2012);
        if (v21 != -1)
        {
          *(v20 + 2012) = v21 + 1;
        }
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v22 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_INFO, "[CMMediaSession] log JBL CA metric", buf, 2u);
      }

      v23 = sub_19B420058();
      if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v30[0]) = 0;
        LODWORD(v29) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMMediaSession] log JBL CA metric", v30, v29);
        v25 = v24;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAdaptiveLatencyJitterBufferLevel]_block_invoke", "CoreLocation: %s\n", v24);
        if (v25 != buf)
        {
          free(v25);
        }
      }
    }
  }

  v26 = *(a1 + 32);
  objc_sync_enter(v26);
  v27 = *(a1 + 32);
  if (*(v27 + 561) == 1)
  {
    sub_19B5E7D28(*(v27 + 720), *(v27 + 752), *(v27 + 754), v11);
  }

  return objc_sync_exit(v26);
}

os_log_t sub_19B651B18()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

float32_t sub_19B651B48(float32x2_t *a1, float32x4_t a2)
{
  v6.i32[0] = sub_19B66BFF4(a1, a2);
  *(v6.i64 + 4) = __PAIR64__(v3, v2);
  v6.i32[3] = v4;
  return sub_19B66C070(&v6);
}

uint64_t sub_19B651B78(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_19B6F5CE0(result);

    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

void sub_19B651BC8(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B651C10(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B651C54(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B651CE4;
  block[3] = &unk_1E7532988;
  block[4] = a1;
  if (qword_1EAFE3B58 != -1)
  {
    dispatch_once(&qword_1EAFE3B58, block);
  }

  return qword_1EAFE3B50;
}

void sub_19B651D7C(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_19B743DA8(a1, a2, a3);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B651DB4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 108))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v8;
  v8[0] = 0;
  v8[1] = 0;
  v9 = a2;
  v3 = (a1 + 104);
  ++*(a1 + 104);
  v10 = (a1 + 104);
  v4 = sub_19B65427C(a1 + 80, (a1 + 104), &unk_19B7BA202, &v10);
  if (v4 + 5 != &v7)
  {
    sub_19B6543B4(v4 + 5, v7, v8);
  }

  v5 = v8[0];
  v4[8] = v9;
  v2 = *v3;
  sub_19B654634(&v7, v5);
  return v2;
}

void sub_19B651E80(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  HIDWORD(v13) = a2;
  if ((*(a1 + 108) & 1) == 0)
  {
    v4 = *(a1 + 88);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = a1 + 80;
    v6 = a1 + 88;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v6 != a1 + 88 && *(v6 + 32) <= a2)
    {
      while (*(v6 + 56))
      {
        *buf = *(*(v6 + 40) + 28);
        (*(*a1 + 112))(a1, a2, buf);
      }

      sub_19B654758(v5, &v13 + 1);
    }

    else
    {
LABEL_9:
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
      }

      v7 = qword_1EAFE2820;
      if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_FAULT))
      {
        v8 = (a1 + 8);
        if (*(a1 + 31) < 0)
        {
          v8 = *v8;
        }

        *buf = 136446466;
        v19 = v8;
        v20 = 1026;
        v21 = a2;
        _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
      }

      v9 = sub_19B420058();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE27F8 != -1)
        {
          dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
        }

        v10 = (a1 + 8);
        if (*(a1 + 31) < 0)
        {
          v10 = *v10;
        }

        v14 = 136446466;
        v15 = v10;
        v16 = 1026;
        v17 = a2;
        LODWORD(v13) = 18;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2820, 17, "%{public}s; client %{public}d does not exist", &v14, v13);
        v12 = v11;
        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLNotifier<CLGyroCalibrationDatabase_Type::Notification, CLGyroCalibrationDatabase_Type::NotificationData, char, char>::removeClient(int) [Notification_T = CLGyroCalibrationDatabase_Type::Notification, NotificationData_T = CLGyroCalibrationDatabase_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v11);
        if (v12 != buf)
        {
          free(v12);
        }
      }
    }
  }
}

uint64_t sub_19B652124(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_19B65487C(a4, a2);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

uint64_t sub_19B6522B4(uint64_t a1)
{
  result = *(a1 + 48);
  if (!result)
  {
    v3 = objc_alloc_init(CLNotifierServiceAdapter);
    *(a1 + 48) = v3;
    objc_msgSend_setValid_(v3, v4, 1);
    objc_msgSend_setAdaptedNotifier_(*(a1 + 48), v5, a1);
    return *(a1 + 48);
  }

  return result;
}

uint64_t sub_19B652330(uint64_t a1, int a2, int *a3, char *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v34 = a2;
  if (*(a1 + 108))
  {
    return 0;
  }

  v6 = *(a1 + 88);
  if (!v6)
  {
    goto LABEL_9;
  }

  v9 = a1 + 88;
  do
  {
    if (*(v6 + 32) >= a2)
    {
      v9 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < a2));
  }

  while (v6);
  if (v9 == a1 + 88 || *(v9 + 32) > a2)
  {
LABEL_9:
    if (qword_1EAFE27F8 != -1)
    {
      dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
    }

    v10 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_FAULT))
    {
      v11 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v11 = *v11;
      }

      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = v11;
      WORD6(buf[0]) = 1026;
      *(buf + 14) = a2;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
      }

      v13 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v13 = *v13;
      }

      *v35 = 136446466;
      *&v35[4] = v13;
      v36 = 1026;
      v37 = a2;
      LODWORD(v32) = 18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2820, 17, "%{public}s; client %{public}d does not exist", v35, v32);
      v15 = v14;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLGyroCalibrationDatabase_Type::Notification, CLGyroCalibrationDatabase_Type::NotificationData, char, char>::registerForNotification(int, const Notification_T &, const RegistrationInfo_T &) [Notification_T = CLGyroCalibrationDatabase_Type::Notification, NotificationData_T = CLGyroCalibrationDatabase_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    return 0;
  }

  *v35 = v9;
  v17 = *a3;
  v20 = *(v9 + 48);
  v19 = v9 + 48;
  v18 = v20;
  if (!v20)
  {
    goto LABEL_32;
  }

  v21 = v19;
  do
  {
    if (*(v18 + 28) >= v17)
    {
      v21 = v18;
    }

    v18 = *(v18 + 8 * (*(v18 + 28) < v17));
  }

  while (v18);
  if (v21 == v19 || v17 < *(v21 + 28))
  {
LABEL_32:
    v21 = v19;
  }

  v22 = *(a1 + 64);
  if (!v22)
  {
    goto LABEL_40;
  }

  v23 = a1 + 64;
  do
  {
    if (*(v22 + 32) >= v17)
    {
      v23 = v22;
    }

    v22 = *(v22 + 8 * (*(v22 + 32) < v17));
  }

  while (v22);
  if (v23 != a1 + 64 && v17 >= *(v23 + 32))
  {
    v33 = v23;
    v30 = *(v23 + 56);
    v31 = *a4;
    *&buf[0] = &v34;
    *(sub_19B65570C((v23 + 40), &v34, &unk_19B7BA202, buf) + 32) = v31;
    memset(buf, 0, 320);
    if (v21 == v19 && (*(*a1 + 128))(a1, a3, buf))
    {
      sub_19B65538C(buf);
    }

    if (v30)
    {
      goto LABEL_44;
    }
  }

  else
  {
LABEL_40:
    v24 = (a1 + 56);
    v33 = a1 + 64;
    v25 = byte_1EAFE3011;
    HIDWORD(v32) = v17;
    *&buf[0] = &v32 + 4;
    *(sub_19B655538((a1 + 56), &v32 + 1, &unk_19B7BA202, buf) + 80) = v25;
    HIDWORD(v32) = *a3;
    *&buf[0] = &v32 + 4;
    v26 = sub_19B655538((a1 + 56), &v32 + 1, &unk_19B7BA202, buf);
    v27 = v26[9];
    v26[8] = 0;
    v26[9] = 0;
    if (v27)
    {
      sub_19B41FFEC(v27);
    }

    v28 = *a4;
    HIDWORD(v32) = *a3;
    *&buf[0] = &v32 + 4;
    v29 = sub_19B655538(v24, &v32 + 1, &unk_19B7BA202, buf);
    *&buf[0] = &v34;
    *(sub_19B65570C(v29 + 5, &v34, &unk_19B7BA202, buf) + 32) = v28;
  }

  (*(*a1 + 168))(a1, a3);
LABEL_44:
  if (v21 == v19)
  {
    LODWORD(buf[0]) = *a3;
    sub_19B6562C0((*v35 + 40), buf, buf);
  }

  return 1;
}

BOOL sub_19B6527F8(uint64_t a1, int a2, int *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 88);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 88;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v6 != a1 + 88 && *(v6 + 32) <= a2)
  {
    v16 = *(v6 + 48);
    v14 = v6 + 48;
    v15 = v16;
    if (!v16)
    {
      goto LABEL_31;
    }

    v17 = *a3;
    v18 = v14;
    do
    {
      if (*(v15 + 28) >= v17)
      {
        v18 = v15;
      }

      v15 = *(v15 + 8 * (*(v15 + 28) < v17));
    }

    while (v15);
    if (v18 == v14 || v17 < *(v18 + 28))
    {
LABEL_31:
      v18 = v14;
    }

    return v18 != v14;
  }

  else
  {
LABEL_8:
    if (qword_1EAFE27F8 != -1)
    {
      dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
    }

    v7 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_FAULT))
    {
      v8 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v8 = *v8;
      }

      *buf = 136446466;
      v24 = v8;
      v25 = 1026;
      v26 = a2;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
      }

      v10 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v10 = *v10;
      }

      v19 = 136446466;
      v20 = v10;
      v21 = 1026;
      v22 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2820, 17, "%{public}s; client %{public}d does not exist", &v19, 18);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLGyroCalibrationDatabase_Type::Notification, CLGyroCalibrationDatabase_Type::NotificationData, char, char>::clientRegistered(int, const Notification_T &) [Notification_T = CLGyroCalibrationDatabase_Type::Notification, NotificationData_T = CLGyroCalibrationDatabase_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    return 0;
  }
}

uint64_t sub_19B652A84(char *a1, int a2, int *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  HIDWORD(v26) = a2;
  v3 = a1[108];
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 11);
    if (v5)
    {
      v7 = a1 + 88;
      do
      {
        if (*(v5 + 32) >= a2)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 32) < a2));
      }

      while (v5);
      if (v7 != a1 + 88 && *(v7 + 8) <= a2)
      {
        v10 = *(v7 + 6);
        v8 = v7 + 48;
        v9 = v10;
        if (v10)
        {
          v11 = *a3;
          v12 = v8;
          do
          {
            if (*(v9 + 28) >= v11)
            {
              v12 = v9;
            }

            v9 = *(v9 + 8 * (*(v9 + 28) < v11));
          }

          while (v9);
          if (v12 != v8 && v11 >= *(v12 + 7))
          {
            LODWORD(__p[0]) = *a3;
            sub_19B65638C((v8 - 8), __p);
            v13 = *(a1 + 8);
            if (!v13)
            {
              goto LABEL_23;
            }

            v14 = *a3;
            v15 = a1 + 64;
            do
            {
              if (*(v13 + 32) >= v14)
              {
                v15 = v13;
              }

              v13 = *(v13 + 8 * (*(v13 + 32) < v14));
            }

            while (v13);
            if (v15 != a1 + 64 && v14 >= *(v15 + 8))
            {
              sub_19B65638C((v15 + 40), &v26 + 1);
              if (!*(v15 + 7))
              {
                (*(*a1 + 176))(a1, a3);
              }
            }

            else
            {
LABEL_23:
              if (qword_1EAFE27F8 != -1)
              {
                dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
              }

              v16 = qword_1EAFE2820;
              if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_FAULT))
              {
                v17 = a1 + 8;
                if (a1[31] < 0)
                {
                  v17 = *v17;
                }

                (*(*a1 + 160))(__p, a1, a3);
                if (v36 >= 0)
                {
                  v18 = __p;
                }

                else
                {
                  v18 = __p[0];
                }

                *buf = 136446466;
                *&buf[4] = v17;
                v28 = 2082;
                v29 = v18;
                _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_FAULT, "%{public}s; notification %{public}s not found", buf, 0x16u);
                if (v36 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              v19 = sub_19B420058();
              if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1EAFE27F8 != -1)
                {
                  dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
                }

                v20 = a1 + 8;
                if (a1[31] < 0)
                {
                  v20 = *v20;
                }

                v21 = qword_1EAFE2820;
                (*(*a1 + 160))(buf, a1, a3);
                if (v30 >= 0)
                {
                  v22 = buf;
                }

                else
                {
                  v22 = *buf;
                }

                v31 = 136446466;
                v32 = v20;
                v33 = 2082;
                v34 = v22;
                LODWORD(v26) = 22;
                _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B41C000, v21, 17, "%{public}s; notification %{public}s not found", &v31, v26);
                v24 = v23;
                if (v30 < 0)
                {
                  operator delete(*buf);
                }

                sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLGyroCalibrationDatabase_Type::Notification, CLGyroCalibrationDatabase_Type::NotificationData, char, char>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLGyroCalibrationDatabase_Type::Notification, NotificationData_T = CLGyroCalibrationDatabase_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v24);
                if (v24 != __p)
                {
                  free(v24);
                }
              }
            }
          }
        }
      }
    }
  }

  return v3 ^ 1u;
}

void sub_19B652E58(uint64_t a1, int *a2)
{
  v4 = *(a1 + 64);
  v2 = a1 + 64;
  v3 = v4;
  if (v4)
  {
    v5 = *a2;
    v6 = v2;
    do
    {
      if (*(v3 + 32) >= v5)
      {
        v6 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < v5));
    }

    while (v3);
    if (v6 != v2 && v5 >= *(v6 + 32))
    {
      v7 = *(v6 + 72);
      *(v6 + 64) = 0;
      *(v6 + 72) = 0;
      if (v7)
      {
        sub_19B41FFEC(v7);
      }
    }
  }
}

uint64_t sub_19B652EA8(uint64_t a1, int *a2, void *__dst)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = v3;
  do
  {
    if (*(v4 + 32) >= v6)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v6));
  }

  while (v4);
  if (v7 == v3)
  {
    return 0;
  }

  if (v6 < *(v7 + 32))
  {
    return 0;
  }

  v8 = *(v7 + 64);
  if (!v8)
  {
    return 0;
  }

  memcpy(__dst, v8, 0x140uLL);
  return 1;
}

uint64_t sub_19B65300C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x1E69E9840];
  memset(v5, 0, sizeof(v5));
  return (*(*a1 + 152))(a1, a2, v5, a3, a4, 0);
}

void sub_19B6530BC(uint64_t a1, int *a2, const void *a3, int a4, int a5)
{
  v13[6] = *MEMORY[0x1E69E9840];
  if ((*(a1 + 108) & 1) == 0)
  {
    v7 = a1 + 64;
    v6 = *(a1 + 64);
    if (!v6)
    {
      goto LABEL_9;
    }

    v8 = *a2;
    v9 = a1 + 64;
    do
    {
      if (*(v6 + 32) >= v8)
      {
        v9 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < v8));
    }

    while (v6);
    if (v9 == v7 || v8 < *(v9 + 32))
    {
LABEL_9:
      v12 = v13;
      memset(v13, 0, 32);
      sub_19B656A70(buf, a2, &v12);
      sub_19B656930(v7 - 8, buf);
    }

    if (a4)
    {
      operator new();
    }

    v10 = *(v9 + 72);
    *(v9 + 64) = 0;
    *(v9 + 72) = 0;
    if (v10)
    {
      sub_19B41FFEC(v10);
    }

    if (*(v9 + 56))
    {
      sub_19B65648C(a3);
    }
  }
}

void sub_19B6535D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19B656DE8(va);
  sub_19B6556D0(v16 - 144);
  _Unwind_Resume(a1);
}

void sub_19B653618(uint64_t a1)
{
  *(&v42[202] + 2) = *MEMORY[0x1E69E9840];
  if (*(a1 + 108) == 1)
  {
    if (qword_1EAFE27F8 != -1)
    {
      dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
    }

    v2 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136315138;
      v40 = v3;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "%s; already shutdown; not listing clients", buf, 0xCu);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
      }

      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      v35 = 136315138;
      v36 = v5;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2820, 2, "%s; already shutdown; not listing clients", &v35);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLNotifier<CLGyroCalibrationDatabase_Type::Notification, CLGyroCalibrationDatabase_Type::NotificationData, char, char>::listClients() [Notification_T = CLGyroCalibrationDatabase_Type::Notification, NotificationData_T = CLGyroCalibrationDatabase_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  else
  {
    if (qword_1EAFE27F8 != -1)
    {
      dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
    }

    v8 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_DEBUG))
    {
      v9 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v9 = *v9;
      }

      v10 = *(a1 + 96);
      *buf = 136315394;
      v40 = v9;
      v41 = 2048;
      v42[0] = v10;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEBUG, "%s; listing clients, num clients: %zu", buf, 0x16u);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
      }

      v12 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v12 = *v12;
      }

      v13 = *(a1 + 96);
      v35 = 136315394;
      v36 = v12;
      v37 = 2048;
      v38[0] = v13;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2820, 2, "%s; listing clients, num clients: %zu", &v35, 22);
      v15 = v14;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLNotifier<CLGyroCalibrationDatabase_Type::Notification, CLGyroCalibrationDatabase_Type::NotificationData, char, char>::listClients() [Notification_T = CLGyroCalibrationDatabase_Type::Notification, NotificationData_T = CLGyroCalibrationDatabase_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    v16 = *(a1 + 80);
    if (v16 != (a1 + 88))
    {
      v17 = (a1 + 8);
      do
      {
        v18 = v16[5];
        if (v18 != v16 + 6)
        {
          do
          {
            if (qword_1EAFE27F8 != -1)
            {
              dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
            }

            v19 = qword_1EAFE2820;
            if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_DEBUG))
            {
              v20 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v20 = *v17;
              }

              v21 = *(v16 + 8);
              v22 = *(v18 + 7);
              *buf = 136315650;
              v40 = v20;
              v41 = 1024;
              LODWORD(v42[0]) = v21;
              WORD2(v42[0]) = 1024;
              *(v42 + 6) = v22;
              _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_DEBUG, "%s; clients, id: %d, notification: %d", buf, 0x18u);
            }

            v23 = sub_19B420058();
            if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE27F8 != -1)
              {
                dispatch_once(&qword_1EAFE27F8, &unk_1F0E292C0);
              }

              v24 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v24 = *v17;
              }

              v25 = *(v16 + 8);
              v26 = *(v18 + 7);
              v35 = 136315650;
              v36 = v24;
              v37 = 1024;
              LODWORD(v38[0]) = v25;
              WORD2(v38[0]) = 1024;
              *(v38 + 6) = v26;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2820, 2, "%s; clients, id: %d, notification: %d", &v35, 24, v34);
              v28 = v27;
              sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLNotifier<CLGyroCalibrationDatabase_Type::Notification, CLGyroCalibrationDatabase_Type::NotificationData, char, char>::listClients() [Notification_T = CLGyroCalibrationDatabase_Type::Notification, NotificationData_T = CLGyroCalibrationDatabase_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v27);
              if (v28 != buf)
              {
                free(v28);
              }
            }

            v29 = v18[1];
            if (v29)
            {
              do
              {
                v30 = v29;
                v29 = *v29;
              }

              while (v29);
            }

            else
            {
              do
              {
                v30 = v18[2];
                v31 = *v30 == v18;
                v18 = v30;
              }

              while (!v31);
            }

            v18 = v30;
          }

          while (v30 != v16 + 6);
        }

        v32 = v16[1];
        if (v32)
        {
          do
          {
            v33 = v32;
            v32 = *v32;
          }

          while (v32);
        }

        else
        {
          do
          {
            v33 = v16[2];
            v31 = *v33 == v16;
            v16 = v33;
          }

          while (!v31);
        }

        v16 = v33;
      }

      while (v33 != (a1 + 88));
    }
  }
}

BOOL sub_19B653C30(uint64_t a1, float *a2, float *a3, __n128 a4, double a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = sub_19B707260(a1, a2, a3);
  if (v6 && (*(*a1 + 216))(a1, v9))
  {
    v8 = 0;
    (*(*a1 + 152))(a1, &v8, v9, 0, 0xFFFFFFFFLL, 0);
  }

  return v6 != 0;
}

BOOL sub_19B653D24(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    return sub_19B707210(a2, v4, v5) != 0;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x17012000000;
  v30 = sub_19B428A7C;
  v31 = nullsub_1;
  v32 = &unk_19B840009;
  v7 = dispatch_semaphore_create(0);
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B656E44;
  block[3] = &unk_1E7533B58;
  block[5] = &v22;
  block[6] = &v27;
  block[4] = v7;
  dispatch_async(global_queue, block);
  v9 = dispatch_time(0, 2000000000);
  v10 = dispatch_semaphore_wait(v7, v9);
  dispatch_release(v7);
  if (v10 || *(v23 + 24) != 1)
  {
    bzero(a2, 0x140uLL);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E3A908);
    }

    v15 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_INFO, "Warning: can't get GyroBiasFit from CLGyroCalibrationDatabaseGetBiasFitAtTemperature()", buf, 2u);
    }

    v16 = sub_19B420058();
    if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E3A908);
      }

      v20 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C818, 1, "Warning: can't get GyroBiasFit from CLGyroCalibrationDatabaseGetBiasFitAtTemperature()", &v20, 2);
      v18 = v17;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLGyroCalibrationDatabaseRemote::getBiasFit(CLMotionTypeGyroBiasFit &)", "CoreLocation: %s\n", v17);
      if (v18 != buf)
      {
        free(v18);
      }
    }

    v6 = 0;
  }

  else
  {
    memcpy(a2, v28 + 6, 0x140uLL);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E3A908);
    }

    v11 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_INFO, "successfully got GyroBiasFit from CLGyroCalibrationDatabaseGetBiasFitAtTemperature()", buf, 2u);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E3A908);
      }

      v20 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C818, 1, "successfully got GyroBiasFit from CLGyroCalibrationDatabaseGetBiasFitAtTemperature()", &v20, 2);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLGyroCalibrationDatabaseRemote::getBiasFit(CLMotionTypeGyroBiasFit &)", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    v6 = 1;
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v22, 8);
  return v6;
}

void sub_19B6541AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(&STACK[0x6D8], 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B654200(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = -1;
  sub_19B707320(&v4, a2, a3);
  return v4;
}

BOOL sub_19B654230(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = 0;
  sub_19B708260(&v4, a2, a3);
  return v4 != 0;
}

uint64_t *sub_19B65427C(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_19B65435C(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_19B4385F8(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_19B6543B4(uint64_t *result, int *a2, int *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_19B654588(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 7) = v9[7];
          sub_19B654518(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_19B654588(v13);
          }

          v10 = *(v9 + 1);
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = *(v9 + 2);
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_19B6545DC(&v12);
  }

  if (a2 != a3)
  {
    sub_19B654688(v5, a2 + 7);
  }

  return result;
}

void sub_19B654504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B6545DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B654518(uint64_t ***a1, uint64_t a2)
{
  v3 = (a1 + 1);
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 28) >= *(v4 + 7))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = (a1 + 1);
  }

LABEL_8:
  sub_19B65435C(a1, v3, v5, a2);
  return a2;
}

void *sub_19B654588(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t *sub_19B6545DC(uint64_t *a1)
{
  sub_19B654634(*a1, a1[2]);
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      a1[1] = v2;
    }

    sub_19B654634(*a1, v2);
  }

  return a1;
}

void sub_19B654634(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_19B654634(a1, *a2);
    sub_19B654634(a1, a2[1]);

    operator delete(a2);
  }
}

os_log_t sub_19B654728()
{
  result = os_log_create("com.apple.locationd.Core", "Notifier");
  qword_1EAFE2820 = result;
  return result;
}

uint64_t sub_19B654758(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_19B6547C8(a1, v4);
  return 1;
}

uint64_t *sub_19B6547C8(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_19B654808(a1, a2);
  sub_19B654634((a2 + 5), a2[6]);
  operator delete(a2);
  return v3;
}

uint64_t *sub_19B654808(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_19B4271C4(v6, a2);
  return v3;
}

uint64_t sub_19B65487C(void *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_19B654918(a1, v3, v4);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_19B654CBC(a1, v6, v7);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_19B654918(void *a1, const char *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_binaryVersion(a1, a2, a3);
  objc_msgSend_sizeOfType(a1, v5, v6);
  if (!v4)
  {
    return sub_19B655098(&v17 + 7, a1, v7);
  }

  if (getenv("_INTERSILO_UNIT_TEST"))
  {
    if (qword_1EAFE2958 != -1)
    {
      dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
    }

    v8 = qword_1EAFE2960;
    if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_ERROR))
    {
      v9 = *(MEMORY[0x1E69E5450] + 8) & 0x7FFFFFFFFFFFFFFFLL;
      *buf = 134218498;
      v20 = v4;
      v21 = 2048;
      v22 = 0;
      v23 = 2080;
      v24 = v9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) != 0 && (*(v10 + 164) & 0x80000000) != 0 && (*(v10 + 168) & 0x80000000) != 0 && !*(v10 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2958 != -1)
    {
      dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
    }

    LODWORD(v18) = 134218498;
    HIDWORD(v18) = v4;
    LODWORD(v17) = 32;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2960, 16, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v18, v17, v18);
  }

  else
  {
    if (qword_1EAFE2958 != -1)
    {
      dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
    }

    v13 = qword_1EAFE2960;
    if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_FAULT))
    {
      v14 = *(MEMORY[0x1E69E5450] + 8) & 0x7FFFFFFFFFFFFFFFLL;
      *buf = 134218498;
      v20 = v4;
      v21 = 2048;
      v22 = 0;
      v23 = 2080;
      v24 = v14;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    v15 = sub_19B420058();
    if ((*(v15 + 160) & 0x80000000) != 0 && (*(v15 + 164) & 0x80000000) != 0 && (*(v15 + 168) & 0x80000000) != 0 && !*(v15 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2958 != -1)
    {
      dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
    }

    LODWORD(v18) = 134218498;
    HIDWORD(v18) = v4;
    LODWORD(v17) = 32;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2960, 17, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v18, v17, v18);
  }

  v16 = v11;
  sub_19B6BB7CC("Generic", 1, 0, 0, "const Object_T *safeDecoder(CLCppContainer *, Callback) [Object_T = char, Callback = (lambda at /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLCppContainer.h:241:46)]", "CoreLocation: %s\n", v11);
  if (v16 != buf)
  {
    free(v16);
  }

  return 0;
}

uint64_t sub_19B654CBC(void *a1, const char *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_binaryVersion(a1, a2, a3);
  objc_msgSend_sizeOfType(a1, v5, v6);
  if (v4)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1EAFE2958 != -1)
      {
        dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
      }

      v9 = qword_1EAFE2960;
      if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_ERROR))
      {
        v10 = *(MEMORY[0x1E69E5450] + 8) & 0x7FFFFFFFFFFFFFFFLL;
        *buf = 134218498;
        v20 = v4;
        v21 = 2048;
        v22 = 0;
        v23 = 2080;
        v24 = v10;
        _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
      }

      v11 = sub_19B420058();
      if ((*(v11 + 160) & 0x80000000) != 0 && (*(v11 + 164) & 0x80000000) != 0 && (*(v11 + 168) & 0x80000000) != 0 && !*(v11 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2958 != -1)
      {
        dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
      }

      LODWORD(v18) = 134218498;
      HIDWORD(v18) = v4;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2960, 16, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v18, 32, v18);
    }

    else
    {
      if (qword_1EAFE2958 != -1)
      {
        dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
      }

      v14 = qword_1EAFE2960;
      if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_FAULT))
      {
        v15 = *(MEMORY[0x1E69E5450] + 8) & 0x7FFFFFFFFFFFFFFFLL;
        *buf = 134218498;
        v20 = v4;
        v21 = 2048;
        v22 = 0;
        v23 = 2080;
        v24 = v15;
        _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
      }

      v16 = sub_19B420058();
      if ((*(v16 + 160) & 0x80000000) != 0 && (*(v16 + 164) & 0x80000000) != 0 && (*(v16 + 168) & 0x80000000) != 0 && !*(v16 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2958 != -1)
      {
        dispatch_once(&qword_1EAFE2958, &unk_1F0E28900);
      }

      LODWORD(v18) = 134218498;
      HIDWORD(v18) = v4;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2960, 17, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v18, 32, v18);
    }

    v17 = v12;
    sub_19B6BB7CC("Generic", 1, 0, 0, "const Object_T *safeDecoder(CLCppContainer *, Callback) [Object_T = char, Callback = (lambda at /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLCppContainer.h:250:46)]", "CoreLocation: %s\n", v12);
    if (v17 != buf)
    {
      free(v17);
    }

    return 0;
  }

  return objc_msgSend_cppObjectPtr(a1, v7, v8);
}