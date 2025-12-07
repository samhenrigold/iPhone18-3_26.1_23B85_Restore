void mlx::core::unary_op<unsigned int,unsigned int,mlx::core::detail::Negative>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 8)
    {
      do
      {
        v8 = *v4;
        v7 = *(v4 + 1);
        v4 += 2;
        *v5 = vnegq_s32(v8);
        v5[1] = vnegq_s32(v7);
        v5 += 2;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v9 = *v4;
      v4 = (v4 + 4);
      v5->i32[0] = -v9;
      v5 = (v5 + 4);
    }

    return;
  }

  v10 = *(v3 + 8);
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
    do
    {
LABEL_32:
      v5->i32[0] = -*v4;
      v5 = (v5 + 4);
      v4 = (v4 + 4 * v13);
      --v12;
    }

    while (v12);
    return;
  }

  v11 = v10 - *v3;
  v12 = *(v10 - 4);
  v13 = *(*(v3 + 32) - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v40, v3, (v3 + 24), (v11 >> 2) - 1);
  v15 = *(*a1 + 48);
  if (v15)
  {
    v16 = 0;
    v17 = v40;
    v18 = v43;
    v19 = (v42 - v41) >> 2;
    v20 = (((v42 - v41) << 30) - 0x100000000) >> 32;
    v21 = __p;
    v22 = __p + 4 * v20;
    v23 = v41 + 4 * v20;
    v24 = 4 * v13;
    v25 = 4 * (v19 & 0x7FFFFFFF);
    v26 = v41 - 8;
    do
    {
      if (v12)
      {
        v27 = v4 + v17;
        v28 = v5;
        v29 = v12;
        do
        {
          v28->i32[0] = -*v27;
          v28 = (v28 + 4);
          v27 = (v27 + v24);
          --v29;
        }

        while (v29);
      }

      if (v19)
      {
        v30 = *v22;
        if (v19 >= 2 && v30 == *v23 - 1)
        {
          v31 = v21;
          v32 = v26;
          v33 = (v19 & 0x7FFFFFFF) - 1;
          v34 = v23;
          v35 = v22;
          v36 = v20;
          do
          {
            v37 = v33;
            *v35 = 0;
            v17 -= v18[v36] * (*v34 - 1);
            v40 = v17;
            --v33;
            v35 = &v31[v25 - 8];
            v30 = *v35;
            v31 -= 4;
            if (v37 < 2)
            {
              break;
            }

            v34 = &v32[v25];
            v38 = *&v32[4 * (v19 & 0x7FFFFFFF)] - 1;
            v32 -= 4;
            v36 = v33;
          }

          while (v30 == v38);
          v39 = &v31[v25 - 4];
        }

        else
        {
          v33 = v20;
          v39 = v22;
        }

        *v39 = v30 + 1;
        v17 += v18[v33];
        v40 = v17;
      }

      v16 += v12;
      v5 = (v5 + 4 * v12);
    }

    while (v16 < v15);
    if (!v21)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v21 = __p;
    if (!__p)
    {
      goto LABEL_26;
    }
  }

  v46 = v21;
  operator delete(v21);
LABEL_26:
  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }
}

void mlx::core::unary_op<unsigned long long,unsigned long long,mlx::core::detail::Negative>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 4)
    {
      do
      {
        v8 = *v4;
        v7 = *(v4 + 1);
        v4 += 2;
        *v5 = vnegq_s64(v8);
        v5[1] = vnegq_s64(v7);
        v5 += 2;
        v6 -= 4;
      }

      while (v6 > 3);
    }

    for (; v6; --v6)
    {
      v9 = *v4;
      v4 = (v4 + 8);
      v5->i64[0] = -v9;
      v5 = (v5 + 8);
    }

    return;
  }

  v10 = *(v3 + 8);
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
    do
    {
LABEL_32:
      v5->i64[0] = -*v4;
      v5 = (v5 + 8);
      v4 = (v4 + 8 * v13);
      --v12;
    }

    while (v12);
    return;
  }

  v11 = v10 - *v3;
  v12 = *(v10 - 4);
  v13 = *(*(v3 + 32) - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v40, v3, (v3 + 24), (v11 >> 2) - 1);
  v15 = *(*a1 + 48);
  if (v15)
  {
    v16 = 0;
    v17 = v43;
    v18 = v40;
    v19 = (v42 - v41) >> 2;
    v20 = (((v42 - v41) << 30) - 0x100000000) >> 32;
    v21 = __p;
    v22 = __p + 4 * v20;
    v23 = v41 + 4 * v20;
    v24 = 8 * v13;
    v25 = 4 * (v19 & 0x7FFFFFFF);
    v26 = v41 - 8;
    do
    {
      if (v12)
      {
        v27 = v4 + v18;
        v28 = v5;
        v29 = v12;
        do
        {
          *v28++ = -*v27;
          v27 = (v27 + v24);
          --v29;
        }

        while (v29);
      }

      if (v19)
      {
        v30 = *v22;
        if (v19 >= 2 && v30 == *v23 - 1)
        {
          v31 = v21;
          v32 = v26;
          v33 = (v19 & 0x7FFFFFFF) - 1;
          v34 = v23;
          v35 = v22;
          v36 = v20;
          do
          {
            v37 = v33;
            *v35 = 0;
            v18 -= v17[v36] * (*v34 - 1);
            v40 = v18;
            --v33;
            v35 = &v31[v25 - 8];
            v30 = *v35;
            v31 -= 4;
            if (v37 < 2)
            {
              break;
            }

            v34 = &v32[v25];
            v38 = *&v32[4 * (v19 & 0x7FFFFFFF)] - 1;
            v32 -= 4;
            v36 = v33;
          }

          while (v30 == v38);
          v39 = &v31[v25 - 4];
        }

        else
        {
          v33 = v20;
          v39 = v22;
        }

        *v39 = v30 + 1;
        v18 += v17[v33];
        v40 = v18;
      }

      v16 += v12;
      v5 = (v5 + 8 * v12);
    }

    while (v16 < v15);
    if (!v21)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v21 = __p;
    if (!__p)
    {
      goto LABEL_26;
    }
  }

  v46 = v21;
  operator delete(v21);
LABEL_26:
  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }
}

__int16 mlx::core::unary_op<half,half,mlx::core::detail::Negative>@<H0>(uint64_t *a1@<X0>, uint64_t a2@<X1>)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 8)
    {
      do
      {
        v7 = *v4++;
        v8 = vnegq_f16(v7);
        *v5++ = v8;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v9 = *v4->i16;
      v4 = (v4 + 2);
      *v8.i16 = -v9;
      *v5->i16 = -v9;
      v5 = (v5 + 2);
    }

    return v8.i16[0];
  }

  v10 = *(v3 + 8);
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
    do
    {
LABEL_32:
      *v8.i16 = -*v4->i16;
      v5->i16[0] = v8.i16[0];
      v5 = (v5 + 2);
      v4 = (v4 + 2 * v13);
      --v12;
    }

    while (v12);
    return v8.i16[0];
  }

  v11 = v10 - *v3;
  v12 = *(v10 - 4);
  v13 = *(*(v3 + 32) - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return v8.i16[0];
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v41, v3, (v3 + 24), (v11 >> 2) - 1);
  v15 = *(*a1 + 48);
  if (v15)
  {
    v16 = 0;
    v17 = v41;
    v18 = v44;
    v19 = (v43 - v42) >> 2;
    v20 = (((v43 - v42) << 30) - 0x100000000) >> 32;
    v21 = __p;
    v22 = __p + 4 * v20;
    v23 = v42 + 4 * v20;
    v24 = 2 * v13;
    v25 = 4 * (v19 & 0x7FFFFFFF);
    v26 = v42 - 8;
    do
    {
      if (v12)
      {
        v27 = &v4->i16[v17];
        v28 = v5;
        v29 = v12;
        do
        {
          *v8.i16 = -*v27;
          v28->i16[0] = v8.i16[0];
          v28 = (v28 + 2);
          v27 = (v27 + v24);
          --v29;
        }

        while (v29);
      }

      if (v19)
      {
        v30 = *v22;
        if (v19 >= 2 && v30 == *v23 - 1)
        {
          v31 = v21;
          v32 = v26;
          v33 = (v19 & 0x7FFFFFFF) - 1;
          v34 = v23;
          v35 = v22;
          v36 = v20;
          do
          {
            v37 = v33;
            *v35 = 0;
            v17 -= v18[v36] * (*v34 - 1);
            v41 = v17;
            --v33;
            v35 = &v31[v25 - 8];
            v30 = *v35;
            v31 -= 4;
            if (v37 < 2)
            {
              break;
            }

            v34 = &v32[v25];
            v38 = *&v32[4 * (v19 & 0x7FFFFFFF)] - 1;
            v32 -= 4;
            v36 = v33;
          }

          while (v30 == v38);
          v39 = &v31[v25 - 4];
        }

        else
        {
          v33 = v20;
          v39 = v22;
        }

        *v39 = v30 + 1;
        v17 += v18[v33];
        v41 = v17;
      }

      v16 += v12;
      v5 = (v5 + 2 * v12);
    }

    while (v16 < v15);
    if (!v21)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v21 = __p;
    if (!__p)
    {
      goto LABEL_26;
    }
  }

  v47 = v21;
  operator delete(v21);
LABEL_26:
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  return v8.i16[0];
}

float32_t mlx::core::unary_op<float,float,mlx::core::detail::Negative>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 8)
    {
      do
      {
        v8 = *v4;
        v7 = *(v4 + 1);
        v4 += 2;
        v9 = vnegq_f32(v7);
        *v5 = vnegq_f32(v8);
        v5[1] = v9;
        v5 += 2;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v10 = *v4;
      v4 = (v4 + 4);
      v9.f32[0] = -v10;
      v5->f32[0] = -v10;
      v5 = (v5 + 4);
    }

    return v9.f32[0];
  }

  v11 = *(v3 + 8);
  if (v11 == *v3)
  {
    v13 = 1;
    v14 = 1;
    do
    {
LABEL_32:
      v9.f32[0] = -*v4;
      v5->i32[0] = v9.i32[0];
      v5 = (v5 + 4);
      v4 = (v4 + 4 * v14);
      --v13;
    }

    while (v13);
    return v9.f32[0];
  }

  v12 = v11 - *v3;
  v13 = *(v11 - 4);
  v14 = *(*(v3 + 32) - 8);
  if ((v12 >> 2) <= 1)
  {
    if (!v13)
    {
      return v9.f32[0];
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v42, v3, (v3 + 24), (v12 >> 2) - 1);
  v16 = *(*a1 + 48);
  if (v16)
  {
    v17 = 0;
    v18 = v42;
    v19 = v45;
    v20 = (v44 - v43) >> 2;
    v21 = (((v44 - v43) << 30) - 0x100000000) >> 32;
    v22 = __p;
    v23 = __p + 4 * v21;
    v24 = v43 + 4 * v21;
    v25 = 4 * v14;
    v26 = 4 * (v20 & 0x7FFFFFFF);
    v27 = v43 - 8;
    do
    {
      if (v13)
      {
        v28 = v4 + v18;
        v29 = v5;
        v30 = v13;
        do
        {
          v9.f32[0] = -*v28;
          v29->i32[0] = v9.i32[0];
          v29 = (v29 + 4);
          v28 = (v28 + v25);
          --v30;
        }

        while (v30);
      }

      if (v20)
      {
        v31 = *v23;
        if (v20 >= 2 && v31 == *v24 - 1)
        {
          v32 = v22;
          v33 = v27;
          v34 = (v20 & 0x7FFFFFFF) - 1;
          v35 = v24;
          v36 = v23;
          v37 = v21;
          do
          {
            v38 = v34;
            *v36 = 0;
            v18 -= v19[v37] * (*v35 - 1);
            v42 = v18;
            --v34;
            v36 = &v32[v26 - 8];
            v31 = *v36;
            v32 -= 4;
            if (v38 < 2)
            {
              break;
            }

            v35 = &v33[v26];
            v39 = *&v33[4 * (v20 & 0x7FFFFFFF)] - 1;
            v33 -= 4;
            v37 = v34;
          }

          while (v31 == v39);
          v40 = &v32[v26 - 4];
        }

        else
        {
          v34 = v21;
          v40 = v23;
        }

        *v40 = v31 + 1;
        v18 += v19[v34];
        v42 = v18;
      }

      v17 += v13;
      v5 = (v5 + 4 * v13);
    }

    while (v17 < v16);
    if (!v22)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v22 = __p;
    if (!__p)
    {
      goto LABEL_26;
    }
  }

  v48 = v22;
  operator delete(v22);
LABEL_26:
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  return v9.f32[0];
}

float64_t mlx::core::unary_op<double,double,mlx::core::detail::Negative>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 4)
    {
      do
      {
        v8 = *v4;
        v7 = *(v4 + 1);
        v4 += 2;
        v9 = vnegq_f64(v7);
        *v5 = vnegq_f64(v8);
        *(v5 + 16) = v9;
        v5 += 32;
        v6 -= 4;
      }

      while (v6 > 3);
    }

    for (; v6; --v6)
    {
      v10 = *v4;
      v4 = (v4 + 8);
      v9.f64[0] = -v10;
      *v5 = -v10;
      v5 += 8;
    }

    return v9.f64[0];
  }

  v11 = *(v3 + 8);
  if (v11 == *v3)
  {
    v13 = 1;
    v14 = 1;
    do
    {
LABEL_32:
      v9.f64[0] = -*v4;
      *v5 = v9.f64[0];
      v5 += 8;
      v4 = (v4 + 8 * v14);
      --v13;
    }

    while (v13);
    return v9.f64[0];
  }

  v12 = v11 - *v3;
  v13 = *(v11 - 4);
  v14 = *(*(v3 + 32) - 8);
  if ((v12 >> 2) <= 1)
  {
    if (!v13)
    {
      return v9.f64[0];
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v42, v3, (v3 + 24), (v12 >> 2) - 1);
  v16 = *(*a1 + 48);
  if (v16)
  {
    v17 = 0;
    v18 = v42;
    v19 = v45;
    v20 = (v44 - v43) >> 2;
    v21 = (((v44 - v43) << 30) - 0x100000000) >> 32;
    v22 = __p;
    v23 = __p + 4 * v21;
    v24 = v43 + 4 * v21;
    v25 = 8 * v14;
    v26 = 4 * (v20 & 0x7FFFFFFF);
    v27 = v43 - 8;
    do
    {
      if (v13)
      {
        v28 = v4 + v18;
        v29 = v5;
        v30 = v13;
        do
        {
          v9.f64[0] = -*v28;
          *v29++ = *&v9.f64[0];
          v28 = (v28 + v25);
          --v30;
        }

        while (v30);
      }

      if (v20)
      {
        v31 = *v23;
        if (v20 >= 2 && v31 == *v24 - 1)
        {
          v32 = v22;
          v33 = v27;
          v34 = (v20 & 0x7FFFFFFF) - 1;
          v35 = v24;
          v36 = v23;
          v37 = v21;
          do
          {
            v38 = v34;
            *v36 = 0;
            v18 -= v19[v37] * (*v35 - 1);
            v42 = v18;
            --v34;
            v36 = &v32[v26 - 8];
            v31 = *v36;
            v32 -= 4;
            if (v38 < 2)
            {
              break;
            }

            v35 = &v33[v26];
            v39 = *&v33[4 * (v20 & 0x7FFFFFFF)] - 1;
            v33 -= 4;
            v37 = v34;
          }

          while (v31 == v39);
          v40 = &v32[v26 - 4];
        }

        else
        {
          v34 = v21;
          v40 = v23;
        }

        *v40 = v31 + 1;
        v18 += v19[v34];
        v42 = v18;
      }

      v17 += v13;
      v5 += 8 * v13;
    }

    while (v17 < v16);
    if (!v22)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v22 = __p;
    if (!__p)
    {
      goto LABEL_26;
    }
  }

  v48 = v22;
  operator delete(v22);
LABEL_26:
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  return v9.f64[0];
}

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Negative>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    for (i = *(v3 + 160); i; --i)
    {
      *v5++ = ((*v4 & 1) + (*v4 << 16) - 2147450881) >> 16;
      ++v4;
    }

    return;
  }

  v7 = *(v3 + 8);
  if (v7 == *v3)
  {
    v9 = 1;
    v10 = 1;
    do
    {
LABEL_30:
      *v5++ = ((*v4 & 1) + (*v4 << 16) - 2147450881) >> 16;
      v4 += v10;
      --v9;
    }

    while (v9);
    return;
  }

  v8 = v7 - *v3;
  v9 = *(v7 - 4);
  v10 = *(*(v3 + 32) - 8);
  if ((v8 >> 2) <= 1)
  {
    if (!v9)
    {
      return;
    }

    goto LABEL_30;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v37, v3, (v3 + 24), (v8 >> 2) - 1);
  v12 = *(*a1 + 48);
  if (v12)
  {
    v13 = 0;
    v14 = v37;
    v15 = v40;
    v16 = (v39 - v38) >> 2;
    v17 = (((v39 - v38) << 30) - 0x100000000) >> 32;
    v18 = __p;
    v19 = __p + 4 * v17;
    v20 = v38 + 4 * v17;
    v21 = 2 * v10;
    v22 = 4 * (v16 & 0x7FFFFFFF);
    v23 = v38 - 8;
    do
    {
      if (v9)
      {
        v24 = &v4[v14];
        v25 = v5;
        v26 = v9;
        do
        {
          *v25++ = ((*v24 & 1) + (*v24 << 16) - 2147450881) >> 16;
          v24 = (v24 + v21);
          --v26;
        }

        while (v26);
      }

      if (v16)
      {
        v27 = *v19;
        if (v16 >= 2 && v27 == *v20 - 1)
        {
          v28 = v18;
          v29 = v23;
          v30 = (v16 & 0x7FFFFFFF) - 1;
          v31 = v20;
          v32 = v19;
          v33 = v17;
          do
          {
            v34 = v30;
            *v32 = 0;
            v14 -= v15[v33] * (*v31 - 1);
            v37 = v14;
            --v30;
            v32 = &v28[v22 - 8];
            v27 = *v32;
            v28 -= 4;
            if (v34 < 2)
            {
              break;
            }

            v31 = &v29[v22];
            v35 = *&v29[4 * (v16 & 0x7FFFFFFF)] - 1;
            v29 -= 4;
            v33 = v30;
          }

          while (v27 == v35);
          v36 = &v28[v22 - 4];
        }

        else
        {
          v30 = v17;
          v36 = v19;
        }

        *v36 = v27 + 1;
        v14 += v15[v30];
        v37 = v14;
      }

      v13 += v9;
      v5 += v9;
    }

    while (v13 < v12);
    if (!v18)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v18 = __p;
    if (!__p)
    {
      goto LABEL_24;
    }
  }

  v43 = v18;
  operator delete(v18);
LABEL_24:
  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }
}

float32x2_t mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Negative>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    for (i = *(v3 + 160); i; --i)
    {
      v7 = *v4++;
      result = vneg_f32(v7);
      *v5++ = result;
    }

    return result;
  }

  v9 = *(v3 + 8);
  if (v9 == *v3)
  {
    v11 = 1;
    v12 = 1;
    do
    {
LABEL_32:
      result = vneg_f32(*v4);
      *v5++ = result;
      v4 += v12;
      --v11;
    }

    while (v11);
    return result;
  }

  v10 = v9 - *v3;
  v11 = *(v9 - 4);
  v12 = *(*(v3 + 32) - 8);
  if ((v10 >> 2) <= 1)
  {
    if (!v11)
    {
      return result;
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v34, v3, (v3 + 24), (v10 >> 2) - 1);
  if (*(*a1 + 48))
  {
    v14 = 0;
    v15 = v34;
    do
    {
      if (v11)
      {
        v16 = &v4[v15];
        v17 = v5;
        v18 = v11;
        do
        {
          result = vneg_f32(*v16);
          *v17++ = result;
          v16 += v12;
          --v18;
        }

        while (v18);
      }

      v19 = v36 - v35;
      v20 = (v36 - v35) >> 2;
      if (v20)
      {
        v21 = ((v19 << 30) - 0x100000000) >> 32;
        v22 = __p;
        v23 = v37;
        v24 = __p + 4 * v21;
        v25 = *v24;
        v26 = v35 + 4 * v21;
        if (v20 >= 2 && v25 == *v26 - 1)
        {
          v29 = (v19 >> 2) & 0x7FFFFFFF;
          v28 = v29 - 1;
          v30 = 4 * v29;
          v31 = v35 - 8;
          do
          {
            v32 = v28;
            *v24 = 0;
            v15 -= v23[v21] * (*v26 - 1);
            v34 = v15;
            --v28;
            v24 = &v22[v30 - 8];
            v25 = *v24;
            v22 -= 4;
            if (v32 < 2)
            {
              break;
            }

            v26 = &v31[v30];
            v33 = *&v31[4 * v29] - 1;
            v31 -= 4;
            v21 = v28;
          }

          while (v25 == v33);
          v24 = &v22[4 * v29 - 4];
        }

        else
        {
          v28 = ((v19 << 30) - 0x100000000) >> 32;
        }

        *v24 = v25 + 1;
        v15 += v23[v28];
        v34 = v15;
      }

      v14 += v11;
      v5 += v11;
    }

    while (v14 < *(*a1 + 48));
  }

  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  return result;
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary<mlx::core::detail::Negative>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Negative,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary<mlx::core::detail::Negative>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Negative,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1], a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A58BFC4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary<mlx::core::detail::Negative>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Negative,mlx::core::Stream)::{lambda(void)#1}>>(unint64_t *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary<mlx::core::detail::Negative>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Negative,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary<mlx::core::detail::Negative>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Negative,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
{
  *a2 = 0uLL;
  a2[1] = 0uLL;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A58C194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary<mlx::core::detail::Negative>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Negative,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary<mlx::core::detail::Negative>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Negative,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFD1F8;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary<mlx::core::detail::Negative>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Negative,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary<mlx::core::detail::Negative>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Negative,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFD1F8;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary<mlx::core::detail::Negative>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Negative,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary<mlx::core::detail::Negative>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Negative,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFD1F8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  *(a2 + 24) = result[3];
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 52) = 0;
  *(a2 + 49) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::unary<mlx::core::detail::Negative>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Negative,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary<mlx::core::detail::Negative>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Negative,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary<mlx::core::detail::Negative>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Negative,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary<mlx::core::detail::Negative>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Negative,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary<mlx::core::detail::Negative>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Negative,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary<mlx::core::detail::Negative>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Negative,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_complex_to_float<mlx::core::detail::Real>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Real,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, __int128 *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *(a1 + 10) = (*(a1 + 10) + 1) % 10;
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0uLL;
  v14 = v3;
  v15 = v4;
  a2[1] = 0uLL;
  if (*(a1 + 10))
  {
    v5 = mlx::core::scheduler::scheduler(a1);
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Real>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Real,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
  }

  v6 = mlx::core::scheduler::scheduler(a1);
  mlx::core::scheduler::Scheduler::notify_new_task(v6);
  v10 = *a1;
  v11 = *(a1 + 2);
  v7 = v14;
  v14 = 0uLL;
  v12 = v7;
  v13 = v15;
  v15 = 0uLL;
  v9 = mlx::core::scheduler::scheduler(v8);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_complex_to_float<mlx::core::detail::Real>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Real,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Real&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A58C548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  mlx::core::array::~array((v17 + 32));
  mlx::core::array::~array((v17 + 16));
  mlx::core::array::~array((v16 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_complex_to_float<mlx::core::detail::Real>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Real,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Real&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_complex_to_float<mlx::core::detail::Real>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Real,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Real&&)::{lambda(void)#1}>(&a1[1], a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A58C61C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_complex_to_float<mlx::core::detail::Real>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Real,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Real&&)::{lambda(void)#1}>(unint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_complex_to_float<mlx::core::detail::Real>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Real,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Real&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_complex_to_float<mlx::core::detail::Real>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Real,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Real&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
{
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A58C800(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_22unary_complex_to_floatINS3_6detail4RealEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFD2F0;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_22unary_complex_to_floatINS3_6detail4RealEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFD2F0;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_22unary_complex_to_floatINS3_6detail4RealEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFD2F0;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 48);
  *(a2 + 40) = *(result + 40);
  *(a2 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_22unary_complex_to_floatINS3_6detail4RealEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_22unary_complex_to_floatINS3_6detail4RealEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_22unary_complex_to_floatINS3_6detail4RealEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__invoke_void_return_wrapper<void,true>::__call[abi:ne200100]<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_complex_to_float<mlx::core::detail::Real>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Real,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Real&&)::{lambda(void)#1} &>(uint64_t a1)
{
  mlx::core::unary_op<mlx::core::complex64_t,float,mlx::core::detail::Real>((a1 + 16), a1 + 32);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

float mlx::core::unary_op<mlx::core::complex64_t,float,mlx::core::detail::Real>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    for (i = *(v3 + 160); i; --i)
    {
      v7 = *v4;
      v4 += 2;
      result = v7;
      *v5++ = v7;
    }

    return result;
  }

  v9 = *(v3 + 8);
  if (v9 == *v3)
  {
    v11 = 1;
    v12 = 1;
    do
    {
LABEL_30:
      result = *v4;
      *v5++ = *v4;
      v4 += 2 * v12;
      --v11;
    }

    while (v11);
    return result;
  }

  v10 = v9 - *v3;
  v11 = *(v9 - 4);
  v12 = *(*(v3 + 32) - 8);
  if ((v10 >> 2) <= 1)
  {
    if (!v11)
    {
      return result;
    }

    goto LABEL_30;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v39, v3, (v3 + 24), (v10 >> 2) - 1);
  v14 = *(*a1 + 48);
  if (v14)
  {
    v15 = 0;
    v16 = v39;
    v17 = v42;
    v18 = (v41 - v40) >> 2;
    v19 = (((v41 - v40) << 30) - 0x100000000) >> 32;
    v20 = __p;
    v21 = __p + 4 * v19;
    v22 = v40 + 4 * v19;
    v23 = 8 * v12;
    v24 = 4 * (v18 & 0x7FFFFFFF);
    v25 = v40 - 8;
    do
    {
      if (v11)
      {
        v26 = &v4[2 * v16];
        v27 = v5;
        v28 = v11;
        do
        {
          result = *v26;
          *v27++ = *v26;
          v26 = (v26 + v23);
          --v28;
        }

        while (v28);
      }

      if (v18)
      {
        v29 = *v21;
        if (v18 >= 2 && v29 == *v22 - 1)
        {
          v30 = v20;
          v31 = v25;
          v32 = (v18 & 0x7FFFFFFF) - 1;
          v33 = v22;
          v34 = v21;
          v35 = v19;
          do
          {
            v36 = v32;
            *v34 = 0;
            v16 -= v17[v35] * (*v33 - 1);
            v39 = v16;
            --v32;
            v34 = &v30[v24 - 8];
            v29 = *v34;
            v30 -= 4;
            if (v36 < 2)
            {
              break;
            }

            v33 = &v31[v24];
            v37 = *&v31[4 * (v18 & 0x7FFFFFFF)] - 1;
            v31 -= 4;
            v35 = v32;
          }

          while (v29 == v37);
          v38 = &v30[v24 - 4];
        }

        else
        {
          v32 = v19;
          v38 = v21;
        }

        *v38 = v29 + 1;
        v16 += v17[v32];
        v39 = v16;
      }

      v15 += v11;
      v5 += v11;
    }

    while (v15 < v14);
    if (!v20)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v20 = __p;
    if (!__p)
    {
      goto LABEL_24;
    }
  }

  v45 = v20;
  operator delete(v20);
LABEL_24:
  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  return result;
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Real>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Real,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Real>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Real,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1], a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A58CDCC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Real>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Real,mlx::core::Stream)::{lambda(void)#1}>>(unint64_t *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Real>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Real,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Real>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Real,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
{
  *a2 = 0uLL;
  a2[1] = 0uLL;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A58CF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Real>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Real,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Real>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Real,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFD370;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Real>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Real,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Real>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Real,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFD370;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Real>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Real,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Real>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Real,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFD370;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  *(a2 + 24) = result[3];
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 52) = 0;
  *(a2 + 49) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Real>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Real,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Real>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Real,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Real>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Real,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Real>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Real,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Real>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Real,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_complex_to_float<mlx::core::detail::Real>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Real,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Round>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Round,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, __int128 *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *(a1 + 10) = (*(a1 + 10) + 1) % 10;
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0uLL;
  v14 = v3;
  v15 = v4;
  a2[1] = 0uLL;
  if (*(a1 + 10))
  {
    v5 = mlx::core::scheduler::scheduler(a1);
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Round>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Round,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
  }

  v6 = mlx::core::scheduler::scheduler(a1);
  mlx::core::scheduler::Scheduler::notify_new_task(v6);
  v10 = *a1;
  v11 = *(a1 + 2);
  v7 = v14;
  v14 = 0uLL;
  v12 = v7;
  v13 = v15;
  v15 = 0uLL;
  v9 = mlx::core::scheduler::scheduler(v8);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Round>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Round,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Round&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A58D358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  mlx::core::array::~array((v17 + 32));
  mlx::core::array::~array((v17 + 16));
  mlx::core::array::~array((v16 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Round>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Round,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Round&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Round>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Round,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Round&&)::{lambda(void)#1}>(&a1[1], a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A58D42C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Round>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Round,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Round&&)::{lambda(void)#1}>(unint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Round>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Round,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Round&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Round>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Round,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Round&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
{
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A58D610(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5RoundEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFD468;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5RoundEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFD468;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5RoundEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFD468;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 48);
  *(a2 + 40) = *(result + 40);
  *(a2 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5RoundEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5RoundEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5RoundEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::unary_fp<mlx::core::detail::Round>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Round,mlx::core::Stream)::{lambda(void)#1}::operator()((a1 + 24));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail5RoundEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float32x2_t mlx::core::unary_fp<mlx::core::detail::Round>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Round,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t *a1)
{
  v1 = a1 + 2;
  v2 = *(a1[2] + 56);
  if (v2 <= 10)
  {
    if (v2 == 9)
    {

      return mlx::core::unary_op<half,half,mlx::core::detail::Round>(a1, (a1 + 2));
    }

    else
    {
      if (v2 != 10)
      {
        goto LABEL_22;
      }

      result.f32[0] = mlx::core::unary_op<float,float,mlx::core::detail::Round>(a1, (a1 + 2));
    }
  }

  else
  {
    switch(v2)
    {
      case 11:

        *&result = mlx::core::unary_op<double,double,mlx::core::detail::Round>(a1, (a1 + 2));
        break;
      case 13:

        return mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Round>(a1, (a1 + 2));
      case 12:

        mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Round>(a1, (a1 + 2));
        return result;
      default:
LABEL_22:
        std::ostringstream::basic_ostringstream[abi:ne200100](v8);
        v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "[unary_fp] Does not support ", 28);
        v5 = *(*v1 + 56);
        LODWORD(v7[0]) = v5;
        BYTE4(v7[0]) = BYTE4(v5);
        mlx::core::operator<<(v4, v7);
        exception = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v8, v7);
        MEMORY[0x25F851100](exception, v7);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_25A58DA84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Round>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    for (i = *(v3 + 160); i; --i)
    {
      v7 = rintf(COERCE_FLOAT(*v4 << 16));
      *v5++ = (LODWORD(v7) + (HIWORD(LODWORD(v7)) & 1u) + 0x7FFF) >> 16;
      ++v4;
    }

    return;
  }

  v8 = *(v3 + 8);
  if (v8 == *v3)
  {
    v10 = 1;
    v11 = 1;
    do
    {
LABEL_30:
      v39 = rintf(COERCE_FLOAT(*v4 << 16));
      *v5++ = (LODWORD(v39) + (HIWORD(LODWORD(v39)) & 1u) + 0x7FFF) >> 16;
      v4 += v11;
      --v10;
    }

    while (v10);
    return;
  }

  v9 = v8 - *v3;
  v10 = *(v8 - 4);
  v11 = *(*(v3 + 32) - 8);
  if ((v9 >> 2) <= 1)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_30;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v40, v3, (v3 + 24), (v9 >> 2) - 1);
  v13 = *(*a1 + 48);
  if (v13)
  {
    v14 = 0;
    v15 = v40;
    v16 = v43;
    v17 = (v42 - v41) >> 2;
    v18 = (((v42 - v41) << 30) - 0x100000000) >> 32;
    v19 = __p;
    v20 = __p + 4 * v18;
    v21 = v41 + 4 * v18;
    v22 = 2 * v11;
    v23 = 4 * (v17 & 0x7FFFFFFF);
    v24 = v41 - 8;
    do
    {
      if (v10)
      {
        v25 = &v4[v15];
        v26 = v5;
        v27 = v10;
        do
        {
          v28 = rintf(COERCE_FLOAT(*v25 << 16));
          *v26++ = (LODWORD(v28) + (HIWORD(LODWORD(v28)) & 1u) + 0x7FFF) >> 16;
          v25 = (v25 + v22);
          --v27;
        }

        while (v27);
      }

      if (v17)
      {
        v29 = *v20;
        if (v17 >= 2 && v29 == *v21 - 1)
        {
          v30 = v19;
          v31 = v24;
          v32 = (v17 & 0x7FFFFFFF) - 1;
          v33 = v21;
          v34 = v20;
          v35 = v18;
          do
          {
            v36 = v32;
            *v34 = 0;
            v15 -= v16[v35] * (*v33 - 1);
            v40 = v15;
            --v32;
            v34 = &v30[v23 - 8];
            v29 = *v34;
            v30 -= 4;
            if (v36 < 2)
            {
              break;
            }

            v33 = &v31[v23];
            v37 = *&v31[4 * (v17 & 0x7FFFFFFF)] - 1;
            v31 -= 4;
            v35 = v32;
          }

          while (v29 == v37);
          v38 = &v30[v23 - 4];
        }

        else
        {
          v32 = v18;
          v38 = v20;
        }

        *v38 = v29 + 1;
        v15 += v16[v32];
        v40 = v15;
      }

      v14 += v10;
      v5 += v10;
    }

    while (v14 < v13);
    if (!v19)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v19 = __p;
    if (!__p)
    {
      goto LABEL_24;
    }
  }

  v46 = v19;
  operator delete(v19);
LABEL_24:
  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }
}

__int16 mlx::core::unary_op<half,half,mlx::core::detail::Round>@<H0>(uint64_t *a1@<X0>, uint64_t a2@<X1>)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 8)
    {
      do
      {
        v7 = *v4;
        v4 += 8;
        v8 = vrndxq_f16(v7);
        *v5++ = v8;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v9 = *v4++;
      *v8.i16 = rintl(v9);
      v5->i16[0] = v8.i16[0];
      v5 = (v5 + 2);
    }

    return v8.i16[0];
  }

  v10 = *(v3 + 8);
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
    do
    {
LABEL_32:
      *v8.i16 = rintl(*v4);
      v5->i16[0] = v8.i16[0];
      v5 = (v5 + 2);
      v4 += v13;
      --v12;
    }

    while (v12);
    return v8.i16[0];
  }

  v11 = v10 - *v3;
  v12 = *(v10 - 4);
  v13 = *(*(v3 + 32) - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return v8.i16[0];
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v41, v3, (v3 + 24), (v11 >> 2) - 1);
  v15 = *(*a1 + 48);
  if (v15)
  {
    v16 = 0;
    v17 = v41;
    v18 = v44;
    v19 = (v43 - v42) >> 2;
    v20 = (((v43 - v42) << 30) - 0x100000000) >> 32;
    v21 = __p;
    v22 = __p + 4 * v20;
    v23 = v42 + 4 * v20;
    v24 = 2 * v13;
    v25 = 4 * (v19 & 0x7FFFFFFF);
    v26 = v42 - 8;
    do
    {
      if (v12)
      {
        v27 = &v4[v17];
        v28 = v5;
        v29 = v12;
        do
        {
          *v8.i16 = rintl(*v27);
          v28->i16[0] = v8.i16[0];
          v28 = (v28 + 2);
          v27 = (v27 + v24);
          --v29;
        }

        while (v29);
      }

      if (v19)
      {
        v30 = *v22;
        if (v19 >= 2 && v30 == *v23 - 1)
        {
          v31 = v21;
          v32 = v26;
          v33 = (v19 & 0x7FFFFFFF) - 1;
          v34 = v23;
          v35 = v22;
          v36 = v20;
          do
          {
            v37 = v33;
            *v35 = 0;
            v17 -= v18[v36] * (*v34 - 1);
            v41 = v17;
            --v33;
            v35 = &v31[v25 - 8];
            v30 = *v35;
            v31 -= 4;
            if (v37 < 2)
            {
              break;
            }

            v34 = &v32[v25];
            v38 = *&v32[4 * (v19 & 0x7FFFFFFF)] - 1;
            v32 -= 4;
            v36 = v33;
          }

          while (v30 == v38);
          v39 = &v31[v25 - 4];
        }

        else
        {
          v33 = v20;
          v39 = v22;
        }

        *v39 = v30 + 1;
        v17 += v18[v33];
        v41 = v17;
      }

      v16 += v12;
      v5 = (v5 + 2 * v12);
    }

    while (v16 < v15);
    if (!v21)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v21 = __p;
    if (!__p)
    {
      goto LABEL_26;
    }
  }

  v47 = v21;
  operator delete(v21);
LABEL_26:
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  return v8.i16[0];
}

float32_t mlx::core::unary_op<float,float,mlx::core::detail::Round>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 8)
    {
      do
      {
        v8 = *v4;
        v7 = v4[1];
        v4 += 2;
        v9 = vrndxq_f32(v7);
        *v5 = vrndxq_f32(v8);
        v5[1] = v9;
        v5 += 2;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v10 = v4->f32[0];
      v4 = (v4 + 4);
      v9.f32[0] = rintf(v10);
      v5->i32[0] = v9.i32[0];
      v5 = (v5 + 4);
    }

    return v9.f32[0];
  }

  v11 = *(v3 + 8);
  if (v11 == *v3)
  {
    v13 = 1;
    v14 = 1;
    do
    {
LABEL_32:
      v9.f32[0] = rintf(v4->f32[0]);
      v5->i32[0] = v9.i32[0];
      v5 = (v5 + 4);
      v4 = (v4 + 4 * v14);
      --v13;
    }

    while (v13);
    return v9.f32[0];
  }

  v12 = v11 - *v3;
  v13 = *(v11 - 4);
  v14 = *(*(v3 + 32) - 8);
  if ((v12 >> 2) <= 1)
  {
    if (!v13)
    {
      return v9.f32[0];
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v42, v3, (v3 + 24), (v12 >> 2) - 1);
  v16 = *(*a1 + 48);
  if (v16)
  {
    v17 = 0;
    v18 = v42;
    v19 = v45;
    v20 = (v44 - v43) >> 2;
    v21 = (((v44 - v43) << 30) - 0x100000000) >> 32;
    v22 = __p;
    v23 = __p + 4 * v21;
    v24 = v43 + 4 * v21;
    v25 = 4 * v14;
    v26 = 4 * (v20 & 0x7FFFFFFF);
    v27 = v43 - 8;
    do
    {
      if (v13)
      {
        v28 = &v4->f32[v18];
        v29 = v5;
        v30 = v13;
        do
        {
          v9.f32[0] = rintf(*v28);
          v29->i32[0] = v9.i32[0];
          v29 = (v29 + 4);
          v28 = (v28 + v25);
          --v30;
        }

        while (v30);
      }

      if (v20)
      {
        v31 = *v23;
        if (v20 >= 2 && v31 == *v24 - 1)
        {
          v32 = v22;
          v33 = v27;
          v34 = (v20 & 0x7FFFFFFF) - 1;
          v35 = v24;
          v36 = v23;
          v37 = v21;
          do
          {
            v38 = v34;
            *v36 = 0;
            v18 -= v19[v37] * (*v35 - 1);
            v42 = v18;
            --v34;
            v36 = &v32[v26 - 8];
            v31 = *v36;
            v32 -= 4;
            if (v38 < 2)
            {
              break;
            }

            v35 = &v33[v26];
            v39 = *&v33[4 * (v20 & 0x7FFFFFFF)] - 1;
            v33 -= 4;
            v37 = v34;
          }

          while (v31 == v39);
          v40 = &v32[v26 - 4];
        }

        else
        {
          v34 = v21;
          v40 = v23;
        }

        *v40 = v31 + 1;
        v18 += v19[v34];
        v42 = v18;
      }

      v17 += v13;
      v5 = (v5 + 4 * v13);
    }

    while (v17 < v16);
    if (!v22)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v22 = __p;
    if (!__p)
    {
      goto LABEL_26;
    }
  }

  v48 = v22;
  operator delete(v22);
LABEL_26:
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  return v9.f32[0];
}

float64_t mlx::core::unary_op<double,double,mlx::core::detail::Round>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 4)
    {
      do
      {
        v8 = *v4;
        v7 = v4[1];
        v4 += 2;
        v9 = vrndxq_f64(v7);
        *v5 = vrndxq_f64(v8);
        *(v5 + 16) = v9;
        v5 += 32;
        v6 -= 4;
      }

      while (v6 > 3);
    }

    for (; v6; --v6)
    {
      v10 = v4->f64[0];
      v4 = (v4 + 8);
      v9.f64[0] = rint(v10);
      *v5 = v9.f64[0];
      v5 += 8;
    }

    return v9.f64[0];
  }

  v11 = *(v3 + 8);
  if (v11 == *v3)
  {
    v13 = 1;
    v14 = 1;
    do
    {
LABEL_32:
      v9.f64[0] = rint(v4->f64[0]);
      *v5 = v9.f64[0];
      v5 += 8;
      v4 = (v4 + 8 * v14);
      --v13;
    }

    while (v13);
    return v9.f64[0];
  }

  v12 = v11 - *v3;
  v13 = *(v11 - 4);
  v14 = *(*(v3 + 32) - 8);
  if ((v12 >> 2) <= 1)
  {
    if (!v13)
    {
      return v9.f64[0];
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v42, v3, (v3 + 24), (v12 >> 2) - 1);
  v16 = *(*a1 + 48);
  if (v16)
  {
    v17 = 0;
    v18 = v42;
    v19 = v45;
    v20 = (v44 - v43) >> 2;
    v21 = (((v44 - v43) << 30) - 0x100000000) >> 32;
    v22 = __p;
    v23 = __p + 4 * v21;
    v24 = v43 + 4 * v21;
    v25 = 8 * v14;
    v26 = 4 * (v20 & 0x7FFFFFFF);
    v27 = v43 - 8;
    do
    {
      if (v13)
      {
        v28 = &v4->f64[v18];
        v29 = v5;
        v30 = v13;
        do
        {
          v9.f64[0] = rint(*v28);
          *v29++ = *&v9.f64[0];
          v28 = (v28 + v25);
          --v30;
        }

        while (v30);
      }

      if (v20)
      {
        v31 = *v23;
        if (v20 >= 2 && v31 == *v24 - 1)
        {
          v32 = v22;
          v33 = v27;
          v34 = (v20 & 0x7FFFFFFF) - 1;
          v35 = v24;
          v36 = v23;
          v37 = v21;
          do
          {
            v38 = v34;
            *v36 = 0;
            v18 -= v19[v37] * (*v35 - 1);
            v42 = v18;
            --v34;
            v36 = &v32[v26 - 8];
            v31 = *v36;
            v32 -= 4;
            if (v38 < 2)
            {
              break;
            }

            v35 = &v33[v26];
            v39 = *&v33[4 * (v20 & 0x7FFFFFFF)] - 1;
            v33 -= 4;
            v37 = v34;
          }

          while (v31 == v39);
          v40 = &v32[v26 - 4];
        }

        else
        {
          v34 = v21;
          v40 = v23;
        }

        *v40 = v31 + 1;
        v18 += v19[v34];
        v42 = v18;
      }

      v17 += v13;
      v5 += 8 * v13;
    }

    while (v17 < v16);
    if (!v22)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v22 = __p;
    if (!__p)
    {
      goto LABEL_26;
    }
  }

  v48 = v22;
  operator delete(v22);
LABEL_26:
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  return v9.f64[0];
}

float32x2_t mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Round>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    for (i = *(v3 + 160); i; --i)
    {
      v7 = *v4++;
      result = vrndx_f32(v7);
      *v5++ = result;
    }

    return result;
  }

  v9 = *(v3 + 8);
  if (v9 == *v3)
  {
    v11 = 1;
    v12 = 1;
    do
    {
LABEL_32:
      result = vrndx_f32(*v4);
      *v5++ = result;
      v4 += v12;
      --v11;
    }

    while (v11);
    return result;
  }

  v10 = v9 - *v3;
  v11 = *(v9 - 4);
  v12 = *(*(v3 + 32) - 8);
  if ((v10 >> 2) <= 1)
  {
    if (!v11)
    {
      return result;
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v34, v3, (v3 + 24), (v10 >> 2) - 1);
  if (*(*a1 + 48))
  {
    v14 = 0;
    v15 = v34;
    do
    {
      if (v11)
      {
        v16 = &v4[v15];
        v17 = v5;
        v18 = v11;
        do
        {
          result = vrndx_f32(*v16);
          *v17++ = result;
          v16 += v12;
          --v18;
        }

        while (v18);
      }

      v19 = v36 - v35;
      v20 = (v36 - v35) >> 2;
      if (v20)
      {
        v21 = ((v19 << 30) - 0x100000000) >> 32;
        v22 = __p;
        v23 = v37;
        v24 = __p + 4 * v21;
        v25 = *v24;
        v26 = v35 + 4 * v21;
        if (v20 >= 2 && v25 == *v26 - 1)
        {
          v29 = (v19 >> 2) & 0x7FFFFFFF;
          v28 = v29 - 1;
          v30 = 4 * v29;
          v31 = v35 - 8;
          do
          {
            v32 = v28;
            *v24 = 0;
            v15 -= v23[v21] * (*v26 - 1);
            v34 = v15;
            --v28;
            v24 = &v22[v30 - 8];
            v25 = *v24;
            v22 -= 4;
            if (v32 < 2)
            {
              break;
            }

            v26 = &v31[v30];
            v33 = *&v31[4 * v29] - 1;
            v31 -= 4;
            v21 = v28;
          }

          while (v25 == v33);
          v24 = &v22[4 * v29 - 4];
        }

        else
        {
          v28 = ((v19 << 30) - 0x100000000) >> 32;
        }

        *v24 = v25 + 1;
        v15 += v23[v28];
        v34 = v15;
      }

      v14 += v11;
      v5 += v11;
    }

    while (v14 < *(*a1 + 48));
  }

  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  return result;
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Round>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Round,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Round>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Round,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1], a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A58E818(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Round>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Round,mlx::core::Stream)::{lambda(void)#1}>>(unint64_t *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Round>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Round,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Round>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Round,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
{
  *a2 = 0uLL;
  a2[1] = 0uLL;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A58E9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Round>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Round,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Round>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Round,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFD4E8;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Round>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Round,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Round>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Round,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFD4E8;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Round>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Round,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Round>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Round,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFD4E8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  *(a2 + 24) = result[3];
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 52) = 0;
  *(a2 + 49) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Round>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Round,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Round>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Round,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Round>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Round,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Round>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Round,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Round>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Round,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Round>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Round,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sigmoid>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sigmoid,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, __int128 *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *(a1 + 10) = (*(a1 + 10) + 1) % 10;
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0uLL;
  v14 = v3;
  v15 = v4;
  a2[1] = 0uLL;
  if (*(a1 + 10))
  {
    v5 = mlx::core::scheduler::scheduler(a1);
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sigmoid>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sigmoid,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
  }

  v6 = mlx::core::scheduler::scheduler(a1);
  mlx::core::scheduler::Scheduler::notify_new_task(v6);
  v10 = *a1;
  v11 = *(a1 + 2);
  v7 = v14;
  v14 = 0uLL;
  v12 = v7;
  v13 = v15;
  v15 = 0uLL;
  v9 = mlx::core::scheduler::scheduler(v8);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sigmoid>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sigmoid,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sigmoid&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A58ED9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  mlx::core::array::~array((v17 + 32));
  mlx::core::array::~array((v17 + 16));
  mlx::core::array::~array((v16 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sigmoid>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sigmoid,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sigmoid&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sigmoid>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sigmoid,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sigmoid&&)::{lambda(void)#1}>(&a1[1], a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A58EE70(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sigmoid>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sigmoid,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sigmoid&&)::{lambda(void)#1}>(unint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sigmoid>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sigmoid,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sigmoid&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sigmoid>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sigmoid,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sigmoid&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
{
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A58F054(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail7SigmoidEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFD5E0;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail7SigmoidEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFD5E0;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail7SigmoidEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFD5E0;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 48);
  *(a2 + 40) = *(result + 40);
  *(a2 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail7SigmoidEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail7SigmoidEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail7SigmoidEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1, int32x4_t a2)
{
  mlx::core::unary_fp<mlx::core::detail::Sigmoid>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sigmoid,mlx::core::Stream)::{lambda(void)#1}::operator()((a1 + 24), a2);
  v3 = mlx::core::scheduler::scheduler(v2);

  mlx::core::scheduler::Scheduler::notify_task_completion(v3);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail7SigmoidEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::unary_fp<mlx::core::detail::Sigmoid>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sigmoid,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t *a1, int32x4_t a2)
{
  v2 = a1 + 2;
  v3 = *(a1[2] + 56);
  if (v3 <= 10)
  {
    if (v3 == 9)
    {

      mlx::core::unary_op<half,half,mlx::core::detail::Sigmoid>(a1, (a1 + 2), a2);
    }

    else
    {
      if (v3 != 10)
      {
        goto LABEL_22;
      }

      mlx::core::unary_op<float,float,mlx::core::detail::Sigmoid>(a1, (a1 + 2));
    }
  }

  else
  {
    switch(v3)
    {
      case 11:

        mlx::core::unary_op<double,double,mlx::core::detail::Sigmoid>(a1, (a1 + 2));
        break;
      case 13:

        mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Sigmoid>(a1, (a1 + 2));
        break;
      case 12:

        mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Sigmoid>(a1, (a1 + 2));
        return;
      default:
LABEL_22:
        std::ostringstream::basic_ostringstream[abi:ne200100](v8);
        v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "[unary_fp] Does not support ", 28);
        v5 = *(*v2 + 56);
        LODWORD(v7[0]) = v5;
        BYTE4(v7[0]) = BYTE4(v5);
        mlx::core::operator<<(v4, v7);
        exception = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v8, v7);
        MEMORY[0x25F851100](exception, v7);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }
}

void sub_25A58F4C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Sigmoid>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    for (i = *(v3 + 160); i; --i)
    {
      v7 = *v4++;
      *v5++ = mlx::core::detail::Sigmoid::operator()<1,mlx::core::_MLX_BFloat16>(&v34, v7);
    }

    return;
  }

  v8 = *(v3 + 8);
  if (v8 == *v3)
  {
    v10 = 1;
    v11 = 1;
    do
    {
LABEL_32:
      *v5++ = mlx::core::detail::Sigmoid::operator()<1,mlx::core::_MLX_BFloat16>(&v34, *v4);
      v4 += v11;
      --v10;
    }

    while (v10);
    return;
  }

  v9 = v8 - *v3;
  v10 = *(v8 - 4);
  v11 = *(*(v3 + 32) - 8);
  if ((v9 >> 2) <= 1)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v34, v3, (v3 + 24), (v9 >> 2) - 1);
  if (*(*a1 + 48))
  {
    v13 = 0;
    v14 = 2 * v11;
    do
    {
      if (v10)
      {
        v15 = &v4[v34];
        v16 = v5;
        v17 = v10;
        do
        {
          *v16++ = mlx::core::detail::Sigmoid::operator()<1,mlx::core::_MLX_BFloat16>(&v41, *v15);
          v15 = (v15 + v14);
          --v17;
        }

        while (v17);
      }

      v18 = v36 - v35;
      v19 = (v36 - v35) >> 2;
      if (v19)
      {
        v20 = __p;
        v21 = ((v18 << 30) - 0x100000000) >> 32;
        v22 = __p + 4 * v21;
        v23 = *v22;
        v24 = v35 + 4 * v21;
        v25 = v37;
        v26 = v34;
        if (v19 >= 2 && v23 == *v24 - 1)
        {
          v29 = (v18 >> 2) & 0x7FFFFFFF;
          v28 = v29 - 1;
          v30 = 4 * v29;
          v31 = v35 - 8;
          do
          {
            v32 = v28;
            *v22 = 0;
            v26 -= v25[v21] * (*v24 - 1);
            v34 = v26;
            --v28;
            v22 = &v20[v30 - 8];
            v23 = *v22;
            v20 -= 4;
            if (v32 < 2)
            {
              break;
            }

            v24 = &v31[v30];
            v33 = *&v31[4 * v29] - 1;
            v31 -= 4;
            v21 = v28;
          }

          while (v23 == v33);
          v22 = &v20[4 * v29 - 4];
        }

        else
        {
          v28 = ((v18 << 30) - 0x100000000) >> 32;
        }

        *v22 = v23 + 1;
        v34 = v25[v28] + v26;
      }

      v13 += v10;
      v5 += v10;
    }

    while (v13 < *(*a1 + 48));
  }

  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }
}

void sub_25A58F768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  mlx::core::ContiguousIterator::~ContiguousIterator(va);
  _Unwind_Resume(a1);
}

void mlx::core::unary_op<half,half,mlx::core::detail::Sigmoid>(uint64_t *a1, uint64_t a2, int32x4_t _Q0)
{
  v4 = *a1;
  v5 = *(*a1 + 152);
  v6 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v7 = *(v4 + 160);
    if (v7 >= 8)
    {
      _Q0 = vdupq_n_s32(0xBFB8AA3B);
      v8 = vdupq_n_s32(0x3920FDDEu);
      v9 = vdupq_n_s32(0x3AAF9F29u);
      v10 = vdupq_n_s32(0x3C1D96A6u);
      v11 = vdupq_n_s32(0x3D635774u);
      v12 = vdupq_n_s32(0x3E75FDEEu);
      v13.i64[0] = 0x3F0000003F000000;
      v13.i64[1] = 0x3F0000003F000000;
      v14 = vdupq_n_s32(0x3F317218u);
      __asm { FMOV            V16.4S, #1.0 }

      v19 = vdupq_n_s16(0xD580u);
      v20 = vdupq_n_s16(0x5580u);
      v21.i64[0] = 0x3C003C003C003C00;
      v21.i64[1] = 0x3C003C003C003C00;
      do
      {
        v22 = *v5++;
        v23 = vmulq_f32(vcvt_hight_f32_f16(v22), _Q0);
        v24 = vmulq_f32(vcvtq_f32_f16(*v22.i8), _Q0);
        v25 = vrndmq_f32(vaddq_f32(v23, v13));
        v26 = vrndmq_f32(vaddq_f32(v24, v13));
        v27 = vsubq_f32(v24, v26);
        v28 = vsubq_f32(v23, v25);
        *v6++ = vbslq_s8(vcgtq_f16(v22, v20), v21, vbicq_s8(vdivq_f16(v21, vaddq_f16(vbslq_s8(vceqq_f16(v22, v22), vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_f32(vmlaq_f32(_Q16, v27, vmlaq_f32(v14, v27, vmlaq_f32(v12, v27, vmlaq_f32(v11, v27, vmlaq_f32(v10, v27, vmlaq_f32(v9, v8, v27)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v26), 0x17uLL), _Q16))), vmulq_f32(vmlaq_f32(_Q16, v28, vmlaq_f32(v14, v28, vmlaq_f32(v12, v28, vmlaq_f32(v11, v28, vmlaq_f32(v10, v28, vmlaq_f32(v9, v8, v28)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v25), 0x17uLL), _Q16))), vnegq_f16(v22)), v21)), vcgtq_f16(v19, v22)));
        v7 -= 8;
      }

      while (v7 > 7);
    }

    for (; v7; --v7)
    {
      v29 = *v5->i16;
      v5 = (v5 + 2);
      *_Q0.i16 = -v29;
      _Q0.i16[0] = mlx::core::simd::exp<half,1>(_Q0);
      __asm { FCVT            S0, H0 }

      *_Q0.i32 = 1.0 / (*_Q0.i32 + 1.0);
      __asm { FCVT            H0, S0 }

      v6->i16[0] = _Q0.i16[0];
      v6 = (v6 + 2);
    }

    return;
  }

  v30 = *(v4 + 8);
  if (v30 == *v4)
  {
    v33 = 1;
    v32 = 1;
  }

  else
  {
    v31 = v30 - *v4;
    v32 = *(v30 - 4);
    v33 = *(*(v4 + 32) - 8);
    if ((v31 >> 2) > 1)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v54, v4, (v4 + 24), (v31 >> 2) - 1);
      if (*(*a1 + 48))
      {
        v36 = 0;
        do
        {
          mlx::core::unary_op<half,half,mlx::core::detail::Sigmoid>(&v5->i16[v54], &v6->i16[v36], v32, v33, v35);
          v37 = v56 - v55;
          v38 = (v56 - v55) >> 2;
          if (v38)
          {
            v39 = __p;
            v40 = ((v37 << 30) - 0x100000000) >> 32;
            v41 = __p + 4 * v40;
            v42 = *v41;
            v43 = v55 + 4 * v40;
            v44 = v57;
            v45 = v54;
            if (v38 >= 2 && v42 == *v43 - 1)
            {
              v48 = (v37 >> 2) & 0x7FFFFFFF;
              v47 = v48 - 1;
              v49 = 4 * v48;
              v50 = v55 - 8;
              do
              {
                v51 = v47;
                *v41 = 0;
                v45 -= v44[v40] * (*v43 - 1);
                v54 = v45;
                --v47;
                v41 = &v39[v49 - 8];
                v42 = *v41;
                v39 -= 4;
                if (v51 < 2)
                {
                  break;
                }

                v43 = &v50[v49];
                v52 = *&v50[4 * v48] - 1;
                v50 -= 4;
                v40 = v47;
              }

              while (v42 == v52);
              v41 = &v39[4 * v48 - 4];
            }

            else
            {
              v47 = ((v37 << 30) - 0x100000000) >> 32;
            }

            *v41 = v42 + 1;
            v54 = v44[v47] + v45;
          }

          v36 += v32;
        }

        while (v36 < *(*a1 + 48));
      }

      if (__p)
      {
        v60 = __p;
        operator delete(__p);
      }

      if (v57)
      {
        v58 = v57;
        operator delete(v57);
      }

      if (v55)
      {
        v56 = v55;
        operator delete(v55);
      }

      return;
    }
  }

  v53 = *(*a1 + 152);

  mlx::core::unary_op<half,half,mlx::core::detail::Sigmoid>(v53, v6, v32, v33, _Q0);
}

void mlx::core::unary_op<float,float,mlx::core::detail::Sigmoid>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 8)
    {
      v7 = vdupq_n_s32(0xBFB8AA3B);
      v8.i64[0] = 0x3F0000003F000000;
      v8.i64[1] = 0x3F0000003F000000;
      v9 = vdupq_n_s32(0x3920FDDEu);
      v10 = vdupq_n_s32(0x3AAF9F29u);
      v11 = vdupq_n_s32(0x3C1D96A6u);
      v12 = vdupq_n_s32(0x3D635774u);
      v13 = vdupq_n_s32(0x3E75FDEEu);
      v14 = vdupq_n_s32(0x3F317218u);
      __asm { FMOV            V16.4S, #1.0 }

      v19 = vdupq_n_s32(0xC2B00000);
      v20 = vdupq_n_s32(0x42B00000u);
      do
      {
        v21 = *v4;
        v22 = *(v4 + 1);
        v4 += 2;
        v23 = vmulq_f32(v22, v7);
        v24 = vmulq_f32(v21, v7);
        v25 = vrndmq_f32(vaddq_f32(v23, v8));
        v26 = vrndmq_f32(vaddq_f32(v24, v8));
        v27 = vsubq_f32(v24, v26);
        v28 = vsubq_f32(v23, v25);
        *v5 = vbslq_s8(vcgtq_f32(v21, v20), _Q16, vbicq_s8(vdivq_f32(_Q16, vaddq_f32(vbslq_s8(vceqq_f32(v21, v21), vmulq_f32(vmlaq_f32(_Q16, v27, vmlaq_f32(v14, v27, vmlaq_f32(v13, v27, vmlaq_f32(v12, v27, vmlaq_f32(v11, v27, vmlaq_f32(v10, v9, v27)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v26), 0x17uLL), _Q16)), vnegq_f32(v21)), _Q16)), vcgtq_f32(v19, v21)));
        v5[1] = vbslq_s8(vcgtq_f32(v22, v20), _Q16, vbicq_s8(vdivq_f32(_Q16, vaddq_f32(vbslq_s8(vceqq_f32(v22, v22), vmulq_f32(vmlaq_f32(_Q16, v28, vmlaq_f32(v14, v28, vmlaq_f32(v13, v28, vmlaq_f32(v12, v28, vmlaq_f32(v11, v28, vmlaq_f32(v10, v9, v28)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v25), 0x17uLL), _Q16)), vnegq_f32(v22)), _Q16)), vcgtq_f32(v19, v22)));
        v5 += 2;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v29 = *v4;
      v4 = (v4 + 4);
      *v5->i32 = 1.0 / (mlx::core::simd::exp<float,1>(-v29) + 1.0);
      v5 = (v5 + 4);
    }

    return;
  }

  v30 = *(v3 + 8);
  if (v30 == *v3)
  {
    v32 = 1;
    v33 = 1;
    do
    {
LABEL_35:
      *v5->i32 = 1.0 / (mlx::core::simd::exp<float,1>(-*v4) + 1.0);
      v5 = (v5 + 4);
      v4 = (v4 + 4 * v33);
      --v32;
    }

    while (v32);
    return;
  }

  v31 = v30 - *v3;
  v32 = *(v30 - 4);
  v33 = *(*(v3 + 32) - 8);
  if ((v31 >> 2) <= 1)
  {
    if (!v32)
    {
      return;
    }

    goto LABEL_35;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v56, v3, (v3 + 24), (v31 >> 2) - 1);
  if (*(*a1 + 48))
  {
    v35 = 0;
    v36 = 4 * v33;
    do
    {
      if (v32)
      {
        v37 = v4 + v56;
        v38 = v5;
        v39 = v32;
        do
        {
          *v38++ = 1.0 / (mlx::core::simd::exp<float,1>(-*v37) + 1.0);
          v37 = (v37 + v36);
          --v39;
        }

        while (v39);
      }

      v40 = v58 - v57;
      v41 = (v58 - v57) >> 2;
      if (v41)
      {
        v42 = __p;
        v43 = ((v40 << 30) - 0x100000000) >> 32;
        v44 = __p + 4 * v43;
        v45 = *v44;
        v46 = v57 + 4 * v43;
        v47 = v59;
        v48 = v56;
        if (v41 >= 2 && v45 == *v46 - 1)
        {
          v51 = (v40 >> 2) & 0x7FFFFFFF;
          v50 = v51 - 1;
          v52 = 4 * v51;
          v53 = v57 - 8;
          do
          {
            v54 = v50;
            *v44 = 0;
            v48 -= v47[v43] * (*v46 - 1);
            v56 = v48;
            --v50;
            v44 = &v42[v52 - 8];
            v45 = *v44;
            v42 -= 4;
            if (v54 < 2)
            {
              break;
            }

            v46 = &v53[v52];
            v55 = *&v53[4 * v51] - 1;
            v53 -= 4;
            v43 = v50;
          }

          while (v45 == v55);
          v44 = &v42[4 * v51 - 4];
        }

        else
        {
          v50 = ((v40 << 30) - 0x100000000) >> 32;
        }

        *v44 = v45 + 1;
        v56 = v47[v50] + v48;
      }

      v35 += v32;
      v5 = (v5 + 4 * v32);
    }

    while (v35 < *(*a1 + 48));
  }

  if (__p)
  {
    v62 = __p;
    operator delete(__p);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }
}

void mlx::core::unary_op<double,double,mlx::core::detail::Sigmoid>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 4)
    {
      v7 = vdupq_n_s32(0xBFB8AA3B);
      v8.i64[0] = 0x3F0000003F000000;
      v8.i64[1] = 0x3F0000003F000000;
      v9 = vdupq_n_s32(0x3920FDDEu);
      v10 = vdupq_n_s32(0x3AAF9F29u);
      v11 = vdupq_n_s32(0x3C1D96A6u);
      v12 = vdupq_n_s32(0x3D635774u);
      v13 = vdupq_n_s32(0x3E75FDEEu);
      v14 = vdupq_n_s32(0x3F317218u);
      __asm { FMOV            V16.4S, #1.0 }

      v19 = vdupq_n_s32(0xC2B00000);
      v20 = vdupq_n_s32(0x42B00000u);
      v21.i64[0] = 0x7F0000007FLL;
      v21.i64[1] = 0x7F0000007FLL;
      v22 = vnegq_f32(v21);
      __asm { FMOV            V20.2D, #1.0 }

      do
      {
        v25 = *v4;
        v24 = *(v4 + 1);
        v4 += 2;
        v26 = vcvt_hight_f32_f64(vcvt_f32_f64(v25), v24);
        v27 = vmulq_f32(v26, v7);
        v28 = vrndmq_f32(vaddq_f32(v27, v8));
        v29 = vsubq_f32(v27, v28);
        v30 = vbicq_s8(vbslq_s8(vcgtq_f32(v19, v26), v22, vbslq_s8(vceqq_f32(v26, v26), vmulq_f32(vmlaq_f32(_Q16, v29, vmlaq_f32(v14, v29, vmlaq_f32(v13, v29, vmlaq_f32(v12, v29, vmlaq_f32(v11, v29, vmlaq_f32(v10, v9, v29)))))), vaddq_s32(vshlq_n_s32(vcvtq_s32_f32(v28), 0x17uLL), _Q16)), vnegq_f32(v26))), vcgtq_f32(v26, v20));
        *v5 = vdivq_f64(_Q20, vaddq_f64(vcvtq_f64_f32(*v30.f32), _Q20));
        v5[1] = vdivq_f64(_Q20, vaddq_f64(vcvt_hight_f64_f32(v30), _Q20));
        v5 += 2;
        v6 -= 4;
      }

      while (v6 > 3);
    }

    for (; v6; --v6)
    {
      v31 = *v4;
      v4 = (v4 + 8);
      v5->f64[0] = 1.0 / (mlx::core::simd::exp<double,1>(-v31) + 1.0);
      v5 = (v5 + 8);
    }

    return;
  }

  v32 = *(v3 + 8);
  if (v32 == *v3)
  {
    v34 = 1;
    v35 = 1;
    do
    {
LABEL_35:
      v5->f64[0] = 1.0 / (mlx::core::simd::exp<double,1>(-*v4) + 1.0);
      v5 = (v5 + 8);
      v4 = (v4 + 8 * v35);
      --v34;
    }

    while (v34);
    return;
  }

  v33 = v32 - *v3;
  v34 = *(v32 - 4);
  v35 = *(*(v3 + 32) - 8);
  if ((v33 >> 2) <= 1)
  {
    if (!v34)
    {
      return;
    }

    goto LABEL_35;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v58, v3, (v3 + 24), (v33 >> 2) - 1);
  if (*(*a1 + 48))
  {
    v37 = 0;
    v38 = 8 * v35;
    do
    {
      if (v34)
      {
        v39 = v4 + v58;
        v40 = v5;
        v41 = v34;
        do
        {
          *v40++ = 1.0 / (mlx::core::simd::exp<double,1>(-*v39) + 1.0);
          v39 = (v39 + v38);
          --v41;
        }

        while (v41);
      }

      v42 = v60 - v59;
      v43 = (v60 - v59) >> 2;
      if (v43)
      {
        v44 = __p;
        v45 = ((v42 << 30) - 0x100000000) >> 32;
        v46 = __p + 4 * v45;
        v47 = *v46;
        v48 = v59 + 4 * v45;
        v49 = v61;
        v50 = v58;
        if (v43 >= 2 && v47 == *v48 - 1)
        {
          v53 = (v42 >> 2) & 0x7FFFFFFF;
          v52 = v53 - 1;
          v54 = 4 * v53;
          v55 = v59 - 8;
          do
          {
            v56 = v52;
            *v46 = 0;
            v50 -= v49[v45] * (*v48 - 1);
            v58 = v50;
            --v52;
            v46 = &v44[v54 - 8];
            v47 = *v46;
            v44 -= 4;
            if (v56 < 2)
            {
              break;
            }

            v48 = &v55[v54];
            v57 = *&v55[4 * v53] - 1;
            v55 -= 4;
            v45 = v52;
          }

          while (v47 == v57);
          v46 = &v44[4 * v53 - 4];
        }

        else
        {
          v52 = ((v42 << 30) - 0x100000000) >> 32;
        }

        *v46 = v47 + 1;
        v58 = v49[v52] + v50;
      }

      v37 += v34;
      v5 = (v5 + 8 * v34);
    }

    while (v37 < *(*a1 + 48));
  }

  if (__p)
  {
    v64 = __p;
    operator delete(__p);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }
}

void mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Sigmoid>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    for (i = *(v3 + 160); i; --i)
    {
      v7 = *v4;
      v8 = v4[1];
      v4 += 2;
      *v5 = mlx::core::detail::Sigmoid::operator()<1,mlx::core::complex64_t>(v7, v8);
      *(v5 + 4) = v9;
      v5 += 8;
    }

    return;
  }

  v10 = *(v3 + 8);
  if (v10 == *v3)
  {
    v13 = 1;
    v12 = 1;
  }

  else
  {
    v11 = v10 - *v3;
    v12 = *(v10 - 4);
    v13 = *(*(v3 + 32) - 8);
    if ((v11 >> 2) > 1)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v33, v3, (v3 + 24), (v11 >> 2) - 1);
      if (*(*a1 + 48))
      {
        v15 = 0;
        do
        {
          mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Sigmoid>(&v4[2 * v33], v5 + 8 * v15, v12, v13);
          v16 = v35 - v34;
          v17 = (v35 - v34) >> 2;
          if (v17)
          {
            v18 = __p;
            v19 = ((v16 << 30) - 0x100000000) >> 32;
            v20 = __p + 4 * v19;
            v21 = *v20;
            v22 = v34 + 4 * v19;
            v23 = v36;
            v24 = v33;
            if (v17 >= 2 && v21 == *v22 - 1)
            {
              v27 = (v16 >> 2) & 0x7FFFFFFF;
              v26 = v27 - 1;
              v28 = 4 * v27;
              v29 = v34 - 8;
              do
              {
                v30 = v26;
                *v20 = 0;
                v24 -= v23[v19] * (*v22 - 1);
                v33 = v24;
                --v26;
                v20 = &v18[v28 - 8];
                v21 = *v20;
                v18 -= 4;
                if (v30 < 2)
                {
                  break;
                }

                v22 = &v29[v28];
                v31 = *&v29[4 * v27] - 1;
                v29 -= 4;
                v19 = v26;
              }

              while (v21 == v31);
              v20 = &v18[4 * v27 - 4];
            }

            else
            {
              v26 = ((v16 << 30) - 0x100000000) >> 32;
            }

            *v20 = v21 + 1;
            v33 = v23[v26] + v24;
          }

          v15 += v12;
        }

        while (v15 < *(*a1 + 48));
      }

      if (__p)
      {
        v39 = __p;
        operator delete(__p);
      }

      if (v36)
      {
        v37 = v36;
        operator delete(v36);
      }

      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }

      return;
    }
  }

  v32 = *(*a1 + 152);

  mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Sigmoid>(v32, v5, v12, v13);
}

void mlx::core::unary_op<half,half,mlx::core::detail::Sigmoid>(short float *a1, _WORD *a2, uint64_t a3, uint64_t a4, __n128 _Q0)
{
  if (a3)
  {
    v5 = a3;
    v8 = 2 * a4;
    do
    {
      *_Q0.n128_u16 = -*a1;
      _Q0.n128_u16[0] = mlx::core::simd::exp<half,1>(_Q0);
      __asm { FCVT            S0, H0 }

      _Q0.n128_f32[0] = 1.0 / (_Q0.n128_f32[0] + 1.0);
      __asm { FCVT            H0, S0 }

      *a2++ = _Q0.n128_u16[0];
      a1 = (a1 + v8);
      --v5;
    }

    while (v5);
  }
}

float mlx::core::detail::Sigmoid::operator()<1,mlx::core::complex64_t>(float a1, float a2)
{
  v5[0] = -a1;
  v5[1] = -a2;
  std::exp[abi:ne200100]<float>(v5);
  return __divsc3(1.0, 0.0, v2 + 1.0, v3 + 0.0);
}

void mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Sigmoid>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a3;
    v5 = (a1 + 4);
    v6 = 8 * a4;
    v7 = (a2 + 4);
    do
    {
      *(v7 - 1) = mlx::core::detail::Sigmoid::operator()<1,mlx::core::complex64_t>(*(v5 - 1), *v5);
      *v7 = v8;
      v5 = (v5 + v6);
      v7 += 2;
      --v4;
    }

    while (v4);
  }
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sigmoid>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sigmoid,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sigmoid>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sigmoid,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1], a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A59078C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sigmoid>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sigmoid,mlx::core::Stream)::{lambda(void)#1}>>(unint64_t *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sigmoid>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sigmoid,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sigmoid>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sigmoid,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
{
  *a2 = 0uLL;
  a2[1] = 0uLL;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A59095C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sigmoid>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sigmoid,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sigmoid>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sigmoid,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFD660;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sigmoid>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sigmoid,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sigmoid>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sigmoid,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFD660;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sigmoid>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sigmoid,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sigmoid>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sigmoid,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFD660;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  *(a2 + 24) = result[3];
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 52) = 0;
  *(a2 + 49) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sigmoid>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sigmoid,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sigmoid>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sigmoid,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sigmoid>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sigmoid,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sigmoid>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sigmoid,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sigmoid>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sigmoid,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sigmoid>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sigmoid,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary<mlx::core::detail::Sign>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sign,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, __int128 *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *(a1 + 10) = (*(a1 + 10) + 1) % 10;
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0uLL;
  v14 = v3;
  v15 = v4;
  a2[1] = 0uLL;
  if (*(a1 + 10))
  {
    v5 = mlx::core::scheduler::scheduler(a1);
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary<mlx::core::detail::Sign>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sign,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
  }

  v6 = mlx::core::scheduler::scheduler(a1);
  mlx::core::scheduler::Scheduler::notify_new_task(v6);
  v10 = *a1;
  v11 = *(a1 + 2);
  v7 = v14;
  v14 = 0uLL;
  v12 = v7;
  v13 = v15;
  v15 = 0uLL;
  v9 = mlx::core::scheduler::scheduler(v8);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary<mlx::core::detail::Sign>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sign,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sign&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A590D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  mlx::core::array::~array((v17 + 32));
  mlx::core::array::~array((v17 + 16));
  mlx::core::array::~array((v16 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary<mlx::core::detail::Sign>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sign,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sign&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary<mlx::core::detail::Sign>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sign,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sign&&)::{lambda(void)#1}>(&a1[1], a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A590DE4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary<mlx::core::detail::Sign>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sign,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sign&&)::{lambda(void)#1}>(unint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary<mlx::core::detail::Sign>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sign,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sign&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary<mlx::core::detail::Sign>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sign,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sign&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
{
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A590FC8(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_5unaryINS3_6detail4SignEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFD758;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_5unaryINS3_6detail4SignEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFD758;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_5unaryINS3_6detail4SignEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFD758;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 48);
  *(a2 + 40) = *(result + 40);
  *(a2 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_5unaryINS3_6detail4SignEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_5unaryINS3_6detail4SignEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_5unaryINS3_6detail4SignEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::unary<mlx::core::detail::Sign>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sign,mlx::core::Stream)::{lambda(void)#1}::operator()((a1 + 24));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_5unaryINS3_6detail4SignEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::unary<mlx::core::detail::Sign>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sign,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t *result)
{
  v1 = (result + 2);
  switch(*(result[2] + 56))
  {
    case 0:
      mlx::core::unary_op<BOOL,BOOL,mlx::core::detail::Sign>(result, v1);
      break;
    case 1:
      mlx::core::unary_op<unsigned char,unsigned char,mlx::core::detail::Sign>(result, v1);
      break;
    case 2:
      mlx::core::unary_op<unsigned short,unsigned short,mlx::core::detail::Sign>(result, v1);
      break;
    case 3:
      mlx::core::unary_op<unsigned int,unsigned int,mlx::core::detail::Sign>(result, v1);
      break;
    case 4:
      mlx::core::unary_op<unsigned long long,unsigned long long,mlx::core::detail::Sign>(result, v1);
      break;
    case 5:
      mlx::core::unary_op<signed char,signed char,mlx::core::detail::Sign>(result, v1);
      break;
    case 6:
      mlx::core::unary_op<short,short,mlx::core::detail::Sign>(result, v1);
      break;
    case 7:
      mlx::core::unary_op<int,int,mlx::core::detail::Sign>(result, v1);
      break;
    case 8:
      mlx::core::unary_op<long long,long long,mlx::core::detail::Sign>(result, v1);
      break;
    case 9:
      mlx::core::unary_op<half,half,mlx::core::detail::Sign>(result, v1);
      break;
    case 0xA:
      mlx::core::unary_op<float,float,mlx::core::detail::Sign>(result, v1);
      break;
    case 0xB:
      mlx::core::unary_op<double,double,mlx::core::detail::Sign>(result, v1);
      break;
    case 0xC:
      mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Sign>(result, v1);
      break;
    case 0xD:
      mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Sign>(result, v1);
      break;
    default:
      return;
  }
}

void mlx::core::unary_op<BOOL,BOOL,mlx::core::detail::Sign>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    for (i = *(v3 + 160); i; --i)
    {
      v7 = *v4++;
      *v5++ = v7 & 1;
    }

    return;
  }

  v8 = *(v3 + 8);
  if (v8 == *v3)
  {
    v10 = 1;
    v11 = 1;
    do
    {
LABEL_30:
      *v5++ = *v4;
      v4 += v11;
      --v10;
    }

    while (v10);
    return;
  }

  v9 = v8 - *v3;
  v10 = *(v8 - 4);
  v11 = *(*(v3 + 32) - 8);
  if ((v9 >> 2) <= 1)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_30;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v37, v3, (v3 + 24), (v9 >> 2) - 1);
  v13 = *(*a1 + 48);
  if (v13)
  {
    v14 = 0;
    v15 = v37;
    v16 = v40;
    v17 = (v39 - v38) >> 2;
    v18 = (((v39 - v38) << 30) - 0x100000000) >> 32;
    v19 = __p;
    v20 = __p + 4 * v18;
    v21 = v38 + 4 * v18;
    v22 = 4 * (v17 & 0x7FFFFFFF);
    v23 = v38 - 8;
    do
    {
      if (v10)
      {
        v24 = &v4[v15];
        v25 = v5;
        v26 = v10;
        do
        {
          *v25++ = *v24;
          v24 += v11;
          --v26;
        }

        while (v26);
      }

      if (v17)
      {
        v27 = *v20;
        if (v17 >= 2 && v27 == *v21 - 1)
        {
          v28 = v19;
          v29 = v23;
          v30 = (v17 & 0x7FFFFFFF) - 1;
          v31 = v21;
          v32 = v20;
          v33 = v18;
          do
          {
            v34 = v30;
            *v32 = 0;
            v15 -= v16[v33] * (*v31 - 1);
            v37 = v15;
            --v30;
            v32 = &v28[v22 - 8];
            v27 = *v32;
            v28 -= 4;
            if (v34 < 2)
            {
              break;
            }

            v31 = &v29[v22];
            v35 = *&v29[4 * (v17 & 0x7FFFFFFF)] - 1;
            v29 -= 4;
            v33 = v30;
          }

          while (v27 == v35);
          v36 = &v28[v22 - 4];
        }

        else
        {
          v30 = v18;
          v36 = v20;
        }

        *v36 = v27 + 1;
        v15 += v16[v30];
        v37 = v15;
      }

      v14 += v10;
      v5 += v10;
    }

    while (v14 < v13);
    if (!v19)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v19 = __p;
    if (!__p)
    {
      goto LABEL_24;
    }
  }

  v43 = v19;
  operator delete(v19);
LABEL_24:
  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }
}

void mlx::core::unary_op<unsigned char,unsigned char,mlx::core::detail::Sign>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 0x10)
    {
      v7.i64[0] = 0x101010101010101;
      v7.i64[1] = 0x101010101010101;
      do
      {
        v8 = *v4++;
        *v5++ = vbicq_s8(v7, vceqzq_s8(v8));
        v6 -= 16;
      }

      while (v6 > 0xF);
    }

    for (; v6; --v6)
    {
      v9 = v4->u8[0];
      v4 = (v4 + 1);
      v5->i8[0] = v9 != 0;
      v5 = (v5 + 1);
    }

    return;
  }

  v10 = *(v3 + 8);
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
    do
    {
LABEL_35:
      v5->i8[0] = v4->i8[0] != 0;
      v5 = (v5 + 1);
      v4 = (v4 + v13);
      --v12;
    }

    while (v12);
    return;
  }

  v11 = v10 - *v3;
  v12 = *(v10 - 4);
  v13 = *(*(v3 + 32) - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_35;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v35, v3, (v3 + 24), (v11 >> 2) - 1);
  if (*(*a1 + 48))
  {
    v15 = 0;
    v16 = v35;
    do
    {
      if (v12)
      {
        v17 = &v4->i8[v16];
        v18 = v5;
        v19 = v12;
        do
        {
          v18->i8[0] = *v17 != 0;
          v18 = (v18 + 1);
          v17 += v13;
          --v19;
        }

        while (v19);
      }

      v20 = v37 - v36;
      v21 = (v37 - v36) >> 2;
      if (v21)
      {
        v22 = ((v20 << 30) - 0x100000000) >> 32;
        v23 = __p;
        v24 = v38;
        v25 = __p + 4 * v22;
        v26 = *v25;
        v27 = v36 + 4 * v22;
        if (v21 >= 2 && v26 == *v27 - 1)
        {
          v30 = (v20 >> 2) & 0x7FFFFFFF;
          v29 = v30 - 1;
          v31 = 4 * v30;
          v32 = v36 - 8;
          do
          {
            v33 = v29;
            *v25 = 0;
            v16 -= v24[v22] * (*v27 - 1);
            v35 = v16;
            --v29;
            v25 = &v23[v31 - 8];
            v26 = *v25;
            v23 -= 4;
            if (v33 < 2)
            {
              break;
            }

            v27 = &v32[v31];
            v34 = *&v32[4 * v30] - 1;
            v32 -= 4;
            v22 = v29;
          }

          while (v26 == v34);
          v25 = &v23[4 * v30 - 4];
        }

        else
        {
          v29 = ((v20 << 30) - 0x100000000) >> 32;
        }

        *v25 = v26 + 1;
        v16 += v24[v29];
        v35 = v16;
      }

      v15 += v12;
      v5 = (v5 + v12);
    }

    while (v15 < *(*a1 + 48));
  }

  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }
}

void mlx::core::unary_op<unsigned short,unsigned short,mlx::core::detail::Sign>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 0x10)
    {
      v7.i64[0] = 0x1000100010001;
      v7.i64[1] = 0x1000100010001;
      do
      {
        v9 = *v4;
        v8 = *(v4 + 1);
        v4 += 2;
        *v5 = vbicq_s8(v7, vceqzq_s16(v9));
        v5[1] = vbicq_s8(v7, vceqzq_s16(v8));
        v5 += 2;
        v6 -= 16;
      }

      while (v6 > 0xF);
    }

    for (; v6; --v6)
    {
      v10 = *v4;
      v4 = (v4 + 2);
      v5->i16[0] = v10 != 0;
      v5 = (v5 + 2);
    }

    return;
  }

  v11 = *(v3 + 8);
  if (v11 == *v3)
  {
    v13 = 1;
    v14 = 1;
    do
    {
LABEL_33:
      v5->i16[0] = *v4 != 0;
      v5 = (v5 + 2);
      v4 = (v4 + 2 * v14);
      --v13;
    }

    while (v13);
    return;
  }

  v12 = v11 - *v3;
  v13 = *(v11 - 4);
  v14 = *(*(v3 + 32) - 8);
  if ((v12 >> 2) <= 1)
  {
    if (!v13)
    {
      return;
    }

    goto LABEL_33;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v41, v3, (v3 + 24), (v12 >> 2) - 1);
  v16 = *(*a1 + 48);
  if (v16)
  {
    v17 = 0;
    v18 = v41;
    v19 = v44;
    v20 = (v43 - v42) >> 2;
    v21 = (((v43 - v42) << 30) - 0x100000000) >> 32;
    v22 = __p;
    v23 = __p + 4 * v21;
    v24 = v42 + 4 * v21;
    v25 = 2 * v14;
    v26 = 4 * (v20 & 0x7FFFFFFF);
    v27 = v42 - 8;
    do
    {
      if (v13)
      {
        v28 = v4 + v18;
        v29 = v5;
        v30 = v13;
        do
        {
          v29->i16[0] = *v28 != 0;
          v29 = (v29 + 2);
          v28 = (v28 + v25);
          --v30;
        }

        while (v30);
      }

      if (v20)
      {
        v31 = *v23;
        if (v20 >= 2 && v31 == *v24 - 1)
        {
          v32 = v22;
          v33 = v27;
          v34 = (v20 & 0x7FFFFFFF) - 1;
          v35 = v24;
          v36 = v23;
          v37 = v21;
          do
          {
            v38 = v34;
            *v36 = 0;
            v18 -= v19[v37] * (*v35 - 1);
            v41 = v18;
            --v34;
            v36 = &v32[v26 - 8];
            v31 = *v36;
            v32 -= 4;
            if (v38 < 2)
            {
              break;
            }

            v35 = &v33[v26];
            v39 = *&v33[4 * (v20 & 0x7FFFFFFF)] - 1;
            v33 -= 4;
            v37 = v34;
          }

          while (v31 == v39);
          v40 = &v32[v26 - 4];
        }

        else
        {
          v34 = v21;
          v40 = v23;
        }

        *v40 = v31 + 1;
        v18 += v19[v34];
        v41 = v18;
      }

      v17 += v13;
      v5 = (v5 + 2 * v13);
    }

    while (v17 < v16);
    if (!v22)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v22 = __p;
    if (!__p)
    {
      goto LABEL_27;
    }
  }

  v47 = v22;
  operator delete(v22);
LABEL_27:
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }
}

void mlx::core::unary_op<unsigned int,unsigned int,mlx::core::detail::Sign>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 8)
    {
      v7.i64[0] = 0x100000001;
      v7.i64[1] = 0x100000001;
      do
      {
        v9 = *v4;
        v8 = *(v4 + 1);
        v4 += 2;
        *v5 = vbicq_s8(v7, vceqzq_s32(v9));
        v5[1] = vbicq_s8(v7, vceqzq_s32(v8));
        v5 += 2;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v10 = *v4;
      v4 = (v4 + 4);
      v5->i32[0] = v10 != 0;
      v5 = (v5 + 4);
    }

    return;
  }

  v11 = *(v3 + 8);
  if (v11 == *v3)
  {
    v13 = 1;
    v14 = 1;
    do
    {
LABEL_33:
      v5->i32[0] = *v4 != 0;
      v5 = (v5 + 4);
      v4 = (v4 + 4 * v14);
      --v13;
    }

    while (v13);
    return;
  }

  v12 = v11 - *v3;
  v13 = *(v11 - 4);
  v14 = *(*(v3 + 32) - 8);
  if ((v12 >> 2) <= 1)
  {
    if (!v13)
    {
      return;
    }

    goto LABEL_33;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v41, v3, (v3 + 24), (v12 >> 2) - 1);
  v16 = *(*a1 + 48);
  if (v16)
  {
    v17 = 0;
    v18 = v41;
    v19 = v44;
    v20 = (v43 - v42) >> 2;
    v21 = (((v43 - v42) << 30) - 0x100000000) >> 32;
    v22 = __p;
    v23 = __p + 4 * v21;
    v24 = v42 + 4 * v21;
    v25 = 4 * v14;
    v26 = 4 * (v20 & 0x7FFFFFFF);
    v27 = v42 - 8;
    do
    {
      if (v13)
      {
        v28 = v4 + v18;
        v29 = v5;
        v30 = v13;
        do
        {
          v29->i32[0] = *v28 != 0;
          v29 = (v29 + 4);
          v28 = (v28 + v25);
          --v30;
        }

        while (v30);
      }

      if (v20)
      {
        v31 = *v23;
        if (v20 >= 2 && v31 == *v24 - 1)
        {
          v32 = v22;
          v33 = v27;
          v34 = (v20 & 0x7FFFFFFF) - 1;
          v35 = v24;
          v36 = v23;
          v37 = v21;
          do
          {
            v38 = v34;
            *v36 = 0;
            v18 -= v19[v37] * (*v35 - 1);
            v41 = v18;
            --v34;
            v36 = &v32[v26 - 8];
            v31 = *v36;
            v32 -= 4;
            if (v38 < 2)
            {
              break;
            }

            v35 = &v33[v26];
            v39 = *&v33[4 * (v20 & 0x7FFFFFFF)] - 1;
            v33 -= 4;
            v37 = v34;
          }

          while (v31 == v39);
          v40 = &v32[v26 - 4];
        }

        else
        {
          v34 = v21;
          v40 = v23;
        }

        *v40 = v31 + 1;
        v18 += v19[v34];
        v41 = v18;
      }

      v17 += v13;
      v5 = (v5 + 4 * v13);
    }

    while (v17 < v16);
    if (!v22)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v22 = __p;
    if (!__p)
    {
      goto LABEL_27;
    }
  }

  v47 = v22;
  operator delete(v22);
LABEL_27:
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }
}

void mlx::core::unary_op<unsigned long long,unsigned long long,mlx::core::detail::Sign>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 4)
    {
      v7 = vdupq_n_s64(1uLL);
      do
      {
        v9 = *v4;
        v8 = *(v4 + 1);
        v4 += 2;
        *v5 = vbicq_s8(v7, vceqzq_s64(v9));
        v5[1] = vbicq_s8(v7, vceqzq_s64(v8));
        v5 += 2;
        v6 -= 4;
      }

      while (v6 > 3);
    }

    for (; v6; --v6)
    {
      v10 = *v4;
      v4 = (v4 + 8);
      v5->i64[0] = v10 != 0;
      v5 = (v5 + 8);
    }

    return;
  }

  v11 = *(v3 + 8);
  if (v11 == *v3)
  {
    v13 = 1;
    v14 = 1;
    do
    {
LABEL_33:
      v5->i64[0] = *v4 != 0;
      v5 = (v5 + 8);
      v4 = (v4 + 8 * v14);
      --v13;
    }

    while (v13);
    return;
  }

  v12 = v11 - *v3;
  v13 = *(v11 - 4);
  v14 = *(*(v3 + 32) - 8);
  if ((v12 >> 2) <= 1)
  {
    if (!v13)
    {
      return;
    }

    goto LABEL_33;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v41, v3, (v3 + 24), (v12 >> 2) - 1);
  v16 = *(*a1 + 48);
  if (v16)
  {
    v17 = 0;
    v18 = v44;
    v19 = v41;
    v20 = (v43 - v42) >> 2;
    v21 = (((v43 - v42) << 30) - 0x100000000) >> 32;
    v22 = __p;
    v23 = __p + 4 * v21;
    v24 = v42 + 4 * v21;
    v25 = 8 * v14;
    v26 = 4 * (v20 & 0x7FFFFFFF);
    v27 = v42 - 8;
    do
    {
      if (v13)
      {
        v28 = v4 + v19;
        v29 = v5;
        v30 = v13;
        do
        {
          *v29++ = *v28 != 0;
          v28 = (v28 + v25);
          --v30;
        }

        while (v30);
      }

      if (v20)
      {
        v31 = *v23;
        if (v20 >= 2 && v31 == *v24 - 1)
        {
          v32 = v22;
          v33 = v27;
          v34 = (v20 & 0x7FFFFFFF) - 1;
          v35 = v24;
          v36 = v23;
          v37 = v21;
          do
          {
            v38 = v34;
            *v36 = 0;
            v19 -= v18[v37] * (*v35 - 1);
            v41 = v19;
            --v34;
            v36 = &v32[v26 - 8];
            v31 = *v36;
            v32 -= 4;
            if (v38 < 2)
            {
              break;
            }

            v35 = &v33[v26];
            v39 = *&v33[4 * (v20 & 0x7FFFFFFF)] - 1;
            v33 -= 4;
            v37 = v34;
          }

          while (v31 == v39);
          v40 = &v32[v26 - 4];
        }

        else
        {
          v34 = v21;
          v40 = v23;
        }

        *v40 = v31 + 1;
        v19 += v18[v34];
        v41 = v19;
      }

      v17 += v13;
      v5 = (v5 + 8 * v13);
    }

    while (v17 < v16);
    if (!v22)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v22 = __p;
    if (!__p)
    {
      goto LABEL_27;
    }
  }

  v47 = v22;
  operator delete(v22);
LABEL_27:
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }
}

void mlx::core::unary_op<signed char,signed char,mlx::core::detail::Sign>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 0x10)
    {
      do
      {
        v7 = *v4++;
        *v5++ = vsubq_s8(vcltzq_s8(v7), vcgtzq_s8(v7));
        v6 -= 16;
      }

      while (v6 > 0xF);
    }

    for (; v6; --v6)
    {
      v8 = v4->i8[0];
      v4 = (v4 + 1);
      v9 = v8 != 0;
      if (v8 < 0)
      {
        v10 = -1;
      }

      else
      {
        v10 = v9;
      }

      v5->i8[0] = v10;
      v5 = (v5 + 1);
    }

    return;
  }

  v11 = *(v3 + 8);
  if (v11 == *v3)
  {
    v13 = 1;
    v14 = 1;
    do
    {
LABEL_40:
      if (v4->i8[0] < 0)
      {
        v37 = -1;
      }

      else
      {
        v37 = v4->i8[0] != 0;
      }

      v5->i8[0] = v37;
      v5 = (v5 + 1);
      v4 = (v4 + v14);
      --v13;
    }

    while (v13);
    return;
  }

  v12 = v11 - *v3;
  v13 = *(v11 - 4);
  v14 = *(*(v3 + 32) - 8);
  if ((v12 >> 2) <= 1)
  {
    if (!v13)
    {
      return;
    }

    goto LABEL_40;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v38, v3, (v3 + 24), (v12 >> 2) - 1);
  if (*(*a1 + 48))
  {
    v16 = 0;
    v17 = v38;
    do
    {
      if (v13)
      {
        v18 = &v4->i8[v17];
        v19 = v5;
        v20 = v13;
        do
        {
          if (*v18 < 0)
          {
            v21 = -1;
          }

          else
          {
            v21 = *v18 != 0;
          }

          v19->i8[0] = v21;
          v19 = (v19 + 1);
          v18 += v14;
          --v20;
        }

        while (v20);
      }

      v22 = v40 - v39;
      v23 = (v40 - v39) >> 2;
      if (v23)
      {
        v24 = ((v22 << 30) - 0x100000000) >> 32;
        v25 = __p;
        v26 = v41;
        v27 = __p + 4 * v24;
        v28 = *v27;
        v29 = v39 + 4 * v24;
        if (v23 >= 2 && v28 == *v29 - 1)
        {
          v32 = (v22 >> 2) & 0x7FFFFFFF;
          v31 = v32 - 1;
          v33 = 4 * v32;
          v34 = v39 - 8;
          do
          {
            v35 = v31;
            *v27 = 0;
            v17 -= v26[v24] * (*v29 - 1);
            v38 = v17;
            --v31;
            v27 = &v25[v33 - 8];
            v28 = *v27;
            v25 -= 4;
            if (v35 < 2)
            {
              break;
            }

            v29 = &v34[v33];
            v36 = *&v34[4 * v32] - 1;
            v34 -= 4;
            v24 = v31;
          }

          while (v28 == v36);
          v27 = &v25[4 * v32 - 4];
        }

        else
        {
          v31 = ((v22 << 30) - 0x100000000) >> 32;
        }

        *v27 = v28 + 1;
        v17 += v26[v31];
        v38 = v17;
      }

      v16 += v13;
      v5 = (v5 + v13);
    }

    while (v16 < *(*a1 + 48));
  }

  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }
}

void mlx::core::unary_op<short,short,mlx::core::detail::Sign>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 0x10)
    {
      v7.i64[0] = 0x1000100010001;
      v7.i64[1] = 0x1000100010001;
      do
      {
        v8 = *v4;
        v9 = *(v4 + 1);
        v4 += 2;
        *v5 = vorrq_s8(vcltzq_s16(v8), vandq_s8(vcgtzq_s16(v8), v7));
        v5[1] = vorrq_s8(vcltzq_s16(v9), vandq_s8(vcgtzq_s16(v9), v7));
        v5 += 2;
        v6 -= 16;
      }

      while (v6 > 0xF);
    }

    for (; v6; --v6)
    {
      v10 = *v4;
      v4 = (v4 + 2);
      v11 = v10 != 0;
      if (v10 < 0)
      {
        v12 = -1;
      }

      else
      {
        v12 = v11;
      }

      v5->i16[0] = v12;
      v5 = (v5 + 2);
    }

    return;
  }

  v13 = *(v3 + 8);
  if (v13 == *v3)
  {
    v15 = 1;
    v16 = 1;
    do
    {
LABEL_39:
      if (*v4 < 0)
      {
        v44 = -1;
      }

      else
      {
        v44 = *v4 != 0;
      }

      v5->i16[0] = v44;
      v5 = (v5 + 2);
      v4 = (v4 + 2 * v16);
      --v15;
    }

    while (v15);
    return;
  }

  v14 = v13 - *v3;
  v15 = *(v13 - 4);
  v16 = *(*(v3 + 32) - 8);
  if ((v14 >> 2) <= 1)
  {
    if (!v15)
    {
      return;
    }

    goto LABEL_39;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v45, v3, (v3 + 24), (v14 >> 2) - 1);
  v18 = *(*a1 + 48);
  if (v18)
  {
    v19 = 0;
    v20 = v45;
    v21 = v48;
    v22 = (v47 - v46) >> 2;
    v23 = (((v47 - v46) << 30) - 0x100000000) >> 32;
    v24 = __p;
    v25 = __p + 4 * v23;
    v26 = v46 + 4 * v23;
    v27 = 2 * v16;
    v28 = 4 * (v22 & 0x7FFFFFFF);
    v29 = v46 - 8;
    do
    {
      if (v15)
      {
        v30 = v4 + v20;
        v31 = v5;
        v32 = v15;
        do
        {
          if (*v30 < 0)
          {
            v33 = -1;
          }

          else
          {
            v33 = *v30 != 0;
          }

          v31->i16[0] = v33;
          v31 = (v31 + 2);
          v30 = (v30 + v27);
          --v32;
        }

        while (v32);
      }

      if (v22)
      {
        v34 = *v25;
        if (v22 >= 2 && v34 == *v26 - 1)
        {
          v35 = v24;
          v36 = v29;
          v37 = (v22 & 0x7FFFFFFF) - 1;
          v38 = v26;
          v39 = v25;
          v40 = v23;
          do
          {
            v41 = v37;
            *v39 = 0;
            v20 -= v21[v40] * (*v38 - 1);
            v45 = v20;
            --v37;
            v39 = &v35[v28 - 8];
            v34 = *v39;
            v35 -= 4;
            if (v41 < 2)
            {
              break;
            }

            v38 = &v36[v28];
            v42 = *&v36[4 * (v22 & 0x7FFFFFFF)] - 1;
            v36 -= 4;
            v40 = v37;
          }

          while (v34 == v42);
          v43 = &v35[v28 - 4];
        }

        else
        {
          v37 = v23;
          v43 = v25;
        }

        *v43 = v34 + 1;
        v20 += v21[v37];
        v45 = v20;
      }

      v19 += v15;
      v5 = (v5 + 2 * v15);
    }

    while (v19 < v18);
    if (!v24)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v24 = __p;
    if (!__p)
    {
      goto LABEL_33;
    }
  }

  v51 = v24;
  operator delete(v24);
LABEL_33:
  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }
}

void mlx::core::unary_op<int,int,mlx::core::detail::Sign>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 8)
    {
      v7.i64[0] = 0x100000001;
      v7.i64[1] = 0x100000001;
      do
      {
        v8 = *v4;
        v9 = *(v4 + 1);
        v4 += 2;
        *v5 = vorrq_s8(vcltzq_s32(v8), vandq_s8(vcgtzq_s32(v8), v7));
        v5[1] = vorrq_s8(vcltzq_s32(v9), vandq_s8(vcgtzq_s32(v9), v7));
        v5 += 2;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v10 = *v4;
      v4 = (v4 + 4);
      v11 = v10 != 0;
      if (v10 < 0)
      {
        v11 = -1;
      }

      v5->i32[0] = v11;
      v5 = (v5 + 4);
    }

    return;
  }

  v12 = *(v3 + 8);
  if (v12 == *v3)
  {
    v14 = 1;
    v15 = 1;
  }

  else
  {
    v13 = v12 - *v3;
    v14 = *(v12 - 4);
    v15 = *(*(v3 + 32) - 8);
    if ((v13 >> 2) > 1)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v44, v3, (v3 + 24), (v13 >> 2) - 1);
      v17 = *(*a1 + 48);
      if (v17)
      {
        v18 = 0;
        v19 = v44;
        v20 = v47;
        v21 = (v46 - v45) >> 2;
        v22 = (((v46 - v45) << 30) - 0x100000000) >> 32;
        v23 = __p;
        v24 = __p + 4 * v22;
        v25 = v45 + 4 * v22;
        v26 = 4 * v15;
        v27 = 4 * (v21 & 0x7FFFFFFF);
        v28 = v45 - 8;
        do
        {
          if (v14)
          {
            v29 = v4 + v19;
            v30 = v5;
            v31 = v14;
            do
            {
              v32 = *v29 != 0;
              if (*v29 < 0)
              {
                v32 = -1;
              }

              v30->i32[0] = v32;
              v30 = (v30 + 4);
              v29 = (v29 + v26);
              --v31;
            }

            while (v31);
          }

          if (v21)
          {
            v33 = *v24;
            if (v21 >= 2 && v33 == *v25 - 1)
            {
              v34 = v23;
              v35 = v28;
              v36 = (v21 & 0x7FFFFFFF) - 1;
              v37 = v25;
              v38 = v24;
              v39 = v22;
              do
              {
                v40 = v36;
                *v38 = 0;
                v19 -= v20[v39] * (*v37 - 1);
                v44 = v19;
                --v36;
                v38 = &v34[v27 - 8];
                v33 = *v38;
                v34 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v37 = &v35[v27];
                v41 = *&v35[4 * (v21 & 0x7FFFFFFF)] - 1;
                v35 -= 4;
                v39 = v36;
              }

              while (v33 == v41);
              v42 = &v34[v27 - 4];
            }

            else
            {
              v36 = v22;
              v42 = v24;
            }

            *v42 = v33 + 1;
            v19 += v20[v36];
            v44 = v19;
          }

          v18 += v14;
          v5 = (v5 + 4 * v14);
        }

        while (v18 < v17);
        if (!v23)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v23 = __p;
        if (!__p)
        {
          goto LABEL_31;
        }
      }

      v50 = v23;
      operator delete(v23);
LABEL_31:
      if (v47)
      {
        v48 = v47;
        operator delete(v47);
      }

      if (v45)
      {
        v46 = v45;
        operator delete(v45);
      }

      return;
    }

    if (!v14)
    {
      return;
    }
  }

  do
  {
    v43 = *v4 != 0;
    if (*v4 < 0)
    {
      v43 = -1;
    }

    v5->i32[0] = v43;
    v5 = (v5 + 4);
    v4 = (v4 + 4 * v15);
    --v14;
  }

  while (v14);
}

void mlx::core::unary_op<long long,long long,mlx::core::detail::Sign>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 4)
    {
      v7 = vdupq_n_s64(1uLL);
      do
      {
        v8 = *v4;
        v9 = *(v4 + 1);
        v4 += 2;
        *v5 = vorrq_s8(vcltzq_s64(v8), vandq_s8(vcgtzq_s64(v8), v7));
        v5[1] = vorrq_s8(vcltzq_s64(v9), vandq_s8(vcgtzq_s64(v9), v7));
        v5 += 2;
        v6 -= 4;
      }

      while (v6 > 3);
    }

    for (; v6; --v6)
    {
      v10 = *v4;
      v4 = (v4 + 8);
      v11 = v10 != 0;
      if (v10 < 0)
      {
        v11 = -1;
      }

      v5->i64[0] = v11;
      v5 = (v5 + 8);
    }

    return;
  }

  v12 = *(v3 + 8);
  if (v12 == *v3)
  {
    v14 = 1;
    v15 = 1;
  }

  else
  {
    v13 = v12 - *v3;
    v14 = *(v12 - 4);
    v15 = *(*(v3 + 32) - 8);
    if ((v13 >> 2) > 1)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v44, v3, (v3 + 24), (v13 >> 2) - 1);
      v17 = *(*a1 + 48);
      if (v17)
      {
        v18 = 0;
        v19 = v47;
        v20 = v44;
        v21 = (v46 - v45) >> 2;
        v22 = (((v46 - v45) << 30) - 0x100000000) >> 32;
        v23 = __p;
        v24 = __p + 4 * v22;
        v25 = v45 + 4 * v22;
        v26 = 8 * v15;
        v27 = 4 * (v21 & 0x7FFFFFFF);
        v28 = v45 - 8;
        do
        {
          if (v14)
          {
            v29 = v4 + v20;
            v30 = v5;
            v31 = v14;
            do
            {
              v32 = *v29 != 0;
              if (*v29 < 0)
              {
                v32 = -1;
              }

              *v30++ = v32;
              v29 = (v29 + v26);
              --v31;
            }

            while (v31);
          }

          if (v21)
          {
            v33 = *v24;
            if (v21 >= 2 && v33 == *v25 - 1)
            {
              v34 = v23;
              v35 = v28;
              v36 = (v21 & 0x7FFFFFFF) - 1;
              v37 = v25;
              v38 = v24;
              v39 = v22;
              do
              {
                v40 = v36;
                *v38 = 0;
                v20 -= v19[v39] * (*v37 - 1);
                v44 = v20;
                --v36;
                v38 = &v34[v27 - 8];
                v33 = *v38;
                v34 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v37 = &v35[v27];
                v41 = *&v35[4 * (v21 & 0x7FFFFFFF)] - 1;
                v35 -= 4;
                v39 = v36;
              }

              while (v33 == v41);
              v42 = &v34[v27 - 4];
            }

            else
            {
              v36 = v22;
              v42 = v24;
            }

            *v42 = v33 + 1;
            v20 += v19[v36];
            v44 = v20;
          }

          v18 += v14;
          v5 = (v5 + 8 * v14);
        }

        while (v18 < v17);
        if (!v23)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v23 = __p;
        if (!__p)
        {
          goto LABEL_31;
        }
      }

      v50 = v23;
      operator delete(v23);
LABEL_31:
      if (v47)
      {
        v48 = v47;
        operator delete(v47);
      }

      if (v45)
      {
        v46 = v45;
        operator delete(v45);
      }

      return;
    }

    if (!v14)
    {
      return;
    }
  }

  do
  {
    v43 = *v4 != 0;
    if (*v4 < 0)
    {
      v43 = -1;
    }

    v5->i64[0] = v43;
    v5 = (v5 + 8);
    v4 = (v4 + 8 * v15);
    --v14;
  }

  while (v14);
}

void mlx::core::unary_op<half,half,mlx::core::detail::Sign>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 8)
    {
      v7.i64[0] = 0x3C003C003C003C00;
      v7.i64[1] = 0x3C003C003C003C00;
      v8.i64[0] = 0xBC00BC00BC00BC00;
      v8.i64[1] = 0xBC00BC00BC00BC00;
      do
      {
        v9 = *v4++;
        *v5++ = vbslq_s8(vcltzq_f16(v9), v8, vandq_s8(v7, vcgtzq_f16(v9)));
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v4 = (v4 + 2);
      __asm { FCMP            H3, #0 }

      if (_NF ^ _VF | _ZF)
      {
        v15 = COERCE_SHORT_FLOAT(0);
      }

      else
      {
        LOWORD(v15) = COERCE_UNSIGNED_INT(1.0);
      }

      if (_NF)
      {
        LOWORD(v15) = COERCE_UNSIGNED_INT(-1.0);
      }

      *v5->i16 = v15;
      v5 = (v5 + 2);
    }

    return;
  }

  v16 = *(v3 + 8);
  if (v16 == *v3)
  {
    v18 = 1;
    v19 = 1;
  }

  else
  {
    v17 = v16 - *v3;
    v18 = *(v16 - 4);
    v19 = *(*(v3 + 32) - 8);
    if ((v17 >> 2) > 1)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v52, v3, (v3 + 24), (v17 >> 2) - 1);
      v21 = *(*a1 + 48);
      if (v21)
      {
        v22 = 0;
        v23 = v52;
        v24 = v55;
        v25 = (v54 - v53) >> 2;
        v26 = (((v54 - v53) << 30) - 0x100000000) >> 32;
        v27 = __p;
        v28 = __p + 4 * v26;
        v29 = v53 + 4 * v26;
        v30 = 2 * v19;
        v31 = 4 * (v25 & 0x7FFFFFFF);
        v32 = v53 - 8;
        do
        {
          if (v18)
          {
            v33 = &v4->i8[2 * v23];
            v34 = v5;
            v35 = v18;
            do
            {
              __asm { FCMP            H3, #0 }

              if (_NF ^ _VF | _ZF)
              {
                v38 = COERCE_SHORT_FLOAT(0);
              }

              else
              {
                LOWORD(v38) = COERCE_UNSIGNED_INT(1.0);
              }

              if (_NF)
              {
                LOWORD(v38) = COERCE_UNSIGNED_INT(-1.0);
              }

              *v34++ = v38;
              v33 += v30;
              --v35;
            }

            while (v35);
          }

          if (v25)
          {
            v39 = *v28;
            if (v25 >= 2 && v39 == *v29 - 1)
            {
              v40 = v27;
              v41 = v32;
              v42 = (v25 & 0x7FFFFFFF) - 1;
              v43 = v29;
              v44 = v28;
              v45 = v26;
              do
              {
                v46 = v42;
                *v44 = 0;
                v23 -= v24[v45] * (*v43 - 1);
                v52 = v23;
                --v42;
                v44 = &v40[v31 - 8];
                v39 = *v44;
                v40 -= 4;
                if (v46 < 2)
                {
                  break;
                }

                v43 = &v41[v31];
                v47 = *&v41[4 * (v25 & 0x7FFFFFFF)] - 1;
                v41 -= 4;
                v45 = v42;
              }

              while (v39 == v47);
              v48 = &v40[v31 - 4];
            }

            else
            {
              v42 = v26;
              v48 = v28;
            }

            *v48 = v39 + 1;
            v23 += v24[v42];
            v52 = v23;
          }

          v22 += v18;
          v5 = (v5 + 2 * v18);
        }

        while (v22 < v21);
        if (!v27)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v27 = __p;
        if (!__p)
        {
          goto LABEL_37;
        }
      }

      v58 = v27;
      operator delete(v27);
LABEL_37:
      if (v55)
      {
        v56 = v55;
        operator delete(v55);
      }

      if (v53)
      {
        v54 = v53;
        operator delete(v53);
      }

      return;
    }

    if (!v18)
    {
      return;
    }
  }

  do
  {
    __asm { FCMP            H3, #0 }

    if (_NF ^ _VF | _ZF)
    {
      v51 = COERCE_SHORT_FLOAT(0);
    }

    else
    {
      LOWORD(v51) = COERCE_UNSIGNED_INT(1.0);
    }

    if (_NF)
    {
      LOWORD(v51) = COERCE_UNSIGNED_INT(-1.0);
    }

    *v5->i16 = v51;
    v5 = (v5 + 2);
    v4 = (v4 + 2 * v19);
    --v18;
  }

  while (v18);
}

void mlx::core::unary_op<float,float,mlx::core::detail::Sign>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 8)
    {
      __asm
      {
        FMOV            V0.4S, #1.0
        FMOV            V1.4S, #-1.0
      }

      do
      {
        v13 = *v4;
        v12 = *(v4 + 1);
        v4 += 2;
        v14 = vcltzq_f32(v13);
        v15 = vcltzq_f32(v12);
        *v5 = vorrq_s8(vandq_s8(v14, _Q1), vandq_s8(vbicq_s8(vcgtzq_f32(v13), v14), _Q0));
        v5[1] = vorrq_s8(vandq_s8(v15, _Q1), vandq_s8(vbicq_s8(vcgtzq_f32(v12), v15), _Q0));
        v5 += 2;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v16 = *v4;
      v4 = (v4 + 4);
      _NF = v16 < 0.0;
      if (v16 <= 0.0)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 1.0;
      }

      if (_NF)
      {
        v18 = -1.0;
      }

      *v5->i32 = v18;
      v5 = (v5 + 4);
    }

    return;
  }

  v19 = *(v3 + 8);
  if (v19 == *v3)
  {
    v21 = 1;
    v22 = 1;
  }

  else
  {
    v20 = v19 - *v3;
    v21 = *(v19 - 4);
    v22 = *(*(v3 + 32) - 8);
    if ((v20 >> 2) > 1)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v51, v3, (v3 + 24), (v20 >> 2) - 1);
      v24 = *(*a1 + 48);
      if (v24)
      {
        v25 = 0;
        v26 = v51;
        v27 = v54;
        v28 = (v53 - v52) >> 2;
        v29 = (((v53 - v52) << 30) - 0x100000000) >> 32;
        v30 = __p;
        v31 = __p + 4 * v29;
        v32 = v52 + 4 * v29;
        v33 = 4 * v22;
        v34 = 4 * (v28 & 0x7FFFFFFF);
        v35 = v52 - 8;
        do
        {
          if (v21)
          {
            v36 = v4 + v26;
            v37 = v5;
            v38 = v21;
            do
            {
              if (*v36 <= 0.0)
              {
                v39 = 0.0;
              }

              else
              {
                v39 = 1.0;
              }

              if (*v36 < 0.0)
              {
                v39 = -1.0;
              }

              *v37++ = v39;
              v36 = (v36 + v33);
              --v38;
            }

            while (v38);
          }

          if (v28)
          {
            v40 = *v31;
            if (v28 >= 2 && v40 == *v32 - 1)
            {
              v41 = v30;
              v42 = v35;
              v43 = (v28 & 0x7FFFFFFF) - 1;
              v44 = v32;
              v45 = v31;
              v46 = v29;
              do
              {
                v47 = v43;
                *v45 = 0;
                v26 -= v27[v46] * (*v44 - 1);
                v51 = v26;
                --v43;
                v45 = &v41[v34 - 8];
                v40 = *v45;
                v41 -= 4;
                if (v47 < 2)
                {
                  break;
                }

                v44 = &v42[v34];
                v48 = *&v42[4 * (v28 & 0x7FFFFFFF)] - 1;
                v42 -= 4;
                v46 = v43;
              }

              while (v40 == v48);
              v49 = &v41[v34 - 4];
            }

            else
            {
              v43 = v29;
              v49 = v31;
            }

            *v49 = v40 + 1;
            v26 += v27[v43];
            v51 = v26;
          }

          v25 += v21;
          v5 = (v5 + 4 * v21);
        }

        while (v25 < v24);
        if (!v30)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v30 = __p;
        if (!__p)
        {
          goto LABEL_37;
        }
      }

      v57 = v30;
      operator delete(v30);
LABEL_37:
      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v52)
      {
        v53 = v52;
        operator delete(v52);
      }

      return;
    }

    if (!v21)
    {
      return;
    }
  }

  do
  {
    if (*v4 <= 0.0)
    {
      v50 = 0.0;
    }

    else
    {
      v50 = 1.0;
    }

    if (*v4 < 0.0)
    {
      v50 = -1.0;
    }

    *v5->i32 = v50;
    v5 = (v5 + 4);
    v4 = (v4 + 4 * v22);
    --v21;
  }

  while (v21);
}

void mlx::core::unary_op<double,double,mlx::core::detail::Sign>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 4)
    {
      __asm
      {
        FMOV            V0.2D, #1.0
        FMOV            V1.2D, #-1.0
      }

      do
      {
        v13 = *v4;
        v12 = *(v4 + 1);
        v4 += 2;
        v14 = vcltzq_f64(v13);
        v15 = vcltzq_f64(v12);
        *v5 = vorrq_s8(vandq_s8(v14, _Q1), vandq_s8(vbicq_s8(vcgtzq_f64(v13), v14), _Q0));
        v5[1] = vorrq_s8(vandq_s8(v15, _Q1), vandq_s8(vbicq_s8(vcgtzq_f64(v12), v15), _Q0));
        v5 += 2;
        v6 -= 4;
      }

      while (v6 > 3);
    }

    for (; v6; --v6)
    {
      v16 = *v4;
      v4 = (v4 + 8);
      _NF = v16 < 0.0;
      if (v16 <= 0.0)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 1.0;
      }

      if (_NF)
      {
        v18 = -1.0;
      }

      *v5->i64 = v18;
      v5 = (v5 + 8);
    }

    return;
  }

  v19 = *(v3 + 8);
  if (v19 == *v3)
  {
    v21 = 1;
    v22 = 1;
  }

  else
  {
    v20 = v19 - *v3;
    v21 = *(v19 - 4);
    v22 = *(*(v3 + 32) - 8);
    if ((v20 >> 2) > 1)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v51, v3, (v3 + 24), (v20 >> 2) - 1);
      v24 = *(*a1 + 48);
      if (v24)
      {
        v25 = 0;
        v26 = v51;
        v27 = v54;
        v28 = (v53 - v52) >> 2;
        v29 = (((v53 - v52) << 30) - 0x100000000) >> 32;
        v30 = __p;
        v31 = __p + 4 * v29;
        v32 = v52 + 4 * v29;
        v33 = 8 * v22;
        v34 = 4 * (v28 & 0x7FFFFFFF);
        v35 = v52 - 8;
        do
        {
          if (v21)
          {
            v36 = v4 + v26;
            v37 = v5;
            v38 = v21;
            do
            {
              if (*v36 <= 0.0)
              {
                v39 = 0.0;
              }

              else
              {
                v39 = 1.0;
              }

              if (*v36 < 0.0)
              {
                v39 = -1.0;
              }

              *v37++ = v39;
              v36 = (v36 + v33);
              --v38;
            }

            while (v38);
          }

          if (v28)
          {
            v40 = *v31;
            if (v28 >= 2 && v40 == *v32 - 1)
            {
              v41 = v30;
              v42 = v35;
              v43 = (v28 & 0x7FFFFFFF) - 1;
              v44 = v32;
              v45 = v31;
              v46 = v29;
              do
              {
                v47 = v43;
                *v45 = 0;
                v26 -= v27[v46] * (*v44 - 1);
                v51 = v26;
                --v43;
                v45 = &v41[v34 - 8];
                v40 = *v45;
                v41 -= 4;
                if (v47 < 2)
                {
                  break;
                }

                v44 = &v42[v34];
                v48 = *&v42[4 * (v28 & 0x7FFFFFFF)] - 1;
                v42 -= 4;
                v46 = v43;
              }

              while (v40 == v48);
              v49 = &v41[v34 - 4];
            }

            else
            {
              v43 = v29;
              v49 = v31;
            }

            *v49 = v40 + 1;
            v26 += v27[v43];
            v51 = v26;
          }

          v25 += v21;
          v5 = (v5 + 8 * v21);
        }

        while (v25 < v24);
        if (!v30)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v30 = __p;
        if (!__p)
        {
          goto LABEL_37;
        }
      }

      v57 = v30;
      operator delete(v30);
LABEL_37:
      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v52)
      {
        v53 = v52;
        operator delete(v52);
      }

      return;
    }

    if (!v21)
    {
      return;
    }
  }

  do
  {
    if (*v4 <= 0.0)
    {
      v50 = 0.0;
    }

    else
    {
      v50 = 1.0;
    }

    if (*v4 < 0.0)
    {
      v50 = -1.0;
    }

    *v5->i64 = v50;
    v5 = (v5 + 8);
    v4 = (v4 + 8 * v22);
    --v21;
  }

  while (v21);
}

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Sign>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    for (i = *(v3 + 160); i; --i)
    {
      v7 = *v4++;
      v8 = COERCE_FLOAT(v7 << 16) < 0.0;
      if (COERCE_FLOAT(v7 << 16) <= 0.0)
      {
        v9 = 0;
      }

      else
      {
        v9 = 16256;
      }

      if (v8)
      {
        v9 = -16512;
      }

      *v5++ = v9;
    }

    return;
  }

  v10 = *(v3 + 8);
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
  }

  else
  {
    v11 = v10 - *v3;
    v12 = *(v10 - 4);
    v13 = *(*(v3 + 32) - 8);
    if ((v11 >> 2) > 1)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v44, v3, (v3 + 24), (v11 >> 2) - 1);
      v15 = *(*a1 + 48);
      if (v15)
      {
        v16 = 0;
        v17 = v44;
        v18 = v47;
        v19 = (((v46 - v45) << 30) - 0x100000000) >> 32;
        v20 = __p;
        v21 = __p + 4 * v19;
        v22 = v45 + 4 * v19;
        v23 = (v46 - v45) >> 2;
        v24 = 2 * v13;
        v25 = 4 * (v23 & 0x7FFFFFFF);
        v26 = v45 - 8;
        do
        {
          if (v12)
          {
            v27 = &v4[v17];
            v28 = v5;
            v29 = v12;
            do
            {
              LODWORD(v30) = *v27 << 16;
              if (v30 <= 0.0)
              {
                v31 = 0;
              }

              else
              {
                v31 = 16256;
              }

              if (v30 < 0.0)
              {
                v31 = -16512;
              }

              *v28++ = v31;
              v27 = (v27 + v24);
              --v29;
            }

            while (v29);
          }

          if (v23)
          {
            v32 = *v21;
            if (v23 >= 2 && v32 == *v22 - 1)
            {
              v33 = v20;
              v34 = v26;
              v35 = (v23 & 0x7FFFFFFF) - 1;
              v36 = v22;
              v37 = v21;
              v38 = v19;
              do
              {
                v39 = v35;
                *v37 = 0;
                v17 -= v18[v38] * (*v36 - 1);
                v44 = v17;
                --v35;
                v37 = &v33[v25 - 8];
                v32 = *v37;
                v33 -= 4;
                if (v39 < 2)
                {
                  break;
                }

                v36 = &v34[v25];
                v40 = *&v34[4 * (v23 & 0x7FFFFFFF)] - 1;
                v34 -= 4;
                v38 = v35;
              }

              while (v32 == v40);
              v41 = &v33[v25 - 4];
            }

            else
            {
              v35 = v19;
              v41 = v21;
            }

            *v41 = v32 + 1;
            v17 += v18[v35];
            v44 = v17;
          }

          v16 += v12;
          v5 += v12;
        }

        while (v16 < v15);
        if (!v20)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v20 = __p;
        if (!__p)
        {
          goto LABEL_34;
        }
      }

      v50 = v20;
      operator delete(v20);
LABEL_34:
      if (v47)
      {
        v48 = v47;
        operator delete(v47);
      }

      if (v45)
      {
        v46 = v45;
        operator delete(v45);
      }

      return;
    }

    if (!v12)
    {
      return;
    }
  }

  do
  {
    LODWORD(v42) = *v4 << 16;
    if (v42 <= 0.0)
    {
      v43 = 0;
    }

    else
    {
      v43 = 16256;
    }

    if (v42 < 0.0)
    {
      v43 = -16512;
    }

    *v5++ = v43;
    v4 += v13;
    --v12;
  }

  while (v12);
}

void mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Sign>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    for (i = *(v3 + 160); i; --i)
    {
      v7 = *v4;
      v8 = v4[1];
      v4 += 2;
      mlx::core::detail::Sign::operator()<1,mlx::core::complex64_t>(v7, v8);
      *v5 = v9;
      v5[1] = v10;
      v5 += 2;
    }

    return;
  }

  v11 = *(v3 + 8);
  if (v11 == *v3)
  {
    v14 = 1;
    v13 = 1;
  }

  else
  {
    v12 = v11 - *v3;
    v13 = *(v11 - 4);
    v14 = *(*(v3 + 32) - 8);
    if ((v12 >> 2) > 1)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v34, v3, (v3 + 24), (v12 >> 2) - 1);
      if (*(*a1 + 48))
      {
        v16 = 0;
        do
        {
          mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Sign>(&v4[2 * v34], &v5[2 * v16], v13, v14);
          v17 = v36 - v35;
          v18 = (v36 - v35) >> 2;
          if (v18)
          {
            v19 = __p;
            v20 = ((v17 << 30) - 0x100000000) >> 32;
            v21 = __p + 4 * v20;
            v22 = *v21;
            v23 = v35 + 4 * v20;
            v24 = v37;
            v25 = v34;
            if (v18 >= 2 && v22 == *v23 - 1)
            {
              v28 = (v17 >> 2) & 0x7FFFFFFF;
              v27 = v28 - 1;
              v29 = 4 * v28;
              v30 = v35 - 8;
              do
              {
                v31 = v27;
                *v21 = 0;
                v25 -= v24[v20] * (*v23 - 1);
                v34 = v25;
                --v27;
                v21 = &v19[v29 - 8];
                v22 = *v21;
                v19 -= 4;
                if (v31 < 2)
                {
                  break;
                }

                v23 = &v30[v29];
                v32 = *&v30[4 * v28] - 1;
                v30 -= 4;
                v20 = v27;
              }

              while (v22 == v32);
              v21 = &v19[4 * v28 - 4];
            }

            else
            {
              v27 = ((v17 << 30) - 0x100000000) >> 32;
            }

            *v21 = v22 + 1;
            v34 = v24[v27] + v25;
          }

          v16 += v13;
        }

        while (v16 < *(*a1 + 48));
      }

      if (__p)
      {
        v40 = __p;
        operator delete(__p);
      }

      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      if (v35)
      {
        v36 = v35;
        operator delete(v35);
      }

      return;
    }
  }

  v33 = *(*a1 + 152);

  mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Sign>(v33, v5, v13, v14);
}

void mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Sign>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a3;
    v5 = (a1 + 4);
    v6 = 8 * a4;
    v7 = (a2 + 4);
    do
    {
      mlx::core::detail::Sign::operator()<1,mlx::core::complex64_t>(*(v5 - 1), *v5);
      *(v7 - 1) = v8;
      *v7 = v9;
      v5 = (v5 + v6);
      v7 += 2;
      --v4;
    }

    while (v4);
  }
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary<mlx::core::detail::Sign>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sign,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary<mlx::core::detail::Sign>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sign,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1], a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A593948(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary<mlx::core::detail::Sign>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sign,mlx::core::Stream)::{lambda(void)#1}>>(unint64_t *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary<mlx::core::detail::Sign>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sign,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary<mlx::core::detail::Sign>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sign,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
{
  *a2 = 0uLL;
  a2[1] = 0uLL;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A593B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary<mlx::core::detail::Sign>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sign,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary<mlx::core::detail::Sign>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sign,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFD7D8;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary<mlx::core::detail::Sign>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sign,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary<mlx::core::detail::Sign>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sign,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFD7D8;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary<mlx::core::detail::Sign>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sign,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary<mlx::core::detail::Sign>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sign,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFD7D8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  *(a2 + 24) = result[3];
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 52) = 0;
  *(a2 + 49) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::unary<mlx::core::detail::Sign>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sign,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary<mlx::core::detail::Sign>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sign,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary<mlx::core::detail::Sign>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sign,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary<mlx::core::detail::Sign>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sign,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary<mlx::core::detail::Sign>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sign,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary<mlx::core::detail::Sign>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sign,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, __int128 *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *(a1 + 10) = (*(a1 + 10) + 1) % 10;
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0uLL;
  v14 = v3;
  v15 = v4;
  a2[1] = 0uLL;
  if (*(a1 + 10))
  {
    v5 = mlx::core::scheduler::scheduler(a1);
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
  }

  v6 = mlx::core::scheduler::scheduler(a1);
  mlx::core::scheduler::Scheduler::notify_new_task(v6);
  v10 = *a1;
  v11 = *(a1 + 2);
  v7 = v14;
  v14 = 0uLL;
  v12 = v7;
  v13 = v15;
  v15 = 0uLL;
  v9 = mlx::core::scheduler::scheduler(v8);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sin&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A593ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  mlx::core::array::~array((v17 + 32));
  mlx::core::array::~array((v17 + 16));
  mlx::core::array::~array((v16 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sin&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sin&&)::{lambda(void)#1}>(&a1[1], a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A593FA0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sin&&)::{lambda(void)#1}>(unint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sin&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sin&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
{
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A594184(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3SinEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFD8D0;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3SinEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFD8D0;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3SinEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFD8D0;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 48);
  *(a2 + 40) = *(result + 40);
  *(a2 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3SinEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3SinEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3SinEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1, __n128 a2)
{
  mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}::operator()((a1 + 24), a2);
  v3 = mlx::core::scheduler::scheduler(v2);

  mlx::core::scheduler::Scheduler::notify_task_completion(v3);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail3SinEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t *a1, __n128 a2)
{
  v2 = a1 + 2;
  v3 = *(a1[2] + 56);
  if (v3 <= 10)
  {
    if (v3 == 9)
    {

      mlx::core::unary_op<half,half,mlx::core::detail::Sin>(a1, (a1 + 2), a2);
    }

    else
    {
      if (v3 != 10)
      {
        goto LABEL_22;
      }

      mlx::core::unary_op<float,float,mlx::core::detail::Sin>(a1, (a1 + 2));
    }
  }

  else
  {
    switch(v3)
    {
      case 11:

        mlx::core::unary_op<double,double,mlx::core::detail::Sin>(a1, (a1 + 2));
        break;
      case 13:

        mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Sin>(a1, (a1 + 2));
        break;
      case 12:

        mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Sin>(a1, (a1 + 2));
        return;
      default:
LABEL_22:
        std::ostringstream::basic_ostringstream[abi:ne200100](v8);
        v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "[unary_fp] Does not support ", 28);
        v5 = *(*v2 + 56);
        LODWORD(v7[0]) = v5;
        BYTE4(v7[0]) = BYTE4(v5);
        mlx::core::operator<<(v4, v7);
        exception = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v8, v7);
        MEMORY[0x25F851100](exception, v7);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }
}

void sub_25A5945F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Sin>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    for (i = *(v3 + 160); i; --i)
    {
      v7 = *v4++;
      *v5++ = mlx::core::simd::sincos<true,mlx::core::_MLX_BFloat16,1>(v7);
    }

    return;
  }

  v8 = *(v3 + 8);
  if (v8 == *v3)
  {
    v10 = 1;
    v11 = 1;
    do
    {
LABEL_32:
      *v5++ = mlx::core::simd::sincos<true,mlx::core::_MLX_BFloat16,1>(*v4);
      v4 += v11;
      --v10;
    }

    while (v10);
    return;
  }

  v9 = v8 - *v3;
  v10 = *(v8 - 4);
  v11 = *(*(v3 + 32) - 8);
  if ((v9 >> 2) <= 1)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_32;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v34, v3, (v3 + 24), (v9 >> 2) - 1);
  if (*(*a1 + 48))
  {
    v13 = 0;
    v14 = 2 * v11;
    do
    {
      if (v10)
      {
        v15 = &v4[v34];
        v16 = v5;
        v17 = v10;
        do
        {
          *v16++ = mlx::core::simd::sincos<true,mlx::core::_MLX_BFloat16,1>(*v15);
          v15 = (v15 + v14);
          --v17;
        }

        while (v17);
      }

      v18 = v36 - v35;
      v19 = (v36 - v35) >> 2;
      if (v19)
      {
        v20 = __p;
        v21 = ((v18 << 30) - 0x100000000) >> 32;
        v22 = __p + 4 * v21;
        v23 = *v22;
        v24 = v35 + 4 * v21;
        v25 = v37;
        v26 = v34;
        if (v19 >= 2 && v23 == *v24 - 1)
        {
          v29 = (v18 >> 2) & 0x7FFFFFFF;
          v28 = v29 - 1;
          v30 = 4 * v29;
          v31 = v35 - 8;
          do
          {
            v32 = v28;
            *v22 = 0;
            v26 -= v25[v21] * (*v24 - 1);
            v34 = v26;
            --v28;
            v22 = &v20[v30 - 8];
            v23 = *v22;
            v20 -= 4;
            if (v32 < 2)
            {
              break;
            }

            v24 = &v31[v30];
            v33 = *&v31[4 * v29] - 1;
            v31 -= 4;
            v21 = v28;
          }

          while (v23 == v33);
          v22 = &v20[4 * v29 - 4];
        }

        else
        {
          v28 = ((v18 << 30) - 0x100000000) >> 32;
        }

        *v22 = v23 + 1;
        v34 = v25[v28] + v26;
      }

      v13 += v10;
      v5 += v10;
    }

    while (v13 < *(*a1 + 48));
  }

  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }
}

void mlx::core::unary_op<half,half,mlx::core::detail::Sin>(uint64_t *a1, uint64_t a2, __n128 a3)
{
  v4 = *a1;
  v5 = *(*a1 + 152);
  v6 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v7 = *(v4 + 160);
    if (v7 >= 8)
    {
      do
      {
        v8 = *v5++;
        *&v9 = mlx::core::simd::sincos<true,half,8>(v8);
        *v6++ = v9;
        v7 -= 8;
      }

      while (v7 > 7);
    }

    for (; v7; --v7)
    {
      v5 = (v5 + 2);
      *v6 = mlx::core::simd::sincos<true,half,1>();
      v6 = (v6 + 2);
    }

    return;
  }

  v10 = *(v4 + 8);
  if (v10 == *v4)
  {
    v12 = 1;
    v13 = 1;
    do
    {
LABEL_34:
      *v6 = mlx::core::simd::sincos<true,half,1>();
      v6 = (v6 + 2);
      v5 = (v5 + 2 * v13);
      --v12;
    }

    while (v12);
    return;
  }

  v11 = v10 - *v4;
  v12 = *(v10 - 4);
  v13 = *(*(v4 + 32) - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_34;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v36, v4, (v4 + 24), (v11 >> 2) - 1);
  if (*(*a1 + 48))
  {
    v15 = 0;
    v16 = 2 * v13;
    do
    {
      if (v12)
      {
        v17 = &v5->i8[2 * v36];
        v18 = v6;
        v19 = v12;
        do
        {
          *v18++ = mlx::core::simd::sincos<true,half,1>();
          v17 += v16;
          --v19;
        }

        while (v19);
      }

      v20 = v38 - v37;
      v21 = (v38 - v37) >> 2;
      if (v21)
      {
        v22 = __p;
        v23 = ((v20 << 30) - 0x100000000) >> 32;
        v24 = __p + 4 * v23;
        v25 = *v24;
        v26 = v37 + 4 * v23;
        v27 = v39;
        v28 = v36;
        if (v21 >= 2 && v25 == *v26 - 1)
        {
          v31 = (v20 >> 2) & 0x7FFFFFFF;
          v30 = v31 - 1;
          v32 = 4 * v31;
          v33 = v37 - 8;
          do
          {
            v34 = v30;
            *v24 = 0;
            v28 -= v27[v23] * (*v26 - 1);
            v36 = v28;
            --v30;
            v24 = &v22[v32 - 8];
            v25 = *v24;
            v22 -= 4;
            if (v34 < 2)
            {
              break;
            }

            v26 = &v33[v32];
            v35 = *&v33[4 * v31] - 1;
            v33 -= 4;
            v23 = v30;
          }

          while (v25 == v35);
          v24 = &v22[4 * v31 - 4];
        }

        else
        {
          v30 = ((v20 << 30) - 0x100000000) >> 32;
        }

        *v24 = v25 + 1;
        v36 = v27[v30] + v28;
      }

      v15 += v12;
      v6 = (v6 + 2 * v12);
    }

    while (v15 < *(*a1 + 48));
  }

  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }
}

void mlx::core::unary_op<float,float,mlx::core::detail::Sin>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 8)
    {
      do
      {
        v7 = *v4;
        v8 = v4[1];
        v4 += 2;
        *v37 = v7;
        v38 = v8;
        mlx::core::simd::sincos<true,float,8>(v37, v43);
        v9 = v43[1];
        *v5 = v43[0];
        *(v5 + 16) = v9;
        v5 += 32;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v10 = *v4;
      v4 = (v4 + 4);
      *v5 = mlx::core::simd::sincos<true,float,1>(v10);
      v5 += 4;
    }

    return;
  }

  v11 = *(v3 + 8);
  if (v11 == *v3)
  {
    v13 = 1;
    v14 = 1;
    do
    {
LABEL_34:
      *v5 = mlx::core::simd::sincos<true,float,1>(*v4);
      v5 += 4;
      v4 = (v4 + 4 * v14);
      --v13;
    }

    while (v13);
    return;
  }

  v12 = v11 - *v3;
  v13 = *(v11 - 4);
  v14 = *(*(v3 + 32) - 8);
  if ((v12 >> 2) <= 1)
  {
    if (!v13)
    {
      return;
    }

    goto LABEL_34;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(v37, v3, (v3 + 24), (v12 >> 2) - 1);
  if (*(*a1 + 48))
  {
    v16 = 0;
    v17 = 4 * v14;
    do
    {
      if (v13)
      {
        v18 = v4 + v37[0];
        v19 = v5;
        v20 = v13;
        do
        {
          *v19++ = mlx::core::simd::sincos<true,float,1>(*v18);
          v18 = (v18 + v17);
          --v20;
        }

        while (v20);
      }

      v21 = v38 - v37[1];
      v22 = (v38 - v37[1]) >> 2;
      if (v22)
      {
        v23 = __p;
        v24 = ((v21 << 30) - 0x100000000) >> 32;
        v25 = __p + 4 * v24;
        v26 = *v25;
        v27 = v37[1] + 4 * v24;
        v28 = v39;
        v29 = v37[0];
        if (v22 >= 2 && v26 == *v27 - 1)
        {
          v32 = (v21 >> 2) & 0x7FFFFFFF;
          v31 = v32 - 1;
          v33 = 4 * v32;
          v34 = v37[1] - 8;
          do
          {
            v35 = v31;
            *v25 = 0;
            v29 -= v28[v24] * (*v27 - 1);
            v37[0] = v29;
            --v31;
            v25 = &v23[v33 - 8];
            v26 = *v25;
            v23 -= 4;
            if (v35 < 2)
            {
              break;
            }

            v27 = &v34[v33];
            v36 = *&v34[4 * v32] - 1;
            v34 -= 4;
            v24 = v31;
          }

          while (v26 == v36);
          v25 = &v23[4 * v32 - 4];
        }

        else
        {
          v31 = ((v21 << 30) - 0x100000000) >> 32;
        }

        *v25 = v26 + 1;
        v37[0] = &v29[v28[v31]];
      }

      v16 += v13;
      v5 += 4 * v13;
    }

    while (v16 < *(*a1 + 48));
  }

  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v37[1])
  {
    *&v38 = v37[1];
    operator delete(v37[1]);
  }
}

void mlx::core::unary_op<double,double,mlx::core::detail::Sin>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 4)
    {
      do
      {
        v7 = *v4;
        v8 = v4[1];
        v4 += 2;
        *v37 = v7;
        v38 = v8;
        mlx::core::simd::sincos<true,double,4>(v37, v43);
        v9 = v43[1];
        *v5 = v43[0];
        v5[1] = v9;
        v5 += 2;
        v6 -= 4;
      }

      while (v6 > 3);
    }

    for (; v6; --v6)
    {
      v10 = *v4;
      v4 = (v4 + 8);
      v5->f64[0] = mlx::core::simd::sincos<true,double,1>(v10);
      v5 = (v5 + 8);
    }

    return;
  }

  v11 = *(v3 + 8);
  if (v11 == *v3)
  {
    v13 = 1;
    v14 = 1;
    do
    {
LABEL_34:
      v5->f64[0] = mlx::core::simd::sincos<true,double,1>(*v4);
      v5 = (v5 + 8);
      v4 = (v4 + 8 * v14);
      --v13;
    }

    while (v13);
    return;
  }

  v12 = v11 - *v3;
  v13 = *(v11 - 4);
  v14 = *(*(v3 + 32) - 8);
  if ((v12 >> 2) <= 1)
  {
    if (!v13)
    {
      return;
    }

    goto LABEL_34;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(v37, v3, (v3 + 24), (v12 >> 2) - 1);
  if (*(*a1 + 48))
  {
    v16 = 0;
    v17 = 8 * v14;
    do
    {
      if (v13)
      {
        v18 = v4 + v37[0];
        v19 = v5;
        v20 = v13;
        do
        {
          *v19++ = mlx::core::simd::sincos<true,double,1>(*v18);
          v18 = (v18 + v17);
          --v20;
        }

        while (v20);
      }

      v21 = v38 - v37[1];
      v22 = (v38 - v37[1]) >> 2;
      if (v22)
      {
        v23 = __p;
        v24 = ((v21 << 30) - 0x100000000) >> 32;
        v25 = __p + 4 * v24;
        v26 = *v25;
        v27 = v37[1] + 4 * v24;
        v28 = v39;
        v29 = v37[0];
        if (v22 >= 2 && v26 == *v27 - 1)
        {
          v32 = (v21 >> 2) & 0x7FFFFFFF;
          v31 = v32 - 1;
          v33 = 4 * v32;
          v34 = v37[1] - 8;
          do
          {
            v35 = v31;
            *v25 = 0;
            v29 -= v28[v24] * (*v27 - 1);
            v37[0] = v29;
            --v31;
            v25 = &v23[v33 - 8];
            v26 = *v25;
            v23 -= 4;
            if (v35 < 2)
            {
              break;
            }

            v27 = &v34[v33];
            v36 = *&v34[4 * v32] - 1;
            v34 -= 4;
            v24 = v31;
          }

          while (v26 == v36);
          v25 = &v23[4 * v32 - 4];
        }

        else
        {
          v31 = ((v21 << 30) - 0x100000000) >> 32;
        }

        *v25 = v26 + 1;
        v37[0] = &v29[v28[v31]];
      }

      v16 += v13;
      v5 = (v5 + 8 * v13);
    }

    while (v16 < *(*a1 + 48));
  }

  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v37[1])
  {
    *&v38 = v37[1];
    operator delete(v37[1]);
  }
}

void mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Sin>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    for (i = *(v3 + 160); i; --i)
    {
      v7 = *v4;
      v8 = v4[1];
      v4 += 2;
      *&v34 = -v8;
      *(&v34 + 1) = v7;
      v9 = std::sinh[abi:ne200100]<float>(&v34);
      *v5 = v10;
      *(v5 + 4) = -v9;
      v5 += 8;
    }

    return;
  }

  v11 = *(v3 + 8);
  if (v11 == *v3)
  {
    v14 = 1;
    v13 = 1;
  }

  else
  {
    v12 = v11 - *v3;
    v13 = *(v11 - 4);
    v14 = *(*(v3 + 32) - 8);
    if ((v12 >> 2) > 1)
    {
      mlx::core::ContiguousIterator::ContiguousIterator(&v34, v3, (v3 + 24), (v12 >> 2) - 1);
      if (*(*a1 + 48))
      {
        v16 = 0;
        do
        {
          mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Sin>(&v4[2 * v34], v5 + 8 * v16, v13, v14);
          v17 = v36 - v35;
          v18 = (v36 - v35) >> 2;
          if (v18)
          {
            v19 = __p;
            v20 = ((v17 << 30) - 0x100000000) >> 32;
            v21 = __p + 4 * v20;
            v22 = *v21;
            v23 = v35 + 4 * v20;
            v24 = v37;
            v25 = v34;
            if (v18 >= 2 && v22 == *v23 - 1)
            {
              v28 = (v17 >> 2) & 0x7FFFFFFF;
              v27 = v28 - 1;
              v29 = 4 * v28;
              v30 = v35 - 8;
              do
              {
                v31 = v27;
                *v21 = 0;
                v25 -= v24[v20] * (*v23 - 1);
                v34 = v25;
                --v27;
                v21 = &v19[v29 - 8];
                v22 = *v21;
                v19 -= 4;
                if (v31 < 2)
                {
                  break;
                }

                v23 = &v30[v29];
                v32 = *&v30[4 * v28] - 1;
                v30 -= 4;
                v20 = v27;
              }

              while (v22 == v32);
              v21 = &v19[4 * v28 - 4];
            }

            else
            {
              v27 = ((v17 << 30) - 0x100000000) >> 32;
            }

            *v21 = v22 + 1;
            v34 = v24[v27] + v25;
          }

          v16 += v13;
        }

        while (v16 < *(*a1 + 48));
      }

      if (__p)
      {
        v40 = __p;
        operator delete(__p);
      }

      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      if (v35)
      {
        v36 = v35;
        operator delete(v35);
      }

      return;
    }
  }

  v33 = *(*a1 + 152);

  mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Sin>(v33, v5, v13, v14);
}

uint64_t mlx::core::simd::sincos<true,mlx::core::_MLX_BFloat16,1>(int a1)
{
  LODWORD(v1) = (((a1 << 16) & 0x7FFFFFFF) + (a1 & 1) + 0x7FFF) & 0xFFFF0000;
  v2 = (v1 * 1.2732) + 1;
  v3 = ((v1 + ((v2 & 0xFFFFFFFE) * -0.78516)) + ((v2 & 0xFFFFFFFE) * -0.00024188)) + ((v2 & 0xFFFFFFFE) * -0.000000037749);
  v4 = v3 * v3;
  v5 = (v3 * v3) * ((v3 * v3) * (((((v3 * v3) * 0.000024433) + -0.0013887) * (v3 * v3)) + 0.041667));
  v6 = v3 + (v3 * ((v3 * v3) * (((((v3 * v3) * -0.00019515) + 0.0083322) * (v3 * v3)) + -0.16667)));
  v7 = (v5 + (v4 * -0.5)) + 1.0;
  if ((v2 & 2) != 0)
  {
    v6 = v7;
  }

  if (COERCE_FLOAT(a1 << 16) < 0.0 != (v2 & 4) >> 2)
  {
    v6 = -v6;
  }

  return (LODWORD(v6) + (HIWORD(LODWORD(v6)) & 1u) + 0x7FFF) >> 16;
}

double mlx::core::simd::sincos<true,half,8>(float16x8_t a1)
{
  v1 = vcltzq_f16(a1);
  v2 = vmovl_high_s16(v1);
  v3 = vmovl_s16(*v1.i8);
  v4 = vabsq_f16(a1);
  v5 = vcvt_hight_f32_f16(v4);
  v6 = vcvtq_f32_f16(*v4.i8);
  v7 = vdupq_n_s32(0x3FA2F983u);
  v8 = vmulq_f32(v6, v7);
  v9 = vmulq_f32(v5, v7);
  v10.i64[0] = 0x4F0000004F000000;
  v10.i64[1] = 0x4F0000004F000000;
  v11 = vcgtq_f32(v9, v10);
  v12 = vcgtq_f32(v8, v10);
  v13 = vcvtq_s32_f32(vsubq_f32(v9, vandq_s8(v10, v11)));
  v14 = vcvtq_s32_f32(vsubq_f32(v8, vandq_s8(v10, v12)));
  v10.i64[0] = 0x100000001;
  v10.i64[1] = 0x100000001;
  v15 = vnegq_f32(v10);
  v16 = vaddq_s32(vsubq_s32(vandq_s8(v12, v15), vmvnq_s8(v12)), v14);
  v17 = vaddq_s32(vsubq_s32(vandq_s8(v11, v15), vmvnq_s8(v11)), v13);
  v15.i64[0] = 0x200000002;
  v15.i64[1] = 0x200000002;
  v18 = vandq_s8(v17, v15);
  v12.i64[0] = 0x400000004;
  v12.i64[1] = 0x400000004;
  v19 = vandq_s8(v17, v12);
  v20 = vandq_s8(v16, v12);
  v21 = vcvtq_f32_u32((*&v16 & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)));
  v22 = vcvtq_f32_u32((*&v17 & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)));
  v23 = vceqzq_s32(vandq_s8(v16, v15));
  v24 = vdupq_n_s32(0xBF490000);
  v25 = vceqzq_s32(v18);
  v26 = vmlaq_f32(v5, v24, v22);
  v27 = vmlaq_f32(v6, v24, v21);
  v28 = vdupq_n_s32(0xB97DA000);
  v29 = vmlaq_f32(v27, v28, v21);
  v30 = vmlaq_f32(v26, v28, v22);
  v31 = vdupq_n_s32(0xB3222169);
  v32 = vmlaq_f32(v30, v31, v22);
  v33 = vmlaq_f32(v29, v31, v21);
  v34 = veorq_s8(vceqzq_s32(v20), v3);
  v35 = veorq_s8(vceqzq_s32(v19), v2);
  v36 = vmulq_f32(v33, v33);
  v37 = vdupq_n_s32(0x37CCF5CEu);
  v38 = vdupq_n_s32(0xBAB6061A);
  v39 = vmulq_f32(v32, v32);
  v40 = vmlaq_f32(v38, v37, v39);
  v41 = vdupq_n_s32(0xB94CA1F9);
  v42 = vmlaq_f32(v38, v37, v36);
  v43 = vdupq_n_s32(0x3C08839Eu);
  v44 = vmlaq_f32(v43, v41, v39);
  v45 = vmlaq_f32(v43, v41, v36);
  v46 = vdupq_n_s32(0x3D2AAAA5u);
  v47 = vmlaq_f32(v46, v36, v42);
  v48 = vdupq_n_s32(0xBE2AAAA3);
  v49 = vmlaq_f32(v33, vmulq_f32(v36, vmlaq_f32(v48, v36, v45)), v33);
  v50 = vmlaq_f32(v32, vmulq_f32(v39, vmlaq_f32(v48, v39, v44)), v32);
  v48.i64[0] = 0xBF000000BF000000;
  v48.i64[1] = 0xBF000000BF000000;
  v51 = vmlaq_f32(vmulq_f32(v39, vmulq_f32(v39, vmlaq_f32(v46, v39, v40))), v48, v39);
  v52 = vmlaq_f32(vmulq_f32(v36, vmulq_f32(v36, v47)), v48, v36);
  __asm { FMOV            V6.4S, #1.0 }

  v58 = vbslq_s8(v25, v50, vaddq_f32(v51, _Q6));
  v59 = vbslq_s8(v23, v49, vaddq_f32(v52, _Q6));
  *&result = vcvt_hight_f16_f32(vcvt_f16_f32(vbslq_s8(v34, v59, vnegq_f32(v59))), vbslq_s8(v35, v58, vnegq_f32(v58))).u64[0];
  return result;
}

__int16 mlx::core::simd::sincos<true,half,1>@<H0>()
{
  __asm { FCMP            H0, #0 }

  _H0 = fabsl(_H0);
  __asm { FCVT            S0, H0 }

  if (_NF)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = (_S0 * 1.2732) + 1;
  v9 = ((_S0 + ((v8 & 0xFFFFFFFE) * -0.78516)) + ((v8 & 0xFFFFFFFE) * -0.00024188)) + ((v8 & 0xFFFFFFFE) * -0.000000037749);
  v10 = v7 ^ ((v8 & 4) >> 2);
  v11 = v9 * v9;
  v12 = (v9 * v9) * ((v9 * v9) * (((((v9 * v9) * 0.000024433) + -0.0013887) * (v9 * v9)) + 0.041667));
  _S0 = v9 + (v9 * ((v9 * v9) * (((((v9 * v9) * -0.00019515) + 0.0083322) * (v9 * v9)) + -0.16667)));
  v14 = (v12 + (v11 * -0.5)) + 1.0;
  if ((v8 & 2) != 0)
  {
    _S0 = v14;
  }

  if (v10)
  {
    _S0 = -_S0;
  }

  __asm { FCVT            H0, S0 }

  return result;
}

int8x16_t mlx::core::simd::sincos<true,float,8>@<Q0>(float32x4_t *a1@<X0>, int8x16_t *a2@<X8>)
{
  v2 = a1[1];
  v3 = vcltzq_f32(*a1);
  v4 = vcltzq_f32(v2);
  v5 = vabsq_f32(v2);
  v6 = vabsq_f32(*a1);
  *a1 = v6;
  a1[1] = v5;
  v7 = vdupq_n_s32(0x3FA2F983u);
  v8 = vmulq_f32(v5, v7);
  v9 = vmulq_f32(v6, v7);
  v10.i64[0] = 0x4F0000004F000000;
  v10.i64[1] = 0x4F0000004F000000;
  v11 = vcgtq_f32(v9, v10);
  v12 = vcgtq_f32(v8, v10);
  v13 = vcvtq_s32_f32(vsubq_f32(v9, vandq_s8(v10, v11)));
  v14 = vcvtq_s32_f32(vsubq_f32(v8, vandq_s8(v10, v12)));
  v10.i64[0] = 0x100000001;
  v10.i64[1] = 0x100000001;
  v15 = vnegq_f32(v10);
  v16 = vaddq_s32(vsubq_s32(vandq_s8(v12, v15), vmvnq_s8(v12)), v14);
  v17 = vaddq_s32(vsubq_s32(vandq_s8(v11, v15), vmvnq_s8(v11)), v13);
  v15.i64[0] = 0x200000002;
  v15.i64[1] = 0x200000002;
  v18 = vandq_s8(v17, v15);
  v12.i64[0] = 0x400000004;
  v12.i64[1] = 0x400000004;
  v19 = vandq_s8(v17, v12);
  v20 = vandq_s8(v16, v12);
  v21 = vcvtq_f32_u32((*&v16 & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)));
  v22 = vcvtq_f32_u32((*&v17 & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)));
  v23 = vceqzq_s32(vandq_s8(v16, v15));
  v24 = vceqzq_s32(v18);
  v25 = vdupq_n_s32(0xBF490000);
  v26 = vdupq_n_s32(0xB97DA000);
  v27 = vmlaq_f32(vmlaq_f32(v5, v25, v21), v26, v21);
  v28 = vmlaq_f32(vmlaq_f32(v6, v25, v22), v26, v22);
  v29 = vdupq_n_s32(0xB3222169);
  v30 = vmlaq_f32(v28, v29, v22);
  v31 = vmlaq_f32(v27, v29, v21);
  v32 = veorq_s8(vceqzq_s32(v20), v4);
  v33 = veorq_s8(vceqzq_s32(v19), v3);
  v34 = vmulq_f32(v31, v31);
  v35 = vmulq_f32(v30, v30);
  v36 = vdupq_n_s32(0x37CCF5CEu);
  v37 = vdupq_n_s32(0xBAB6061A);
  v38 = vmlaq_f32(v37, v36, v35);
  v39 = vmlaq_f32(v37, v36, v34);
  v40 = vdupq_n_s32(0xB94CA1F9);
  v41 = vdupq_n_s32(0x3C08839Eu);
  v42 = vmlaq_f32(v41, v40, v35);
  v43 = vmlaq_f32(v41, v40, v34);
  v44 = vdupq_n_s32(0x3D2AAAA5u);
  v45 = vmlaq_f32(v44, v34, v39);
  v46 = vdupq_n_s32(0xBE2AAAA3);
  v47 = vmlaq_f32(v31, vmulq_f32(v34, vmlaq_f32(v46, v34, v43)), v31);
  v48 = vmlaq_f32(v30, vmulq_f32(v35, vmlaq_f32(v46, v35, v42)), v30);
  v46.i64[0] = 0xBF000000BF000000;
  v46.i64[1] = 0xBF000000BF000000;
  v49 = vmlaq_f32(vmulq_f32(v34, vmulq_f32(v34, v45)), v46, v34);
  __asm { FMOV            V6.4S, #1.0 }

  v55 = vbslq_s8(v24, v48, vaddq_f32(vmlaq_f32(vmulq_f32(v35, vmulq_f32(v35, vmlaq_f32(v44, v35, v38))), v46, v35), _Q6));
  v56 = vbslq_s8(v23, v47, vaddq_f32(v49, _Q6));
  result = vbslq_s8(v32, v56, vnegq_f32(v56));
  *a2 = vbslq_s8(v33, v55, vnegq_f32(v55));
  a2[1] = result;
  return result;
}

float mlx::core::simd::sincos<true,float,1>(float a1)
{
  v1 = a1 < 0.0;
  v2 = fabsf(a1);
  v3 = (v2 * 1.2732) + 1;
  v4 = ((v2 + ((v3 & 0xFFFFFFFE) * -0.78516)) + ((v3 & 0xFFFFFFFE) * -0.00024188)) + ((v3 & 0xFFFFFFFE) * -0.000000037749);
  v5 = v1 ^ ((v3 & 4) >> 2);
  v6 = v4 * v4;
  v7 = (v4 * v4) * ((v4 * v4) * (((((v4 * v4) * 0.000024433) + -0.0013887) * (v4 * v4)) + 0.041667));
  result = v4 + (v4 * ((v4 * v4) * (((((v4 * v4) * -0.00019515) + 0.0083322) * (v4 * v4)) + -0.16667)));
  v9 = (v7 + (v6 * -0.5)) + 1.0;
  if ((v3 & 2) != 0)
  {
    result = v9;
  }

  if (v5)
  {
    return -result;
  }

  return result;
}

float64x2_t mlx::core::simd::sincos<true,double,4>@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>)
{
  v2 = a1[1];
  v3 = vuzp1q_s32(vcltzq_f64(*a1), vcltzq_f64(v2));
  v4 = vabsq_f64(v2);
  v5 = vabsq_f64(*a1);
  *a1 = v5;
  a1[1] = v4;
  v6 = vcvt_hight_f32_f64(vcvt_f32_f64(v5), v4);
  v7 = vmulq_f32(v6, vdupq_n_s32(0x3FA2F983u));
  v8.i64[0] = 0x4F0000004F000000;
  v8.i64[1] = 0x4F0000004F000000;
  v9 = vcgtq_f32(v7, v8);
  v10 = vcvtq_s32_f32(vsubq_f32(v7, vandq_s8(v8, v9)));
  v8.i64[0] = 0x100000001;
  v8.i64[1] = 0x100000001;
  v11 = vaddq_s32(vsubq_s32(vandq_s8(v9, vnegq_f32(v8)), vmvnq_s8(v9)), v10);
  v8.i64[0] = 0x200000002;
  v8.i64[1] = 0x200000002;
  v12 = vandq_s8(v11, v8);
  v9.i64[0] = 0x400000004;
  v9.i64[1] = 0x400000004;
  v13 = vandq_s8(v11, v9);
  v14 = vcvtq_f32_u32((*&v11 & __PAIR128__(0xFFFFFFFEFFFFFFFELL, 0xFFFFFFFEFFFFFFFELL)));
  v15 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v6, vdupq_n_s32(0xBF490000), v14), vdupq_n_s32(0xB97DA000), v14), vdupq_n_s32(0xB3222169), v14);
  v16 = veorq_s8(vceqzq_s32(v13), v3);
  v17 = vmulq_f32(v15, v15);
  v18 = vmlaq_f32(v15, vmulq_f32(v17, vmlaq_f32(vdupq_n_s32(0xBE2AAAA3), v17, vmlaq_f32(vdupq_n_s32(0x3C08839Eu), vdupq_n_s32(0xB94CA1F9), v17))), v15);
  v19.i64[0] = 0xBF000000BF000000;
  v19.i64[1] = 0xBF000000BF000000;
  v20 = vmlaq_f32(vmulq_f32(v17, vmulq_f32(v17, vmlaq_f32(vdupq_n_s32(0x3D2AAAA5u), v17, vmlaq_f32(vdupq_n_s32(0xBAB6061A), vdupq_n_s32(0x37CCF5CEu), v17)))), v19, v17);
  __asm { FMOV            V2.4S, #1.0 }

  v26 = vbslq_s8(vceqzq_s32(v12), v18, vaddq_f32(v20, _Q2));
  v27 = vbslq_s8(v16, v26, vnegq_f32(v26));
  v28 = vcvtq_f64_f32(*v27.f32);
  result = vcvt_hight_f64_f32(v27);
  *a2 = v28;
  a2[1] = result;
  return result;
}

double mlx::core::simd::sincos<true,double,1>(double a1)
{
  v1 = a1 < 0.0;
  v2 = fabs(a1);
  v3 = v1;
  v4 = (v2 * 1.2732) + 1;
  v5 = ((v2 + ((v4 & 0xFFFFFFFE) * -0.78516)) + ((v4 & 0xFFFFFFFE) * -0.00024188)) + ((v4 & 0xFFFFFFFE) * -0.000000037749);
  v6 = v3 ^ ((v4 & 4) >> 2);
  v7 = v5 * v5;
  v8 = (v5 * v5) * ((v5 * v5) * (((((v5 * v5) * 0.000024433) + -0.0013887) * (v5 * v5)) + 0.041667));
  v9 = v5 + (v5 * ((v5 * v5) * (((((v5 * v5) * -0.00019515) + 0.0083322) * (v5 * v5)) + -0.16667)));
  v10 = (v8 + (v7 * -0.5)) + 1.0;
  if ((v4 & 2) != 0)
  {
    v9 = v10;
  }

  if (v6)
  {
    return -v9;
  }

  return v9;
}

float mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Sin>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a3;
    v5 = (a1 + 4);
    v6 = 8 * a4;
    v7 = (a2 + 4);
    do
    {
      v8 = *(v5 - 1);
      v11[0] = -*v5;
      v11[1] = v8;
      result = -std::sinh[abi:ne200100]<float>(v11);
      *(v7 - 1) = v10;
      *v7 = result;
      v5 = (v5 + v6);
      v7 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

float std::sinh[abi:ne200100]<float>(float *a1)
{
  v1 = *a1;
  if (fabsf(*a1) != INFINITY || (a1[1] & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v2 = a1[1];
    if ((v1 != 0.0 || (a1[1] & 0x7FFFFFFFu) <= 0x7F7FFFFF) && ((LODWORD(v1) & 0x7FFFFFFFu) < 0x7F800000 || v2 != 0.0))
    {
      v3 = sinhf(*a1);
      v4 = v3 * __sincosf_stret(v2).__cosval;
      coshf(v1);
      return v4;
    }
  }

  return v1;
}

void mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>>(std::mutex *a1, __int128 *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>>(&a1[1], a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A595CF0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>>(unint64_t *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>,std::function<void ()(void)>*>(uint64_t a1, __int128 *a2)
{
  *a2 = 0uLL;
  a2[1] = 0uLL;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A595EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::array::~array((v9 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFD950;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));
  return a1;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFD950;
  mlx::core::array::~array((a1 + 3));
  mlx::core::array::~array((a1 + 1));

  JUMPOUT(0x25F851760);
}

void *std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::__clone(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_286BFD950;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  *(a2 + 24) = result[3];
  *(a2 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 52) = 0;
  *(a2 + 49) = 0;
  return result;
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));

  mlx::core::array::~array((a1 + 8));
}

void std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 24));
  mlx::core::array::~array((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sin>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sin,mlx::core::Stream)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::scheduler *a1, __int128 *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *(a1 + 10) = (*(a1 + 10) + 1) % 10;
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0uLL;
  v14 = v3;
  v15 = v4;
  a2[1] = 0uLL;
  if (*(a1 + 10))
  {
    v5 = mlx::core::scheduler::scheduler(a1);
    mlx::core::scheduler::StreamThread::enqueue<std::__bind<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>>(*(v5[1] + 8 * *a1), &v14);
  }

  v6 = mlx::core::scheduler::scheduler(a1);
  mlx::core::scheduler::Scheduler::notify_new_task(v6);
  v10 = *a1;
  v11 = *(a1 + 2);
  v7 = v14;
  v14 = 0uLL;
  v12 = v7;
  v13 = v15;
  v15 = 0uLL;
  v9 = mlx::core::scheduler::scheduler(v8);
  mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sinh&&)::{lambda(void)#1}>(*(v9[1] + 8 * *a1), &v10);
}

void sub_25A596274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  mlx::core::array::~array((v17 + 32));
  mlx::core::array::~array((v17 + 16));
  mlx::core::array::~array((v16 + 16));
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

void mlx::core::scheduler::StreamThread::enqueue<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sinh&&)::{lambda(void)#1}>(std::mutex *a1, uint64_t *a2)
{
  std::mutex::lock(a1);
  if (a1[2].__m_.__opaque[24] != 1)
  {
    std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sinh&&)::{lambda(void)#1}>(&a1[1], a2);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A596348(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void std::deque<std::function<void ()(void)>>::emplace_back<void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sinh&&)::{lambda(void)#1}>(unint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sinh&&)::{lambda(void)#1},std::function<void ()(void)>*>(v8, a2);
}

void std::construct_at[abi:ne200100]<std::function<void ()(void)>,void mlx::core::cpu::CommandEncoder::dispatch<void mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}>(mlx::core::detail::Sinh&&)::{lambda(void)#1},std::function<void ()(void)>*>(uint64_t a1, uint64_t *a2)
{
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  *(a1 + 24) = 0;
  operator new();
}

void sub_25A59652C(_Unwind_Exception *a1)
{
  mlx::core::array::~array((v1 + 32));
  mlx::core::array::~array((v1 + 16));
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4SinhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFDA48;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4SinhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFDA48;
  mlx::core::array::~array((a1 + 5));
  mlx::core::array::~array((a1 + 3));

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4SinhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BFDA48;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 48);
  *(a2 + 40) = *(result + 40);
  *(a2 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4SinhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));

  mlx::core::array::~array((a1 + 24));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4SinhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 40));
  mlx::core::array::~array((a1 + 24));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4SinhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEEclEv(uint64_t a1)
{
  mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}::operator()((a1 + 24));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_8unary_fpINS3_6detail4SinhEEEvRKNS3_5arrayERSA_T_NS3_6StreamEEUlvE_JEEEvOSE_DpOT0_EUlvE_NS_9allocatorISL_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double mlx::core::unary_fp<mlx::core::detail::Sinh>(mlx::core::array const&,mlx::core::array&,mlx::core::detail::Sinh,mlx::core::Stream)::{lambda(void)#1}::operator()(uint64_t *a1)
{
  v1 = a1 + 2;
  v2 = *(a1[2] + 56);
  if (v2 <= 10)
  {
    if (v2 == 9)
    {

      *&result = mlx::core::unary_op<half,half,mlx::core::detail::Sinh>(a1, (a1 + 2));
    }

    else
    {
      if (v2 != 10)
      {
        goto LABEL_22;
      }

      mlx::core::unary_op<float,float,mlx::core::detail::Sinh>(a1, (a1 + 2));
    }
  }

  else
  {
    switch(v2)
    {
      case 11:

        mlx::core::unary_op<double,double,mlx::core::detail::Sinh>(a1, (a1 + 2));
        break;
      case 13:

        mlx::core::unary_op<mlx::core::complex64_t,mlx::core::complex64_t,mlx::core::detail::Sinh>(a1, (a1 + 2));
        break;
      case 12:

        mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Sinh>(a1, (a1 + 2));
        return result;
      default:
LABEL_22:
        std::ostringstream::basic_ostringstream[abi:ne200100](v8);
        v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "[unary_fp] Does not support ", 28);
        v5 = *(*v1 + 56);
        LODWORD(v7[0]) = v5;
        BYTE4(v7[0]) = BYTE4(v5);
        mlx::core::operator<<(v4, v7);
        exception = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v8, v7);
        MEMORY[0x25F851100](exception, v7);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_25A5969A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void mlx::core::unary_op<mlx::core::_MLX_BFloat16,mlx::core::_MLX_BFloat16,mlx::core::detail::Sinh>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    for (i = *(v3 + 160); i; --i)
    {
      v7 = sinhf(COERCE_FLOAT(*v4 << 16));
      *v5++ = (LODWORD(v7) + (HIWORD(LODWORD(v7)) & 1u) + 0x7FFF) >> 16;
      ++v4;
    }

    return;
  }

  v8 = *(v3 + 8);
  if (v8 == *v3)
  {
    v10 = 1;
    v11 = 1;
    do
    {
LABEL_31:
      v35 = sinhf(COERCE_FLOAT(*v4 << 16));
      *v5++ = (LODWORD(v35) + (HIWORD(LODWORD(v35)) & 1u) + 0x7FFF) >> 16;
      v4 += v11;
      --v10;
    }

    while (v10);
    return;
  }

  v9 = v8 - *v3;
  v10 = *(v8 - 4);
  v11 = *(*(v3 + 32) - 8);
  if ((v9 >> 2) <= 1)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_31;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v46, v3, (v3 + 24), (v9 >> 2) - 1);
  v43 = *(*a1 + 48);
  if (v43)
  {
    v13 = 0;
    v14 = v46;
    v15 = (((v48 - v47) << 30) - 0x100000000) >> 32;
    __p = v51;
    v44 = &v51[4 * v15];
    v40 = v15;
    v41 = v49;
    v16 = ((v48 - v47) >> 2) & 0x7FFFFFFF;
    v17 = 2 * v11;
    v42 = (v48 - v47) >> 2;
    v18 = 4 * v16;
    v36 = v47 - 8;
    v37 = v16 - 1;
    v39 = v47 + 4 * v15;
    do
    {
      v45 = v13;
      if (v10)
      {
        v19 = &v4[v14];
        v20 = v5;
        v21 = v10;
        do
        {
          v22 = sinhf(COERCE_FLOAT(*v19 << 16));
          *v20++ = (LODWORD(v22) + (HIWORD(LODWORD(v22)) & 1u) + 0x7FFF) >> 16;
          v19 = (v19 + v17);
          --v21;
        }

        while (v21);
      }

      if (v42)
      {
        v23 = v45;
        v24 = *v44;
        if (v42 >= 2 && v24 == *v39 - 1)
        {
          v25 = v37;
          v26 = __p;
          v27 = v36;
          v28 = v39;
          v29 = v44;
          v30 = v40;
          do
          {
            v31 = v25;
            *v29 = 0;
            v14 -= v41[v30] * (*v28 - 1);
            v46 = v14;
            --v25;
            v29 = &v26[v18 - 8];
            v24 = *v29;
            v26 -= 4;
            if (v31 < 2)
            {
              break;
            }

            v28 = &v27[v18];
            v32 = *&v27[v18] - 1;
            v27 -= 4;
            v30 = v25;
          }

          while (v24 == v32);
          v33 = &v26[v18 - 4];
        }

        else
        {
          v25 = v40;
          v33 = v44;
        }

        *v33 = v24 + 1;
        v14 += v41[v25];
        v46 = v14;
      }

      else
      {
        v23 = v45;
      }

      v13 = v23 + v10;
      v5 += v10;
    }

    while (v13 < v43);
    v34 = __p;
    if (!__p)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v34 = v51;
    if (!v51)
    {
      goto LABEL_25;
    }
  }

  v52 = v34;
  operator delete(v34);
LABEL_25:
  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }
}

__int16 mlx::core::unary_op<half,half,mlx::core::detail::Sinh>@<H0>(uint64_t *a1@<X0>, uint64_t a2@<X1>)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 8)
    {
      do
      {
        v7 = *v4++;
        v55 = _simd_sinh_f4(vcvtq_f32_f16(*v7.i8));
        _Q0 = _simd_sinh_f4(vcvt_hight_f32_f16(v7));
        *v5++ = vcvt_hight_f16_f32(vcvt_f16_f32(v55), _Q0);
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v9 = v4->i16[0];
      v4 = (v4 + 2);
      _H0 = v9;
      __asm { FCVT            S0, H0; float }

      _Q0.f32[0] = sinhf(_S0);
      __asm { FCVT            H0, S0 }

      v5->i16[0] = _Q0.i16[0];
      v5 = (v5 + 2);
    }

    return _Q0.i16[0];
  }

  v16 = *(v3 + 8);
  if (v16 == *v3)
  {
    v18 = 1;
    v19 = 1;
    do
    {
LABEL_33:
      _H0 = v4->i16[0];
      __asm { FCVT            S0, H0; float }

      _Q0.f32[0] = sinhf(_S0);
      __asm { FCVT            H0, S0 }

      v5->i16[0] = _Q0.i16[0];
      v5 = (v5 + 2);
      v4 = (v4 + 2 * v19);
      --v18;
    }

    while (v18);
    return _Q0.i16[0];
  }

  v17 = v16 - *v3;
  v18 = *(v16 - 4);
  v19 = *(*(v3 + 32) - 8);
  if ((v17 >> 2) <= 1)
  {
    if (!v18)
    {
      return _Q0.i16[0];
    }

    goto LABEL_33;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v58, v3, (v3 + 24), (v17 >> 2) - 1);
  v54 = *(*a1 + 48);
  if (v54)
  {
    v21 = 0;
    v22 = v58;
    v23 = v61;
    v24 = (((v60 - v59) << 30) - 0x100000000) >> 32;
    __p = v63;
    v56 = &v63[4 * v24];
    v25 = ((v60 - v59) >> 2) & 0x7FFFFFFF;
    v49 = v25 - 1;
    v52 = v24;
    v26 = 2 * v19;
    v27 = 4 * v25;
    v48 = v59 - 8;
    v53 = (v60 - v59) >> 2;
    v51 = v59 + 4 * v24;
    do
    {
      x = v21;
      if (v18)
      {
        v28 = &v4->i16[v22];
        v29 = v5;
        v30 = v18;
        do
        {
          _H0 = *v28;
          __asm { FCVT            S0, H0; float }

          _Q0.f32[0] = sinhf(_S0);
          __asm { FCVT            H0, S0 }

          v29->i16[0] = _Q0.i16[0];
          v29 = (v29 + 2);
          v28 = (v28 + v26);
          --v30;
        }

        while (v30);
      }

      if (v53)
      {
        v33 = *v56;
        v34 = x;
        if (v53 >= 2 && v33 == *v51 - 1)
        {
          v35 = v49;
          v36 = __p;
          v37 = v48;
          v38 = v51;
          v39 = v56;
          v40 = v52;
          do
          {
            v41 = v35;
            *v39 = 0;
            v22 -= v23[v40] * (*v38 - 1);
            v58 = v22;
            --v35;
            v39 = &v36[v27 - 8];
            v33 = *v39;
            v36 -= 4;
            if (v41 < 2)
            {
              break;
            }

            v38 = &v37[v27];
            v42 = *&v37[v27] - 1;
            v37 -= 4;
            v40 = v35;
          }

          while (v33 == v42);
          v43 = &v36[v27 - 4];
        }

        else
        {
          v35 = v52;
          v43 = v56;
        }

        *v43 = v33 + 1;
        v22 += v23[v35];
        v58 = v22;
      }

      else
      {
        v34 = x;
      }

      v21 = v34 + v18;
      v5 = (v5 + 2 * v18);
    }

    while (v21 < v54);
    v44 = __p;
    if (!__p)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v44 = v63;
    if (!v63)
    {
      goto LABEL_27;
    }
  }

  v64 = v44;
  operator delete(v44);
LABEL_27:
  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  return _Q0.i16[0];
}

void mlx::core::unary_op<float,float,mlx::core::detail::Sinh>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 8)
    {
      do
      {
        v7 = *v4;
        v8 = v4[1];
        v4 += 2;
        xa = v8;
        v44 = _simd_sinh_f4(v7);
        v5[1] = _simd_sinh_f4(xa);
        *v5 = v44;
        v5 += 2;
        v6 -= 8;
      }

      while (v6 > 7);
    }

    for (; v6; --v6)
    {
      v9 = v4->f32[0];
      v4 = (v4 + 4);
      v5->f32[0] = sinhf(v9);
      v5 = (v5 + 4);
    }

    return;
  }

  v10 = *(v3 + 8);
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
    do
    {
LABEL_33:
      v5->f32[0] = sinhf(v4->f32[0]);
      v5 = (v5 + 4);
      v4 = (v4 + 4 * v13);
      --v12;
    }

    while (v12);
    return;
  }

  v11 = v10 - *v3;
  v12 = *(v10 - 4);
  v13 = *(*(v3 + 32) - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_33;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v48, v3, (v3 + 24), (v11 >> 2) - 1);
  v43 = *(*a1 + 48);
  if (v43)
  {
    v15 = 0;
    v16 = v48;
    v17 = v51;
    v18 = (((v50 - v49) << 30) - 0x100000000) >> 32;
    __p = v53;
    v45 = &v53[4 * v18];
    v19 = ((v50 - v49) >> 2) & 0x7FFFFFFF;
    v38 = v19 - 1;
    v41 = v18;
    v20 = 4 * v13;
    v21 = 4 * v19;
    v37 = v49 - 8;
    v42 = (v50 - v49) >> 2;
    v40 = v49 + 4 * v18;
    do
    {
      x = v15;
      if (v12)
      {
        v22 = &v4->f32[v16];
        v23 = v5;
        v24 = v12;
        do
        {
          *v23++ = sinhf(*v22);
          v22 = (v22 + v20);
          --v24;
        }

        while (v24);
      }

      if (v42)
      {
        v25 = *v45;
        v26 = x;
        if (v42 >= 2 && v25 == *v40 - 1)
        {
          v27 = v38;
          v28 = __p;
          v29 = v37;
          v30 = v40;
          v31 = v45;
          v32 = v41;
          do
          {
            v33 = v27;
            *v31 = 0;
            v16 -= v17[v32] * (*v30 - 1);
            v48 = v16;
            --v27;
            v31 = &v28[v21 - 8];
            v25 = *v31;
            v28 -= 4;
            if (v33 < 2)
            {
              break;
            }

            v30 = &v29[v21];
            v34 = *&v29[v21] - 1;
            v29 -= 4;
            v32 = v27;
          }

          while (v25 == v34);
          v35 = &v28[v21 - 4];
        }

        else
        {
          v27 = v41;
          v35 = v45;
        }

        *v35 = v25 + 1;
        v16 += v17[v27];
        v48 = v16;
      }

      else
      {
        v26 = x;
      }

      v15 = v26 + v12;
      v5 = (v5 + 4 * v12);
    }

    while (v15 < v43);
    v36 = __p;
    if (!__p)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v36 = v53;
    if (!v53)
    {
      goto LABEL_27;
    }
  }

  v54 = v36;
  operator delete(v36);
LABEL_27:
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }
}

void mlx::core::unary_op<double,double,mlx::core::detail::Sinh>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 152);
  v5 = *(*a2 + 152);
  if (*(*a1 + 168))
  {
    v6 = *(v3 + 160);
    if (v6 >= 4)
    {
      do
      {
        v7 = *v4;
        v8 = v4[1];
        v4 += 2;
        xa = v8;
        v44 = _simd_sinh_d2(v7);
        v5[1] = _simd_sinh_d2(xa);
        *v5 = v44;
        v5 += 2;
        v6 -= 4;
      }

      while (v6 > 3);
    }

    for (; v6; --v6)
    {
      v9 = v4->f64[0];
      v4 = (v4 + 8);
      v5->f64[0] = sinh(v9);
      v5 = (v5 + 8);
    }

    return;
  }

  v10 = *(v3 + 8);
  if (v10 == *v3)
  {
    v12 = 1;
    v13 = 1;
    do
    {
LABEL_33:
      v5->f64[0] = sinh(v4->f64[0]);
      v5 = (v5 + 8);
      v4 = (v4 + 8 * v13);
      --v12;
    }

    while (v12);
    return;
  }

  v11 = v10 - *v3;
  v12 = *(v10 - 4);
  v13 = *(*(v3 + 32) - 8);
  if ((v11 >> 2) <= 1)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_33;
  }

  mlx::core::ContiguousIterator::ContiguousIterator(&v48, v3, (v3 + 24), (v11 >> 2) - 1);
  v43 = *(*a1 + 48);
  if (v43)
  {
    v15 = 0;
    v16 = v48;
    v17 = v51;
    v18 = (((v50 - v49) << 30) - 0x100000000) >> 32;
    __p = v53;
    v45 = &v53[4 * v18];
    v19 = ((v50 - v49) >> 2) & 0x7FFFFFFF;
    v38 = v19 - 1;
    v41 = v18;
    v20 = 8 * v13;
    v21 = 4 * v19;
    v37 = v49 - 8;
    v42 = (v50 - v49) >> 2;
    v40 = v49 + 4 * v18;
    do
    {
      x = v15;
      if (v12)
      {
        v22 = &v4->f64[v16];
        v23 = v5;
        v24 = v12;
        do
        {
          *v23++ = sinh(*v22);
          v22 = (v22 + v20);
          --v24;
        }

        while (v24);
      }

      if (v42)
      {
        v25 = *v45;
        v26 = x;
        if (v42 >= 2 && v25 == *v40 - 1)
        {
          v27 = v38;
          v28 = __p;
          v29 = v37;
          v30 = v40;
          v31 = v45;
          v32 = v41;
          do
          {
            v33 = v27;
            *v31 = 0;
            v16 -= v17[v32] * (*v30 - 1);
            v48 = v16;
            --v27;
            v31 = &v28[v21 - 8];
            v25 = *v31;
            v28 -= 4;
            if (v33 < 2)
            {
              break;
            }

            v30 = &v29[v21];
            v34 = *&v29[v21] - 1;
            v29 -= 4;
            v32 = v27;
          }

          while (v25 == v34);
          v35 = &v28[v21 - 4];
        }

        else
        {
          v27 = v41;
          v35 = v45;
        }

        *v35 = v25 + 1;
        v16 += v17[v27];
        v48 = v16;
      }

      else
      {
        v26 = x;
      }

      v15 = v26 + v12;
      v5 = (v5 + 8 * v12);
    }

    while (v15 < v43);
    v36 = __p;
    if (!__p)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v36 = v53;
    if (!v53)
    {
      goto LABEL_27;
    }
  }

  v54 = v36;
  operator delete(v36);
LABEL_27:
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }
}